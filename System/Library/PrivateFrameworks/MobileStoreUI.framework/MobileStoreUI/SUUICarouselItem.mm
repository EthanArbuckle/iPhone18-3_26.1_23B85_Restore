@interface SUUICarouselItem
- (SUUICarouselItem)initWithComponentContext:(id)context;
- (id)artworkForSize:(CGSize)size;
- (id)description;
@end

@implementation SUUICarouselItem

- (SUUICarouselItem)initWithComponentContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = SUUICarouselItem;
  v5 = [(SUUICarouselItem *)&v24 init];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"adamId"];
    if (objc_opt_respondsToSelector())
    {
      v5->_carouselItemIdentifier = [v7 longLongValue];
    }

    v8 = [componentDictionary objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [contextCopy copy];
      [v9 setComponentDictionary:v8];
      v10 = [[SUUILink alloc] initWithComponentContext:v9];
      link = v5->_link;
      v5->_link = v10;

      title = [(SUUILink *)v5->_link title];
      accessibilityLabel = v5->_accessibilityLabel;
      v5->_accessibilityLabel = title;

      if (!v5->_accessibilityLabel)
      {
        item = [(SUUILink *)v5->_link item];
        title2 = [item title];
        v16 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = title2;
      }
    }

    if (v5->_accessibilityLabel)
    {
      v17 = v7;
    }

    else
    {
      v17 = [componentDictionary objectForKey:@"designLabel"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v19 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v18;
      }
    }

    v20 = [componentDictionary objectForKey:*MEMORY[0x277D6A300]];
    v21 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v20];
    artworkProvider = v5->_artworkProvider;
    v5->_artworkProvider = v21;
  }

  return v5;
}

- (id)artworkForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *&artworkForSize__sScreenScale;
  if (*&artworkForSize__sScreenScale < 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    artworkForSize__sScreenScale = v8;

    v6 = *&artworkForSize__sScreenScale;
  }

  v9 = height * v6;
  v10 = width * v6;
  artworkProvider = self->_artworkProvider;

  return [(SUUIArtworkProviding *)artworkProvider preferredExactArtworkForSize:v10, v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUICarouselItem;
  v4 = [(SUUICarouselItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, %@", v4, self->_accessibilityLabel, self->_link];

  return v5;
}

@end