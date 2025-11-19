@interface _CertInfoActionButton
- (void)setTitle:(id)a3 destructive:(BOOL)a4;
@end

@implementation _CertInfoActionButton

- (void)setTitle:(id)a3 destructive:(BOOL)a4
{
  v4 = a4;
  [(_CertInfoActionButton *)self setTitle:a3 forState:0];
  v6 = &_removeButtonImage;
  if (v4)
  {
    v7 = &_removeButtonPressedImage;
  }

  else
  {
    v6 = &_installButtonImage;
    v7 = &_installButtonPressedImage;
  }

  [(_CertInfoActionButton *)self setBackgroundImage:*v6 forState:0];
  v8 = *v7;

  [(_CertInfoActionButton *)self setBackgroundImage:v8 forState:1];
}

@end