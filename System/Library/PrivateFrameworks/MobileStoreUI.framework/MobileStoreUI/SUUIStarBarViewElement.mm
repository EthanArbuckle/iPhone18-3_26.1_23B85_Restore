@interface SUUIStarBarViewElement
- (SUUIStarBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIStarBarViewElement

- (SUUIStarBarViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUIStarBarViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"count"];
    v9->_numberOfRatings = [v10 integerValue];

    v11 = [elementCopy getAttribute:@"numStars"];
    v9->_numberOfStars = [v11 integerValue];

    v12 = [elementCopy getAttribute:@"value"];
    [v12 floatValue];
    v9->_value = v13;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIStarBarViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_numberOfRatings = [(SUUIStarBarViewElement *)elementCopy numberOfRatings];
    self->_numberOfStars = [(SUUIStarBarViewElement *)elementCopy numberOfStars];
    [(SUUIStarBarViewElement *)elementCopy value];
    self->_value = v7;
  }

  return v6;
}

@end