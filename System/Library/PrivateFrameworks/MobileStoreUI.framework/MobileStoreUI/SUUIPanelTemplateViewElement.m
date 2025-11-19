@interface SUUIPanelTemplateViewElement
- (SUUIImageViewElement)backgroundImageElement;
@end

@implementation SUUIPanelTemplateViewElement

- (SUUIImageViewElement)backgroundImageElement
{
  v2 = [(SUUIViewElement *)self firstChildForElementType:7];
  v3 = [v2 firstChildForElementType:49];

  return v3;
}

@end