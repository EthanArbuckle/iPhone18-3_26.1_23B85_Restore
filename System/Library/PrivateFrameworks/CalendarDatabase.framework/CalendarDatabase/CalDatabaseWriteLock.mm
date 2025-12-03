@interface CalDatabaseWriteLock
+ (id)canonicalizePath:(id)path;
+ (id)writeLockForDatabasePath:(id)path;
- (CalDatabaseWriteLock)init;
- (void)performWithWriteLock:(id)lock;
@end

@implementation CalDatabaseWriteLock

- (CalDatabaseWriteLock)init
{
  v3.receiver = self;
  v3.super_class = CalDatabaseWriteLock;
  result = [(CalDatabaseWriteLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)canonicalizePath:(id)path
{
  pathCopy = path;
  if (([pathCopy hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [pathCopy stringByAppendingString:@"/"];

    pathCopy = v4;
  }

  return pathCopy;
}

+ (id)writeLockForDatabasePath:(id)path
{
  v3 = [self canonicalizePath:path];
  os_unfair_lock_lock(&writeLockForDatabasePath___global_lock);
  v4 = writeLockForDatabasePath___writeLocks;
  if (!writeLockForDatabasePath___writeLocks)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v6 = writeLockForDatabasePath___writeLocks;
    writeLockForDatabasePath___writeLocks = strongToWeakObjectsMapTable;

    v4 = writeLockForDatabasePath___writeLocks;
  }

  v7 = [v4 objectForKey:v3];
  if (!v7)
  {
    v7 = objc_alloc_init(CalDatabaseWriteLock);
    [writeLockForDatabasePath___writeLocks setObject:v7 forKey:v3];
  }

  os_unfair_lock_unlock(&writeLockForDatabasePath___global_lock);

  return v7;
}

- (void)performWithWriteLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2]();
  os_unfair_lock_unlock(&self->_lock);
}

@end