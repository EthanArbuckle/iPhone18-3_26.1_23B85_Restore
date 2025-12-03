@interface SUUISortDescriptorViewElement
- (SUUISortDescriptorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUISortDescriptorViewElement

- (SUUISortDescriptorViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUISortDescriptorViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"direction"];
    if ([v10 length])
    {
      v11 = [v10 isEqualToString:@"descending"] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    v9->_ascending = v11;
    v12 = [elementCopy getAttribute:@"property"];
    if ([v12 length])
    {
      objc_storeStrong(&v9->_property, v12);
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUISortDescriptorViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_ascending = [(SUUISortDescriptorViewElement *)elementCopy isAscending];
    property = [(SUUISortDescriptorViewElement *)elementCopy property];
    property = self->_property;
    self->_property = property;
  }

  return v6;
}

@end