@interface OBPasscodeFieldDot
- (CGSize)intrinsicContentSize;
- (OBPasscodeFieldDot)init;
- (void)_updateView;
- (void)setFilled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBPasscodeFieldDot

- (OBPasscodeFieldDot)init
{
  v8.receiver = self;
  v8.super_class = OBPasscodeFieldDot;
  v2 = [(OBPasscodeFieldDot *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v4 = [(OBPasscodeFieldDot *)v2 layer];
    [v4 setCornerRadius:10.0];

    v5 = [(OBPasscodeFieldDot *)v3 layer];
    [v5 setMasksToBounds:1];

    v6 = [(OBPasscodeFieldDot *)v3 layer];
    [v6 setBorderWidth:2.0];

    [(OBPasscodeFieldDot *)v3 _updateView];
  }

  return v3;
}

- (void)setFilled:(BOOL)a3
{
  if (self->_filled != a3)
  {
    self->_filled = a3;
    [(OBPasscodeFieldDot *)self _updateView];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBPasscodeFieldDot;
  [(OBPasscodeFieldDot *)&v4 traitCollectionDidChange:a3];
  [(OBPasscodeFieldDot *)self _updateView];
}

- (void)_updateView
{
  if ([(OBPasscodeFieldDot *)self isFilled])
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
    v4 = [v3 CGColor];
    v5 = [(OBPasscodeFieldDot *)self layer];
    [v5 setBackgroundColor:v4];

    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    v7 = [v6 CGColor];
    v8 = [(OBPasscodeFieldDot *)self layer];
    [v8 setBackgroundColor:v7];

    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v12 = ;
  v9 = v12;
  v10 = [v12 CGColor];
  v11 = [(OBPasscodeFieldDot *)self layer];
  [v11 setBorderColor:v10];
}

@end