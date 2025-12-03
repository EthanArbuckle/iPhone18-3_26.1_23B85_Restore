@interface DCDocumentCameraViewServiceSession
- (DCDocumentCameraViewServiceSession)initWithCoder:(id)coder;
- (DCDocumentCameraViewServiceSession)initWithSessionRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
- (void)setup;
@end

@implementation DCDocumentCameraViewServiceSession

- (DCDocumentCameraViewServiceSession)initWithSessionRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = DCDocumentCameraViewServiceSession;
  v6 = [(DCDocumentCameraViewServiceSession *)&v8 init];
  if (v6)
  {
    v6->_viewServicePid = getpid();
    objc_storeStrong(&v6->_sessionRequest, request);
    [(DCDocumentCameraViewServiceSession *)v6 setup];
  }

  return v6;
}

- (void)setup
{
  sessionRequest = [(DCDocumentCameraViewServiceSession *)self sessionRequest];
  cachesDirectorySandboxExtension = [sessionRequest cachesDirectorySandboxExtension];
  fileURL = [cachesDirectorySandboxExtension fileURL];

  v5 = [[ICDocCamImageCache alloc] initWithDataCryptorDelegate:0 cachesDirectoryURL:fileURL];
  docCamImageCache = self->_docCamImageCache;
  self->_docCamImageCache = v5;
}

- (DCDocumentCameraViewServiceSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DCDocumentCameraViewServiceSession;
  v5 = [(DCDocumentCameraViewServiceSession *)&v9 init];
  if (v5)
  {
    v5->_viewServicePid = [coderCopy decodeInt32ForKey:@"kPIDFieldCodingKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSessionRequestFieldCodingKey"];
    sessionRequest = v5->_sessionRequest;
    v5->_sessionRequest = v6;

    [(DCDocumentCameraViewServiceSession *)v5 setup];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[DCDocumentCameraViewServiceSession viewServicePid](self forKey:{"viewServicePid"), @"kPIDFieldCodingKey"}];
  sessionRequest = [(DCDocumentCameraViewServiceSession *)self sessionRequest];
  [coderCopy encodeObject:sessionRequest forKey:@"kSessionRequestFieldCodingKey"];
}

@end