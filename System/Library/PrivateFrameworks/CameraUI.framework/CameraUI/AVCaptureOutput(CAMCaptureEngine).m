@interface AVCaptureOutput(CAMCaptureEngine)
- (id)currentRequest;
@end

@implementation AVCaptureOutput(CAMCaptureEngine)

- (id)currentRequest
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 userInfo];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectForKeyedSubscript:@"CAMCaptureEngineCurrentRequestKey"];
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