@interface SUUIURLActivityItemProvider
+ (id)placeholderItem;
- (SUUIURLActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context;
- (SUUIURLActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)item;
- (id)linkPresentationImageFor:(id)for;
@end

@implementation SUUIURLActivityItemProvider

+ (id)placeholderItem
{
  v2 = objc_alloc_init(MEMORY[0x277CBEBC0]);

  return v2;
}

- (SUUIURLActivityItemProvider)initWithProductPageItemProvider:(id)provider clientContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  v8 = [[SUUIResourceLoader alloc] initWithClientContext:contextCopy];
  resourceLoader = self->_resourceLoader;
  self->_resourceLoader = v8;

  v10 = self->_resourceLoader;
  v11 = SUUIResourceLoaderGetNameForObject(self);
  [(SUUIResourceLoader *)v10 setName:v11];

  v14.receiver = self;
  v14.super_class = SUUIURLActivityItemProvider;
  v12 = [(SUUIDeferredActivityItemProvider *)&v14 initWithProductPageItemProvider:providerCopy clientContext:contextCopy];

  return v12;
}

- (SUUIURLActivityItemProvider)initWithProductPageItem:(id)item clientContext:(id)context
{
  contextCopy = context;
  itemCopy = item;
  v8 = [[SUUIResourceLoader alloc] initWithClientContext:contextCopy];
  resourceLoader = self->_resourceLoader;
  self->_resourceLoader = v8;

  v10 = self->_resourceLoader;
  v11 = SUUIResourceLoaderGetNameForObject(self);
  [(SUUIResourceLoader *)v10 setName:v11];

  v14.receiver = self;
  v14.super_class = SUUIURLActivityItemProvider;
  v12 = [(SUUIDeferredActivityItemProvider *)&v14 initWithProductPageItem:itemCopy clientContext:contextCopy];

  return v12;
}

- (id)item
{
  v15[3] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_FetchingUrlIte.isa, a2);
  v3 = *MEMORY[0x277D54728];
  v15[0] = *MEMORY[0x277D54710];
  v15[1] = v3;
  v15[2] = *MEMORY[0x277D54720];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  activityType = [(UIActivityItemProvider *)self activityType];
  v6 = [v4 containsObject:activityType];

  productPageItem = [(SUUIDeferredActivityItemProvider *)self productPageItem];
  v8 = productPageItem;
  if (v6)
  {
    productPageURLString = [productPageItem productPageURLString];

    NSLog(&cfstr_FetchedUrlItem.isa);
    if (productPageURLString)
    {
LABEL_3:
      v10 = [MEMORY[0x277CBEBC0] URLWithString:productPageURLString];
      goto LABEL_9;
    }
  }

  else
  {
    shortenedProductPageURLString = [productPageItem shortenedProductPageURLString];
    v12 = shortenedProductPageURLString;
    if (shortenedProductPageURLString)
    {
      productPageURLString = shortenedProductPageURLString;
    }

    else
    {
      productPageItem2 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
      productPageURLString = [productPageItem2 productPageURLString];
    }

    if (productPageURLString)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v4 = [(SUUIDeferredActivityItemProvider *)self productPageItem:controller];
  title = [v4 title];

  return title;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  typeCopy = type;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__28;
  v24 = __Block_byref_object_dispose__28;
  v25 = 0;
  productPageItem = [(SUUIDeferredActivityItemProvider *)self productPageItem];
  artworksProvider = [productPageItem artworksProvider];
  v13 = [artworksProvider bestArtworkForScaledSize:{width, height}];
  v14 = [v13 URL];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v14];
    height = [SUUIStyledImageDataConsumer appIconConsumerWithSize:width, height];
    [v15 setDataConsumer:height];

    [v15 setITunesStoreRequest:0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__SUUIURLActivityItemProvider_activityViewController_thumbnailImageForActivityType_suggestedSize___block_invoke;
    v19[3] = &unk_2798F6580;
    v19[4] = &v20;
    [v15 setOutputBlock:v19];
    [v15 main];
  }

  v17 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v17;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v48 = *MEMORY[0x277D85DE8];
  productPageItem = [(SUUIDeferredActivityItemProvider *)self productPageItem];
  shortenedProductPageURLString = [productPageItem shortenedProductPageURLString];
  v6 = shortenedProductPageURLString;
  if (shortenedProductPageURLString)
  {
    productPageURLString = shortenedProductPageURLString;
  }

  else
  {
    productPageItem2 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    productPageURLString = [productPageItem2 productPageURLString];
  }

  v9 = [MEMORY[0x277CBEBC0] URLWithString:productPageURLString];
  productPageItem3 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
  v11 = productPageItem3;
  v12 = 0;
  if (v9 && productPageItem3)
  {
    v41 = v9;
    v42 = productPageURLString;
    array = [MEMORY[0x277CBEB18] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    screenshots = [v11 screenshots];
    v15 = [screenshots countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(screenshots);
          }

          v19 = [*(*(&v43 + 1) + 8 * i) URLForVariant:@"low-dpi"];
          if (v19)
          {
            v20 = [(SUUIURLActivityItemProvider *)self linkPresentationImageFor:v19];
            [array addObject:v20];
          }
        }

        v16 = [screenshots countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v16);
    }

    videos = [v11 videos];
    firstObject = [videos firstObject];

    artworks = [firstObject artworks];
    v24 = [artworks bestArtworkForScaledSize:{300.0, 300.0}];
    v40 = [v24 URL];

    v12 = objc_alloc_init(MEMORY[0x277CD46C8]);
    v9 = v41;
    [v12 setURL:v41];
    title = [v11 title];
    [v12 setTitle:title];

    v26 = objc_alloc_init(MEMORY[0x277CD4720]);
    title2 = [v11 title];
    [v26 setName:title2];

    artistName = [v11 artistName];
    [v26 setSubtitle:artistName];

    artworksProvider = [v11 artworksProvider];
    v30 = [artworksProvider bestArtworkForScaledSize:{40.0, 40.0}];
    v31 = [v30 URL];

    if (v31)
    {
      v32 = [(SUUIURLActivityItemProvider *)self linkPresentationImageFor:v31];
      [v26 setIcon:v32];
    }

    storeIdentifier = [v11 storeIdentifier];
    stringValue = [storeIdentifier stringValue];
    [v26 setStoreIdentifier:stringValue];

    clientContext = [(SUUIDeferredActivityItemProvider *)self clientContext];
    storeFrontIdentifier = [clientContext storeFrontIdentifier];
    [v26 setStoreFrontIdentifier:storeFrontIdentifier];

    categoryName = [v11 categoryName];
    [v26 setGenre:categoryName];

    [v26 setPlatform:@"iOS"];
    [v26 setScreenshots:array];
    v38 = [objc_alloc(MEMORY[0x277CD4700]) initWithStreamingURL:v40 hasAudio:0];
    [v26 setPreviewVideo:v38];

    [v26 setIsMessagesOnlyApp:0];
    [v26 setMessagesAppIcon:0];
    [v12 setSpecialization:v26];

    productPageURLString = v42;
  }

  return v12;
}

- (id)linkPresentationImageFor:(id)for
{
  forCopy = for;
  v5 = [[SUUIArtworkItemProvider alloc] initWithURL:forCopy usingResourceLoader:self->_resourceLoader];

  v6 = [objc_alloc(MEMORY[0x277CD46B0]) initWithItemProvider:v5 properties:0 placeholderImage:0];

  return v6;
}

@end