@interface MCMFSNode
- (BOOL)isDirectory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFSNode:(id)node;
- (BOOL)isSymlink;
- (MCMFSNode)initWithINode:(unint64_t)node device:(int)device ctime:(timespec)ctime mtime:(timespec)mtime birthtime:(timespec)birthtime isDirectory:(BOOL)directory isSymlink:(BOOL)symlink;
- (MCMFSNode)initWithStat:(stat *)stat;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMFSNode *)self isEqualToFSNode:equalCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToFSNode:(id)node
{
  v8 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v5 = self->_inode == nodeCopy[2] && self->_device == *(nodeCopy + 3) && self->_isDirectory == *(nodeCopy + 8) && self->_isSymlink == *(nodeCopy + 9);

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
  inode = [(MCMFSNode *)self inode];
  device = [(MCMFSNode *)self device];
  ctime = [(MCMFSNode *)self ctime];
  [(MCMFSNode *)self ctime];
  v6 = v5;
  mtime = [(MCMFSNode *)self mtime];
  [(MCMFSNode *)self mtime];
  v9 = v8;
  birthtime = [(MCMFSNode *)self birthtime];
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

  v15 = [v21 stringWithFormat:@"<%@: %p inode = %llu, device = %d, ctime = %ld.%09ld, mtime = %ld.%09ld, birthtime = %ld.%09ld, isDirectory = %@, isSymlink = %@>", v4, self, inode, device, ctime, v6, mtime, v9, birthtime, v12, v13, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (MCMFSNode)initWithStat:(stat *)stat
{
  v8 = *MEMORY[0x1E69E9840];
  if (stat)
  {
    v3 = stat->st_mode & 0xF000;
    BYTE1(v7) = v3 == 40960;
    LOBYTE(v7) = v3 == 0x4000;
    self = [(MCMFSNode *)self initWithINode:stat->st_ino device:stat->st_dev ctime:stat->st_ctimespec.tv_sec mtime:stat->st_ctimespec.tv_nsec birthtime:stat->st_mtimespec.tv_sec isDirectory:stat->st_mtimespec.tv_nsec isSymlink:stat->st_birthtimespec.tv_sec, stat->st_birthtimespec.tv_nsec, v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (MCMFSNode)initWithINode:(unint64_t)node device:(int)device ctime:(timespec)ctime mtime:(timespec)mtime birthtime:(timespec)birthtime isDirectory:(BOOL)directory isSymlink:(BOOL)symlink
{
  tv_nsec = mtime.tv_nsec;
  tv_sec = mtime.tv_sec;
  v11 = ctime.tv_nsec;
  v12 = ctime.tv_sec;
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCMFSNode;
  result = [(MCMFSNode *)&v17 init];
  if (result)
  {
    result->_device = device;
    result->_inode = node;
    result->_ctime.tv_sec = v12;
    result->_ctime.tv_nsec = v11;
    result->_mtime.tv_sec = tv_sec;
    result->_mtime.tv_nsec = tv_nsec;
    result->_birthtime = birthtime;
    result->_isDirectory = directory;
    result->_isSymlink = symlink;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end