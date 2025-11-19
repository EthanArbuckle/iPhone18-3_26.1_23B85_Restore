@interface SUUISettingsFieldViewElement
- (id)textInputViewElement;
@end

@implementation SUUISettingsFieldViewElement

- (id)textInputViewElement
{
  v2 = [(SUUIViewElement *)self firstChildForElementType:140];
  if ([v2 isMemberOfClass:objc_opt_class()])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end