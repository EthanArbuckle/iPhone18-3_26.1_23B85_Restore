@interface SUUIStarRatingViewElement
- (SUUIStarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SUUIViewElementText)text;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIStarRatingViewElement

- (SUUIStarRatingViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v22.receiver = self;
  v22.super_class = SUUIStarRatingViewElement;
  v9 = [(SUUIViewElement *)&v22 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = [elementCopy getAttribute:@"value"];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    *&v12 = v12 / 5.0;
    v9->_ratingValue = *&v12;
  }

  v13 = [elementCopy getAttribute:@"type"];
  if (!v13)
  {
    goto LABEL_8;
  }

  if ([@"large" isEqualToString:v13])
  {
    v14 = 2;
LABEL_9:
    v9->_starType = v14;
    goto LABEL_10;
  }

  if ([@"large" isEqualToString:v13])
  {
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

LABEL_10:
  v15 = [elementCopy getAttribute:@"disabled"];
  if (v15)
  {
    if ([@"yes" isEqualToString:v15])
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v16 = [@"true" isEqualToString:v15] ^ 1;
    }

    v9->_enabled = v16;
  }

  v17 = [(SUUIViewElement *)v9 firstChildForElementType:138];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    string = [v18 string];
    v20 = [string length];

    if (v20)
    {
      objc_storeStrong(&v9->_text, v18);
    }
  }

LABEL_20:
  return v9;
}

- (SUUIViewElementText)text
{
  text = self->_text;
  if (text)
  {
    text = text;
  }

  else
  {
    v4 = [(SUUIViewElement *)self firstChildForElementType:138];
    text = [v4 text];
  }

  return text;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIStarRatingViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SUUIStarRatingViewElement *)elementCopy ratingValue];
    self->_ratingValue = v7;
    objc_storeStrong(&self->_text, elementCopy->_text);
  }

  return v6;
}

@end