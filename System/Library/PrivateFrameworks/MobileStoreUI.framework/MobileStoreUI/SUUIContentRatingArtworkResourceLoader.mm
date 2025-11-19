@interface SUUIContentRatingArtworkResourceLoader
- (CGSize)imageSize;
- (SUUIContentRatingArtworkResourceLoader)initWithArtworkLoader:(id)a3;
- (UIImage)placeholderImage;
- (id)_loadImage:(id)a3;
- (id)_urlForContentRating:(id)a3 clientContext:(id)a4;
- (id)cachedImageForContentRating:(id)a3 withClientContext:(id)a4;
- (void)addObserver:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)loadImageForContentRating:(id)a3 clientContent:(id)a4 reason:(int64_t)a5;
@end

@implementation SUUIContentRatingArtworkResourceLoader

- (SUUIContentRatingArtworkResourceLoader)initWithArtworkLoader:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SUUIContentRatingArtworkResourceLoader;
    v6 = [(SUUIContentRatingArtworkResourceLoader *)&v10 init];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      artworkRequestIDs = v6->_artworkRequestIDs;
      v6->_artworkRequestIDs = v7;

      objc_storeStrong(&v6->_loader, a3);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil loader"];

    v6 = 0;
  }

  return v6;
}

- (void)addObserver:(id)a3
{
  objc_initWeak(&location, a3);
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

- (id)cachedImageForContentRating:(id)a3 withClientContext:(id)a4
{
  v6 = a3;
  v7 = [(SUUIContentRatingArtworkResourceLoader *)self _urlForContentRating:v6 clientContext:a4];
  if (v7 || ([v6 contentRatingSystemName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"appsBrazil"), v8, !v9) || (v10 = MEMORY[0x277CCACA8], objc_msgSend(v6, "contentRank"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringWithFormat:", @"ContentRating-appsBrazil-%@", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, -[SUUIContentRatingArtworkResourceLoader _loadImage:](self, "_loadImage:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v14 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:v6];
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

- (void)loadImageForContentRating:(id)a3 clientContent:(id)a4 reason:(int64_t)a5
{
  v12 = a3;
  v7 = [SUUIContentRatingArtworkResourceLoader _urlForContentRating:"_urlForContentRating:clientContext:" clientContext:?];
  if (v7)
  {
    v8 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v8 setDataConsumer:self->_imageDataConsumer];
    [(SUUIArtworkRequest *)v8 setDelegate:self];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    [(SUUIArtworkRequest *)v8 setURL:v9];

    [(SUUIResourceLoader *)self->_loader loadResourceWithRequest:v8 reason:a5];
    artworkRequestIDs = self->_artworkRequestIDs;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v8, "requestIdentifier")}];
    [(NSMapTable *)artworkRequestIDs setObject:v11 forKey:v12];
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

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 requestIdentifier];
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
      if (v7 == [v14 unsignedIntegerValue])
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

    v16 = [(NSHashTable *)self->_observers allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 contentRatingArtworkLoader:self didLoadImage:v6 forContentRating:v15];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (id)_urlForContentRating:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = [a4 URLBag];
  v7 = v6;
  if (v6)
  {
    v21 = 0;
    v8 = [v6 valueForKey:@"imagesForRatingBadges" error:&v21];
    objc_opt_class();
    v9 = 0;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v5 contentRatingSystemName];
      v11 = [v8 objectForKey:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v5 contentRank];
        v13 = [v11 objectForKey:v12];

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
            v15 = [MEMORY[0x277D759A0] mainScreen];
            [v15 scale];
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

- (id)_loadImage:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v5];

  return v6;
}

@end