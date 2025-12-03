@interface ICExclusiveLock
- (BOOL)tryLock;
- (ICExclusiveLock)initWithName:(id)name cachePath:(id)path;
- (void)dealloc;
- (void)lock;
- (void)setName:(id)name;
- (void)unlock;
@end

@implementation ICExclusiveLock

- (void)lock
{
  if (self->_fd == -1)
  {
    self->_fd = open([(NSString *)self->_fullPath fileSystemRepresentation], 544, 448);
  }
}

- (void)unlock
{
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
    self->_fd = -1;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICExclusiveLock;
  [(ICExclusiveLock *)&v2 dealloc];
}

- (ICExclusiveLock)initWithName:(id)name cachePath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = ICExclusiveLock;
  v9 = [(ICExclusiveLock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!nameCopy || !pathCopy)
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must pass a name cachePath into initWithName:" userInfo:0];
      objc_exception_throw(v14);
    }

    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_cachePath, path);
    v11 = [(NSString *)v10->_cachePath stringByAppendingPathComponent:v10->_name];
    fullPath = v10->_fullPath;
    v10->_fullPath = v11;

    v10->_fd = -1;
  }

  return v10;
}

- (BOOL)tryLock
{
  if (self->_fd != -1)
  {
    return 1;
  }

  v4 = open([(NSString *)self->_fullPath fileSystemRepresentation], 548, 448);
  self->_fd = v4;
  return v4 != -1;
}

- (void)setName:(id)name
{
  p_name = &self->_name;
  nameCopy = name;
  if (![(NSString *)*p_name isEqualToString:?])
  {
    if (self->_fd != -1)
    {
      v7 = &self->_name;
      name = self->_name;
      v8 = v7[1];
      v9 = [(NSString *)v8 stringByAppendingPathComponent:name];
      v10 = [(NSString *)v8 stringByAppendingPathComponent:nameCopy];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager moveItemAtPath:v9 toPath:v10 error:0];
    }

    objc_storeStrong(p_name, name);
  }
}

@end