@interface MCMFSNode
- (BOOL)isDirectory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFSNode:(id)a3;
- (BOOL)isSymlink;
- (MCMFSNode)initWithINode:(unint64_t)a3 device:(int)a4 ctime:(timespec)a5 mtime:(timespec)a6 birthtime:(timespec)a7 isDirectory:(BOOL)a8 isSymlink:(BOOL)a9;
- (MCMFSNode)initWithStat:(stat *)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (int)device;
- (timespec)birthtime;
- (timespec)ctime;
- (timespec)mtime;
- (unint64_t)hash;
- (unint64_t)inode;
@end

@implementation MCMFSNode

- (timespec)ctime
{
  tv_sec = self->_ctime.tv_sec;
  tv_nsec = self->_ctime.tv_nsec;
  v5 = *MEMORY[0x1E69E9840];
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (BOOL)isSymlink
{
  result = self->_isSymlink;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isDirectory
{
  result = self->_isDirectory;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (timespec)birthtime
{
  tv_sec = self->_birthtime.tv_sec;
  tv_nsec = self->_birthtime.tv_nsec;
  v5 = *MEMORY[0x1E69E9840];
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (timespec)mtime
{
  tv_sec = self->_mtime.tv_sec;
  tv_nsec = self->_mtime.tv_nsec;
  v5 = *MEMORY[0x1E69E9840];
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (int)device
{
  result = self->_device;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)inode
{
  result = self->_inode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 2) = self->_inode;
    *(result + 3) = self->_device;
    *(result + 24) = self->_ctime;
    *(result + 40) = self->_mtime;
    *(result + 56) = self->_birthtime;
    *(result + 8) = self->_isDirectory;
    *(result + 9) = self->_isSymlink;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMFSNode *)self isEqualToFSNode:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToFSNode:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_inode == v4[2] && self->_device == *(v4 + 3) && self->_isDirectory == *(v4 + 8) && self->_isSymlink == *(v4 + 9);

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v2 = 2;
  if (!self->_isSymlink)
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  return self->_inode ^ self->_device ^ self->_isDirectory ^ v2;
}

- (NSString)description
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v20 = [(MCMFSNode *)self inode];
  v19 = [(MCMFSNode *)self device];
  v18 = [(MCMFSNode *)self ctime];
  [(MCMFSNode *)self ctime];
  v6 = v5;
  v7 = [(MCMFSNode *)self mtime];
  [(MCMFSNode *)self mtime];
  v9 = v8;
  v10 = [(MCMFSNode *)self birthtime];
  [(MCMFSNode *)self birthtime];
  v12 = v11;
  if ([(MCMFSNode *)self isDirectory])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(MCMFSNode *)self isSymlink])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v21 stringWithFormat:@"<%@: %p inode = %llu, device = %d, ctime = %ld.%09ld, mtime = %ld.%09ld, birthtime = %ld.%09ld, isDirectory = %@, isSymlink = %@>", v4, self, v20, v19, v18, v6, v7, v9, v10, v12, v13, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (MCMFSNode)initWithStat:(stat *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3->st_mode & 0xF000;
    BYTE1(v7) = v3 == 40960;
    LOBYTE(v7) = v3 == 0x4000;
    self = [(MCMFSNode *)self initWithINode:a3->st_ino device:a3->st_dev ctime:a3->st_ctimespec.tv_sec mtime:a3->st_ctimespec.tv_nsec birthtime:a3->st_mtimespec.tv_sec isDirectory:a3->st_mtimespec.tv_nsec isSymlink:a3->st_birthtimespec.tv_sec, a3->st_birthtimespec.tv_nsec, v7];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMFSNode)initWithINode:(unint64_t)a3 device:(int)a4 ctime:(timespec)a5 mtime:(timespec)a6 birthtime:(timespec)a7 isDirectory:(BOOL)a8 isSymlink:(BOOL)a9
{
  tv_nsec = a6.tv_nsec;
  tv_sec = a6.tv_sec;
  v11 = a5.tv_nsec;
  v12 = a5.tv_sec;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCMFSNode;
  result = [(MCMFSNode *)&v17 init];
  if (result)
  {
    result->_device = a4;
    result->_inode = a3;
    result->_ctime.tv_sec = v12;
    result->_ctime.tv_nsec = v11;
    result->_mtime.tv_sec = tv_sec;
    result->_mtime.tv_nsec = tv_nsec;
    result->_birthtime = a7;
    result->_isDirectory = a8;
    result->_isSymlink = a9;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end