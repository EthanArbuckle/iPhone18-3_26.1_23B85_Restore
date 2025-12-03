@interface SUUIContentRatingArtworkResourceLoader
- (CGSize)imageSize;
- (SUUIContentRatingArtworkResourceLoader)initWithArtworkLoader:(id)loader;
- (UIImage)placeholderImage;
- (id)_loadImage:(id)image;
- (id)_urlForContentRating:(id)rating clientContext:(id)context;
- (id)cachedImageForContentRating:(id)rating withClientContext:(id)context;
- (void)addObserver:(id)observer;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)loadImageForContentRating:(id)rating clientContent:(id)content reason:(int64_t)reason;
@end

@implementation SUUIContentRatingArtworkResourceLoader

- (SUUIContentRatingArtworkResourceLoader)initWithArtworkLoader:(id)loader
{
  loaderCopy = loader;
  if (loaderCopy)
  {
    v10.receiver = self;
    v10.super_class = SUUIContentRatingArtworkResourceLoader;
    v6 = [(SUUIContentRatingArtworkResourceLoader *)&v10 init];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      artworkRequestIDs = v6->_artworkRequestIDs;
      v6->_artworkRequestIDs = v7;

      objc_storeStrong(&v6->_loader, loader);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil loader"];

    v6 = 0;
  }

  return v6;
}

- (void)addObserver:(id)observer
{
  objc_initWeak(&location, observer);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  v7 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v7];

  objc_destroyWeak(&location);
}

- (id)cachedImageForContentRating:(id)rating withClientContext:(id)context
{
  ratingCopy = rating;
  v7 = [(SUUIContentRatingArtworkResourceLoader *)self _urlForContentRating:ratingCopy clientContext:context];
  if (v7 || ([ratingCopy contentRatingSystemName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"appsBrazil"), v8, !v9) || (v10 = MEMORY[0x277CCACA8], objc_msgSend(ratingCopy, "contentRank"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringWithFormat:", @"ContentRating-appsBrazil-%@", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, -[SUUIContentRatingArtworkResourceLoader _loadImage:](self, "_loadImage:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v14 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:ratingCopy];
    v15 = v14;
    if (v14)
    {
      v13 = -[SUUIResourceLoader cachedResourceForRequestIdentifier:](self->_loader, "cachedResourceForRequestIdentifier:", [v14 unsignedIntegerValue]);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)loadImageForContentRating:(id)rating clientContent:(id)content reason:(int64_t)reason
{
  ratingCopy = rating;
  v7 = [SUUIContentRatingArtworkResourceLoader _urlForContentRating:"_urlForContentRating:clientContext:" clientContext:?];
  if (v7)
  {
    v8 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v8 setDataConsumer:self->_imageDataConsumer];
    [(SUUIArtworkRequest *)v8 setDelegate:self];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    [(SUUIArtworkRequest *)v8 setURL:v9];

    [(SUUIResourceLoader *)self->_loader loadResourceWithRequest:v8 reason:reason];
    artworkRequestIDs = self->_artworkRequestIDs;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v8, "requestIdentifier")}];
    [(NSMapTable *)artworkRequestIDs setObject:v11 forKey:ratingCopy];
  }
}

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    imageDataConsumer = self->_imageDataConsumer;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v6 = [(SUUIImageDataConsumer *)imageDataConsumer imageForColor:v5];
    v7 = self->_placeholderImage;
    self->_placeholderImage = v6;

    placeholderImage = self->_placeholderImage;
  }

  return placeholderImage;
}

- (CGSize)imageSize
{
  v2 = 11.0;
  v3 = 11.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v32 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestIdentifier = [request requestIdentifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_artworkRequestIDs;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:v13];
      if (requestIdentifier == [v14 unsignedIntegerValue])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_22;
    }

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(allObjects);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 contentRatingArtworkLoader:self didLoadImage:imageCopy forContentRating:v15];
          }
        }

        v18 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }
  }

  else
  {
LABEL_9:
    v15 = v8;
  }

LABEL_22:
}

- (id)_urlForContentRating:(id)rating clientContext:(id)context
{
  ratingCopy = rating;
  uRLBag = [context URLBag];
  v7 = uRLBag;
  if (uRLBag)
  {
    v21 = 0;
    v8 = [uRLBag valueForKey:@"imagesForRatingBadges" error:&v21];
    objc_opt_class();
    v9 = 0;
    if (objc_opt_isKindOfClass())
    {
      contentRatingSystemName = [ratingCopy contentRatingSystemName];
      v11 = [v8 objectForKey:contentRatingSystemName];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentRank = [ratingCopy contentRank];
        v13 = [v11 objectForKey:contentRank];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 copy];
          if ([v14 count] < 1)
          {
            v9 = 0;
          }

          else
          {
            mainScreen = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen scale];
            v17 = v16;

            if (v17 >= 2.0)
            {
              [v14 lastObject];
            }

            else
            {
              [v14 firstObject];
            }
            v18 = ;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 objectForKey:@"url"];
              v9 = [v19 copy];
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_loadImage:(id)image
{
  v3 = MEMORY[0x277CCA8D8];
  imageCopy = image;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:imageCopy inBundle:v5];

  return v6;
}

@end