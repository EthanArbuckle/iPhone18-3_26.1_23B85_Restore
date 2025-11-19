@interface ICExclusiveLock
- (BOOL)tryLock;
- (ICExclusiveLock)initWithName:(id)a3 cachePath:(id)a4;
- (void)dealloc;
- (void)lock;
- (void)setName:(id)a3;
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

- (ICExclusiveLock)initWithName:(id)a3 cachePath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ICExclusiveLock;
  v9 = [(ICExclusiveLock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!v7 || !v8)
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must pass a name cachePath into initWithName:" userInfo:0];
      objc_exception_throw(v14);
    }

    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_cachePath, a4);
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

- (void)setName:(id)a3
{
  p_name = &self->_name;
  v12 = a3;
  if (![(NSString *)*p_name isEqualToString:?])
  {
    if (self->_fd != -1)
    {
      v7 = &self->_name;
      name = self->_name;
      v8 = v7[1];
      v9 = [(NSString *)v8 stringByAppendingPathComponent:name];
      v10 = [(NSString *)v8 stringByAppendingPathComponent:v12];

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      [v11 moveItemAtPath:v9 toPath:v10 error:0];
    }

    objc_storeStrong(p_name, a3);
  }
}

@end