@interface FigCaptureSessionParsedVisionDataSinkConfiguration
- (void)dealloc;
- (void)initWithVisionDataConnectionConfiguration:(void *)a3 videoDataConnectionConfiguration:;
@end

@implementation FigCaptureSessionParsedVisionDataSinkConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedVisionDataSinkConfiguration;
  [(FigCaptureSessionParsedVisionDataSinkConfiguration *)&v3 dealloc];
}

- (void)initWithVisionDataConnectionConfiguration:(void *)a3 videoDataConnectionConfiguration:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = FigCaptureSessionParsedVisionDataSinkConfiguration;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a3;
  }

  return v5;
}

@end