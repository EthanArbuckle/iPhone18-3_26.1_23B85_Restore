@interface CAMUpdateCaptureButtonControlsCommand
- (CAMUpdateCaptureButtonControlsCommand)initWithRecording:(BOOL)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5 depthSuggestionEnabled:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMUpdateCaptureButtonControlsCommand

- (CAMUpdateCaptureButtonControlsCommand)initWithRecording:(BOOL)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5 depthSuggestionEnabled:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = CAMUpdateCaptureButtonControlsCommand;
  result = [(CAMCaptureCommand *)&v11 init];
  if (result)
  {
    result->__recording = a3;
    result->__captureMode = a4;
    result->__devicePosition = a5;
    result->__depthSuggestionEnabled = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMUpdateCaptureButtonControlsCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[4] = [(CAMUpdateCaptureButtonControlsCommand *)self _captureMode];
  v4[5] = [(CAMUpdateCaptureButtonControlsCommand *)self _devicePosition];
  *(v4 + 24) = [(CAMUpdateCaptureButtonControlsCommand *)self _recording];
  *(v4 + 25) = [(CAMUpdateCaptureButtonControlsCommand *)self _depthSuggestionEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  [v4 updateControlEnablementForRecording:-[CAMUpdateCaptureButtonControlsCommand _recording](self mode:"_recording") devicePosition:-[CAMUpdateCaptureButtonControlsCommand _captureMode](self depthSuggestionEnabled:{"_captureMode"), -[CAMUpdateCaptureButtonControlsCommand _devicePosition](self, "_devicePosition"), -[CAMUpdateCaptureButtonControlsCommand _depthSuggestionEnabled](self, "_depthSuggestionEnabled")}];
  [v4 updateLensSelectorForRecording:-[CAMUpdateCaptureButtonControlsCommand _recording](self mode:"_recording") devicePosition:{-[CAMUpdateCaptureButtonControlsCommand _captureMode](self, "_captureMode"), -[CAMUpdateCaptureButtonControlsCommand _devicePosition](self, "_devicePosition")}];
}

@end