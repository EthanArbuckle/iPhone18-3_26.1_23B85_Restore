@interface SUUIBarRatingViewElement
- (SUUIBarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIBarRatingViewElement

- (SUUIBarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIBarRatingViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"value"];
    [v10 floatValue];
    v9->_ratingValue = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIBarRatingViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SUUIBarRatingViewElement *)elementCopy ratingValue];
    self->_ratingValue = v7;
  }

  return v6;
}

@end