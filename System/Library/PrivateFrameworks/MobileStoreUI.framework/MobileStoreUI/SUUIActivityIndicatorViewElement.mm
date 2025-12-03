@interface SUUIActivityIndicatorViewElement
- (SUUIActivityIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIActivityIndicatorViewElement

- (SUUIActivityIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIActivityIndicatorViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"period"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
    }

    else
    {
      v12 = -1.0;
    }

    v9->_period = v12;
  }

  return v9;
}

@end