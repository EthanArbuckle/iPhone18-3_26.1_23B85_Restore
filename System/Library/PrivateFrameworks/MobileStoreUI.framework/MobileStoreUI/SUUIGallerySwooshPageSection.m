@interface SUUIGallerySwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIGallerySwooshPageSection)initWithPageComponent:(id)a3;
- (id)_newArtworkRequestWithArtwork:(id)a3;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)a3;
- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4;
- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)swoosh:(id)a3 didChangePlaybackState:(int64_t)a4 forItemAtIndex:(int64_t)a5;
- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4;
- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUIGallerySwooshPageSection

- (SUUIGallerySwooshPageSection)initWithPageComponent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIGallerySwooshPageSection;
  v3 = [(SUUIStorePageSection *)&v7 initWithPageComponent:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    componentArtworkRequests = v3->_componentArtworkRequests;
    v3->_componentArtworkRequests = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(SUUIGallerySwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIGallerySwooshPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 viewElement];
  [v5 addItemViewElement:v7];

  v8 = [(SUUIGallerySwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        -[SUUIGallerySwooshPageSection _addImpressionForIndex:toSession:](self, "_addImpressionForIndex:toSession:", [*(*(&v13 + 1) + 8 * v12++) item], v5);
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)willAppearInContext:(id)a3
{
  v3 = [a3 collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIGallerySwooshPageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUIGallerySwooshPageSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SUUIGallerySwooshPageSection *)self _swooshViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    [v7 setContentChildView:v9];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];

  v6 = [(SUUIGallerySwooshPageSection *)self _swooshViewController];
  v7 = [v6 view];

  [v7 sizeToFit];
  [v7 frame];
  v9 = v8;
  [v5 bounds];
  v11 = v10;

  v12 = v11;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v3 = self;
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v26 = [v4 mediaComponents];

  v5 = [(SUUIStorePageSection *)v3 context];
  v25 = [v5 resourceLoader];

  v6 = [(SUUIGallerySwooshPageSection *)v3 _swooshViewController];
  v7 = [v26 count];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    v10 = 1;
    v11 = 0x27F9E6000uLL;
    v23 = v3;
    do
    {
      v12 = [v26 objectAtIndex:{v10 - 1, v23}];
      v13 = *(v11 + 3544);
      v14 = [*(&v3->super.super.isa + v13) objectForKey:v12];

      if (!v14)
      {
        v15 = [v6 artworkForItemAtIndex:v10 - 1];
        v16 = [(SUUIGallerySwooshPageSection *)v3 _newArtworkRequestWithArtwork:v15];
        v17 = v16;
        if (v16)
        {
          v18 = *(&v3->super.super.isa + v13);
          v19 = v8;
          v20 = v11;
          v21 = v6;
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
          [v18 setObject:v22 forKey:v12];

          v6 = v21;
          v11 = v20;
          v8 = v19;
          v3 = v23;
          [v25 loadResourceWithRequest:v17 reason:a3];
          ++v9;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      ++v10;
    }

    while (v9 < 4);
  }
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 mediaComponents];

  v10 = [v6 requestIdentifier];
  v11 = [(SUUIGallerySwooshPageSection *)self _swooshViewController];
  v12 = [v11 indexPathsForVisibleItems];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    v22 = v7;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v9 objectAtIndex:{objc_msgSend(v17, "item")}];
        v19 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v18];
        if ([v19 unsignedIntegerValue] == v10)
        {
          v20 = [(SUUIGallerySwooshPageSection *)self _swooshViewController];
          v21 = [v17 item];
          v7 = v22;
          [v20 setImage:v22 forItemAtIndex:v21];

          goto LABEL_11;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v7 = v22;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)swoosh:(id)a3 didChangePlaybackState:(int64_t)a4 forItemAtIndex:(int64_t)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 metricsController];

  if ([v9 canRecordEventWithType:*MEMORY[0x277D6A488]])
  {
    v10 = objc_alloc_init(MEMORY[0x277D69BA8]);
    v11 = SUUIMetricsMediaEventTypeForPlaybackState(a4);
    [v10 setMediaEventType:v11];

    v12 = [(SUUIStorePageSection *)self pageComponent];
    v13 = [v12 mediaComponents];
    v14 = [v13 objectAtIndex:a5];

    v15 = [v14 mediaIdentifier];
    if (v15)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
      [v10 setItemIdentifier:v16];
    }

    v17 = [v14 mediaURLString];
    [v10 setMediaURL:v17];

    v18 = [(SUUIStorePageSection *)self pageComponent];
    v19 = [v9 locationWithPageComponent:v18];

    v20 = [v9 locationWithPageComponent:v14];
    v21 = v20;
    if (v19 && v20)
    {
      v23[0] = v20;
      v23[1] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      [v10 setLocationWithEventLocations:v22];
    }

    [v9 recordEvent:v10];
  }
}

- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4
{
  v13 = a3;
  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 mediaComponents];
  v8 = [v7 objectAtIndex:a4];

  v9 = [(SUUIStorePageSection *)self clickEventWithMedia:v8 elementName:*MEMORY[0x277D6A4E0] index:a4];
  if (v9)
  {
    v10 = [(SUUIStorePageSection *)self context];
    v11 = [v10 metricsController];
    [v11 recordEvent:v9];
  }

  if ([v8 mediaType])
  {
    [v13 performActionForItemAtIndex:a4 animated:1];
  }

  else
  {
    v12 = [v8 link];
    [(SUUIStorePageSection *)self showPageWithLink:v12];
  }
}

- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 resourceLoader];

  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 mediaComponents];
  v11 = [v10 objectAtIndex:a4];

  v12 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v11];
  v13 = [v12 unsignedIntegerValue];

  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = [v8 cachedResourceForRequestIdentifier:v13];
  if (v14)
  {
    goto LABEL_8;
  }

  if (([v8 trySetReason:1 forRequestWithIdentifier:v13] & 1) == 0)
  {
LABEL_4:
    v15 = [v6 artworkForItemAtIndex:a4];
    v16 = [(SUUIGallerySwooshPageSection *)self _newArtworkRequestWithArtwork:v15];
    v17 = v16;
    if (v16)
    {
      componentArtworkRequests = self->_componentArtworkRequests;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
      [(NSMapTable *)componentArtworkRequests setObject:v19 forKey:v11];

      [v8 loadResourceWithRequest:v17 reason:1];
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4
{
  v6 = [(SUUIStorePageSection *)self context];
  v7 = [v6 metricsController];
  v9 = [v7 activeImpressionsSession];

  v8 = v9;
  if (v9)
  {
    [(SUUIGallerySwooshPageSection *)self _addImpressionForIndex:a4 toSession:v9];
    v8 = v9;
  }
}

- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4
{
  v6 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 mediaComponents];
  v10 = [v8 objectAtIndex:a3];

  [v6 addItemIdentifier:{objc_msgSend(v10, "mediaIdentifier")}];
  v9 = [v10 viewElement];
  [v6 addItemViewElement:v9];
}

- (id)_newArtworkRequestWithArtwork:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  if (v5)
  {
    v6 = objc_alloc_init(SUUIArtworkRequest);
    v7 = +[SUUISizeToFitImageDataConsumer consumerWithConstraintSize:](SUUISizeToFitImageDataConsumer, "consumerWithConstraintSize:", [v4 width], objc_msgSend(v4, "height"));
    [(SUUIArtworkRequest *)v6 setDataConsumer:v7];

    [(SUUIArtworkRequest *)v6 setDelegate:self];
    [(SUUIArtworkRequest *)v6 setURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    v4 = [(SUUIStorePageSection *)self context];
    v5 = [v4 parentViewController];
    v6 = [SUUIGallerySwooshViewController alloc];
    v7 = [(SUUIStorePageSection *)self pageComponent];
    v8 = [(SUUIGallerySwooshViewController *)v6 initWithGallerySwoosh:v7];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    v11 = [v5 clientContext];
    [(SUUISwooshViewController *)v10 setClientContext:v11];

    v12 = self->_swooshViewController;
    v13 = [v4 colorScheme];
    [(SUUIGallerySwooshViewController *)v12 setColorScheme:v13];

    [(SUUIGallerySwooshViewController *)self->_swooshViewController setDelegate:self];
    [v5 addChildViewController:self->_swooshViewController];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

@end