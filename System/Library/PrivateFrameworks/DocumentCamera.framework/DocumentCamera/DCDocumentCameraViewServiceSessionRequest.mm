@interface DCDocumentCameraViewServiceSessionRequest
- (DCDocumentCameraViewServiceSessionRequest)init;
- (DCDocumentCameraViewServiceSessionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCDocumentCameraViewServiceSessionRequest

- (DCDocumentCameraViewServiceSessionRequest)init
{
  v12.receiver = self;
  v12.super_class = DCDocumentCameraViewServiceSessionRequest;
  v2 = [(DCDocumentCameraViewServiceSessionRequest *)&v12 init];
  if (v2)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    _localizedApplicationName = [mEMORY[0x277D75128] _localizedApplicationName];
    appName = v2->_appName;
    v2->_appName = _localizedApplicationName;

    v6 = [DCSandboxExtension alloc];
    v7 = +[DCCachesDirectory sharedCachesDirectory];
    cachesDirectoryURL = [v7 cachesDirectoryURL];
    v9 = [(DCSandboxExtension *)v6 initWithFileURL:cachesDirectoryURL];
    cachesDirectorySandboxExtension = v2->_cachesDirectorySandboxExtension;
    v2->_cachesDirectorySandboxExtension = v9;
  }

  return v2;
}

- (DCDocumentCameraViewServiceSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DCDocumentCameraViewServiceSessionRequest;
  v5 = [(DCDocumentCameraViewServiceSessionRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAppNameFieldCodingKey"];
    appName = v5->_appName;
    v5->_appName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCachesDirectorySandboxExtensionFieldCodingKey"];
    cachesDirectorySandboxExtension = v5->_cachesDirectorySandboxExtension;
    v5->_cachesDirectorySandboxExtension = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appName = [(DCDocumentCameraViewServiceSessionRequest *)self appName];
  [coderCopy encodeObject:appName forKey:@"kAppNameFieldCodingKey"];

  cachesDirectorySandboxExtension = [(DCDocumentCameraViewServiceSessionRequest *)self cachesDirectorySandboxExtension];
  [coderCopy encodeObject:cachesDirectorySandboxExtension forKey:@"kCachesDirectorySandboxExtensionFieldCodingKey"];
}

@end