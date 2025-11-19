@interface SUUISwooshArtworkLoader
- (BOOL)loadImageForObject:(id)a3 URL:(id)a4 reason:(int64_t)a5;
- (BOOL)loadImageForObject:(id)a3 artworkRequest:(id)a4 reason:(int64_t)a5;
- (SUUISwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4;
- (UIImage)placeholderImage;
- (id)cachedImageForObject:(id)a3;
- (unint64_t)artworkRequestIdentifierForObject:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)deprioritizePendingImageLoads;
- (void)setImageDataConsumer:(id)a3;
- (void)setPlaceholderColorWithColorScheme:(id)a3;
@end

@implementation SUUISwooshArtworkLoader

- (SUUISwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SUUISwooshArtworkLoader;
  v9 = [(SUUISwooshArtworkLoader *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_artworkLoader, a3);
    objc_storeStrong(&v10->_swooshViewController, a4);
    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequestIDs = v10->_artworkRequestIDs;
    v10->_artworkRequestIDs = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    outstandingRequestIDs = v10->_outstandingRequestIDs;
    v10->_outstandingRequestIDs = v13;
  }

  return v10;
}

- (unint64_t)artworkRequestIdentifierForObject:(id)a3
{
  v3 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)cachedImageForObject:(id)a3
{
  v4 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    v6 = -[SUUIResourceLoader cachedResourceForRequestIdentifier:](self->_artworkLoader, "cachedResourceForRequestIdentifier:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deprioritizePendingImageLoads
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  outstandingRequestIDs = self->_outstandingRequestIDs;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUUISwooshArtworkLoader_deprioritizePendingImageLoads__block_invoke;
  v4[3] = &unk_2798F6758;
  v4[4] = self;
  v4[5] = &v5;
  [(NSMutableIndexSet *)outstandingRequestIDs enumerateIndexesUsingBlock:v4];
  if (v6[5])
  {
    [(NSMutableIndexSet *)self->_outstandingRequestIDs removeIndexes:?];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __56__SUUISwooshArtworkLoader_deprioritizePendingImageLoads__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 8) trySetReason:0 forRequestWithIdentifier:a2];
  if ((result & 1) == 0)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v5 addIndex:a2];
  }

  return result;
}

- (BOOL)loadImageForObject:(id)a3 URL:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:v8];
  v11 = v10;
  if (v10 && -[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_artworkLoader, "trySetReason:forRequestWithIdentifier:", a5, [v10 unsignedIntegerValue]))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v13 setDataConsumer:self->_imageDataConsumer];
    [(SUUIArtworkRequest *)v13 setDelegate:self];
    [(SUUIArtworkRequest *)v13 setURL:v9];
    v12 = [(SUUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v13 reason:1];
    if (v12)
    {
      v14 = [(SUUIResourceRequest *)v13 requestIdentifier];
      [(NSMutableIndexSet *)self->_outstandingRequestIDs addIndex:v14];
      artworkRequestIDs = self->_artworkRequestIDs;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [(NSMapTable *)artworkRequestIDs setObject:v16 forKey:v8];
    }
  }

  return v12;
}

- (BOOL)loadImageForObject:(id)a3 artworkRequest:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:v8];
  v11 = v10;
  if (v10 && -[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_artworkLoader, "trySetReason:forRequestWithIdentifier:", a5, [v10 unsignedIntegerValue]) || (objc_msgSend(v9, "setDelegate:", self), !-[SUUIResourceLoader loadResourceWithRequest:reason:](self->_artworkLoader, "loadResourceWithRequest:reason:", v9, 1)))
  {
    v15 = 0;
  }

  else
  {
    v12 = [v9 requestIdentifier];
    [(NSMutableIndexSet *)self->_outstandingRequestIDs addIndex:v12];
    artworkRequestIDs = self->_artworkRequestIDs;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [(NSMapTable *)artworkRequestIDs setObject:v14 forKey:v8];

    v15 = 1;
  }

  return v15;
}

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    v4 = [(SUUISwooshArtworkLoader *)self imageDataConsumer];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v6 = [v4 imageForColor:v5];
    v7 = self->_placeholderImage;
    self->_placeholderImage = v6;

    placeholderImage = self->_placeholderImage;
  }

  return placeholderImage;
}

- (void)setImageDataConsumer:(id)a3
{
  v5 = a3;
  if (self->_imageDataConsumer != v5)
  {
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = 0;
    v7 = v5;

    objc_storeStrong(&self->_imageDataConsumer, a3);
    v5 = v7;
  }
}

- (void)setPlaceholderColorWithColorScheme:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (!v4)
  {
    v7 = MEMORY[0x277D75348];
    v8 = 0.8;
    v9 = 1.0;
LABEL_11:
    v6 = [v7 colorWithWhite:v8 alpha:v9];
    goto LABEL_12;
  }

  v5 = [v4 schemeStyle];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v7 = MEMORY[0x277D75348];
    v9 = 0.2;
    v8 = 0.0;
    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5 == 1)
  {
LABEL_9:
    v7 = MEMORY[0x277D75348];
    v9 = 0.2;
    v8 = 1.0;
    goto LABEL_11;
  }

LABEL_12:
  v10 = [(SUUISwooshArtworkLoader *)self imageDataConsumer];
  v11 = [v10 imageForColor:v6];
  placeholderImage = self->_placeholderImage;
  self->_placeholderImage = v11;
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  outstandingRequestIDs = self->_outstandingRequestIDs;
  v7 = a4;
  v8 = a3;
  -[NSMutableIndexSet removeIndex:](outstandingRequestIDs, "removeIndex:", [v8 requestIdentifier]);
  [(SUUISwooshArtworkLoader *)self setImage:v7 forRequest:v8];

  [v8 setDelegate:0];
}

@end