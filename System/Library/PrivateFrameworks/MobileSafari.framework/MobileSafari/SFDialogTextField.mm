@interface SFDialogTextField
- (SFDialogTextField)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setStackPosition:(unint64_t)position;
@end

@implementation SFDialogTextField

- (SFDialogTextField)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SFDialogTextField;
  v3 = [(SFDialogTextField *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFDialogTextField *)v3 setAdjustsFontForContentSizeCategory:1];
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(SFDialogTextField *)v4 setBackgroundColor:tertiarySystemBackgroundColor];

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(SFDialogTextField *)v4 setFont:v6];

    [(SFDialogTextField *)v4 _setContinuousCornerRadius:5.0];
    layer = [(SFDialogTextField *)v4 layer];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.78 alpha:1.0];
    [layer setBorderColor:{objc_msgSend(v8, "CGColor")}];

    [layer setBorderWidth:_SFOnePixel()];
    v9 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SFDialogTextField;
  [(SFDialogTextField *)&v6 layoutSubviews];
  opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  cGColor = [opaqueSeparatorColor CGColor];
  layer = [(SFDialogTextField *)self layer];
  [layer setBorderColor:cGColor];
}

- (void)setStackPosition:(unint64_t)position
{
  if (self->_stackPosition != position)
  {
    self->_stackPosition = position;
    if (position <= 2)
    {
      v4 = qword_18BC3E260[position];
      layer = [(SFDialogTextField *)self layer];
      [layer setMaskedCorners:v4];
    }
  }
}

@end