@interface LACUIPasscodeFieldLayout
- (LAUITextField)field;
- (UIStackView)background;
- (UIView)container;
@end

@implementation LACUIPasscodeFieldLayout

- (UIView)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (LAUITextField)field
{
  WeakRetained = objc_loadWeakRetained(&self->_field);

  return WeakRetained;
}

- (UIStackView)background
{
  WeakRetained = objc_loadWeakRetained(&self->_background);

  return WeakRetained;
}

@end