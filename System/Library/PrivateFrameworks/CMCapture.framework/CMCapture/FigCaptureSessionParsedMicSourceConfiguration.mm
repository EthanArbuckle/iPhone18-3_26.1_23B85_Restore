@interface FigCaptureSessionParsedMicSourceConfiguration
- (void)dealloc;
- (void)initWithMicConnectionConfigurations:(void *)configurations cameraConfigurationForStereoAudioCapture:(void *)capture movieFileVideoConnectionConfigurationForStereoAudioCapture:(uint64_t)audioCapture clientSDKVersionToken:(void *)token remoteIOOutputFormat:;
@end

@implementation FigCaptureSessionParsedMicSourceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedMicSourceConfiguration;
  [(FigCaptureSessionParsedMicSourceConfiguration *)&v3 dealloc];
}

- (void)initWithMicConnectionConfigurations:(void *)configurations cameraConfigurationForStereoAudioCapture:(void *)capture movieFileVideoConnectionConfigurationForStereoAudioCapture:(uint64_t)audioCapture clientSDKVersionToken:(void *)token remoteIOOutputFormat:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = FigCaptureSessionParsedMicSourceConfiguration;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  if (v11)
  {
    v11[1] = a2;
    v11[2] = configurations;
    v11[3] = capture;
    v11[4] = audioCapture;
    v11[5] = token;
  }

  return v11;
}

@end