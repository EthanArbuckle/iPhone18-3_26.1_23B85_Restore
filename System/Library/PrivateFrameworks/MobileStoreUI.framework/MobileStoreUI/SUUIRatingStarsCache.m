@interface SUUIRatingStarsCache
+ (id)cacheWithProperties:(int64_t)a3;
- (SUUIRatingStarsCache)initWithProperties:(int64_t)a3;
- (id)ratingStarsImageForRating:(double)a3;
@end

@implementation SUUIRatingStarsCache

- (SUUIRatingStarsCache)initWithProperties:(int64_t)a3
{
  v3 = a3;
  v27.receiver = self;
  v27.super_class = SUUIRatingStarsCache;
  v4 = [(SUUIRatingStarsCache *)&v27 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = @"Small";
    if ((v3 & 1) == 0)
    {
      v6 = &stru_286AECDE0;
    }

    if ((v3 & 4) != 0)
    {
      v7 = @"Large";
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x10) != 0)
    {
      v8 = @"Selected";
    }

    else
    {
      v8 = &stru_286AECDE0;
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarEmpty%@", v7, v8];
    v10 = [MEMORY[0x277D755B8] imageNamed:v9 inBundle:v5];
    v11 = [MEMORY[0x277D75348] systemOrangeColor];
    v12 = [v10 _flatImageWithColor:v11];
    emptyStarImage = v4->_emptyStarImage;
    v4->_emptyStarImage = v12;

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarFull%@", v7, v8];
    v15 = [MEMORY[0x277D755B8] imageNamed:v14 inBundle:v5];
    v16 = [MEMORY[0x277D75348] systemOrangeColor];
    v17 = [v15 _flatImageWithColor:v16];
    filledStarImage = v4->_filledStarImage;
    v4->_filledStarImage = v17;

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@StarHalf%@", v7, v8];
    v20 = [MEMORY[0x277D755B8] imageNamed:v19 inBundle:v5];
    v21 = [MEMORY[0x277D75348] systemOrangeColor];
    v22 = [v20 _flatImageWithColor:v21];
    halfStarImage = v4->_halfStarImage;
    v4->_halfStarImage = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedImages = v4->_cachedImages;
    v4->_cachedImages = v24;
  }

  return v4;
}

+ (id)cacheWithProperties:(int64_t)a3
{
  if (!cacheWithProperties__sCaches)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = cacheWithProperties__sCaches;
    cacheWithProperties__sCaches = v5;
  }

  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  v8 = [cacheWithProperties__sCaches objectForKey:v7];
  if (!v8)
  {
    v8 = [[a1 alloc] initWithProperties:a3];
    [cacheWithProperties__sCaches setObject:v8 forKey:v7];
  }

  return v8;
}

- (id)ratingStarsImageForRating:(double)a3
{
  v4 = a3 * 10.0;
  v5 = rintf(v4);
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v5];
  v7 = [(NSMutableDictionary *)self->_cachedImages objectForKey:v6];
  if (!v7)
  {
    [(UIImage *)self->_emptyStarImage size];
    v9 = v8;
    v11 = v10;
    [(UIImage *)self->_filledStarImage size];
    v13 = v12;
    v15 = v14;
    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 scale];
    v18 = v17;
    v28.width = v9 * 5.0;
    v28.height = v11;
    UIGraphicsBeginImageContextWithOptions(v28, 0, v18);

    v19 = 0.0;
    v20 = -2;
    do
    {
      [(UIImage *)self->_emptyStarImage drawInRect:v19, 0.0, v9, v11];
      v19 = v9 + v19;
      v20 += 2;
    }

    while (v20 < 8);
    v21 = 0.0;
    if (v5 >= 2)
    {
      for (i = 2; i <= v5; i += 2)
      {
        [(UIImage *)self->_filledStarImage drawInRect:v21, 0.0, v13, v15];
        v21 = v13 + v21;
      }
    }

    if ((v5 & 0x8000000000000001) == 1)
    {
      [(UIImage *)self->_halfStarImage size];
      [(UIImage *)self->_halfStarImage drawInRect:v21, 0.0, v23, v24];
    }

    v7 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v7)
    {
      [(NSMutableDictionary *)self->_cachedImages setObject:v7 forKey:v6];
    }
  }

  v25 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v25;
}

@end