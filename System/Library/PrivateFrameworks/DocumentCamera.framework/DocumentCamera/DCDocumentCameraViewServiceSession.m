@interface DCDocumentCameraViewServiceSession
- (DCDocumentCameraViewServiceSession)initWithCoder:(id)a3;
- (DCDocumentCameraViewServiceSession)initWithSessionRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setup;
@end

@implementation DCDocumentCameraViewServiceSession

- (DCDocumentCameraViewServiceSession)initWithSessionRequest:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = DCDocumentCameraViewServiceSession;
  v6 = [(DCDocumentCameraViewServiceSession *)&v8 init];
  if (v6)
  {
    v6->_viewServicePid = getpid();
    objc_storeStrong(&v6->_sessionRequest, a3);
    [(DCDocumentCameraViewServiceSession *)v6 setup];
  }

  return v6;
}

- (void)setup
{
  v3 = [(DCDocumentCameraViewServiceSession *)self sessionRequest];
  v4 = [v3 cachesDirectorySandboxExtension];
  v7 = [v4 fileURL];

  v5 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0 cachesDirectoryURL:v7];
  docCamImageCache = self->_docCamImageCache;
  self->_docCamImageCache = v5;
}

- (DCDocumentCameraViewServiceSession)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DCDocumentCameraViewServiceSession;
  v5 = [(DCDocumentCameraViewServiceSession *)&v9 init];
  if (v5)
  {
    v5->_viewServicePid = [v4 decodeInt32ForKey:@"kPIDFieldCodingKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSessionRequestFieldCodingKey"];
    sessionRequest = v5->_sessionRequest;
    v5->_sessionRequest = v6;

    [(DCDocumentCameraViewServiceSession *)v5 setup];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[DCDocumentCameraViewServiceSession viewServicePid](self forKey:{"viewServicePid"), @"kPIDFieldCodingKey"}];
  v5 = [(DCDocumentCameraViewServiceSession *)self sessionRequest];
  [v4 encodeObject:v5 forKey:@"kSessionRequestFieldCodingKey"];
}

@end