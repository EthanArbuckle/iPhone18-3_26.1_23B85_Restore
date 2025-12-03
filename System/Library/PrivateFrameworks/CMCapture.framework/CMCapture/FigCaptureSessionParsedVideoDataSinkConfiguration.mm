@interface FigCaptureSessionParsedVideoDataSinkConfiguration
- (id)_setMetadataObjectConnectionConfiguration:(id *)result;
- (id)initWithVideoDataConnectionConfiguration:(void *)configuration;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedVideoDataSinkConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedVideoDataSinkConfiguration;
  [(FigCaptureSessionParsedVideoDataSinkConfiguration *)&v3 dealloc];
}

- (id)initWithVideoDataConnectionConfiguration:(void *)configuration
{
  if (!configuration)
  {
    return 0;
  }

  v7.receiver = configuration;
  v7.super_class = FigCaptureSessionParsedVideoDataSinkConfiguration;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3;
  if (a2 && v3)
  {
    v5 = a2;
    *(v4 + 1) = v5;
    *(v4 + 3) = [v5 sourceConfiguration];
    *(v4 + 8) = [*(v4 + 1) underlyingDeviceType];
  }

  return v4;
}

- (id)_setMetadataObjectConnectionConfiguration:(id *)result
{
  if (result)
  {
    v3 = result;

    result = a2;
    v3[2] = result;
    if (!v3[1])
    {
      v3[3] = [result sourceConfiguration];
      result = [v3[2] underlyingDeviceType];
      *(v3 + 8) = result;
    }
  }

  return result;
}

@end