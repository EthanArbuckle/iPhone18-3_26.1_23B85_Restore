@interface SUUIImageCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)_reloadHighlightImageView;
- (void)layoutSubviews;
- (void)reloadWithCarouselItem:(id)a3 size:(CGSize)a4 context:(id)a5;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SUUIImageCollectionViewCell

- (void)reloadWithCarouselItem:(id)a3 size:(CGSize)a4 context:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SUUIImageCollectionViewCell_reloadWithCarouselItem_size_context___block_invoke;
  v13[3] = &unk_2798F93D8;
  v17 = width;
  v18 = height;
  v14 = v9;
  v15 = v10;
  v16 = self;
  v11 = v10;
  v12 = v9;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v13];
}

void __67__SUUIImageCollectionViewCell_reloadWithCarouselItem_size_context___block_invoke(uint64_t a1, void *a2)
{
  v25 = [a2 addReusableViewWithReuseIdentifier:0x286AF9940];
  v3 = [*(a1 + 32) accessibilityLabel];
  [v25 setAccessibilityLabel:v3];

  [v25 setEnabled:0];
  [v25 setImageSize:{*(a1 + 56), *(a1 + 64)}];
  v4 = objc_alloc_init(SUUIStyledImageDataConsumer);
  v5 = 0.0;
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(SUUIStyledImageDataConsumer *)v4 setBorderColor:v6];

  v7 = [*(a1 + 40) aggregateValueForKey:@"SUUICIBWK"];
  v8 = v7;
  if (v7)
  {
    [v7 UIEdgeInsetsValue];
    v5 = v12;
  }

  else
  {
    v10 = 1.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  [(SUUIStyledImageDataConsumer *)v4 setBorderWidths:v5, v9, v10, v11];
  v13 = [*(a1 + 32) artworkForSize:{*(a1 + 56), *(a1 + 64)}];
  v14 = [*(a1 + 40) imageResourceCacheKeyForArtwork:v13];
  v15 = *(a1 + 48);
  v16 = *(v15 + 832);
  *(v15 + 832) = v14;

  v17 = [*(a1 + 40) requestIdentifierForArtwork:v13];
  v18 = *(a1 + 40);
  if (v17)
  {
    v19 = [v18 resourceLoader];
    v20 = [v19 cachedResourceForRequestIdentifier:{objc_msgSend(v17, "unsignedIntegerValue")}];
    if (v20)
    {
      v21 = v20;

      goto LABEL_12;
    }

    [*(a1 + 40) loadImageForArtwork:v13 dataConsumer:v4 reason:1];
  }

  else
  {
    [v18 loadImageForArtwork:v13 dataConsumer:v4 reason:1];
  }

  v22 = [(SUUIStyledImageDataConsumer *)v4 isImagePlaceholderAvailable];
  v23 = *(a1 + 40);
  if (v22)
  {
    v24 = [v23 placeholderColor];
    v21 = [(SUUIStyledImageDataConsumer *)v4 imagePlaceholderForColor:v24];
  }

  else
  {
    v21 = [v23 placeholderImageForSize:{*(a1 + 56), *(a1 + 64)}];
  }

LABEL_12:
  [v25 setContents:v21];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 requestIdentifierForViewElement:v7];

  if (!v9)
  {
    v10 = v7;
    if ([v10 elementType] == 152)
    {
      v11 = [v10 thumbnailImage];

      v10 = v11;
    }

    [v8 loadImageForImageElement:v10 reason:a4];
  }

  return v9 == 0;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [a4 sizeForViewElement:a3 width:1.79769313e308];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [a5 sizeForViewElement:a4 width:?];
  if (v6 > 0.00000011920929)
  {
    v8 = v7 * (a3 / v6);
    v7 = floorf(v8);
  }

  v9 = a3;
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 imageResourceCacheKeyForViewElement:v7];
  imageRequestCacheKey = self->_imageRequestCacheKey;
  self->_imageRequestCacheKey = v9;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SUUIImageCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F7950;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v11 = v8;
  v12 = v7;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v13];
}

void __67__SUUIImageCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) elementType];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3 == 152)
  {
    v6 = [v10 addImageViewWithVideoElement:v4 context:v5];
    if (*(*(a1 + 48) + 840) == 1)
    {
      v7 = [v10 addImageViewWithVideoElement:*(a1 + 32) context:*(a1 + 40)];
    }
  }

  else
  {
    v8 = [v10 addImageViewWithElement:v4 context:v5];
    if (*(*(a1 + 48) + 840) == 1)
    {
      v9 = [v10 addImageViewWithElement:*(a1 + 32) context:*(a1 + 40)];
    }
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a5 requestIdentifierForResourceCacheKey:self->_imageRequestCacheKey];
  v11 = v10;
  if (v10 && (v12 = [v10 unsignedIntegerValue], v12 == objc_msgSend(v9, "requestIdentifier")))
  {
    v13 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * i) setImage:v8];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUUIImageCollectionViewCell;
  [(SUUICollectionViewCell *)&v22 layoutSubviews];
  v3 = [(SUUIImageCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v13 = [v12 firstObject];
  if (v13)
  {
    [(SUUIViewReuseCollectionViewCell *)self contentInset];
    if (self->_showsReflectionImage)
    {
      v18 = v11 * 0.5;
      v14 = v14 + floorf(v18);
    }

    [v13 setFrame:{v5 + v15, v7 + v14, v9 - (v15 + v17), v11 - (v16 + v14)}];
  }

  if ([v12 count] == 2)
  {
    v19 = [v12 objectAtIndex:1];
    v20 = v19;
    if (self->_showsReflectionImage)
    {
      [v13 frame];
      [v20 setFrame:?];
      [v20 setHidden:0];
      CGAffineTransformMakeScale(&v21, -1.0, -1.0);
      [v20 setTransform:&v21];
    }

    else
    {
      [v19 setHidden:1];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIImageCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setHighlighted:a3];
  [(SUUIImageCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIImageCollectionViewCell;
  [(SUUICollectionViewCell *)&v4 setSelected:a3];
  [(SUUIImageCollectionViewCell *)self _reloadHighlightImageView];
}

- (void)_reloadHighlightImageView
{
  if (([(SUUIImageCollectionViewCell *)self isHighlighted]& 1) == 0 && ![(SUUIImageCollectionViewCell *)self isSelected])
  {
    highlightImageView = self->_highlightImageView;
    if (!highlightImageView)
    {
      return;
    }

    v18 = highlightImageView;
    v19 = self->_highlightImageView;
    self->_highlightImageView = 0;

    [MEMORY[0x277CD9FF0] begin];
    v20 = MEMORY[0x277CD9FF0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__SUUIImageCollectionViewCell__reloadHighlightImageView__block_invoke;
    v21[3] = &unk_2798F5BE8;
    v22 = v18;
    v4 = v18;
    [v20 setCompletionBlock:v21];
    [(SUUIImageView *)v4 setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
    v16 = v22;
    goto LABEL_9;
  }

  v3 = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = self->_highlightImageView;
    if (!v5)
    {
      v6 = objc_alloc_init(SUUIImageView);
      v7 = self->_highlightImageView;
      self->_highlightImageView = v6;

      [(SUUIImageView *)self->_highlightImageView setAlpha:0.300000012];
      v8 = self->_highlightImageView;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(SUUIImageView *)v8 setBackgroundColor:v9];

      v5 = self->_highlightImageView;
    }

    [(SUUIImageView *)v4 bounds];
    [(SUUIImageView *)v5 setBounds:?];
    v10 = self->_highlightImageView;
    [(SUUIImageView *)v4 center];
    [(SUUIImageView *)v10 setCenter:?];
    v11 = self->_highlightImageView;
    v12 = [(SUUIImageView *)v4 image];
    v13 = [MEMORY[0x277D75348] blackColor];
    v14 = [v12 _flatImageWithColor:v13];
    [(SUUIImageView *)v11 setImage:v14];

    v15 = self->_highlightImageView;
    [(SUUIImageView *)v4 transform];
    [(SUUIImageView *)v15 setTransform:v23];
    v16 = [(SUUIImageCollectionViewCell *)self contentView];
    [v16 insertSubview:self->_highlightImageView aboveSubview:v4];
LABEL_9:
  }
}

@end