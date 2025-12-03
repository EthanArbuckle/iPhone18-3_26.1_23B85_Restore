@interface AVCaptureOutput(CAMCaptureEngine)
- (id)currentRequest;
@end

@implementation AVCaptureOutput(CAMCaptureEngine)

- (id)currentRequest
{
  if (objc_opt_respondsToSelector())
  {
    userInfo = [self userInfo];
    v3 = userInfo;
    if (userInfo)
    {
      v4 = [userInfo objectForKeyedSubscript:@"CAMCaptureEngineCurrentRequestKey"];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

@end