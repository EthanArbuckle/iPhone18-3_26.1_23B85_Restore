@interface MSTrackListHeaderView
- (CGSize)_sizeThatFitsLabel:(id)label size:(CGSize)size numberOfLines:(int64_t)lines;
- (MSTrackListHeaderView)initWithFrame:(CGRect)frame;
- (id)_newGenericSmallFontLabel;
- (void)_offerButtonAction:(id)action;
- (void)_performPurchaseAnimation;
- (void)_reloadAlbumLabel;
- (void)_reloadArtistLabel;
- (void)_reloadArtworkView;
- (void)_reloadDisclaimerLabel;
- (void)_reloadItemCountLabel;
- (void)_reloadOfferButton;
- (void)_reloadReleaseDateLabel;
- (void)_setShowingPurchaseConfirmation:(BOOL)confirmation;
- (void)_showPurchaseConfirmation;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadView;
- (void)setBackgroundColor:(id)color;
- (void)sizeToFit;
@end

@implementation MSTrackListHeaderView

- (MSTrackListHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MSTrackListHeaderView;
  v3 = [(MSTrackListHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__purchasesChangedNotification_ name:*MEMORY[0x277D7FF58] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FF58] object:0];

  self->_artworkImage = 0;
  self->_item = 0;
  [(UILabel *)self->_albumLabel removeFromSuperview];

  self->_albumLabel = 0;
  [(UILabel *)self->_artistLabel removeFromSuperview];

  self->_artistLabel = 0;
  [(UILabel *)self->_disclaimerLabel removeFromSuperview];

  self->_disclaimerLabel = 0;
  [(UILabel *)self->_itemCountLabel removeFromSuperview];

  self->_itemCountLabel = 0;
  [(UILabel *)self->_releaseDateLabel removeFromSuperview];

  self->_releaseDateLabel = 0;
  [(SUReflectionImageView *)self->_artworkView removeFromSuperview];

  self->_artworkView = 0;
  [(SUItemOfferButton *)self->_offerButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(SUItemOfferButton *)self->_offerButton removeFromSuperview];

  self->_offerButton = 0;
  [(SUTouchCaptureView *)self->_touchCaptureView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(SUTouchCaptureView *)self->_touchCaptureView removeFromSuperview];

  self->_touchCaptureView = 0;
  v4.receiver = self;
  v4.super_class = MSTrackListHeaderView;
  [(MSTrackListHeaderView *)&v4 dealloc];
}

- (void)reloadView
{
  [(MSTrackListHeaderView *)self _reloadAlbumLabel];
  [(MSTrackListHeaderView *)self _reloadArtistLabel];
  [(MSTrackListHeaderView *)self _reloadArtworkView];
  [(MSTrackListHeaderView *)self _reloadDisclaimerLabel];
  [(MSTrackListHeaderView *)self _reloadItemCountLabel];
  [(MSTrackListHeaderView *)self _reloadOfferButton];
  [(MSTrackListHeaderView *)self _reloadReleaseDateLabel];

  [(MSTrackListHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(MSTrackListHeaderView *)self bounds];
  v4 = v3;
  artworkView = self->_artworkView;
  if (artworkView)
  {
    [(SUReflectionImageView *)artworkView frame];
    [(SUReflectionImageView *)self->_artworkView setFrame:7.0, 7.0];
  }

  v6 = v4 + -7.0;
  v7 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  albumLabel = self->_albumLabel;
  if (albumLabel)
  {
    [(UILabel *)albumLabel frame];
    -[UILabel setFont:](self->_albumLabel, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:20.0]);
    [(MSTrackListHeaderView *)self _sizeThatFitsLabel:self->_albumLabel size:2 numberOfLines:v6 + -102.0, 1.79769313e308];
    v45 = v11;
    v46 = v12;
    v13 = v12 + 0.0;
    v41 = 102.0;
  }

  else
  {
    v13 = 0.0;
    v45 = *(MEMORY[0x277CBF3A0] + 16);
    v46 = *(MEMORY[0x277CBF3A0] + 24);
    v41 = *MEMORY[0x277CBF3A0];
  }

  artistLabel = self->_artistLabel;
  if (artistLabel)
  {
    [(UILabel *)artistLabel frame];
    v16 = v15;
    v17 = v6 + -102.0;
    v13 = v13 + v15;
    v18 = 102.0;
  }

  else
  {
    v16 = v8;
    v17 = v9;
    v18 = v7;
  }

  itemCountLabel = self->_itemCountLabel;
  if (itemCountLabel)
  {
    [(UILabel *)itemCountLabel frame];
    v43 = v6 + -102.0;
    v44 = v20;
    v13 = v13 + v20;
    v42 = 102.0;
  }

  else
  {
    v43 = v9;
    v44 = v8;
    v42 = v7;
  }

  releaseDateLabel = self->_releaseDateLabel;
  v47 = v6;
  v48 = v8;
  v49 = v7;
  if (releaseDateLabel)
  {
    v22 = v9;
    [(UILabel *)releaseDateLabel frame];
    v8 = v23;
    v9 = v6 + -102.0;
    v13 = v13 + v23;
    v24 = 102.0;
  }

  else
  {
    v24 = v7;
    v22 = v9;
  }

  offerButton = self->_offerButton;
  if (offerButton)
  {
    [(SUItemOfferButton *)offerButton frame];
    v22 = v26;
    v48 = v27;
    v13 = v13 + v27;
    v49 = 103.0;
  }

  v28 = (88.0 - v13) * 0.5;
  MaxY = fmaxf(floorf(v28) + 7.0, 7.0);
  v30 = self->_artistLabel;
  if (v30)
  {
    [(UILabel *)v30 setFrame:v18, MaxY, v17, v16];
    v51.origin.x = v18;
    v51.origin.y = MaxY;
    v51.size.width = v17;
    v51.size.height = v16;
    MaxY = CGRectGetMaxY(v51);
  }

  v31 = self->_albumLabel;
  if (v31)
  {
    [(UILabel *)v31 setFrame:v41, MaxY, v45, v46];
    v52.origin.x = v41;
    v52.origin.y = MaxY;
    v52.size.width = v45;
    v52.size.height = v46;
    MaxY = CGRectGetMaxY(v52);
  }

  v32 = self->_releaseDateLabel;
  if (v32)
  {
    [(UILabel *)v32 setFrame:v24, MaxY, v9, v8];
    v53.origin.x = v24;
    v53.origin.y = MaxY;
    v53.size.width = v9;
    v53.size.height = v8;
    MaxY = CGRectGetMaxY(v53);
  }

  v33 = self->_itemCountLabel;
  if (v33)
  {
    [(UILabel *)v33 setFrame:v42, MaxY, v43, v44];
    v54.origin.x = v42;
    v54.origin.y = MaxY;
    v54.size.width = v43;
    v54.size.height = v44;
    MaxY = CGRectGetMaxY(v54);
  }

  v34 = self->_offerButton;
  if (v34)
  {
    [(SUItemOfferButton *)v34 setFrame:v49, MaxY + 2.0, v22, v48];
    v55.origin.x = v49;
    v55.origin.y = MaxY + 2.0;
    v55.size.width = v22;
    v55.size.height = v48;
    MaxY = CGRectGetMaxY(v55);
  }

  disclaimerLabel = self->_disclaimerLabel;
  if (disclaimerLabel)
  {
    v36 = 95.0;
    if (MaxY >= 95.0)
    {
      v36 = MaxY;
    }

    if (self->_artworkView)
    {
      v37 = v36;
    }

    else
    {
      v37 = MaxY;
    }

    [(UILabel *)disclaimerLabel frame];
    [(UILabel *)self->_disclaimerLabel sizeThatFits:v47 + -7.0, 1.79769313e308];
    v40 = self->_disclaimerLabel;

    [(UILabel *)v40 setFrame:7.0, v37 + 7.0, v38, v39];
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = MSTrackListHeaderView;
  [(MSTrackListHeaderView *)&v5 setBackgroundColor:?];
  [-[MSTrackListHeaderView subviews](self "subviews")];
}

- (void)sizeToFit
{
  v23 = *MEMORY[0x277D85DE8];
  [(MSTrackListHeaderView *)self layoutIfNeeded];
  [(MSTrackListHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  disclaimerLabel = self->_disclaimerLabel;
  if (disclaimerLabel)
  {
    [(UILabel *)disclaimerLabel frame];
    v10 = CGRectGetMaxY(v24) + 7.0;
  }

  else
  {
    subviews = [(MSTrackListHeaderView *)self subviews];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(subviews);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          [(SUReflectionImageView *)v16 frame];
          v17 = CGRectGetMaxY(v25) + 8.0;
          if (v16 == self->_artworkView)
          {
            v17 = 103.0;
          }

          if (v10 < v17)
          {
            v10 = v17;
          }
        }

        v13 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    else
    {
      v10 = 0.0;
    }
  }

  [(MSTrackListHeaderView *)self setFrame:v4, v6, v8, v10];
}

- (void)_offerButtonAction:(id)action
{
  if (([(SUItemOfferButton *)self->_offerButton isShowingConfirmation]& 1) != 0 || ![(SUItemOfferButton *)self->_offerButton shouldShowConfirmation])
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x277D7FDB8] "sharedController")];
    [v4 beginUpdates];
    v5 = [v4 newPurchaseBatchForItems:objc_msgSend(MEMORY[0x277CBEA60] offers:{"arrayWithObject:", self->_item), 0}];
    [v5 setPurchaseManager:v4];
    if ([v4 addPurchaseBatch:v5])
    {
      [(MSTrackListHeaderView *)self _performPurchaseAnimation];
      [(MSTrackListHeaderView *)self _reloadOfferButton];
      [(MSTrackListHeaderView *)self setNeedsLayout];
    }

    else
    {
      [(MSTrackListHeaderView *)self _hidePurchaseConfirmation];
    }

    [v4 endUpdates];
  }

  else
  {

    [(MSTrackListHeaderView *)self _showPurchaseConfirmation];
  }
}

- (id)_newGenericSmallFontLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setBackgroundColor:{-[MSTrackListHeaderView backgroundColor](self, "backgroundColor")}];
  [v3 setFont:{objc_msgSend(MEMORY[0x277D74300], "boldSystemFontOfSize:", 10.0)}];
  [v3 setTextColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.5, 1.0)}];
  return v3;
}

- (void)_performPurchaseAnimation
{
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_artworkImage];
  [v5 frame];
  [(SUReflectionImageView *)self->_artworkView frame];
  [v5 setFrame:?];
  LODWORD(v3) = 1051931443;
  LODWORD(v4) = 1051931443;
  [MEMORY[0x277D7FE50] performHopAnimationForView:v5 relativeToView:self finalAlpha:v3 scale:v4];
}

- (void)_reloadAlbumLabel
{
  unmodifiedTitle = [(SUItem *)self->_item unmodifiedTitle];
  v4 = [unmodifiedTitle length];
  albumLabel = self->_albumLabel;
  if (v4)
  {
    if (!albumLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      self->_albumLabel = v6;
      [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_albumLabel setBackgroundColor:[(MSTrackListHeaderView *)self backgroundColor]];
      [(UILabel *)self->_albumLabel setBaselineAdjustment:1];
      -[UILabel setFont:](self->_albumLabel, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:20.0]);
      [(UILabel *)self->_albumLabel setMinimumScaleFactor:0.75];
      [(UILabel *)self->_albumLabel setNumberOfLines:0];
      -[UILabel setTextColor:](self->_albumLabel, "setTextColor:", [MEMORY[0x277D75348] blackColor]);
      [(MSTrackListHeaderView *)self addSubview:self->_albumLabel];
      albumLabel = self->_albumLabel;
    }
  }

  else
  {
    [(UILabel *)albumLabel removeFromSuperview];

    albumLabel = 0;
    self->_albumLabel = 0;
  }

  [(UILabel *)albumLabel setText:unmodifiedTitle];
  v7 = self->_albumLabel;

  [(UILabel *)v7 sizeToFit];
}

- (void)_reloadArtistLabel
{
  artistName = [(SUItem *)self->_item artistName];
  v4 = [artistName length];
  artistLabel = self->_artistLabel;
  if (v4)
  {
    if (!artistLabel)
    {
      self->_artistLabel = objc_alloc_init(MEMORY[0x277D756B8]);
      [(UILabel *)self->_artistLabel setBackgroundColor:[(MSTrackListHeaderView *)self backgroundColor]];
      -[UILabel setFont:](self->_artistLabel, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:15.0]);
      -[UILabel setTextColor:](self->_artistLabel, "setTextColor:", [MEMORY[0x277D75348] blackColor]);
      [(MSTrackListHeaderView *)self addSubview:self->_artistLabel];
      artistLabel = self->_artistLabel;
    }
  }

  else
  {
    [(UILabel *)artistLabel removeFromSuperview];

    artistLabel = 0;
    self->_artistLabel = 0;
  }

  [(UILabel *)artistLabel setText:artistName];
  v6 = self->_artistLabel;

  [(UILabel *)v6 sizeToFit];
}

- (void)_reloadArtworkView
{
  artworkView = self->_artworkView;
  if (!artworkView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FE60]);
    self->_artworkView = v4;
    [(SUReflectionImageView *)v4 setReflectionAlphaWhenVisible:0.4];
    [(SUReflectionImageView *)self->_artworkView setFrame:0.0, 0.0, 88.0, 88.0];
    [(MSTrackListHeaderView *)self addSubview:self->_artworkView];
    artworkView = self->_artworkView;
  }

  artworkImage = self->_artworkImage;

  [(SUReflectionImageView *)artworkView setImage:artworkImage];
}

- (void)_reloadDisclaimerLabel
{
  disclaimerString = [(SUItem *)self->_item disclaimerString];
  v4 = [disclaimerString length];
  disclaimerLabel = self->_disclaimerLabel;
  if (v4)
  {
    if (!disclaimerLabel)
    {
      _newGenericSmallFontLabel = [(MSTrackListHeaderView *)self _newGenericSmallFontLabel];
      self->_disclaimerLabel = _newGenericSmallFontLabel;
      -[UILabel setBackgroundColor:](_newGenericSmallFontLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
      [(UILabel *)self->_disclaimerLabel setNumberOfLines:0];
      [(MSTrackListHeaderView *)self addSubview:self->_disclaimerLabel];
      disclaimerLabel = self->_disclaimerLabel;
    }
  }

  else
  {
    [(UILabel *)disclaimerLabel removeFromSuperview];

    disclaimerLabel = 0;
    self->_disclaimerLabel = 0;
  }

  [(UILabel *)disclaimerLabel setText:disclaimerString];
}

- (void)_reloadItemCountLabel
{
  v3 = [(SUItem *)self->_item valueForProperty:@"content-count"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"label"];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
  {
    itemCountLabel = self->_itemCountLabel;
    if (!itemCountLabel)
    {
      _newGenericSmallFontLabel = [(MSTrackListHeaderView *)self _newGenericSmallFontLabel];
      self->_itemCountLabel = _newGenericSmallFontLabel;
      [(MSTrackListHeaderView *)self addSubview:_newGenericSmallFontLabel];
      itemCountLabel = self->_itemCountLabel;
    }
  }

  else
  {
    [(UILabel *)self->_itemCountLabel removeFromSuperview];

    itemCountLabel = 0;
    self->_itemCountLabel = 0;
  }

  [(UILabel *)itemCountLabel setText:v4];
  v7 = self->_itemCountLabel;

  [(UILabel *)v7 sizeToFit];
}

- (void)_reloadOfferButton
{
  if (([objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D7FDB8] "sharedController")] & 1) != 0 || !objc_msgSend(objc_msgSend(-[SUItem defaultStoreOffer](self->_item, "defaultStoreOffer"), "priceDisplay"), "length"))
  {
    [(SUItemOfferButton *)self->_offerButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [(SUItemOfferButton *)self->_offerButton removeFromSuperview];

    offerButton = 0;
    self->_offerButton = 0;
  }

  else
  {
    offerButton = self->_offerButton;
    if (!offerButton)
    {
      v4 = objc_alloc_init(MEMORY[0x277D7FDF0]);
      self->_offerButton = v4;
      [(SUItemOfferButton *)v4 addTarget:self action:sel__offerButtonAction_ forControlEvents:64];
      LODWORD(v5) = -1097229926;
      [(SUItemOfferButton *)self->_offerButton setCharge:v5];
      [(MSTrackListHeaderView *)self addSubview:self->_offerButton];
      offerButton = self->_offerButton;
    }
  }

  [(SUItemOfferButton *)offerButton configureForItem:self->_item offer:[(SUItem *)self->_item defaultStoreOffer]];
  v6 = self->_offerButton;

  [(SUItemOfferButton *)v6 sizeToFit];
}

- (void)_reloadReleaseDateLabel
{
  v3 = [-[SUItem defaultStoreOffer](self->_item "defaultStoreOffer")];
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v12 = [(SUItem *)self->_item copyReleaseDateStringWithStyle:v4];
  v5 = [v12 length];
  releaseDateLabel = self->_releaseDateLabel;
  if (v5)
  {
    if (!releaseDateLabel)
    {
      _newGenericSmallFontLabel = [(MSTrackListHeaderView *)self _newGenericSmallFontLabel];
      self->_releaseDateLabel = _newGenericSmallFontLabel;
      [(MSTrackListHeaderView *)self insertSubview:_newGenericSmallFontLabel atIndex:0];
    }
  }

  else
  {
    [(UILabel *)releaseDateLabel removeFromSuperview];

    self->_releaseDateLabel = 0;
  }

  v8 = self->_releaseDateLabel;
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v3)
  {
    v11 = @"PRODUCT_PAGE_EXPECTED_RELEASE_DATE";
  }

  else
  {
    v11 = @"RELEASE_DATE";
  }

  -[UILabel setText:](v8, "setText:", [v9 stringWithFormat:objc_msgSend(v10, "localizedStringForKey:value:table:", v11, &stru_286C31D20, 0), v12]);
  [(UILabel *)self->_releaseDateLabel sizeToFit];
}

- (void)_setShowingPurchaseConfirmation:(BOOL)confirmation
{
  [objc_opt_class() defaultAnimationDuration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MSTrackListHeaderView__setShowingPurchaseConfirmation___block_invoke;
  v7[3] = &unk_279926B90;
  v7[4] = self;
  confirmationCopy = confirmation;
  v7[5] = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__MSTrackListHeaderView__setShowingPurchaseConfirmation___block_invoke_2;
  v6[3] = &unk_279926BB8;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:?];
}

uint64_t __57__MSTrackListHeaderView__setShowingPurchaseConfirmation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 480) setShowingConfirmation:*(a1 + 48) duration:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutSubviews];
}

void __57__MSTrackListHeaderView__setShowingPurchaseConfirmation___block_invoke_2(uint64_t a1)
{
  if (([*(*(a1 + 32) + 480) isShowingConfirmation] & 1) == 0)
  {
    [*(*(a1 + 32) + 488) removeTarget:*(a1 + 32) action:0 forControlEvents:0xFFFFFFFFLL];
    [*(*(a1 + 32) + 488) removeFromSuperview];

    *(*(a1 + 32) + 488) = 0;
  }
}

- (void)_showPurchaseConfirmation
{
  window = [(MSTrackListHeaderView *)self window];
  v4 = objc_alloc(MEMORY[0x277D7FEB0]);
  [window bounds];
  v5 = [v4 initWithFrame:?];
  self->_touchCaptureView = v5;
  [(SUTouchCaptureView *)v5 addTarget:self action:sel__touchCaptureAction_ forControlEvents:1];
  -[SUTouchCaptureView setPassThroughViews:](self->_touchCaptureView, "setPassThroughViews:", [MEMORY[0x277CBEA60] arrayWithObjects:{self->_offerButton, 0}]);
  [window addSubview:self->_touchCaptureView];

  [(MSTrackListHeaderView *)self _setShowingPurchaseConfirmation:1];
}

- (CGSize)_sizeThatFitsLabel:(id)label size:(CGSize)size numberOfLines:(int64_t)lines
{
  height = size.height;
  width = size.width;
  if (lines > 1)
  {
    [label setNumberOfLines:1];
    [label sizeThatFits:{width, height}];
    v13 = v12;
    [label setNumberOfLines:0];
    [label sizeThatFits:{width, height}];
    v10 = v14;
    v16 = v15;
    if ([label adjustsFontSizeToFitWidth])
    {
      [objc_msgSend(label "font")];
      v18 = v17;
      [label minimumScaleFactor];
      *&v19 = v18 * v19;
      v20 = ceilf(*&v19);
      if (v16 > v13 + v13 && v18 > v20)
      {
        do
        {
          v18 = v18 + -1.0;
          [label setFont:{objc_msgSend(MEMORY[0x277D74300], "boldSystemFontOfSize:", v18)}];
          [label sizeThatFits:{width, height}];
        }

        while (v23 > v13 + v13 && v18 > v20);
        v10 = v22;
        v16 = v23;
      }
    }

    if (v13 * lines >= v16)
    {
      v8 = v16;
    }

    else
    {
      v8 = v13 * lines;
    }
  }

  else
  {
    [label sizeThatFits:{size.width, size.height}];
    v10 = v9;
  }

  v25 = v10;
  result.height = v8;
  result.width = v25;
  return result;
}

@end