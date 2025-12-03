@interface SUUIMediaComponent
- (SUUIMediaComponent)initWithArtwork:(id)artwork;
- (SUUIMediaComponent)initWithArtworkProvider:(id)provider appearance:(int64_t)appearance;
- (SUUIMediaComponent)initWithCustomPageContext:(id)context;
- (SUUIMediaComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (id)bestThumbnailArtwork;
- (id)bestThumbnailForWidth:(double)width;
- (id)valueForMetricsField:(id)field;
@end

@implementation SUUIMediaComponent

- (SUUIMediaComponent)initWithArtwork:(id)artwork
{
  v13[1] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  v12.receiver = self;
  v12.super_class = SUUIMediaComponent;
  v5 = [(SUUIMediaComponent *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_mediaType = 0;
    v7 = objc_alloc_init(SUUIArtworkList);
    thumbnailArtworkProvider = v6->_thumbnailArtworkProvider;
    v6->_thumbnailArtworkProvider = v7;

    v9 = v6->_thumbnailArtworkProvider;
    v13[0] = artworkCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(SUUIArtworkProviding *)v9 setArtworks:v10];
  }

  return v6;
}

- (SUUIMediaComponent)initWithArtworkProvider:(id)provider appearance:(int64_t)appearance
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SUUIMediaComponent;
  v7 = [(SUUIMediaComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mediaAppearance = appearance;
    v7->_mediaType = 0;
    v9 = [providerCopy copy];
    thumbnailArtworkProvider = v8->_thumbnailArtworkProvider;
    v8->_thumbnailArtworkProvider = v9;
  }

  return v8;
}

- (SUUIMediaComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v35.receiver = self;
  v35.super_class = SUUIMediaComponent;
  v5 = [(SUUIPageComponent *)&v35 initWithCustomPageContext:contextCopy];
  if (!v5)
  {
    goto LABEL_33;
  }

  componentDictionary = [contextCopy componentDictionary];
  v7 = [componentDictionary objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copy];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;
  }

  v10 = [componentDictionary objectForKey:@"align"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_alignment = SUUIPageComponentAlignmentForString(v10);
  }

  v11 = [componentDictionary objectForKey:@"duration"];

  if (objc_opt_respondsToSelector())
  {
    [v11 doubleValue];
    v5->_duration = v12;
  }

  v13 = [componentDictionary objectForKey:@"link"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [contextCopy copy];
    [v14 setComponentDictionary:v13];
    v15 = [[SUUILink alloc] initWithComponentContext:v14];
    link = v5->_link;
    v5->_link = v15;
  }

  v17 = [componentDictionary objectForKey:@"adamId"];

  if (objc_opt_respondsToSelector())
  {
    v5->_mediaIdentifier = [v17 longLongValue];
  }

  v18 = [componentDictionary objectForKey:@"subType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v18 isEqualToString:@"audio"])
    {
      v19 = 1;
LABEL_17:
      v5->_mediaType = v19;
      goto LABEL_18;
    }

    if ([v18 isEqualToString:@"video"])
    {
      v19 = 2;
      goto LABEL_17;
    }
  }

LABEL_18:
  v20 = [componentDictionary objectForKey:@"url"];

  if (!v20)
  {
    v21 = [componentDictionary objectForKey:@"audioUrl"];
    if (!v21)
    {
      v21 = [componentDictionary objectForKey:@"videoUrl"];
    }

    v20 = v21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v20 copy];
    mediaURLString = v5->_mediaURLString;
    v5->_mediaURLString = v22;
  }

  v24 = [componentDictionary objectForKey:@"artwork"];

  v25 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v24];
  thumbnailArtworkProvider = v5->_thumbnailArtworkProvider;
  v5->_thumbnailArtworkProvider = v25;

  v27 = [componentDictionary objectForKey:@"title"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 copy];
    title = v5->_title;
    v5->_title = v28;
  }

  v30 = [componentDictionary objectForKey:@"titleSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v31 = SUUIEditorialTitleSizeForString(v30);
  }

  else
  {
    v32 = objc_opt_respondsToSelector();
    LODWORD(v31) = 17.0;
    if (v32)
    {
      [v30 floatValue];
    }
  }

  v5->_titleFontSize = *&v31;
  v33 = [componentDictionary objectForKey:@"titleWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_titleFontWeight = SUUIPageComponentFontWeightForString(v33);
  }

LABEL_33:
  return v5;
}

- (SUUIMediaComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = SUUIMediaComponent;
  v7 = [(SUUIPageComponent *)&v13 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v7)
  {
    componentDictionary = [contextCopy componentDictionary];
    v9 = [componentDictionary objectForKey:@"artwork"];
    v10 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v9];
    thumbnailArtworkProvider = v7->_thumbnailArtworkProvider;
    v7->_thumbnailArtworkProvider = v10;

    v7->_mediaType = 0;
  }

  return v7;
}

- (id)bestThumbnailArtwork
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  thumbnailArtworkProvider = self->_thumbnailArtworkProvider;
  if (v5 == 2.0)
  {
    [(SUUIArtworkProviding *)thumbnailArtworkProvider largestArtwork];
  }

  else
  {
    [(SUUIArtworkProviding *)thumbnailArtworkProvider smallestArtwork];
  }
  v7 = ;

  return v7;
}

- (id)bestThumbnailForWidth:(double)width
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6 * width;

  bestThumbnailArtwork = [(SUUIArtworkProviding *)self->_thumbnailArtworkProvider artworkForSize:v7];
  if (!bestThumbnailArtwork)
  {
    bestThumbnailArtwork = [(SUUIMediaComponent *)self bestThumbnailArtwork];
  }

  return bestThumbnailArtwork;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A490]])
  {
    title = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mediaIdentifier];
LABEL_6:
    v6 = title;
    goto LABEL_7;
  }

  if (([fieldCopy isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    title = [(SUUIMediaComponent *)self title];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end