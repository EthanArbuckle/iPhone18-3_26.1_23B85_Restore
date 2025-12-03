@interface FigCaptureSessionParsedDepthDataSinkConfiguration
- (void)dealloc;
- (void)initWithDepthDataConnectionConfiguration:(void *)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration metadataObjectConnectionConfiguration:;
@end

@implementation FigCaptureSessionParsedDepthDataSinkConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedDepthDataSinkConfiguration;
  [(FigCaptureSessionParsedDepthDataSinkConfiguration *)&v3 dealloc];
}

- (void)initWithDepthDataConnectionConfiguration:(void *)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration metadataObjectConnectionConfiguration:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = FigCaptureSessionParsedDepthDataSinkConfiguration;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    v7[1] = a2;
    v7[2] = configuration;
    v7[3] = connectionConfiguration;
  }

  return v7;
}

@end