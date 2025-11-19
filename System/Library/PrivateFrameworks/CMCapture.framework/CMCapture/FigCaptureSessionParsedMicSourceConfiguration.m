@interface FigCaptureSessionParsedMicSourceConfiguration
- (void)dealloc;
- (void)initWithMicConnectionConfigurations:(void *)a3 cameraConfigurationForStereoAudioCapture:(void *)a4 movieFileVideoConnectionConfigurationForStereoAudioCapture:(uint64_t)a5 clientSDKVersionToken:(void *)a6 remoteIOOutputFormat:;
@end

@implementation FigCaptureSessionParsedMicSourceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMicSourceConfiguration;
  [(FigCaptureSessionParsedMicSourceConfiguration *)&v3 dealloc];
}

- (void)initWithMicConnectionConfigurations:(void *)a3 cameraConfigurationForStereoAudioCapture:(void *)a4 movieFileVideoConnectionConfigurationForStereoAudioCapture:(uint64_t)a5 clientSDKVersionToken:(void *)a6 remoteIOOutputFormat:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = FigCaptureSessionParsedMicSourceConfiguration;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;
  }

  return v11;
}

@end