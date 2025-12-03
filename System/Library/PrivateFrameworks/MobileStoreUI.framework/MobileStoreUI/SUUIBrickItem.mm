@interface SUUIBrickItem
- (SUUIBrickItem)initWithBannerRoomContext:(id)context;
- (SUUIBrickItem)initWithComponentContext:(id)context;
- (id)description;
- (void)_setLinkInfoWithLinkDictionary:(id)dictionary context:(id)context;
@end

@implementation SUUIBrickItem

- (SUUIBrickItem)initWithBannerRoomContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = SUUIBrickItem;
  v5 = [(SUUIBrickItem *)&v20 init];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUIBrickItem *)v5 _setLinkInfoWithLinkDictionary:v7 context:contextCopy];
    }

    if (!v5->_accessibilityLabel)
    {
      v8 = [componentDictionary objectForKey:@"imageAltText"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        accessibilityLabel = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v9;
      }
    }

    v11 = [componentDictionary objectForKey:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SUUIEditorialComponent alloc] initWithBrickRoomText:v11];
      editorial = v5->_editorial;
      v5->_editorial = v12;
    }

    v14 = [componentDictionary objectForKey:@"imageUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
      if (v15)
      {
        v16 = [[SUUIArtwork alloc] initWithURL:v15 size:SUUIBrickItemSize()];
        artwork = v5->_artwork;
        v5->_artwork = v16;
      }
    }

    v18 = [componentDictionary objectForKey:@"adamId"];

    if (objc_opt_respondsToSelector())
    {
      v5->_brickIdentifier = [v18 longLongValue];
    }
  }

  return v5;
}

- (SUUIBrickItem)initWithComponentContext:(id)context
{
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = SUUIBrickItem;
  v5 = [(SUUIBrickItem *)&v26 init];
  if (!v5)
  {
    goto LABEL_22;
  }

  componentDictionary = [contextCopy componentDictionary];
  v7 = [componentDictionary objectForKey:@"link"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUUIBrickItem *)v5 _setLinkInfoWithLinkDictionary:v7 context:contextCopy];
  }

  if (!v5->_accessibilityLabel)
  {
    v8 = [componentDictionary objectForKey:@"designLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      accessibilityLabel = v5->_accessibilityLabel;
      v5->_accessibilityLabel = v9;
    }
  }

  v11 = [componentDictionary objectForKey:@"editorial"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [contextCopy copy];
    [v12 setComponentDictionary:v11];
    v13 = [[SUUIEditorialComponent alloc] initWithCustomPageContext:v12];
    editorial = v5->_editorial;
    v5->_editorial = v13;
  }

  v15 = [componentDictionary objectForKey:*MEMORY[0x277D6A300]];
  v16 = SUUIBrickItemSize();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v15;
    v18 = [[SUUIArtwork alloc] initWithArtworkDictionary:v17];

LABEL_14:
    artwork = v5->_artwork;
    v5->_artwork = v18;

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [SUUIArtworkList artworkForSize:v16 artworkDictionaries:v15];
    goto LABEL_14;
  }

LABEL_15:
  v20 = [componentDictionary objectForKey:@"fcKind"];
  v21 = [componentDictionary objectForKey:@"type"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 integerValue] == 290 || objc_msgSend(v21, "isEqualToString:", @"counter"))
  {
    v22 = [[SUUICountdown alloc] initWithCountdownDictionary:componentDictionary];
    countdown = v5->_countdown;
    v5->_countdown = v22;
  }

  v24 = [componentDictionary objectForKey:@"adamId"];
  if (objc_opt_respondsToSelector())
  {
    v5->_brickIdentifier = [v24 longLongValue];
  }

LABEL_22:
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIBrickItem;
  v4 = [(SUUIBrickItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, %@", v4, self->_accessibilityLabel, self->_link];

  return v5;
}

- (void)_setLinkInfoWithLinkDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  v14 = [context copy];
  [v14 setComponentDictionary:dictionaryCopy];

  v7 = [[SUUILink alloc] initWithComponentContext:v14];
  link = self->_link;
  self->_link = v7;

  title = [(SUUILink *)self->_link title];
  accessibilityLabel = self->_accessibilityLabel;
  self->_accessibilityLabel = title;

  if (!self->_accessibilityLabel)
  {
    item = [(SUUILink *)self->_link item];
    title2 = [item title];
    v13 = self->_accessibilityLabel;
    self->_accessibilityLabel = title2;
  }
}

@end