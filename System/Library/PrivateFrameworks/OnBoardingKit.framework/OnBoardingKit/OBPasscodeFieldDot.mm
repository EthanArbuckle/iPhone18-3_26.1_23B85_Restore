@interface OBPasscodeFieldDot
- (CGSize)intrinsicContentSize;
- (OBPasscodeFieldDot)init;
- (void)_updateView;
- (void)setFilled:(BOOL)filled;
- (void)traitCollectionDidChange:(id)change;
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
    layer = [(OBPasscodeFieldDot *)v2 layer];
    [layer setCornerRadius:10.0];

    layer2 = [(OBPasscodeFieldDot *)v3 layer];
    [layer2 setMasksToBounds:1];

    layer3 = [(OBPasscodeFieldDot *)v3 layer];
    [layer3 setBorderWidth:2.0];

    [(OBPasscodeFieldDot *)v3 _updateView];
  }

  return v3;
}

- (void)setFilled:(BOOL)filled
{
  if (self->_filled != filled)
  {
    self->_filled = filled;
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBPasscodeFieldDot;
  [(OBPasscodeFieldDot *)&v4 traitCollectionDidChange:change];
  [(OBPasscodeFieldDot *)self _updateView];
}

- (void)_updateView
{
  if ([(OBPasscodeFieldDot *)self isFilled])
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    cGColor = [labelColor CGColor];
    layer = [(OBPasscodeFieldDot *)self layer];
    [layer setBackgroundColor:cGColor];

    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    cGColor2 = [clearColor CGColor];
    layer2 = [(OBPasscodeFieldDot *)self layer];
    [layer2 setBackgroundColor:cGColor2];

    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v12 = ;
  v9 = v12;
  cGColor3 = [v12 CGColor];
  layer3 = [(OBPasscodeFieldDot *)self layer];
  [layer3 setBorderColor:cGColor3];
}

@end