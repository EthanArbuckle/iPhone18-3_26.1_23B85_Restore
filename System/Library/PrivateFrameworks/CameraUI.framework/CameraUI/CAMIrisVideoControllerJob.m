@interface CAMIrisVideoControllerJob
- (CAMIrisVideoControllerJob)initWithRequest:(id)a3 videoCaptureResult:(id)a4;
@end

@implementation CAMIrisVideoControllerJob

- (CAMIrisVideoControllerJob)initWithRequest:(id)a3 videoCaptureResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CAMIrisVideoControllerJob;
  v9 = [(CAMIrisVideoControllerJob *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_videoCaptureResult, a4);
    v11 = v10;
  }

  return v10;
}

@end