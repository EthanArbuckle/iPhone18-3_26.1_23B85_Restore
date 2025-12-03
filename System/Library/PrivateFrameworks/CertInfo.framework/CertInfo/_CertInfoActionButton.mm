@interface _CertInfoActionButton
- (void)setTitle:(id)title destructive:(BOOL)destructive;
@end

@implementation _CertInfoActionButton

- (void)setTitle:(id)title destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  [(_CertInfoActionButton *)self setTitle:title forState:0];
  v6 = &_removeButtonImage;
  if (destructiveCopy)
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