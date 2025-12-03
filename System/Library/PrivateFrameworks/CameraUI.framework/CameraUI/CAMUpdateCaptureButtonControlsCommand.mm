@interface CAMUpdateCaptureButtonControlsCommand
- (CAMUpdateCaptureButtonControlsCommand)initWithRecording:(BOOL)recording captureMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMUpdateCaptureButtonControlsCommand

- (CAMUpdateCaptureButtonControlsCommand)initWithRecording:(BOOL)recording captureMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled
{
  v11.receiver = self;
  v11.super_class = CAMUpdateCaptureButtonControlsCommand;
  result = [(CAMCaptureCommand *)&v11 init];
  if (result)
  {
    result->__recording = recording;
    result->__captureMode = mode;
    result->__devicePosition = position;
    result->__depthSuggestionEnabled = enabled;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMUpdateCaptureButtonControlsCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[4] = [(CAMUpdateCaptureButtonControlsCommand *)self _captureMode];
  v4[5] = [(CAMUpdateCaptureButtonControlsCommand *)self _devicePosition];
  *(v4 + 24) = [(CAMUpdateCaptureButtonControlsCommand *)self _recording];
  *(v4 + 25) = [(CAMUpdateCaptureButtonControlsCommand *)self _depthSuggestionEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  [contextCopy updateControlEnablementForRecording:-[CAMUpdateCaptureButtonControlsCommand _recording](self mode:"_recording") devicePosition:-[CAMUpdateCaptureButtonControlsCommand _captureMode](self depthSuggestionEnabled:{"_captureMode"), -[CAMUpdateCaptureButtonControlsCommand _devicePosition](self, "_devicePosition"), -[CAMUpdateCaptureButtonControlsCommand _depthSuggestionEnabled](self, "_depthSuggestionEnabled")}];
  [contextCopy updateLensSelectorForRecording:-[CAMUpdateCaptureButtonControlsCommand _recording](self mode:"_recording") devicePosition:{-[CAMUpdateCaptureButtonControlsCommand _captureMode](self, "_captureMode"), -[CAMUpdateCaptureButtonControlsCommand _devicePosition](self, "_devicePosition")}];
}

@end