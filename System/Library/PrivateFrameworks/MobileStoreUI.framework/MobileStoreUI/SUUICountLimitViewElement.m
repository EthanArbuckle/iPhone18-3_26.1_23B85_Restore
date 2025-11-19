@interface SUUICountLimitViewElement
- (SUUICountLimitViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUICountLimitViewElement

- (SUUICountLimitViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = SUUICountLimitViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"value"];
    v9->_limitValue = [v10 integerValue];

    v11 = [v8 getAttribute:@"entityType"];
    if ([v11 length])
    {
      v12 = [v11 copy];
      entityTypeString = v9->_entityTypeString;
      v9->_entityTypeString = v12;
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUUICountLimitViewElement;
  v5 = [(SUUIViewElement *)&v11 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_limitValue = [(SUUICountLimitViewElement *)v4 limitValue];
    v7 = [(SUUICountLimitViewElement *)v4 entityTypeString];
    v8 = [v7 copy];
    entityTypeString = self->_entityTypeString;
    self->_entityTypeString = v8;
  }

  return v6;
}

@end