@interface CAMDeviceTooHotInstructionLabel
- (CAMDeviceTooHotInstructionLabel)initWithFrame:(CGRect)frame;
@end

@implementation CAMDeviceTooHotInstructionLabel

- (CAMDeviceTooHotInstructionLabel)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CAMDeviceTooHotInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    model = [currentDevice model];
    v7 = [v4 stringWithFormat:@"DEVICE_TOO_HOT_%@", model];

    v8 = CAMLocalizedFrameworkString(v7, 0);
    [(CAMInstructionLabel *)v3 setText:v8];
  }

  return v3;
}

@end