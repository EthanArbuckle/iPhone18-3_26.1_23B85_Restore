@interface SUUIGiftItemView
- (CGSize)_imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIGiftItemView)initWithStyle:(int64_t)a3 item:(id)a4 clientContext:(id)a5;
- (SUUIItemArtworkContext)artworkContext;
- (SUUIItemOfferButton)itemOfferButton;
- (UIEdgeInsets)_imageEdgeInsets;
- (double)_paddingLeading;
- (double)_paddingTrailing;
- (id)_newLabel;
- (id)_subtitleColor;
- (id)_titleColor;
- (id)_userRatingColor;
- (void)_enumerateMetadataViewsUsingBlock:(id)a3;
- (void)_itemOfferConfirmAction:(id)a3;
- (void)_reloadItemState:(BOOL)a3;
- (void)_reloadSubtitles;
- (void)_reloadUserRatingViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setArtistName:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCategoryName:(id)a3;
- (void)setItemImage:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setNumberOfUserRatings:(int64_t)a3;
- (void)setPrice:(id)a3;
- (void)setTheme:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserRating:(float)a3;
@end

@implementation SUUIGiftItemView

- (SUUIGiftItemView)initWithStyle:(int64_t)a3 item:(id)a4 clientContext:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SUUIGiftItemView;
  v11 = [(SUUIGiftItemView *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_item, a4);
    v12->_itemStyle = a3;
    objc_storeStrong(&v12->_clientContext, a5);
    [(SUUIGiftItemView *)v12 _reloadUserRatingViews];
    [(SUUIGiftItemView *)v12 _reloadItemState:0];
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v12->_leftToRight = [v13 userInterfaceLayoutDirection] == 0;
  }

  return v12;
}

- (void)dealloc
{
  [(SUUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIGiftItemView;
  [(SUUIGiftItemView *)&v3 dealloc];
}

- (SUUIItemArtworkContext)artworkContext
{
  v3 = objc_alloc_init(SUUIItemArtworkContext);
  itemStyle = self->_itemStyle;
  if ((itemStyle - 2) < 2)
  {
    v10 = +[SUUIStyledImageDataConsumer giftResultIconConsumer];
    [(SUUIItemArtworkContext *)v3 setIconConsumer:v10];

    v11 = +[SUUIStyledImageDataConsumer giftResultProductImageConsumer];
    [(SUUIItemArtworkContext *)v3 setNewsstandConsumer:v11];

    v9 = +[SUUIProductImageDataConsumer giftResultConsumer];
  }

  else if (itemStyle == 1)
  {
    v12 = +[SUUIStyledImageDataConsumer giftThemeIconConsumer];
    [(SUUIItemArtworkContext *)v3 setIconConsumer:v12];

    v13 = +[SUUIStyledImageDataConsumer giftThemeProductImageConsumer];
    [(SUUIItemArtworkContext *)v3 setNewsstandConsumer:v13];

    v14 = +[SUUIProductImageDataConsumer giftThemePosterConsumer];
    [(SUUIItemArtworkContext *)v3 setPosterConsumer:v14];

    v15 = +[SUUIProductImageDataConsumer giftThemeLetterboxConsumer];
    [(SUUIItemArtworkContext *)v3 setLetterboxConsumer:v15];

    v9 = +[SUUIProductImageDataConsumer giftThemeConsumer];
  }

  else
  {
    if (itemStyle)
    {
      goto LABEL_8;
    }

    v5 = +[SUUIStyledImageDataConsumer roomIconConsumer];
    [(SUUIItemArtworkContext *)v3 setIconConsumer:v5];

    v6 = +[SUUIStyledImageDataConsumer giftComposeProductImageConsumer];
    [(SUUIItemArtworkContext *)v3 setNewsstandConsumer:v6];

    v7 = +[SUUIProductImageDataConsumer giftComposePosterConsumer];
    [(SUUIItemArtworkContext *)v3 setPosterConsumer:v7];

    v8 = +[SUUIProductImageDataConsumer giftComposeLetterboxConsumer];
    [(SUUIItemArtworkContext *)v3 setLetterboxConsumer:v8];

    v9 = +[SUUIProductImageDataConsumer giftComposeConsumer];
  }

  v16 = v9;
  [(SUUIItemArtworkContext *)v3 setGeneralConsumer:v9];

LABEL_8:

  return v3;
}

- (SUUIItemOfferButton)itemOfferButton
{
  itemOfferButton = self->_itemOfferButton;
  if (!itemOfferButton)
  {
    v4 = objc_alloc_init(SUUIItemOfferButton);
    v5 = self->_itemOfferButton;
    self->_itemOfferButton = v4;

    v6 = self->_itemOfferButton;
    v7 = [(SUUIGiftItemView *)self backgroundColor];
    [(SUUIItemOfferButton *)v6 setBackgroundColor:v7];

    [(SUUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__itemOfferConfirmAction_ forControlEvents:0x20000];
    [(SUUIGiftItemView *)self addSubview:self->_itemOfferButton];
    itemOfferButton = self->_itemOfferButton;
  }

  return itemOfferButton;
}

- (void)setArtistName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_artistName != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      artistName = self->_artistName;
      self->_artistName = v6;

      v4 = [(SUUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setCategoryName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_categoryName != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      categoryName = self->_categoryName;
      self->_categoryName = v6;

      v4 = [(SUUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setItemImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_itemImageView image];

  if (v4 != v12)
  {
    itemImageView = self->_itemImageView;
    if (v12)
    {
      if (!itemImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_itemImageView;
        self->_itemImageView = v7;

        v9 = self->_itemImageView;
        v10 = [(SUUIGiftItemView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

        [(SUUIGiftItemView *)self addSubview:self->_itemImageView];
        itemImageView = self->_itemImageView;
      }

      [(UIImageView *)itemImageView setImage:?];
      [(UIImageView *)self->_itemImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)itemImageView removeFromSuperview];
      v11 = self->_itemImageView;
      self->_itemImageView = 0;
    }

    v5 = [(SUUIGiftItemView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  if (self->_itemState != a3)
  {
    v4 = a4;
    v6 = [a3 copy];
    itemState = self->_itemState;
    self->_itemState = v6;

    [(SUUIGiftItemView *)self _reloadItemState:v4];
  }
}

- (void)setNumberOfUserRatings:(int64_t)a3
{
  if (self->_numberOfUserRatings != a3)
  {
    self->_numberOfUserRatings = a3;
    [(SUUIGiftItemView *)self _reloadUserRatingViews];
  }
}

- (void)setPrice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_price != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      price = self->_price;
      self->_price = v6;

      v4 = [(SUUIGiftItemView *)self _reloadSubtitles];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setTheme:(id)a3
{
  if (self->_theme != a3)
  {
    v4 = [a3 copy];
    theme = self->_theme;
    self->_theme = v4;

    v7 = [(SUUIGiftItemView *)self _subtitleColor];
    [(UILabel *)self->_subtitleLabel1 setTextColor:v7];
    [(UILabel *)self->_subtitleLabel2 setTextColor:v7];
    v6 = [(SUUIGiftItemView *)self _titleColor];
    [(UILabel *)self->_titleLabel setTextColor:v6];
    [(UILabel *)self->_userRatingCountLabel setTextColor:v6];
  }
}

- (void)setTitle:(id)a3
{
  v21 = a3;
  v4 = [(SUUIGiftItemView *)self title];
  if (v4 != v21 && ([v21 isEqualToString:v4] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!v21)
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v13 = self->_titleLabel;
      self->_titleLabel = 0;

LABEL_17:
      [(SUUIGiftItemView *)self setNeedsLayout];
      goto LABEL_18;
    }

    if (titleLabel)
    {
LABEL_16:
      [(UILabel *)titleLabel setText:?];
      goto LABEL_17;
    }

    v6 = [(SUUIGiftItemView *)self _newLabel];
    v7 = self->_titleLabel;
    self->_titleLabel = v6;

    v8 = self->_titleLabel;
    v9 = [(SUUIGiftItemView *)self _titleColor];
    [(UILabel *)v8 setTextColor:v9];

    itemStyle = self->_itemStyle;
    if ((itemStyle - 2) < 2)
    {
      v14 = self->_titleLabel;
      v15 = MEMORY[0x277D74300];
      v16 = [MEMORY[0x277D75418] currentDevice];
      v17 = [v16 userInterfaceIdiom];

      v18 = 16.0;
      if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v18 = 24.0;
      }

      v19 = v15;
    }

    else
    {
      if (itemStyle != 1)
      {
        if (!itemStyle)
        {
          v11 = self->_titleLabel;
          v12 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
          [(UILabel *)v11 setFont:v12];
        }

        goto LABEL_15;
      }

      v14 = self->_titleLabel;
      v19 = MEMORY[0x277D74300];
      v18 = 15.0;
    }

    v20 = [v19 systemFontOfSize:v18];
    [(UILabel *)v14 setFont:v20];

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
LABEL_15:
    [(SUUIGiftItemView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)setUserRating:(float)a3
{
  if (self->_userRating != a3)
  {
    self->_userRating = a3;
    [(SUUIGiftItemView *)self _reloadUserRatingViews];
  }
}

- (void)layoutSubviews
{
  [(SUUIGiftItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(SUUIGiftItemView *)self leftToRight];
  [(SUUIGiftItemView *)self _paddingTrailing];
  v69 = v4;
  if (v7)
  {
    v9 = v4 - v8;
  }

  else
  {
    v9 = v8;
  }

  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    [(SUUIItemOfferButton *)itemOfferButton frame];
    v9 = v9 - v11;
  }

  [(SUUIGiftItemView *)self _imageSize];
  v13 = v12;
  rect = v14;
  [(SUUIGiftItemView *)self _imageEdgeInsets];
  v16 = v15;
  v68 = v17;
  v19 = v18;
  v21 = v20;
  v22 = [(SUUIGiftItemView *)self leftToRight];
  [(SUUIGiftItemView *)self _paddingLeading];
  v24 = v23;
  if (!v22)
  {
    v25 = v69 - v23;
    [(UIImageView *)self->_itemImageView frame];
    if (v25 - v26 == 0.0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v25 - v26;
    }
  }

  v27 = v16 + (v6 - v16 - v19 - rect) * 0.5;
  v28 = floorf(v27);
  itemImageView = self->_itemImageView;
  if (itemImageView)
  {
    [(UIImageView *)itemImageView frame];
    v13 = v30;
    v32 = (rect - v31) * 0.5;
    [(UIImageView *)self->_itemImageView setFrame:v24, v28 + floorf(v32)];
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x3010000000;
  v80 = "";
  v81 = *MEMORY[0x277CBF348];
  if ([(SUUIGiftItemView *)self leftToRight])
  {
    v82.origin.x = v24;
    v82.origin.y = v28;
    v82.size.width = v13;
    v82.size.height = rect;
    v33 = v21 + CGRectGetMaxX(v82);
  }

  else
  {
    [(SUUIGiftItemView *)self _paddingTrailing];
  }

  v34 = v78;
  v78[4] = v33;
  v34[5] = v28;
  [(UILabel *)self->_titleLabel frame];
  v36 = v35;
  v37 = v78[4];
  [(SUUIGiftItemView *)self _paddingLeading];
  v39 = v38;
  [(SUUIGiftItemView *)self _paddingTrailing];
  v41 = v40;
  v42 = [(SUUIGiftItemView *)self leftToRight];
  v43 = v68;
  if (v42)
  {
    v43 = v21;
  }

  v44 = v69 - v39 - v41 - v13 - v43;
  [(UILabel *)self->_titleLabel sizeThatFits:v44, 1.79769313e308];
  v46 = v45;
  [(UILabel *)self->_titleLabel setFrame:v37, v36, v44, v45];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __34__SUUIGiftItemView_layoutSubviews__block_invoke;
  v72[3] = &unk_2798F5C90;
  v72[4] = &v73;
  [(SUUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v72];
  v47 = (rect - v74[3]) * 0.5;
  v78[5] = v28 + floorf(v47);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __34__SUUIGiftItemView_layoutSubviews__block_invoke_2;
  v71[3] = &unk_2798F5CB8;
  v71[4] = self;
  v71[5] = &v77;
  *&v71[6] = v9;
  *&v71[7] = v44;
  *&v71[8] = v37;
  *&v71[9] = v36;
  *&v71[10] = v44;
  *&v71[11] = v46;
  [(SUUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v71];
  if (self->_userRatingCountLabel)
  {
    [(UIImageView *)self->_starRatingImageView frame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    [(UILabel *)self->_userRatingCountLabel frame];
    v57 = v56;
    if ([(SUUIGiftItemView *)self leftToRight])
    {
      v83.origin.x = v49;
      v83.origin.y = v51;
      v83.size.width = v53;
      v83.size.height = v55;
      v58 = CGRectGetMaxX(v83) + 3.0;
      v59 = v9 - v58;
      v9 = v58;
    }

    else
    {
      v59 = v49 + -3.0;
    }

    v60 = (v55 - v57) * 0.5;
    [(UILabel *)self->_userRatingCountLabel setFrame:v9, v51 + floorf(v60) + -1.0, v59, v57];
  }

  v61 = self->_itemOfferButton;
  if (v61)
  {
    [(SUUIItemOfferButton *)v61 frame];
    v63 = v62;
    v65 = v64;
    if ([(SUUIGiftItemView *)self leftToRight])
    {
      [(SUUIGiftItemView *)self _paddingTrailing];
      v67 = v69 - v66 - v63;
    }

    else
    {
      [(SUUIGiftItemView *)self _paddingTrailing];
    }

    [(SUUIItemOfferButton *)self->_itemOfferButton setFrame:v67, (rect - v65) * 0.5 + v28, v63, v65];
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
}

double __34__SUUIGiftItemView_layoutSubviews__block_invoke(uint64_t a1, void *a2, double a3)
{
  [a2 frame];
  v6 = *(*(a1 + 32) + 8);
  result = *(v6 + 24) + v5 + a3;
  *(v6 + 24) = result;
  return result;
}

void __34__SUUIGiftItemView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v15 = a2;
  [v15 frame];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = v9[61];
  v14 = [v9 leftToRight];
  if (v13 == v15)
  {
    if ((v14 & 1) == 0)
    {
      v12 = *(a1 + 64) + *(a1 + 80) - v6;
    }
  }

  else if (v14)
  {
    v6 = *(a1 + 48) - v12;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  [v15 setFrame:{v12, v11, v6, v8}];
  v17.origin.x = v12;
  v17.origin.y = v11;
  v17.size.width = v6;
  v17.size.height = v8;
  *(*(*(a1 + 40) + 8) + 40) = CGRectGetMaxY(v17) + a3;
}

- (void)setBackgroundColor:(id)a3
{
  itemImageView = self->_itemImageView;
  v5 = a3;
  [(UIImageView *)itemImageView setBackgroundColor:v5];
  [(SUUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v5];
  [(UIImageView *)self->_starRatingImageView setBackgroundColor:v5];
  [(UILabel *)self->_subtitleLabel1 setBackgroundColor:v5];
  [(UILabel *)self->_subtitleLabel2 setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  [(UILabel *)self->_userRatingCountLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIGiftItemView;
  [(SUUIGiftItemView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SUUIGiftItemView *)self _imageEdgeInsets:a3.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIGiftItemView *)self _imageSize];
  v12 = v11;
  v14 = v13;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  [(SUUIGiftItemView *)self _paddingTrailing];
  v16 = v15;
  [(SUUIGiftItemView *)self _paddingLeading];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __33__SUUIGiftItemView_sizeThatFits___block_invoke;
  v23[3] = &unk_2798F5CE0;
  *&v23[5] = width - v16 - v17 - v12 - v10;
  v23[4] = &v24;
  [(SUUIGiftItemView *)self _enumerateMetadataViewsUsingBlock:v23];
  v18 = v25[3];
  if (v14 >= v18)
  {
    v18 = v14;
  }

  v19 = v8 + v6 + v18;
  v20 = ceilf(v19);
  _Block_object_dispose(&v24, 8);
  v21 = width;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

double __33__SUUIGiftItemView_sizeThatFits___block_invoke(uint64_t a1, void *a2, double a3)
{
  [a2 sizeThatFits:{*(a1 + 40), 1.79769313e308}];
  v6 = *(*(a1 + 32) + 8);
  result = v5 + a3 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

- (void)_itemOfferConfirmAction:(id)a3
{
  v5 = +[SUUIItemStateCenter defaultCenter];
  v4 = [v5 performActionForItem:self->_item clientContext:self->_clientContext];
}

- (void)_enumerateMetadataViewsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14[0] = self->_titleLabel;
  v14[1] = self->_subtitleLabel1;
  v5 = self->_subtitleLabel2;
  v15 = v5;
  v16 = 0;
  v12 = xmmword_259FCAA10;
  v13 = unk_259FCAA20;
  itemStyle = self->_itemStyle;
  if (itemStyle == 3 || itemStyle == 2)
  {
    *(&v12 + 1) = 0x4010000000000000;
    v15 = self->_starRatingImageView;
  }

  else if (!itemStyle)
  {
    *&v13 = 0x4010000000000000;
    v16 = self->_starRatingImageView;
  }

  v7 = 0;
  v8 = 0;
  v11 = 0;
  do
  {
    v9 = v14[v8];
    if (v9)
    {
      v4[2](v4, v9, &v11, *(&v12 + v8));
      v7 = v11;
    }

    if (v8 > 2)
    {
      break;
    }

    ++v8;
  }

  while ((v7 & 1) == 0);
  for (i = 3; i != -1; --i)
  {
  }
}

- (UIEdgeInsets)_imageEdgeInsets
{
  itemStyle = self->_itemStyle;
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 16);
  if (itemStyle == 2)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = *(MEMORY[0x277D768C8] + 16);
  }

  if (itemStyle == 1)
  {
    v6 = 5.0;
  }

  else
  {
    v4 = v5;
    v6 = *MEMORY[0x277D768C8];
  }

  if (itemStyle)
  {
    v7 = v4;
  }

  else
  {
    v7 = 30.0;
  }

  if (itemStyle)
  {
    v8 = 9.0;
  }

  else
  {
    v8 = 8.0;
  }

  if (itemStyle)
  {
    v3 = v6;
  }

  v9 = v8;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v3;
  return result;
}

- (CGSize)_imageSize
{
  v3 = [(SUUIGiftItemView *)self artworkContext];
  [v3 imageSizeForItem:self->_item];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_newLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v2 setTextAlignment:4];
  v3 = [MEMORY[0x277D75348] orangeColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (double)_paddingLeading
{
  result = 0.0;
  if (!self->_itemStyle)
  {
    return 15.0;
  }

  return result;
}

- (double)_paddingTrailing
{
  result = 0.0;
  if (!self->_itemStyle)
  {
    return 15.0;
  }

  return result;
}

- (void)_reloadItemState:(BOOL)a3
{
  if (self->_itemStyle == 3)
  {
    v4 = a3;
    if ([(SUUIItemState *)self->_itemState state])
    {
      v6 = [(SUUIItemState *)self->_itemState state];
      [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:v6 == 8];
      if (v6 != 8)
      {
        v7 = [(SUUIGiftItemView *)self itemOfferButton];
        [(SUUIItemOfferButton *)self->_itemOfferButton setValuesUsingItemOffer:0 itemState:self->_itemState clientContext:self->_clientContext animated:v4];
        [(SUUIItemOfferButton *)self->_itemOfferButton sizeToFit];
      }
    }

    else
    {
      [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];
    }

    [(SUUIGiftItemView *)self setNeedsLayout];
  }
}

- (void)_reloadSubtitles
{
  itemStyle = self->_itemStyle;
  if (itemStyle > 1)
  {
    if (itemStyle == 2)
    {
      v4 = 0;
      v6 = 416;
    }

    else
    {
      v25 = 0;
      v4 = 0;
      if (itemStyle != 3)
      {
        goto LABEL_13;
      }

      v4 = 0;
      v6 = 408;
    }

    v7 = *(&self->super.super.super.isa + v6);
    v25 = v7;
  }

  else
  {
    if (itemStyle)
    {
      v25 = 0;
      v4 = 0;
      if (itemStyle != 1)
      {
        goto LABEL_13;
      }

      v25 = self->_artistName;
      v5 = 416;
    }

    else
    {
      v25 = self->_categoryName;
      v5 = 480;
    }

    v7 = *(&self->super.super.super.isa + v5);
    v4 = v7;
  }

  v8 = v7;
  itemStyle = self->_itemStyle;
LABEL_13:
  if (itemStyle > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:dbl_259FCAA30[itemStyle]];
  }

  v10 = [(UILabel *)self->_subtitleLabel2 text];
  if (v25 != v10 && ![(NSString *)v4 isEqualToString:v10])
  {
    subtitleLabel2 = self->_subtitleLabel2;
    if (v25)
    {
      if (!subtitleLabel2)
      {
        v12 = [(SUUIGiftItemView *)self _newLabel];
        v13 = self->_subtitleLabel2;
        self->_subtitleLabel2 = v12;

        [(UILabel *)self->_subtitleLabel2 setFont:v9];
        v14 = self->_subtitleLabel2;
        v15 = [(SUUIGiftItemView *)self _subtitleColor];
        [(UILabel *)v14 setTextColor:v15];

        [(SUUIGiftItemView *)self addSubview:self->_subtitleLabel2];
        subtitleLabel2 = self->_subtitleLabel2;
      }

      [(UILabel *)subtitleLabel2 setText:v4];
      [(UILabel *)self->_subtitleLabel2 sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel2 removeFromSuperview];
      v16 = self->_subtitleLabel2;
      self->_subtitleLabel2 = 0;
    }
  }

  v17 = [(UILabel *)self->_subtitleLabel1 text];

  if (v25 != v17 && ![(NSString *)v25 isEqualToString:v17])
  {
    subtitleLabel1 = self->_subtitleLabel1;
    v19 = v25;
    if (v25)
    {
      if (!subtitleLabel1)
      {
        v20 = [(SUUIGiftItemView *)self _newLabel];
        v21 = self->_subtitleLabel1;
        self->_subtitleLabel1 = v20;

        [(UILabel *)self->_subtitleLabel1 setFont:v9];
        v22 = self->_subtitleLabel1;
        v23 = [(SUUIGiftItemView *)self _subtitleColor];
        [(UILabel *)v22 setTextColor:v23];

        [(SUUIGiftItemView *)self addSubview:self->_subtitleLabel1];
        v19 = v25;
        subtitleLabel1 = self->_subtitleLabel1;
      }

      v25 = v19;
      [(UILabel *)subtitleLabel1 setText:v19];
      [(UILabel *)self->_subtitleLabel1 sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel1 removeFromSuperview];
      v24 = self->_subtitleLabel1;
      self->_subtitleLabel1 = 0;
    }
  }
}

- (void)_reloadUserRatingViews
{
  if (self->_numberOfUserRatings < 1 || self->_itemStyle == 1)
  {
    [(UILabel *)self->_userRatingCountLabel removeFromSuperview];
    userRatingCountLabel = self->_userRatingCountLabel;
    self->_userRatingCountLabel = 0;

    [(UIImageView *)self->_starRatingImageView removeFromSuperview];
    starRatingImageView = self->_starRatingImageView;
    self->_starRatingImageView = 0;
  }

  else
  {
    if (!self->_userRatingCountLabel)
    {
      v5 = [(SUUIGiftItemView *)self _newLabel];
      v6 = self->_userRatingCountLabel;
      self->_userRatingCountLabel = v5;

      v7 = self->_userRatingCountLabel;
      v8 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
      [(UILabel *)v7 setFont:v8];

      v9 = self->_userRatingCountLabel;
      v10 = [(SUUIGiftItemView *)self _userRatingColor];
      [(UILabel *)v9 setTextColor:v10];

      [(SUUIGiftItemView *)self addSubview:self->_userRatingCountLabel];
    }

    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v11 setNumberStyle:1];
    [v11 setUsesGroupingSeparator:0];
    v12 = self->_userRatingCountLabel;
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
    v15 = [v11 stringFromNumber:v14];
    v16 = [v13 stringWithFormat:@"(%@)", v15];
    [(UILabel *)v12 setText:v16];

    [(UILabel *)self->_userRatingCountLabel sizeToFit];
    if (!self->_starRatingImageView)
    {
      v17 = objc_alloc_init(MEMORY[0x277D755E8]);
      v18 = self->_starRatingImageView;
      self->_starRatingImageView = v17;

      v19 = self->_starRatingImageView;
      v20 = [(SUUIGiftItemView *)self backgroundColor];
      [(UIImageView *)v19 setBackgroundColor:v20];

      [(UIImageView *)self->_starRatingImageView setContentMode:7];
      [(SUUIGiftItemView *)self addSubview:self->_starRatingImageView];
    }

    starRatingImageView = [SUUIRatingStarsCache cacheWithProperties:1];
    v21 = self->_starRatingImageView;
    v22 = [starRatingImageView ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)v21 setImage:v22];

    [(UIImageView *)self->_starRatingImageView sizeToFit];
  }

  [(SUUIGiftItemView *)self setNeedsLayout];
}

- (id)_subtitleColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SUUIGiftTheme *)theme bodyTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

- (id)_titleColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SUUIGiftTheme *)theme primaryTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v3 = ;

  return v3;
}

- (id)_userRatingColor
{
  theme = self->_theme;
  if (theme)
  {
    [(SUUIGiftTheme *)theme primaryTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

@end