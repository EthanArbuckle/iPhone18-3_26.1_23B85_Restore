@interface BlurredRoundButton
- (void)layoutSubviews;
- (void)touchedButton:(id)a3;
@end

@implementation BlurredRoundButton

- (void)touchedButton:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x68);
  v6 = self;
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
  v3 = self;
  [(BlurredRoundButton *)v3 bounds];
  [(BlurredRoundButton *)v3 _setCornerRadius:v2 * 0.5];
  [(BlurredRoundButton *)v3 setClipsToBounds:1];
}

@end