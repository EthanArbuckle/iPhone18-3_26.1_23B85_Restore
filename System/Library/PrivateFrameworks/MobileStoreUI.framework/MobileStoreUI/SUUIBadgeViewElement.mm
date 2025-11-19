@interface SUUIBadgeViewElement
- (CGSize)size;
- (NSAttributedString)attributedString;
- (SUUIBadgeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (UIImage)fallbackImage;
- (id)accessibilityText;
- (id)applyUpdatesWithElement:(id)a3;
- (int64_t)badgeType;
@end

@implementation SUUIBadgeViewElement

- (SUUIBadgeViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = SUUIBadgeViewElement;
  v9 = [(SUUIViewElement *)&v25 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"src"];
    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
      v12 = [v11 scheme];
      v13 = [v12 isEqualToString:@"resource"];

      if (v13)
      {
        v14 = [v11 host];
        resourceName = v9->_resourceName;
        v9->_resourceName = v14;
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
      v17 = [v8 getAttribute:@"content"];
      if (![v17 length])
      {
        v18 = [v8 getAttribute:@"text"];

        v17 = v18;
      }

      if ([v17 length])
      {
        objc_storeStrong(&v9->_text, v17);
      }
    }

    v19 = [v8 getAttribute:@"height"];
    v20 = [v8 getAttribute:@"width"];
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
    v3 = [(SUUIBadgeViewElement *)self style];
    v4 = SUUIViewElementFontWithStyle(v3);
    if (!v4)
    {
      v4 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    }

    v5 = [v3 ikColor];
    v6 = [v5 color];

    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] whiteColor];
    }

    v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    [v8 setLineBreakMode:4];
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [v9 initWithObjectsAndKeys:{v4, *MEMORY[0x277D740A8], v8, *MEMORY[0x277D74118], v6, *MEMORY[0x277D740C0], 0}];
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
  v3 = [(SUUIBadgeViewElement *)self fallbackImage];
  if (!v3 && !self->_resourceName)
  {
    return self->_url == 0;
  }

  return 0;
}

- (id)accessibilityText
{
  v6.receiver = self;
  v6.super_class = SUUIBadgeViewElement;
  v3 = [(SUUIBadgeViewElement *)&v6 accessibilityText];
  if (![v3 length])
  {
    v4 = self->_text;

    v3 = v4;
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUUIBadgeViewElement;
  v5 = [(SUUIViewElement *)&v18 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (v4->_hasValidFallbackImage)
    {
      v8 = [(SUUIBadgeViewElement *)v4 fallbackImage];
      fallbackImage = self->_fallbackImage;
      self->_fallbackImage = v8;

      self->_hasValidFallbackImage = 1;
    }

    else
    {
      self->_hasValidFallbackImage = 0;
      v10 = self->_fallbackImage;
      self->_fallbackImage = 0;
    }

    v11 = [(SUUIBadgeViewElement *)v4 resourceName];
    resourceName = self->_resourceName;
    self->_resourceName = v11;

    [(SUUIBadgeViewElement *)v4 size];
    self->_size.width = v13;
    self->_size.height = v14;
    objc_storeStrong(&self->_text, v4->_text);
    v15 = [(SUUIBadgeViewElement *)v4 URL];
    url = self->_url;
    self->_url = v15;

    goto LABEL_10;
  }

  v7 = [v5 updateType];
  if (v4 && v7)
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
    v3 = [(SUUIBadgeViewElement *)self style];
    v4 = [v3 badgeTreatment];
    v5 = [v4 isEqualToString:@"rect"];

    if (v5)
    {
      v6 = self->_text;
      v7 = [v3 ikColor];
      v8 = [v7 color];

      if (v8)
      {
        v9 = SUUIBadgeImageFromText(v6, v8, 1);
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