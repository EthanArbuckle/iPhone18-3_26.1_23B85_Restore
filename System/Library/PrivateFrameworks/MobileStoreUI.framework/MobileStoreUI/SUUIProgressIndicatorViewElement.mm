@interface SUUIProgressIndicatorViewElement
- (SUUIProgressIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIProgressIndicatorViewElement

- (SUUIProgressIndicatorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIProgressIndicatorViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"value"];
    [v10 floatValue];
    v9->_value = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIProgressIndicatorViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    [(SUUIProgressIndicatorViewElement *)elementCopy value];
    self->_value = v7;
  }

  return v6;
}

@end