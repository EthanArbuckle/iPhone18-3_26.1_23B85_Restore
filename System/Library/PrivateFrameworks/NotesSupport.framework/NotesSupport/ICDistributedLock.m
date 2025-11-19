@interface ICDistributedLock
+ (id)lockWithPath:(id)a3;
- (BOOL)tryLock;
- (ICDistributedLock)init;
- (ICDistributedLock)initWithPath:(id)a3;
- (NSDate)lockDate;
- (id)description;
- (void)breakLock;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ICDistributedLock

- (ICDistributedLock)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should not be used.", "-[ICDistributedLock init]"];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v3 userInfo:0]);
}

+ (id)lockWithPath:(id)a3
{
  v3 = [objc_allocWithZone(a1) initWithPath:a3];

  return v3;
}

- (ICDistributedLock)initWithPath:(id)a3
{
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    v7.receiver = self;
    v7.super_class = ICDistributedLock;
    v5 = [(ICDistributedLock *)&v7 init];
    v5->threadLock = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v5->lockName = [a3 copyWithZone:0];
    v5->hasLock = 0;
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)invalidate
{
  [(NSLock *)self->threadLock lock];
  if (self->hasLock && self->lockName)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  self->lockName = 0;
  self->hasLock = 0;
  [(NSLock *)self->threadLock unlock];

  self->threadLock = 0;
}

- (void)dealloc
{
  [(ICDistributedLock *)self invalidate];
  v3.receiver = self;
  v3.super_class = ICDistributedLock;
  [(ICDistributedLock *)&v3 dealloc];
}

- (BOOL)tryLock
{
  v6 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->threadLock lock];
  if (self->hasLock || ![(NSString *)self->lockName getFileSystemRepresentation:v5 maxLength:1024]|| mkdir(v5, 0x1FFu))
  {
    [(NSLock *)self->threadLock unlock];
    return 0;
  }

  else
  {
    v3 = 1;
    self->hasLock = 1;
    [(NSLock *)self->threadLock unlock];
  }

  return v3;
}

- (void)breakLock
{
  [(NSLock *)self->threadLock lock];
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  self->hasLock = 0;
  threadLock = self->threadLock;

  [(NSLock *)threadLock unlock];
}

- (NSDate)lockDate
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v4.st_mtimespec, 0, 96);
  if (![(NSString *)self->lockName getFileSystemRepresentation:v5 maxLength:1024, 0, 0, 0, 0, 0, 0])
  {
    return 0;
  }

  if (stat(v5, &v4) < 0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v4.st_mtimespec.tv_sec - *MEMORY[0x1E695E468] + v4.st_mtimespec.tv_nsec * 0.000000001;
  }

  return [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = "NO";
  if (self->hasLock)
  {
    v6 = "YES";
  }

  return [v3 stringWithFormat:@"%s(%p) locked: %s  path: '%@'", Name, self, v6, self->lockName];
}

@end