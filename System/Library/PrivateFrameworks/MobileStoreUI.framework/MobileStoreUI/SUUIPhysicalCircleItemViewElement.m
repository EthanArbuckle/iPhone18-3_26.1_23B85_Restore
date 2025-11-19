@interface SUUIPhysicalCircleItemViewElement
- (SUUIPhysicalCircleItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIPhysicalCircleItemViewElement

- (SUUIPhysicalCircleItemViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUIPhysicalCircleItemViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"size"];
    v9->_circleSize = [v10 integerValue];

    v11 = [v8 getAttribute:@"data-content-id"];
    itemIdentifier = v9->_itemIdentifier;
    v9->_itemIdentifier = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIPhysicalCircleItemViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_circleSize = [(SUUIPhysicalCircleItemViewElement *)v4 circleSize];
    v7 = [(SUUIPhysicalCircleItemViewElement *)v4 itemIdentifier];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = v7;
  }

  return v6;
}

@end