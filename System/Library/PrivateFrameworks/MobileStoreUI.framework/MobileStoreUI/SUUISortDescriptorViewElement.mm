@interface SUUISortDescriptorViewElement
- (SUUISortDescriptorViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUISortDescriptorViewElement

- (SUUISortDescriptorViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUISortDescriptorViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"direction"];
    if ([v10 length])
    {
      v11 = [v10 isEqualToString:@"descending"] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    v9->_ascending = v11;
    v12 = [v8 getAttribute:@"property"];
    if ([v12 length])
    {
      objc_storeStrong(&v9->_property, v12);
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUISortDescriptorViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_ascending = [(SUUISortDescriptorViewElement *)v4 isAscending];
    v7 = [(SUUISortDescriptorViewElement *)v4 property];
    property = self->_property;
    self->_property = v7;
  }

  return v6;
}

@end