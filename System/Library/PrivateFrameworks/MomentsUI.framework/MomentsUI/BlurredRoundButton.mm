@interface BlurredRoundButton
- (void)layoutSubviews;
- (void)touchedButton:(id)button;
@end

@implementation BlurredRoundButton

- (void)touchedButton:(id)button
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x68);
  selfCopy = self;
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v4();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  else
  {
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  [(BlurredRoundButton *)selfCopy bounds];
  [(BlurredRoundButton *)selfCopy _setCornerRadius:v2 * 0.5];
  [(BlurredRoundButton *)selfCopy setClipsToBounds:1];
}

@end