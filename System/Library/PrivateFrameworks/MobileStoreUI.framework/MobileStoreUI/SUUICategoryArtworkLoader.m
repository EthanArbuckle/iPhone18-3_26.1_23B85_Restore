@interface SUUICategoryArtworkLoader
- (CGSize)imageSize;
- (SUUICategoryArtworkLoader)initWithArtworkLoader:(id)a3;
- (UIImage)placeholderImage;
- (id)cachedImageForCategory:(id)a3;
- (void)addObserver:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)loadImageForCategory:(id)a3 reason:(int64_t)a4;
@end

@implementation SUUICategoryArtworkLoader

- (SUUICategoryArtworkLoader)initWithArtworkLoader:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SUUICategoryArtworkLoader;
    v6 = [(SUUICategoryArtworkLoader *)&v10 init];
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

- (id)cachedImageForCategory:(id)a3
{
  v4 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[SUUIResourceLoader cachedResourceForRequestIdentifier:](self->_loader, "cachedResourceForRequestIdentifier:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadImageForCategory:(id)a3 reason:(int64_t)a4
{
  v17 = a3;
  v6 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:?];
  v7 = v6;
  if (!v6 || !-[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_loader, "trySetReason:forRequestWithIdentifier:", a4, [v6 unsignedIntegerValue]))
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = v9;

    if (v10 == 2.0)
    {
      v11 = 100;
    }

    else
    {
      v11 = 50;
    }

    v12 = [v17 artworkProvider];
    v13 = [v12 artworkURLForSize:v11];

    if (v13)
    {
      v14 = objc_alloc_init(SUUIArtworkRequest);
      [(SUUIArtworkRequest *)v14 setDataConsumer:self->_imageDataConsumer];
      [(SUUIArtworkRequest *)v14 setDelegate:self];
      [(SUUIArtworkRequest *)v14 setURL:v13];
      [(SUUIResourceLoader *)self->_loader loadResourceWithRequest:v14 reason:a4];
      artworkRequestIDs = self->_artworkRequestIDs;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v14, "requestIdentifier")}];
      [(NSMapTable *)artworkRequestIDs setObject:v16 forKey:v17];
    }
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
  v2 = 33.0;
  v3 = 33.0;
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
            [v21 categoryArtworkLoader:self didLoadImage:v6 forCategory:v15];
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

@end