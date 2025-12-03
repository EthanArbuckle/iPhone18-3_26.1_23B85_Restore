@interface SUUIPhysicalCircleItemViewElement
- (SUUIPhysicalCircleItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIPhysicalCircleItemViewElement

- (SUUIPhysicalCircleItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIPhysicalCircleItemViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"size"];
    v9->_circleSize = [v10 integerValue];

    v11 = [elementCopy getAttribute:@"data-content-id"];
    itemIdentifier = v9->_itemIdentifier;
    v9->_itemIdentifier = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIPhysicalCircleItemViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_circleSize = [(SUUIPhysicalCircleItemViewElement *)elementCopy circleSize];
    itemIdentifier = [(SUUIPhysicalCircleItemViewElement *)elementCopy itemIdentifier];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = itemIdentifier;
  }

  return v6;
}

@end