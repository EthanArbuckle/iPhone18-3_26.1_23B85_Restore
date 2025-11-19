@interface DCDocumentCameraViewServiceSessionRequest
- (DCDocumentCameraViewServiceSessionRequest)init;
- (DCDocumentCameraViewServiceSessionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCDocumentCameraViewServiceSessionRequest

- (DCDocumentCameraViewServiceSessionRequest)init
{
  v12.receiver = self;
  v12.super_class = DCDocumentCameraViewServiceSessionRequest;
  v2 = [(DCDocumentCameraViewServiceSessionRequest *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 _localizedApplicationName];
    appName = v2->_appName;
    v2->_appName = v4;

    v6 = [DCSandboxExtension alloc];
    v7 = +[DCCachesDirectory sharedCachesDirectory];
    v8 = [v7 cachesDirectoryURL];
    v9 = [(DCSandboxExtension *)v6 initWithFileURL:v8];
    cachesDirectorySandboxExtension = v2->_cachesDirectorySandboxExtension;
    v2->_cachesDirectorySandboxExtension = v9;
  }

  return v2;
}

- (DCDocumentCameraViewServiceSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DCDocumentCameraViewServiceSessionRequest;
  v5 = [(DCDocumentCameraViewServiceSessionRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAppNameFieldCodingKey"];
    appName = v5->_appName;
    v5->_appName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCachesDirectorySandboxExtensionFieldCodingKey"];
    cachesDirectorySandboxExtension = v5->_cachesDirectorySandboxExtension;
    v5->_cachesDirectorySandboxExtension = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCDocumentCameraViewServiceSessionRequest *)self appName];
  [v4 encodeObject:v5 forKey:@"kAppNameFieldCodingKey"];

  v6 = [(DCDocumentCameraViewServiceSessionRequest *)self cachesDirectorySandboxExtension];
  [v4 encodeObject:v6 forKey:@"kCachesDirectorySandboxExtensionFieldCodingKey"];
}

@end