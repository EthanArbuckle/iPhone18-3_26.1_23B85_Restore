@interface SUUIItemArtworkContext
+ (id)lockupContextWithSize:(int64_t)a3;
+ (id)roomContext;
+ (id)wishlistContext;
- (CGSize)imageSizeForItem:(id)a3;
- (CGSize)largestImageSizeForItems:(id)a3;
- (CGSize)largestImageSizeForLockups:(id)a3;
- (id)URLForItem:(id)a3;
- (id)artworkForItem:(id)a3;
- (id)dataConsumerForItem:(id)a3;
- (id)placeholderImageForItem:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setGeneralConsumer:(id)a3;
- (void)setIconConsumer:(id)a3;
- (void)setLetterboxConsumer:(id)a3;
- (void)setNewsstandConsumer:(id)a3;
- (void)setPosterConsumer:(id)a3;
@end

@implementation SUUIItemArtworkContext

+ (id)lockupContextWithSize:(int64_t)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [SUUIProductImageDataConsumer lockupConsumerWithSize:a3 itemKind:12];
  [v4 setGeneralConsumer:v5];

  v6 = [SUUIStyledImageDataConsumer lockupIconConsumerWithSize:a3];
  [v4 setIconConsumer:v6];

  v7 = [SUUIStyledImageDataConsumer lockupProductImageConsumerWithSize:a3];
  [v4 setNewsstandConsumer:v7];

  return v4;
}

+ (id)roomContext
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = +[SUUIProductImageDataConsumer gridConsumer];
  [v2 setGeneralConsumer:v3];

  v4 = +[SUUIStyledImageDataConsumer roomIconConsumer];
  [v2 setIconConsumer:v4];

  v5 = +[SUUIStyledImageDataConsumer roomProductImageConsumer];
  [v2 setNewsstandConsumer:v5];

  return v2;
}

+ (id)wishlistContext
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = +[SUUIProductImageDataConsumer wishlistConsumer];
  [v2 setGeneralConsumer:v3];

  v4 = +[SUUIStyledImageDataConsumer wishlistIconConsumer];
  [v2 setIconConsumer:v4];

  v5 = +[SUUIStyledImageDataConsumer wishlistProductImageConsumer];
  [v2 setNewsstandConsumer:v5];

  return v2;
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != v5)
  {
    v8 = v5;
    objc_storeStrong(p_colorScheme, a3);
    [(SUUIProductImageDataConsumer *)self->_generalImageConsumer setColorScheme:self->_colorScheme];
    [(SUUIProductImageDataConsumer *)self->_letterboxConsumer setColorScheme:self->_colorScheme];
    [(SUUIProductImageDataConsumer *)self->_posterConsumer setColorScheme:self->_colorScheme];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_colorScheme, v5);
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  p_backgroundColor = &self->_backgroundColor;
  if (self->_backgroundColor != v5)
  {
    v8 = v5;
    objc_storeStrong(p_backgroundColor, a3);
    [(SUUIProductImageDataConsumer *)self->_generalImageConsumer setBackgroundColor:self->_backgroundColor];
    [(SUUIStyledImageDataConsumer *)self->_iconConsumer setBackgroundColor:self->_backgroundColor];
    [(SUUIProductImageDataConsumer *)self->_letterboxConsumer setBackgroundColor:self->_backgroundColor];
    [(SUUIStyledImageDataConsumer *)self->_newsstandConsumer setBackgroundColor:self->_backgroundColor];
    [(SUUIProductImageDataConsumer *)self->_posterConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_backgroundColor, v5);
}

- (void)setGeneralConsumer:(id)a3
{
  v5 = a3;
  p_generalImageConsumer = &self->_generalImageConsumer;
  if (self->_generalImageConsumer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_generalImageConsumer, a3);
    [(SUUIProductImageDataConsumer *)self->_generalImageConsumer setColorScheme:self->_colorScheme];
    [(SUUIProductImageDataConsumer *)self->_generalImageConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_generalImageConsumer, v5);
}

- (void)setIconConsumer:(id)a3
{
  v5 = a3;
  p_iconConsumer = &self->_iconConsumer;
  if (self->_iconConsumer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_iconConsumer, a3);
    [(SUUIStyledImageDataConsumer *)self->_iconConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_iconConsumer, v5);
}

- (void)setLetterboxConsumer:(id)a3
{
  v5 = a3;
  p_letterboxConsumer = &self->_letterboxConsumer;
  if (self->_letterboxConsumer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_letterboxConsumer, a3);
    [(SUUIProductImageDataConsumer *)self->_letterboxConsumer setColorScheme:self->_colorScheme];
    [(SUUIProductImageDataConsumer *)self->_letterboxConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_letterboxConsumer, v5);
}

- (void)setNewsstandConsumer:(id)a3
{
  v5 = a3;
  p_newsstandConsumer = &self->_newsstandConsumer;
  if (self->_newsstandConsumer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_newsstandConsumer, a3);
    [(SUUIStyledImageDataConsumer *)self->_newsstandConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_newsstandConsumer, v5);
}

- (void)setPosterConsumer:(id)a3
{
  v5 = a3;
  p_posterConsumer = &self->_posterConsumer;
  if (self->_posterConsumer != v5)
  {
    v8 = v5;
    objc_storeStrong(p_posterConsumer, a3);
    [(SUUIProductImageDataConsumer *)self->_posterConsumer setColorScheme:self->_colorScheme];
    [(SUUIProductImageDataConsumer *)self->_posterConsumer setBackgroundColor:self->_backgroundColor];
    placeholders = self->_placeholders;
    self->_placeholders = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_posterConsumer, v5);
}

- (id)dataConsumerForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 itemKind];
  if (v5 > 0x11)
  {
LABEL_14:
    v6 = 24;
    goto LABEL_15;
  }

  if (((1 << v5) & 0x21020) == 0)
  {
    if (((1 << v5) & 0x44) != 0)
    {
      v6 = 64;
      goto LABEL_15;
    }

    if (v5 == 8)
    {
      v6 = 40;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([v4 isNewsstandApp] && (objc_msgSend(v4, "newsstandArtworks"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v6 = 48;
  }

  else if ([v4 isHiddenFromSpringBoard] && (objc_msgSend(v4, "hasMessagesExtension") & 1) != 0)
  {
    v6 = 72;
  }

  else
  {
    v6 = 32;
  }

LABEL_15:
  v8 = *(&self->super.isa + v6);
  if (!v8)
  {
    generalImageConsumer = self->_generalImageConsumer;
    if (!generalImageConsumer)
    {
      generalImageConsumer = self->_iconConsumer;
    }

    v8 = generalImageConsumer;
  }

  return v8;
}

- (CGSize)imageSizeForItem:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 itemKind];
    v7 = 0;
    if (v6 <= 0x11 && ((1 << v6) & 0x21020) != 0)
    {
      v7 = [v5 isNewsstandApp] ^ 1;
    }

    v8 = [(SUUIItemArtworkContext *)self dataConsumerForItem:v5];
    [v8 imageSize];
    v10 = v9;
    v12 = v11;

    if ((v7 & 1) == 0)
    {
      v13 = [v5 artworksProvider];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 bestArtworkForScaledSize:{v10, v12}];
        [v15 size];
        v17 = v16;
        v19 = v18;

        v20 = v10 / v17;
        if (v10 / v17 >= v12 / v19)
        {
          v20 = v12 / v19;
        }

        v10 = ceil(v17 * v20);
        v12 = ceil(v19 * v20);
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
    v21 = self->_iconConsumer;
    v22 = self->_newsstandConsumer;
    v23 = self->_generalImageConsumer;
    v24 = self->_letterboxConsumer;
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v35 = v26;
    v36 = v25;
    v27 = self->_posterConsumer;
    v28 = 0;
    v37 = v27;
    do
    {
      v29 = *(&v35 + v28);
      if (v29)
      {
        [v29 imageSize];
        if (v10 < v30)
        {
          v10 = v30;
        }

        if (v12 < v31)
        {
          v12 = v31;
        }
      }

      v28 += 8;
    }

    while (v28 != 40);
    for (i = 32; i != -8; i -= 8)
    {
    }
  }

  v33 = v10;
  v34 = v12;
  result.height = v34;
  result.width = v33;
  return result;
}

- (CGSize)largestImageSizeForItems:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(SUUIItemArtworkContext *)self imageSizeForItem:*(*(&v18 + 1) + 8 * v11), v18];
          if (v6 < v13)
          {
            v6 = v13;
          }

          if (v5 < v12)
          {
            v5 = v12;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(SUUIItemArtworkContext *)self imageSizeForItem:0];
    v5 = v14;
    v6 = v15;
  }

  v16 = v5;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)largestImageSizeForLockups:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v8 = v6;
  v9 = v5;
  if (v7)
  {
    v10 = v7;
    v11 = *v22;
    v8 = v6;
    v9 = v5;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = [*(*(&v21 + 1) + 8 * v12) item];
        if (v13)
        {
          [(SUUIItemArtworkContext *)self imageSizeForItem:v13];
          if (v8 < v15)
          {
            v8 = v15;
          }

          if (v9 < v14)
          {
            v9 = v14;
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (v9 == v5 && v8 == v6)
  {
    [(SUUIItemArtworkContext *)self imageSizeForItem:0];
    v9 = v17;
    v8 = v18;
  }

  v19 = v9;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)placeholderImageForItem:(id)a3
{
  v4 = a3;
  [(SUUIItemArtworkContext *)self imageSizeForItem:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(SUUIItemArtworkContext *)self dataConsumerForItem:v4];

  if (v9 == self->_iconConsumer)
  {
    v14 = 1;
    v15 = @"application";
  }

  else if (v9 == self->_messagesIconConsumer)
  {
    v14 = 1;
    v15 = @"messages";
  }

  else
  {
    if (v9 == self->_newsstandConsumer)
    {
      v16 = MEMORY[0x277CCACA8];
      v25.width = v6;
      v25.height = v8;
      v13 = NSStringFromCGSize(v25);
      [v16 stringWithFormat:@"newsstand: %@", v13];
    }

    else if (v9 == self->_posterConsumer)
    {
      v17 = MEMORY[0x277CCACA8];
      v26.width = v6;
      v26.height = v8;
      v13 = NSStringFromCGSize(v26);
      [v17 stringWithFormat:@"poster: %@", v13];
    }

    else
    {
      letterboxConsumer = self->_letterboxConsumer;
      v11 = MEMORY[0x277CCACA8];
      v24.width = v6;
      v24.height = v8;
      v12 = NSStringFromCGSize(v24);
      v13 = v12;
      if (v9 == letterboxConsumer)
      {
        [v11 stringWithFormat:@"letterbox: %@", v12];
      }

      else
      {
        [v11 stringWithFormat:@"general: %@", v12];
      }
    }
    v15 = ;

    v14 = 0;
  }

  placeholders = self->_placeholders;
  if (!placeholders)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = self->_placeholders;
    self->_placeholders = v19;

    placeholders = self->_placeholders;
  }

  v21 = [(NSMutableDictionary *)placeholders objectForKey:v15];
  if (!v21)
  {
    if (v14)
    {
      [(SUUIProductImageDataConsumer *)v9 imageForColor:0];
    }

    else
    {
      [(SUUIProductImageDataConsumer *)v9 imageForColor:0 size:v6, v8];
    }
    v21 = ;
    if (v21)
    {
      [(NSMutableDictionary *)self->_placeholders setObject:v21 forKey:v15];
    }
  }

  return v21;
}

- (id)URLForItem:(id)a3
{
  v3 = [(SUUIItemArtworkContext *)self artworkForItem:a3];
  v4 = [v3 URL];

  return v4;
}

- (id)artworkForItem:(id)a3
{
  v4 = a3;
  v5 = [(SUUIItemArtworkContext *)self dataConsumerForItem:v4];
  [v5 imageSize];
  v7 = v6;
  v9 = v8;

  v10 = [v4 artworksProvider];

  v11 = [v10 bestArtworkForScaledSize:{v7, v9}];

  return v11;
}

@end