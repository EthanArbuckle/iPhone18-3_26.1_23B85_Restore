@interface SUUICheckboxInputViewElement
- (SUUICheckboxInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUICheckboxInputViewElement

- (SUUICheckboxInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUICheckboxInputViewElement;
  v9 = [(SUUIInputViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = -1;
    }

    v9->_disabled = v11;
    v12 = [v8 getAttribute:@"selected"];

    if ([v12 length])
    {
      v9->_selected = [v12 BOOLValue];
    }
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUICheckboxInputViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_disabled = v4->_disabled;
    self->_selected = [(SUUICheckboxInputViewElement *)v4 isSelected];
  }

  return v6;
}

@end