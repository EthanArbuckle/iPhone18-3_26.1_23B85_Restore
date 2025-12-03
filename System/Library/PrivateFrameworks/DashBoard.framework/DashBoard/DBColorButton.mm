@interface DBColorButton
- (id)_externalUnfocusedBorderColor;
@end

@implementation DBColorButton

- (id)_externalUnfocusedBorderColor
{
  carButtonColor = [(DBColorButton *)self carButtonColor];

  if (carButtonColor)
  {
    carButtonColor2 = [(DBColorButton *)self carButtonColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DBColorButton;
    carButtonColor2 = [(DBColorButton *)&v6 _externalUnfocusedBorderColor];
  }

  return carButtonColor2;
}

@end