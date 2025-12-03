@interface FSUnaryFileSystem
- (FSUnaryFileSystem)init;
- (void)wipeResource:(id)resource completionHandler:(id)handler;
@end

@implementation FSUnaryFileSystem

- (FSUnaryFileSystem)init
{
  v7.receiver = self;
  v7.super_class = FSUnaryFileSystem;
  v2 = [(FSUnaryFileSystem *)&v7 init];
  if (v2)
  {
    v3 = fs_errorForPOSIXError(35);
    v4 = [FSContainerStatus notReadyWithStatus:v3];
    containerStatus = v2->_containerStatus;
    v2->_containerStatus = v4;
  }

  return v2;
}

- (void)wipeResource:(id)resource completionHandler:(id)handler
{
  handlerCopy = handler;
  resourceCopy = resource;
  extension = [(FSUnaryFileSystem *)self extension];
  [FSFileSystemBasis wipeResource:resourceCopy extension:extension completionHandler:handlerCopy];
}

@end