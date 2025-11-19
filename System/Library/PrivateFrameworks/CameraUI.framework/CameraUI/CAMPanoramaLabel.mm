@interface CAMPanoramaLabel
- (CAMPanoramaLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_textInsets;
@end

@implementation CAMPanoramaLabel

- (CAMPanoramaLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMPanoramaLabel;
  v3 = [(CAMInstructionLabel *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(CAMInstructionLabel *)v3 setStyle:1];
    v5 = v4;
  }

  return v4;
}

- (UIEdgeInsets)_textInsets
{
  v2 = 2.0;
  v3 = 8.0;
  v4 = 2.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end