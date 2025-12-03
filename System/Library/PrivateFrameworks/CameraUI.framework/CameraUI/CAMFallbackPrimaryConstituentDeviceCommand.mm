@interface CAMFallbackPrimaryConstituentDeviceCommand
- (CAMFallbackPrimaryConstituentDeviceCommand)initWithCoder:(id)coder;
- (CAMFallbackPrimaryConstituentDeviceCommand)initWithFallbackPrimaryConstituentDeviceSelection:(int64_t)selection;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMFallbackPrimaryConstituentDeviceCommand

- (CAMFallbackPrimaryConstituentDeviceCommand)initWithFallbackPrimaryConstituentDeviceSelection:(int64_t)selection
{
  v5.receiver = self;
  v5.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->__deviceSelection = selection;
  }

  return result;
}

- (CAMFallbackPrimaryConstituentDeviceCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMFallbackPrimaryConstituentDeviceCommand *)self _deviceSelection];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _deviceSelection = [(CAMFallbackPrimaryConstituentDeviceCommand *)self _deviceSelection];
  currentVideoDevice = [contextCopy currentVideoDevice];

  if (_deviceSelection == 2)
  {
    supportedFallbackPrimaryConstituentDevices = [currentVideoDevice supportedFallbackPrimaryConstituentDevices];
    v6 = [supportedFallbackPrimaryConstituentDevices mutableCopy];

    v9 = [v6 indexOfObjectPassingTest:&__block_literal_global_59];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeObjectAtIndex:v9];
    }
  }

  else if (_deviceSelection == 1)
  {
    supportedFallbackPrimaryConstituentDevices2 = [currentVideoDevice supportedFallbackPrimaryConstituentDevices];
    v6 = [supportedFallbackPrimaryConstituentDevices2 mutableCopy];
  }

  else
  {
    if (_deviceSelection)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  }

  if (v6)
  {
    [currentVideoDevice setFallbackPrimaryConstituentDevices:v6];
  }

LABEL_10:
}

BOOL __65__CAMFallbackPrimaryConstituentDeviceCommand_executeWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceType];
  v3 = v2 == *MEMORY[0x1E6986948];

  return v3;
}

@end