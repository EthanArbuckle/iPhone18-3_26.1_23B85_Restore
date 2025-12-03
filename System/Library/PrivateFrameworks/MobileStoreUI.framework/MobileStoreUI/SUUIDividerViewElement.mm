@interface SUUIDividerViewElement
- (SUUIDividerViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (int64_t)dividerType;
@end

@implementation SUUIDividerViewElement

- (SUUIDividerViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIDividerViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    string = [v10 string];
    v12 = [string length];

    if (v12)
    {
      objc_storeStrong(&v9->_text, v10);
    }
  }

  return v9;
}

- (int64_t)dividerType
{
  if (!self->_dividerTypeWasInitialized)
  {
    style = [(SUUIDividerViewElement *)self style];
    dividerType = [style dividerType];

    if (dividerType)
    {
      if ([@"full" isEqualToString:dividerType])
      {
        v5 = 1;
LABEL_10:
        self->_dividerType = v5;
        self->_dividerTypeWasInitialized = 1;

        return self->_dividerType;
      }

      if ([@"inset" isEqualToString:dividerType])
      {
        v5 = 2;
        goto LABEL_10;
      }

      if ([@"borderless" isEqualToString:dividerType])
      {
        v5 = 3;
        goto LABEL_10;
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

  return self->_dividerType;
}

@end