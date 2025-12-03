@interface MBFileHandleProxy
- (MBFileHandleProxy)initWithFileHandle:(id)handle;
@end

@implementation MBFileHandleProxy

- (MBFileHandleProxy)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = MBFileHandleProxy;
  v6 = [(MBFileHandleProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, handle);
  }

  return v7;
}

@end