@interface FSFileSystem
- (FSFileSystem)init;
- (void)wipeResource:(id)a3 completionHandler:(id)a4;
@end

@implementation FSFileSystem

- (FSFileSystem)init
{
  v7.receiver = self;
  v7.super_class = FSFileSystem;
  v2 = [(FSFileSystem *)&v7 init];
  if (v2)
  {
    v3 = fs_errorForPOSIXError(35);
    v4 = [FSContainerStatus notReadyWithStatus:v3];
    containerStatus = v2->_containerStatus;
    v2->_containerStatus = v4;
  }

  return v2;
}

- (void)wipeResource:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FSFileSystem *)self extension];
  [FSFileSystemBasis wipeResource:v7 extension:v8 completionHandler:v6];
}

@end