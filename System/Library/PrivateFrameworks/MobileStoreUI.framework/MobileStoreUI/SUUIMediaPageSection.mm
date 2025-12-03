@interface SUUIMediaPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIMediaPageSection)initWithPageComponent:(id)component;
- (double)contentInsetAdjustmentForCollectionView:(id)view;
- (id)cellForIndexPath:(id)path;
- (void)_loadImageWithReason:(int64_t)reason;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)setSectionIndex:(int64_t)index;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUIMediaPageSection

- (SUUIMediaPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  v23.receiver = self;
  v23.super_class = SUUIMediaPageSection;
  v5 = [(SUUIStorePageSection *)&v23 initWithPageComponent:componentCopy];
  if (v5)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v8 = v7;
    v10 = v9;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (v8 < v10 && userInterfaceIdiom == 1)
    {
      v8 = v10;
    }

    v14 = [componentCopy bestThumbnailForWidth:v8];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    height = [(SUUIArtwork *)v5->_artwork height];
    v17 = v8 / [(SUUIArtwork *)v5->_artwork width]* height;
    v5->_imageSize.width = v8;
    v5->_imageSize.height = floorf(v17);
    v18 = objc_alloc_init(SUUIEmbeddedMediaView);
    mediaView = v5->_mediaView;
    v5->_mediaView = v18;

    v20 = v5->_mediaView;
    accessibilityLabel = [componentCopy accessibilityLabel];
    [(SUUIEmbeddedMediaView *)v20 setAccessibilityLabel:accessibilityLabel];

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

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  [sessionCopy addItemIdentifier:{objc_msgSend(pageComponent, "mediaIdentifier")}];

  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent2 viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIMediaPageSectionReuseIdentifier" forIndexPath:pathCopy];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  resourceLoader = [context resourceLoader];
  v9 = resourceLoader;
  if (!self->_artworkRequestID)
  {
    goto LABEL_4;
  }

  v10 = [resourceLoader cachedResourceForRequestIdentifier:?];
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

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
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

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_artworkRequestID)
  {
    context = [(SUUIStorePageSection *)self context];
    resourceLoader = [context resourceLoader];
    v7 = [resourceLoader trySetReason:0 forRequestWithIdentifier:self->_artworkRequestID];

    if ((v7 & 1) == 0)
    {
      self->_artworkRequestID = 0;
    }
  }

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context2 = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context2 activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v12.receiver = self;
  v12.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  v4 = [SUUIStorePageSection clickEventWithMedia:"clickEventWithMedia:elementName:index:" elementName:? index:?];
  if (v4)
  {
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v4];
  }

  if ([pageComponent mediaType])
  {
    [(SUUIEmbeddedMediaView *)self->_mediaView beginPlaybackAnimated:1];
  }

  else
  {
    link = [pageComponent link];
    [(SUUIStorePageSection *)self showPageWithLink:link];
  }
}

- (double)contentInsetAdjustmentForCollectionView:(id)view
{
  showsThumbnailReflection = [(SUUIEmbeddedMediaView *)self->_mediaView showsThumbnailReflection];
  result = 0.0;
  if (showsThumbnailReflection)
  {
    return -self->_imageSize.height;
  }

  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  if (!self->_artworkRequestID)
  {
    [(SUUIMediaPageSection *)self _loadImageWithReason:reason];
  }
}

- (void)setSectionIndex:(int64_t)index
{
  [(SUUIEmbeddedMediaView *)self->_mediaView setShowsThumbnailReflection:index == 0];
  v5.receiver = self;
  v5.super_class = SUUIMediaPageSection;
  [(SUUIStorePageSection *)&v5 setSectionIndex:index];
}

- (void)willAppearInContext:(id)context
{
  collectionView = [context collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIMediaPageSectionReuseIdentifier"];
}

- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change
{
  v19[2] = *MEMORY[0x277D85DE8];
  context = [(SUUIStorePageSection *)self context];
  metricsController = [context metricsController];

  if ([metricsController canRecordEventWithType:*MEMORY[0x277D6A488]])
  {
    v8 = objc_alloc_init(MEMORY[0x277D69BA8]);
    v9 = SUUIMetricsMediaEventTypeForPlaybackState(change);
    [v8 setMediaEventType:v9];

    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    mediaIdentifier = [pageComponent mediaIdentifier];
    if (mediaIdentifier)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:mediaIdentifier];
      [v8 setItemIdentifier:v12];
    }

    mediaURLString = [pageComponent mediaURLString];
    [v8 setMediaURL:mediaURLString];

    pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
    v15 = [metricsController locationWithPageComponent:pageComponent2];

    v16 = [metricsController locationWithPageComponent:pageComponent];
    v17 = v16;
    if (v15 && v16)
    {
      v19[0] = v16;
      v19[1] = v15;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      [v8 setLocationWithEventLocations:v18];
    }

    [metricsController recordEvent:v8];
  }
}

- (void)_loadImageWithReason:(int64_t)reason
{
  v13 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIArtworkRequest *)v13 setDelegate:self];
  v4 = [(SUUIArtwork *)self->_artwork URL];
  [(SUUIArtworkRequest *)v13 setURL:v4];

  v5 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:self->_imageSize.width, self->_imageSize.height];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  mediaAppearance = [pageComponent mediaAppearance];

  if (mediaAppearance == 1)
  {
    context = [(SUUIStorePageSection *)self context];
    colorScheme = [context colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    [v5 setGradientEndColor:backgroundColor];

    [v5 setGradientHeight:63.0];
  }

  [(SUUIArtworkRequest *)v13 setDataConsumer:v5];
  self->_artworkRequestID = [(SUUIResourceRequest *)v13 requestIdentifier];
  context2 = [(SUUIStorePageSection *)self context];
  resourceLoader = [context2 resourceLoader];
  [resourceLoader loadResourceWithRequest:v13 reason:1];
}

@end