@interface SUUICountLimitViewElement
- (SUUICountLimitViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUICountLimitViewElement

- (SUUICountLimitViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUICountLimitViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"value"];
    v9->_limitValue = [v10 integerValue];

    v11 = [elementCopy getAttribute:@"entityType"];
    if ([v11 length])
    {
      v12 = [v11 copy];
      entityTypeString = v9->_entityTypeString;
      v9->_entityTypeString = v12;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SUUICountLimitViewElement;
  v5 = [(SUUIViewElement *)&v11 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_limitValue = [(SUUICountLimitViewElement *)elementCopy limitValue];
    entityTypeString = [(SUUICountLimitViewElement *)elementCopy entityTypeString];
    v8 = [entityTypeString copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;
  }

  return v6;
}

@end