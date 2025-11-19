@interface SUUIMediaComponent
- (SUUIMediaComponent)initWithArtwork:(id)a3;
- (SUUIMediaComponent)initWithArtworkProvider:(id)a3 appearance:(int64_t)a4;
- (SUUIMediaComponent)initWithCustomPageContext:(id)a3;
- (SUUIMediaComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (id)bestThumbnailArtwork;
- (id)bestThumbnailForWidth:(double)a3;
- (id)valueForMetricsField:(id)a3;
@end

@implementation SUUIMediaComponent

- (SUUIMediaComponent)initWithArtwork:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v13[0] = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(SUUIArtworkProviding *)v9 setArtworks:v10];
  }

  return v6;
}

- (SUUIMediaComponent)initWithArtworkProvider:(id)a3 appearance:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SUUIMediaComponent;
  v7 = [(SUUIMediaComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_mediaAppearance = a4;
    v7->_mediaType = 0;
    v9 = [v6 copy];
    thumbnailArtworkProvider = v8->_thumbnailArtworkProvider;
    v8->_thumbnailArtworkProvider = v9;
  }

  return v8;
}

- (SUUIMediaComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SUUIMediaComponent;
  v5 = [(SUUIPageComponent *)&v35 initWithCustomPageContext:v4];
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = [v4 componentDictionary];
  v7 = [v6 objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copy];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;
  }

  v10 = [v6 objectForKey:@"align"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_alignment = SUUIPageComponentAlignmentForString(v10);
  }

  v11 = [v6 objectForKey:@"duration"];

  if (objc_opt_respondsToSelector())
  {
    [v11 doubleValue];
    v5->_duration = v12;
  }

  v13 = [v6 objectForKey:@"link"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v4 copy];
    [v14 setComponentDictionary:v13];
    v15 = [[SUUILink alloc] initWithComponentContext:v14];
    link = v5->_link;
    v5->_link = v15;
  }

  v17 = [v6 objectForKey:@"adamId"];

  if (objc_opt_respondsToSelector())
  {
    v5->_mediaIdentifier = [v17 longLongValue];
  }

  v18 = [v6 objectForKey:@"subType"];

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
  v20 = [v6 objectForKey:@"url"];

  if (!v20)
  {
    v21 = [v6 objectForKey:@"audioUrl"];
    if (!v21)
    {
      v21 = [v6 objectForKey:@"videoUrl"];
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

  v24 = [v6 objectForKey:@"artwork"];

  v25 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v24];
  thumbnailArtworkProvider = v5->_thumbnailArtworkProvider;
  v5->_thumbnailArtworkProvider = v25;

  v27 = [v6 objectForKey:@"title"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 copy];
    title = v5->_title;
    v5->_title = v28;
  }

  v30 = [v6 objectForKey:@"titleSize"];

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
  v33 = [v6 objectForKey:@"titleWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_titleFontWeight = SUUIPageComponentFontWeightForString(v33);
  }

LABEL_33:
  return v5;
}

- (SUUIMediaComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SUUIMediaComponent;
  v7 = [(SUUIPageComponent *)&v13 initWithFeaturedContentContext:v6 kind:a4];
  if (v7)
  {
    v8 = [v6 componentDictionary];
    v9 = [v8 objectForKey:@"artwork"];
    v10 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v9];
    thumbnailArtworkProvider = v7->_thumbnailArtworkProvider;
    v7->_thumbnailArtworkProvider = v10;

    v7->_mediaType = 0;
  }

  return v7;
}

- (id)bestThumbnailArtwork
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
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

- (id)bestThumbnailForWidth:(double)a3
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6 * a3;

  v8 = [(SUUIArtworkProviding *)self->_thumbnailArtworkProvider artworkForSize:v7];
  if (!v8)
  {
    v8 = [(SUUIMediaComponent *)self bestThumbnailArtwork];
  }

  return v8;
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D6A490]])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mediaIdentifier];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if (([v4 isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    v5 = [(SUUIMediaComponent *)self title];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end