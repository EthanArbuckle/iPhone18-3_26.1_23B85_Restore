@interface SUUIBarRatingViewElement
- (SUUIBarRatingViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIBarRatingViewElement

- (SUUIBarRatingViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SUUIBarRatingViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"value"];
    [v10 floatValue];
    v9->_ratingValue = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIBarRatingViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    [(SUUIBarRatingViewElement *)v4 ratingValue];
    self->_ratingValue = v7;
  }

  return v6;
}

@end