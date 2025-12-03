@interface SUUIExpandViewElement
- (SUUIExpandViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIExpandViewElement

- (SUUIExpandViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = SUUIExpandViewElement;
  v9 = [(SUUIViewElement *)&v12 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"open"];
    v9->_open = [v10 BOOLValue];

    v9->_previousIsOpen = v9->_open;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUIExpandViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_previousIsOpen = self->_open;
    self->_open = [(SUUIExpandViewElement *)elementCopy isOpen];
  }

  [v6 setPreviousIsOpen:self->_previousIsOpen];

  return v6;
}

@end