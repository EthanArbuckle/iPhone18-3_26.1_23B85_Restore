@interface SUUIMediaPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIMediaPageSection)initWithPageComponent:(id)a3;
- (double)contentInsetAdjustmentForCollectionView:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)_loadImageWithReason:(int64_t)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)setSectionIndex:(int64_t)a3;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUIMediaPageSection

- (SUUIMediaPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUUIMediaPageSection;
  v5 = [(SUUIStorePageSection *)&v23 initWithPageComponent:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v8 < v10 && v12 == 1)
    {
      v8 = v10;
    }

    v14 = [v4 bestThumbnailForWidth:v8];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [(SUUIArtwork *)v5->_artwork height];
    v17 = v8 / [(SUUIArtwork *)v5->_artwork width]* v16;
    v5->_imageSize.width = v8;
    v5->_imageSize.height = floorf(v17);
    v18 = objc_alloc_init(SUUIEmbeddedMediaView);
    mediaView = v5->_mediaView;
    v5->_mediaView = v18;

    v20 = v5->_mediaView;
    v21 = [v4 accessibilityLabel];
    [(SUUIEmbeddedMediaView *)v20 setAccessibilityLabel:v21];

    [(SUUIEmbeddedMediaView *)v5->_mediaView setDelegate:v5];
    [(SUUIEmbeddedMediaView *)v5->_mediaView setThumbnailContentMode:5];
  }

  return v5;
}

- (void)dealloc
{
  [(SUUIEmbeddedMediaView *)self->_mediaView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v6 = [(SUUIStorePageSection *)self pageComponent];
  [v5 addItemIdentifier:{objc_msgSend(v6, "mediaIdentifier")}];

  v8 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v8 viewElement];
  [v5 addItemViewElement:v7];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUIMediaPageSectionReuseIdentifier" forIndexPath:v4];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v8 = [v5 resourceLoader];
  v9 = v8;
  if (!self->_artworkRequestID)
  {
    goto LABEL_4;
  }

  v10 = [v8 cachedResourceForRequestIdentifier:?];
  if (v10)
  {
    goto LABEL_6;
  }

  if (([v9 trySetReason:1 forRequestWithIdentifier:self->_artworkRequestID] & 1) == 0)
  {
LABEL_4:
    [(SUUIMediaPageSection *)self _loadImageWithReason:1];
  }

  v10 = 0;
LABEL_6:
  [(SUUIEmbeddedMediaView *)self->_mediaView setThumbnailImage:v10];
  [v7 setContentChildView:self->_mediaView];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];
  [v5 bounds];
  v7 = v6;

  height = self->_imageSize.height;
  if ([(SUUIEmbeddedMediaView *)self->_mediaView showsThumbnailReflection])
  {
    height = height + self->_imageSize.height;
  }

  v9 = v7;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (self->_artworkRequestID)
  {
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 resourceLoader];
    v7 = [v6 trySetReason:0 forRequestWithIdentifier:self->_artworkRequestID];

    if ((v7 & 1) == 0)
    {
      self->_artworkRequestID = 0;
    }
  }

  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];

  v10 = [(SUUIStorePageSection *)self context];
  v11 = [v10 activeMetricsImpressionSession];
  [v11 endActiveImpressionForViewElement:v9];

  v12.receiver = self;
  v12.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [SUUIStorePageSection clickEventWithMedia:"clickEventWithMedia:elementName:index:" elementName:? index:?];
  if (v4)
  {
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 metricsController];
    [v6 recordEvent:v4];
  }

  if ([v8 mediaType])
  {
    [(SUUIEmbeddedMediaView *)self->_mediaView beginPlaybackAnimated:1];
  }

  else
  {
    v7 = [v8 link];
    [(SUUIStorePageSection *)self showPageWithLink:v7];
  }
}

- (double)contentInsetAdjustmentForCollectionView:(id)a3
{
  v4 = [(SUUIEmbeddedMediaView *)self->_mediaView showsThumbnailReflection];
  result = 0.0;
  if (v4)
  {
    return -self->_imageSize.height;
  }

  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  if (!self->_artworkRequestID)
  {
    [(SUUIMediaPageSection *)self _loadImageWithReason:a3];
  }
}

- (void)setSectionIndex:(int64_t)a3
{
  [(SUUIEmbeddedMediaView *)self->_mediaView setShowsThumbnailReflection:a3 == 0];
  v5.receiver = self;
  v5.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v5 setSectionIndex:a3];
}

- (void)willAppearInContext:(id)a3
{
  v3 = [a3 collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIMediaPageSectionReuseIdentifier"];
}

- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = [(SUUIStorePageSection *)self context];
  v7 = [v6 metricsController];

  if ([v7 canRecordEventWithType:*MEMORY[0x277D6A488]])
  {
    v8 = objc_alloc_init(MEMORY[0x277D69BA8]);
    v9 = SUUIMetricsMediaEventTypeForPlaybackState(a4);
    [v8 setMediaEventType:v9];

    v10 = [(SUUIStorePageSection *)self pageComponent];
    v11 = [v10 mediaIdentifier];
    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      [v8 setItemIdentifier:v12];
    }

    v13 = [v10 mediaURLString];
    [v8 setMediaURL:v13];

    v14 = [(SUUIStorePageSection *)self pageComponent];
    v15 = [v7 locationWithPageComponent:v14];

    v16 = [v7 locationWithPageComponent:v10];
    v17 = v16;
    if (v15 && v16)
    {
      v19[0] = v16;
      v19[1] = v15;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      [v8 setLocationWithEventLocations:v18];
    }

    [v7 recordEvent:v8];
  }
}

- (void)_loadImageWithReason:(int64_t)a3
{
  v13 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIArtworkRequest *)v13 setDelegate:self];
  v4 = [(SUUIArtwork *)self->_artwork URL];
  [(SUUIArtworkRequest *)v13 setURL:v4];

  v5 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:self->_imageSize.width, self->_imageSize.height];
  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 mediaAppearance];

  if (v7 == 1)
  {
    v8 = [(SUUIStorePageSection *)self context];
    v9 = [v8 colorScheme];
    v10 = [v9 backgroundColor];
    [v5 setGradientEndColor:v10];

    [v5 setGradientHeight:63.0];
  }

  [(SUUIArtworkRequest *)v13 setDataConsumer:v5];
  self->_artworkRequestID = [(SUUIResourceRequest *)v13 requestIdentifier];
  v11 = [(SUUIStorePageSection *)self context];
  v12 = [v11 resourceLoader];
  [v12 loadResourceWithRequest:v13 reason:1];
}

@end