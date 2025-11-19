@interface CAMFallbackPrimaryConstituentDeviceCommand
- (CAMFallbackPrimaryConstituentDeviceCommand)initWithCoder:(id)a3;
- (CAMFallbackPrimaryConstituentDeviceCommand)initWithFallbackPrimaryConstituentDeviceSelection:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFallbackPrimaryConstituentDeviceCommand

- (CAMFallbackPrimaryConstituentDeviceCommand)initWithFallbackPrimaryConstituentDeviceSelection:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->__deviceSelection = a3;
  }

  return result;
}

- (CAMFallbackPrimaryConstituentDeviceCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMFallbackPrimaryConstituentDeviceCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[3] = [(CAMFallbackPrimaryConstituentDeviceCommand *)self _deviceSelection];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMFallbackPrimaryConstituentDeviceCommand *)self _deviceSelection];
  v10 = [v4 currentVideoDevice];

  if (v5 == 2)
  {
    v8 = [v10 supportedFallbackPrimaryConstituentDevices];
    v6 = [v8 mutableCopy];

    v9 = [v6 indexOfObjectPassingTest:&__block_literal_global_59];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeObjectAtIndex:v9];
    }
  }

  else if (v5 == 1)
  {
    v7 = [v10 supportedFallbackPrimaryConstituentDevices];
    v6 = [v7 mutableCopy];
  }

  else
  {
    if (v5)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  }

  if (v6)
  {
    [v10 setFallbackPrimaryConstituentDevices:v6];
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