@interface SUUICheckboxInputViewElement
- (SUUICheckboxInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUICheckboxInputViewElement

- (SUUICheckboxInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUICheckboxInputViewElement;
  v9 = [(SUUIInputViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      bOOLValue = [v10 BOOLValue];
    }

    else
    {
      bOOLValue = -1;
    }

    v9->_disabled = bOOLValue;
    v12 = [elementCopy getAttribute:@"selected"];

    if ([v12 length])
    {
      v9->_selected = [v12 BOOLValue];
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUICheckboxInputViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    self->_disabled = elementCopy->_disabled;
    self->_selected = [(SUUICheckboxInputViewElement *)elementCopy isSelected];
  }

  return v6;
}

@end