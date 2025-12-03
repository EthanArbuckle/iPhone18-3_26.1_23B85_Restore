@interface SUUIItemViewElement
- (SUUIItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIItemViewElement

- (SUUIItemViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v24.receiver = self;
  v24.super_class = SUUIItemViewElement;
  v11 = [(SUUIViewElement *)&v24 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      parent = [parentCopy parent];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
      }

      else
      {
        parent2 = [parentCopy parent];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v14 = SUUIBrowseItemViewElement;
    goto LABEL_13;
  }

LABEL_3:
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = SUUIStackItemViewElement;
LABEL_13:
      v18 = [[v14 alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
      goto LABEL_14;
    }
  }

  v15 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
  itemText = v11->_itemText;
  v11->_itemText = v15;

  v17 = [elementCopy getAttribute:@"selected"];
  v11->_selected = [v17 BOOLValue];

LABEL_7:
  v18 = v11;
LABEL_14:
  v20 = v18;

  return v20;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIItemViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    itemText = [(SUUIItemViewElement *)elementCopy itemText];
    itemText = self->_itemText;
    self->_itemText = itemText;

    self->_selected = [(SUUIItemViewElement *)elementCopy isSelected];
  }

  return v6;
}

@end