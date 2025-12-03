@interface FigCaptureSessionParsedMetadataSinkConfiguration
- (void)dealloc;
- (void)initWithMetadataObjectConnectionConfiguration:(uint64_t)configuration sceneClassifierConnectionConfiguration:videoDataConnectionConfiguration:videoPreviewSinkConnectionConfiguration:movieFileVideoConnectionConfiguration:movieFileDetectedObjectMetadataConnectionConfigurations:;
@end

@implementation FigCaptureSessionParsedMetadataSinkConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMetadataSinkConfiguration;
  [(FigCaptureSessionParsedMetadataSinkConfiguration *)&v3 dealloc];
}

- (void)initWithMetadataObjectConnectionConfiguration:(uint64_t)configuration sceneClassifierConnectionConfiguration:videoDataConnectionConfiguration:videoPreviewSinkConnectionConfiguration:movieFileVideoConnectionConfiguration:movieFileDetectedObjectMetadataConnectionConfigurations:
{
  if (!configuration)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_13();
  v10.receiver = v7;
  v10.super_class = FigCaptureSessionParsedMetadataSinkConfiguration;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  if (v8)
  {
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v3;
    v8[5] = v2;
    v8[6] = v1;
  }

  return v8;
}

@end