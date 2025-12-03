@interface SUUIBadgeViewElement
- (CGSize)size;
- (NSAttributedString)attributedString;
- (SUUIBadgeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (UIImage)fallbackImage;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)badgeType;
@end

@implementation SUUIBadgeViewElement

- (SUUIBadgeViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v25.receiver = self;
  v25.super_class = SUUIBadgeViewElement;
  v9 = [(SUUIViewElement *)&v25 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"src"];
    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
      scheme = [v11 scheme];
      v13 = [scheme isEqualToString:@"resource"];

      if (v13)
      {
        host = [v11 host];
        resourceName = v9->_resourceName;
        v9->_resourceName = host;
      }

      else
      {
        v16 = v11;
        resourceName = v9->_url;
        v9->_url = v16;
      }
    }

    if (!v9->_resourceName && !v9->_url)
    {
      v17 = [elementCopy getAttribute:@"content"];
      if (![v17 length])
      {
        v18 = [elementCopy getAttribute:@"text"];

        v17 = v18;
      }

      if ([v17 length])
      {
        objc_storeStrong(&v9->_text, v17);
      }
    }

    v19 = [elementCopy getAttribute:@"height"];
    v20 = [elementCopy getAttribute:@"width"];
    if ([v19 length] && objc_msgSend(v20, "length"))
    {
      [v20 floatValue];
      v22 = v21;
      [v19 floatValue];
      v9->_size.width = v22;
      v9->_size.height = v23;
    }
  }

  return v9;
}

- (NSAttributedString)attributedString
{
  if (self->_text)
  {
    style = [(SUUIBadgeViewElement *)self style];
    v4 = SUUIViewElementFontWithStyle(style);
    if (!v4)
    {
      v4 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    ikColor = [style ikColor];
    color = [ikColor color];

    if (!color)
    {
      color = [MEMORY[0x277D75348] whiteColor];
    }

    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [defaultParagraphStyle mutableCopy];

    [v8 setLineBreakMode:4];
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [v9 initWithObjectsAndKeys:{v4, *MEMORY[0x277D740A8], v8, *MEMORY[0x277D74118], color, *MEMORY[0x277D740C0], 0}];
    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_text attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)badgeType
{
  fallbackImage = [(SUUIBadgeViewElement *)self fallbackImage];
  if (!fallbackImage && !self->_resourceName)
  {
    return self->_url == 0;
  }

  return 0;
}

- (id)accessibilityText
{
  v6.receiver = self;
  v6.super_class = SUUIBadgeViewElement;
  accessibilityText = [(SUUIBadgeViewElement *)&v6 accessibilityText];
  if (![accessibilityText length])
  {
    v4 = self->_text;

    accessibilityText = v4;
  }

  return accessibilityText;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUIBadgeViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self)
  {
    if (!elementCopy)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (elementCopy->_hasValidFallbackImage)
    {
      fallbackImage = [(SUUIBadgeViewElement *)elementCopy fallbackImage];
      fallbackImage = self->_fallbackImage;
      self->_fallbackImage = fallbackImage;

      self->_hasValidFallbackImage = 1;
    }

    else
    {
      self->_hasValidFallbackImage = 0;
      v10 = self->_fallbackImage;
      self->_fallbackImage = 0;
    }

    resourceName = [(SUUIBadgeViewElement *)elementCopy resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = resourceName;

    [(SUUIBadgeViewElement *)elementCopy size];
    self->_size.width = v13;
    self->_size.height = v14;
    objc_storeStrong(&self->_text, elementCopy->_text);
    v15 = [(SUUIBadgeViewElement *)elementCopy URL];
    url = self->_url;
    self->_url = v15;

    goto LABEL_10;
  }

  updateType = [v5 updateType];
  if (elementCopy && updateType)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v6;
}

- (UIImage)fallbackImage
{
  if (!self->_hasValidFallbackImage)
  {
    self->_hasValidFallbackImage = 1;
    style = [(SUUIBadgeViewElement *)self style];
    badgeTreatment = [style badgeTreatment];
    v5 = [badgeTreatment isEqualToString:@"rect"];

    if (v5)
    {
      v6 = self->_text;
      ikColor = [style ikColor];
      color = [ikColor color];

      if (color)
      {
        v9 = SUUIBadgeImageFromText(v6, color, 1);
        fallbackImage = self->_fallbackImage;
        self->_fallbackImage = v9;
      }

      else
      {
        v11 = [MEMORY[0x277D75348] colorWithWhite:0.62745098 alpha:1.0];
        v12 = SUUIBadgeImageFromText(v6, v11, 1);
        v13 = self->_fallbackImage;
        self->_fallbackImage = v12;

        fallbackImage = v6;
        v6 = v11;
      }
    }
  }

  v14 = self->_fallbackImage;

  return v14;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end