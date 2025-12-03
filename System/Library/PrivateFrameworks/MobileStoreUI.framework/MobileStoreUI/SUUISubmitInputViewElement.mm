@interface SUUISubmitInputViewElement
- (SUUISubmitInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUISubmitInputViewElement

- (SUUISubmitInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUISubmitInputViewElement;
  v9 = [(SUUIInputViewElement *)&v12 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"value"];
    if (v10)
    {
      objc_storeStrong(&v9->_label, v10);
    }
  }

  return v9;
}

@end