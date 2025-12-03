@interface CAMResetVideoMinFrameDurationOverrideCommand
- (id)initForSecondaryDevice;
- (void)executeWithContext:(id)context;
@end

@implementation CAMResetVideoMinFrameDurationOverrideCommand

- (id)initForSecondaryDevice
{
  v6.receiver = self;
  v6.super_class = CAMResetVideoMinFrameDurationOverrideCommand;
  v2 = [(CAMCaptureCommand *)&v6 initWithSubcommands:0];
  v3 = v2;
  if (v2)
  {
    v2->__resetSecondaryDevice = 1;
    v4 = v2;
  }

  return v3;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  if ([(CAMResetVideoMinFrameDurationOverrideCommand *)self _resetSecondaryDevice])
  {
    [contextCopy currentSecondaryVideoDeviceInput];
  }

  else
  {
    [contextCopy currentVideoDeviceInput];
  }
  v5 = ;

  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  [v5 setVideoMinFrameDurationOverride:&v6];
}

@end