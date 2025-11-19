@interface CAMCreativeCameraButton
- (CAMCreativeCameraButton)initWithLayoutStyle:(int64_t)a3;
- (UIEdgeInsets)tappableEdgeInsets;
- (id)initForOverContent;
@end

@implementation CAMCreativeCameraButton

- (CAMCreativeCameraButton)initWithLayoutStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CAMCreativeCameraButton;
  v3 = [(CAMCreativeCameraButton *)&v7 initWithFrame:a3, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)initForOverContent
{
  v6.receiver = self;
  v6.super_class = CAMCreativeCameraButton;
  v2 = [(CAMCreativeCameraButton *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end