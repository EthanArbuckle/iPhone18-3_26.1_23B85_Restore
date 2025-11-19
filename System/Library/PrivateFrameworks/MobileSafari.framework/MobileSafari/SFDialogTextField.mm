@interface SFDialogTextField
- (SFDialogTextField)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setStackPosition:(unint64_t)a3;
@end

@implementation SFDialogTextField

- (SFDialogTextField)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SFDialogTextField;
  v3 = [(SFDialogTextField *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFDialogTextField *)v3 setAdjustsFontForContentSizeCategory:1];
    v5 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    [(SFDialogTextField *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(SFDialogTextField *)v4 setFont:v6];

    [(SFDialogTextField *)v4 _setContinuousCornerRadius:5.0];
    v7 = [(SFDialogTextField *)v4 layer];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.78 alpha:1.0];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];

    [v7 setBorderWidth:_SFOnePixel()];
    v9 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SFDialogTextField;
  [(SFDialogTextField *)&v6 layoutSubviews];
  v3 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  v4 = [v3 CGColor];
  v5 = [(SFDialogTextField *)self layer];
  [v5 setBorderColor:v4];
}

- (void)setStackPosition:(unint64_t)a3
{
  if (self->_stackPosition != a3)
  {
    self->_stackPosition = a3;
    if (a3 <= 2)
    {
      v4 = qword_18BC3E260[a3];
      v5 = [(SFDialogTextField *)self layer];
      [v5 setMaskedCorners:v4];
    }
  }
}

@end