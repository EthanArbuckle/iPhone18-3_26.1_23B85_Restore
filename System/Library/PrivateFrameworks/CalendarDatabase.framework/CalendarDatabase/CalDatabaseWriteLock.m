@interface CalDatabaseWriteLock
+ (id)canonicalizePath:(id)a3;
+ (id)writeLockForDatabasePath:(id)a3;
- (CalDatabaseWriteLock)init;
- (void)performWithWriteLock:(id)a3;
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

+ (id)canonicalizePath:(id)a3
{
  v3 = a3;
  if (([v3 hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [v3 stringByAppendingString:@"/"];

    v3 = v4;
  }

  return v3;
}

+ (id)writeLockForDatabasePath:(id)a3
{
  v3 = [a1 canonicalizePath:a3];
  os_unfair_lock_lock(&writeLockForDatabasePath___global_lock);
  v4 = writeLockForDatabasePath___writeLocks;
  if (!writeLockForDatabasePath___writeLocks)
  {
    v5 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v6 = writeLockForDatabasePath___writeLocks;
    writeLockForDatabasePath___writeLocks = v5;

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

- (void)performWithWriteLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2]();
  os_unfair_lock_unlock(&self->_lock);
}

@end