@interface FigCaptureSessionParsedDepthDataSinkConfiguration
- (void)dealloc;
- (void)initWithDepthDataConnectionConfiguration:(void *)a3 videoDataConnectionConfiguration:(void *)a4 metadataObjectConnectionConfiguration:;
@end

@implementation FigCaptureSessionParsedDepthDataSinkConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedDepthDataSinkConfiguration;
  [(FigCaptureSessionParsedDepthDataSinkConfiguration *)&v3 dealloc];
}

- (void)initWithDepthDataConnectionConfiguration:(void *)a3 videoDataConnectionConfiguration:(void *)a4 metadataObjectConnectionConfiguration:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = FigCaptureSessionParsedDepthDataSinkConfiguration;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[2] = a3;
    v7[3] = a4;
  }

  return v7;
}

@end