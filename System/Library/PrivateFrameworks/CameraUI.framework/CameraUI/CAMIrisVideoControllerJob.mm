@interface CAMIrisVideoControllerJob
- (CAMIrisVideoControllerJob)initWithRequest:(id)request videoCaptureResult:(id)result;
@end

@implementation CAMIrisVideoControllerJob

- (CAMIrisVideoControllerJob)initWithRequest:(id)request videoCaptureResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = CAMIrisVideoControllerJob;
  v9 = [(CAMIrisVideoControllerJob *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_videoCaptureResult, result);
    v11 = v10;
  }

  return v10;
}

@end