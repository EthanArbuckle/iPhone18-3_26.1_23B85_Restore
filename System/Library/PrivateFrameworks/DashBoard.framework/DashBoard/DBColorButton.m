@interface DBColorButton
- (id)_externalUnfocusedBorderColor;
@end

@implementation DBColorButton

- (id)_externalUnfocusedBorderColor
{
  v3 = [(DBColorButton *)self carButtonColor];

  if (v3)
  {
    v4 = [(DBColorButton *)self carButtonColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DBColorButton;
    v4 = [(DBColorButton *)&v6 _externalUnfocusedBorderColor];
  }

  return v4;
}

@end