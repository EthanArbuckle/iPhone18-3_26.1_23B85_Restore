@interface SUUIBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)screenshotImages;
- (SUUIBannerView)initWithFrame:(CGRect)frame;
- (UIControl)itemOfferButton;
- (id)_newDefaultLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_reloadItemState;
- (void)layoutSubviews;
- (void)setArtistName:(id)name;
- (void)setClientContext:(id)context;
- (void)setIconImage:(id)image;
- (void)setItemOffer:(id)offer;
- (void)setItemState:(id)state;
- (void)setScreenshotImages:(id)images;
- (void)setTitle:(id)title;
- (void)setUserRating:(float)rating;
@end

@implementation SUUIBannerView

- (SUUIBannerView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = SUUIBannerView;
  v3 = [(SUUIBannerView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIBannerCloseButton);
    closeButton = v3->_closeButton;
    v3->_closeButton = &v4->super;

    [(UIButton *)v3->_closeButton setAdjustsImageWhenHighlighted:0];
    v6 = v3->_closeButton;
    v7 = [MEMORY[0x277D755B8] symbolImageNamed:@"xmark"];
    [(UIButton *)v6 setImage:v7 forState:0];

    [(UIButton *)v3->_closeButton setSize:11.0, 11.0];
    v8 = v3->_closeButton;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIButton *)v8 setTintColor:secondaryLabelColor];

    [(SUUIBannerView *)v3 addSubview:v3->_closeButton];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v13 = objc_alloc_init(MEMORY[0x277D75D18]);
      separatorView = v3->_separatorView;
      v3->_separatorView = v13;

      [(UIView *)v3->_separatorView setBackgroundColor:separatorColor];
      [(SUUIBannerView *)v3 addSubview:v3->_separatorView];
    }

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v3->_bottomBorderView;
    v3->_bottomBorderView = v15;

    [(UIView *)v3->_bottomBorderView setBackgroundColor:separatorColor];
    [(SUUIBannerView *)v3 addSubview:v3->_bottomBorderView];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(SUUIBannerView *)v3 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v3;
}

- (UIControl)itemOfferButton
{
  itemOfferButton = self->_itemOfferButton;
  if (!itemOfferButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_itemOfferButton;
    self->_itemOfferButton = v4;

    [(UIButton *)self->_itemOfferButton setHidden:1];
    titleLabel = [(UIButton *)self->_itemOfferButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v7];

    [(SUUIBannerView *)self addSubview:self->_itemOfferButton];
    itemOfferButton = self->_itemOfferButton;
  }

  return itemOfferButton;
}

- (NSArray)screenshotImages
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_screenshotImageViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        image = [*(*(&v11 + 1) + 8 * i) image];
        [array addObject:image];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setArtistName:(id)name
{
  nameCopy = name;
  artistName = [(SUUIBannerView *)self artistName];
  if (artistName != nameCopy && ([nameCopy isEqualToString:artistName] & 1) == 0)
  {
    artistNameLabel = self->_artistNameLabel;
    if (nameCopy)
    {
      if (!artistNameLabel)
      {
        _newDefaultLabel = [(SUUIBannerView *)self _newDefaultLabel];
        v7 = self->_artistNameLabel;
        self->_artistNameLabel = _newDefaultLabel;

        [(SUUIBannerView *)self addSubview:self->_artistNameLabel];
        artistNameLabel = self->_artistNameLabel;
      }

      [(UILabel *)artistNameLabel setText:?];
      [(UILabel *)self->_artistNameLabel sizeToFit];
    }

    else
    {
      [(UILabel *)artistNameLabel removeFromSuperview];
      v8 = self->_artistNameLabel;
      self->_artistNameLabel = 0;
    }

    [(SUUIBannerView *)self setNeedsLayout];
  }
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v9 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    closeButton = self->_closeButton;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"BANNER_CLOSE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"BANNER_CLOSE_BUTTON" inBundles:0];
    }
    v8 = ;
    [(UIButton *)closeButton setAccessibilityLabel:v8];

    [(SUUIBannerView *)self _reloadItemState];
    contextCopy = v9;
  }
}

- (void)setScreenshotImages:(id)images
{
  v30 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_screenshotImageViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  screenshotImageViews = self->_screenshotImageViews;
  self->_screenshotImageViews = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = imagesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = objc_alloc(MEMORY[0x277D755E8]);
        v19 = [v18 initWithImage:{v17, v20}];
        [(NSMutableArray *)self->_screenshotImageViews addObject:v19];
        [(SUUIBannerView *)self addSubview:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  [(SUUIBannerView *)self setNeedsLayout];
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_iconImageView image];

  if (image != imageCopy)
  {
    iconImageView = self->_iconImageView;
    if (imageCopy)
    {
      if (!iconImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_iconImageView;
        self->_iconImageView = v7;

        [(SUUIBannerView *)self addSubview:self->_iconImageView];
        iconImageView = self->_iconImageView;
      }

      [(UIImageView *)iconImageView setImage:?];
      [(UIImageView *)self->_iconImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)iconImageView removeFromSuperview];
      v9 = self->_iconImageView;
      self->_iconImageView = 0;
    }

    setNeedsLayout = [(SUUIBannerView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setItemOffer:(id)offer
{
  offerCopy = offer;
  if (self->_itemOffer != offerCopy)
  {
    v6 = offerCopy;
    objc_storeStrong(&self->_itemOffer, offer);
    [(SUUIBannerView *)self _reloadItemState];
    offerCopy = v6;
  }
}

- (void)setItemState:(id)state
{
  stateCopy = state;
  if (self->_itemState != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->_itemState, state);
    [(SUUIBannerView *)self _reloadItemState];
    stateCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIBannerView *)self title];
  if (title != titleCopy && ([titleCopy isEqualToString:title] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:2];
        v12 = self->_titleLabel;
        labelColor = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v12 setTextColor:labelColor];

        [(SUUIBannerView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIBannerView *)self setNeedsLayout];
  }
}

- (void)setUserRating:(float)rating
{
  userRatingStarImageView = self->_userRatingStarImageView;
  if (self->_userRating == rating)
  {
    if (userRatingStarImageView)
    {
      return;
    }

    goto LABEL_5;
  }

  if (!userRatingStarImageView)
  {
LABEL_5:
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    v7 = self->_userRatingStarImageView;
    self->_userRatingStarImageView = v6;

    [(SUUIBannerView *)self addSubview:self->_userRatingStarImageView];
  }

  self->_userRating = rating;
  v10 = [SUUIRatingStarsCache cacheWithProperties:1];
  v8 = self->_userRatingStarImageView;
  v9 = [v10 ratingStarsImageForRating:self->_userRating];
  [(UIImageView *)v8 setImage:v9];

  [(UIImageView *)self->_userRatingStarImageView sizeToFit];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v11.receiver = self;
  v11.super_class = SUUIBannerView;
  v7 = [(SUUIBannerView *)&v11 hitTest:event withEvent:?];
  if (v7 == self)
  {
    p_closeButton = &self->_closeButton;
    [(UIButton *)self->_closeButton frame];
    v15 = CGRectInset(v14, -10.0, -30.0);
    v13.x = x;
    v13.y = y;
    if (CGRectContainsPoint(v15, v13) || (p_closeButton = &self->_itemOfferButton, ([(UIButton *)self->_itemOfferButton isHidden]& 1) == 0))
    {
      v9 = *p_closeButton;

      v7 = v9;
    }
  }

  return v7;
}

- (void)layoutSubviews
{
  v186 = *MEMORY[0x277D85DE8];
  [(SUUIBannerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIBannerView *)self layoutMargins];
  v12 = v11;
  [(SUUIBannerView *)self layoutMargins];
  v13 = v4 + v12;
  v14 = v6 + 0.0;
  v16 = v8 - (v12 + v15);
  _shouldReverseLayoutDirection = [(SUUIBannerView *)self _shouldReverseLayoutDirection];
  [(UIButton *)self->_closeButton frame];
  v19 = v18;
  v21 = v20;
  if (_shouldReverseLayoutDirection)
  {
    v187.origin.x = v13;
    v187.origin.y = v14;
    v187.size.width = v16;
    v187.size.height = v10;
    v22 = CGRectGetMaxX(v187) - v19 + -10.0;
  }

  else
  {
    v22 = v13 + 10.0;
  }

  v23 = (v10 - v21) * 0.5;
  v24 = floorf(v23);
  [(UIButton *)self->_closeButton setFrame:v22, v24, v19, v21];
  v172 = v13;
  rect = v16;
  v25 = v13;
  v26 = v14;
  v27 = v16;
  v28 = v10;
  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMinX(*&v25);
    v29 = MinX + 10.0;
    v188.origin.x = v22;
    v188.origin.y = v24;
    v188.size.width = v19;
    v188.size.height = v21;
    MaxX = CGRectGetMinX(v188);
    v31 = -9.0;
  }

  else
  {
    MinX = CGRectGetMaxX(*&v25);
    v29 = MinX + -10.0;
    v189.origin.x = v22;
    v189.origin.y = v24;
    v189.size.width = v19;
    v189.size.height = v21;
    MaxX = CGRectGetMaxX(v189);
    v31 = 9.0;
  }

  v32 = MaxX + v31;
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(UIImageView *)iconImageView frame];
    v35 = v34;
    v37 = v36;
    if (_shouldReverseLayoutDirection)
    {
      v38 = v32 - v34;
    }

    else
    {
      v38 = v32;
    }

    [(UIImageView *)self->_iconImageView setFrame:v38, 10.0];
    v39 = 10.0;
    v40 = v38;
    v41 = v35;
    v42 = v37;
    if (_shouldReverseLayoutDirection)
    {
      v43 = CGRectGetMinX(*&v40);
      v44 = -8.0;
    }

    else
    {
      v43 = CGRectGetMaxX(*&v40);
      v44 = 8.0;
    }

    v32 = v43 + v44;
  }

  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton && ([(UIButton *)itemOfferButton isHidden]& 1) == 0)
  {
    [(UIButton *)self->_itemOfferButton frame];
    v48 = v46;
    v49 = v47;
    if (_shouldReverseLayoutDirection)
    {
      v50 = v29;
    }

    else
    {
      v50 = v29 - v46;
    }

    v51 = (v10 - v47) * 0.5;
    v52 = floorf(v51);
    [(UIButton *)self->_itemOfferButton setFrame:v50, v52];
    v53 = v50;
    v54 = v52;
    v55 = v48;
    v56 = v49;
    if (_shouldReverseLayoutDirection)
    {
      v57 = CGRectGetMaxX(*&v53);
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v60 = 5.0;
      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v60 = 30.0;
      }

      v29 = v57 + v60;
    }

    else
    {
      v61 = CGRectGetMinX(*&v53);
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      v64 = 5.0;
      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v64 = 30.0;
      }

      v29 = v61 - v64;
    }
  }

  v171 = v14;
  v65 = MEMORY[0x277CBF3A0];
  v66 = *(MEMORY[0x277CBF3A0] + 8);
  v67 = *(MEMORY[0x277CBF3A0] + 24);
  artistNameLabel = self->_artistNameLabel;
  if (artistNameLabel)
  {
    [(UILabel *)artistNameLabel frame];
    v70 = v69;
    v72 = v71;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v75 = 1.0 / v74 + 2.0;
  }

  else
  {
    v75 = 0.0;
    v72 = *(MEMORY[0x277CBF3A0] + 24);
    v70 = *(MEMORY[0x277CBF3A0] + 8);
  }

  itemStateLabel = self->_itemStateLabel;
  v174 = v66;
  v175 = v67;
  v77 = v66;
  if (itemStateLabel)
  {
    [(UILabel *)itemStateLabel frame];
    v175 = v78;
  }

  v168 = v77;
  v79 = v29 - v32;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:v29 - v32, 1.79769313e308];
    v82 = v81;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v75 = v75 + 1.0 / v84;
  }

  else
  {
    v82 = v67;
  }

  v173 = v32;
  v167 = v82;
  if (([(SUUIItemState *)self->_itemState state]& 4) != 0)
  {
    v90 = (v10 - (v75 + v175 + v72 + v82)) * 0.5;
    v91 = (ceilf(v90) + 0.0);
    if (self->_titleLabel)
    {
      v190.origin.x = v32;
      v190.origin.y = v91;
      v190.size.width = v79;
      v190.size.height = v82;
      v92 = v72;
      MaxY = CGRectGetMaxY(v190);
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 scale];
      v96 = MaxY + 1.0 / v95;

      v174 = v91;
      v91 = v96;
      v72 = v92;
    }

    if (!self->_artistNameLabel)
    {
      v99 = v72;
      v109 = v91;
      goto LABEL_58;
    }

    v97 = v32;
    v98 = v91;
    v99 = v72;
    v67 = v72;
    v100 = v79;
  }

  else
  {
    userRatingStarImageView = self->_userRatingStarImageView;
    if (userRatingStarImageView)
    {
      [(UIImageView *)userRatingStarImageView frame];
      v166 = v86;
      v67 = v87;
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 scale];
      v75 = v75 + 1.0 / v89 + 2.0;
    }

    else
    {
      v166 = *(v65 + 16);
    }

    v101 = (v10 - (v75 + v175 + v72 + v82 + v67)) * 0.5;
    v91 = (ceilf(v101) + 0.0);
    if (self->_titleLabel)
    {
      v191.origin.x = v32;
      v191.origin.y = v91;
      v191.size.width = v79;
      v191.size.height = v82;
      v102 = CGRectGetMaxY(v191);
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 scale];
      v105 = v102 + 1.0 / v104;

      v174 = v91;
      v91 = v105;
    }

    if (self->_artistNameLabel)
    {
      v192.origin.x = v32;
      v192.origin.y = v91;
      v192.size.width = v79;
      v192.size.height = v72;
      v106 = CGRectGetMaxY(v192);
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 scale];
      v109 = v106 + 1.0 / v108 + 2.0;
    }

    else
    {
      v109 = v91;
      v91 = v70;
    }

    v99 = v72;
    if (!self->_userRatingStarImageView)
    {
      goto LABEL_57;
    }

    v110 = -1.0;
    if (_shouldReverseLayoutDirection)
    {
      v110 = 1.0;
    }

    v111 = v110 + v173;
    v100 = v166;
    if (_shouldReverseLayoutDirection)
    {
      v97 = v111 - v166;
    }

    else
    {
      v97 = v111;
    }

    mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen7 scale];
    v98 = v109 + 1.0 / v113;

    [(UIImageView *)self->_userRatingStarImageView setFrame:v97, v98, v100, v67];
  }

  v193.origin.x = v97;
  v193.origin.y = v98;
  v193.size.width = v100;
  v193.size.height = v67;
  v114 = CGRectGetMaxY(v193);
  mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen8 scale];
  v109 = v114 + 1.0 / v116 + 2.0;

LABEL_57:
  v70 = v91;
LABEL_58:
  if (self->_itemStateLabel)
  {
    v117 = v109;
  }

  else
  {
    v117 = v168;
  }

  [(UILabel *)self->_artistNameLabel setFrame:v173, v70, v79, v99, *&v166];
  [(UILabel *)self->_itemStateLabel setFrame:v173, v117, v79, v175];
  [(UILabel *)self->_titleLabel setFrame:v173, v174, v79, v167];
  v118 = [(NSMutableArray *)self->_screenshotImageViews count];
  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen9 scale];
    v122 = 1.0 / v121;

    [(UIView *)self->_separatorView setFrame:MinX, 10.0, v122, v10 + -20.0];
    [(UIView *)self->_separatorView setHidden:v118 == 0];
  }

  v123 = v118 < 1;
  v124 = v118 - 1;
  v126 = v171;
  v125 = v172;
  v127 = rect;
  if (!v123)
  {
    if (_shouldReverseLayoutDirection)
    {
      v128 = -15.0;
    }

    else
    {
      v128 = 15.0;
    }

    v129 = v10;
    if (_shouldReverseLayoutDirection)
    {
      v130 = CGRectGetMinX(*&v125) + 15.0;
    }

    else
    {
      v130 = CGRectGetMaxX(*&v125) + -15.0;
    }

    v131 = v128 + MinX;
    v132 = (v124 * 15.0);
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v133 = self->_screenshotImageViews;
    v134 = [(NSMutableArray *)v133 countByEnumeratingWithState:&v180 objects:v185 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v181;
      do
      {
        for (i = 0; i != v135; ++i)
        {
          if (*v181 != v136)
          {
            objc_enumerationMutation(v133);
          }

          [*(*(&v180 + 1) + 8 * i) frame];
          v132 = v132 + v138;
        }

        v135 = [(NSMutableArray *)v133 countByEnumeratingWithState:&v180 objects:v185 count:16];
      }

      while (v135);
    }

    v139 = (v130 - v131) * 0.5;
    v140 = v131 - floorf(v139);
    v141 = (v130 - v131 - v132) * 0.5;
    v142 = v131 + floorf(v141);
    if (_shouldReverseLayoutDirection)
    {
      v143 = v140;
    }

    else
    {
      v143 = v142;
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v144 = self->_screenshotImageViews;
    v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v176 objects:v184 count:16];
    if (v145)
    {
      v146 = v145;
      v147 = *v177;
      do
      {
        for (j = 0; j != v146; ++j)
        {
          if (*v177 != v147)
          {
            objc_enumerationMutation(v144);
          }

          v149 = *(*(&v176 + 1) + 8 * j);
          [v149 frame];
          v151 = v150;
          v153 = v152;
          v154 = (v10 - v152) * 0.5;
          v155 = floorf(v154);
          [v149 setFrame:{v143, v155}];
          v194.origin.x = v143;
          v194.origin.y = v155;
          v194.size.width = v151;
          v194.size.height = v153;
          v143 = CGRectGetMaxX(v194) + 15.0;
        }

        v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v176 objects:v184 count:16];
      }

      while (v146);
    }
  }

  bottomBorderView = self->_bottomBorderView;
  [(SUUIBannerView *)self bounds:v125];
  v158 = v157;
  mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen10 scale];
  v161 = v158 - 1.0 / v160;
  [(SUUIBannerView *)self bounds];
  v163 = v162;
  mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen11 scale];
  [(UIView *)bottomBorderView setFrame:0.0, v161, v163, 1.0 / v165];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = 95.0;
  if (userInterfaceIdiom != 1)
  {
    v6 = 84.0;
  }

  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)_newDefaultLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  backgroundColor = [(SUUIBannerView *)self backgroundColor];
  [v3 setBackgroundColor:backgroundColor];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v3 setFont:v5];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v3 setTextColor:secondaryLabelColor];

  return v3;
}

- (void)_reloadItemState
{
  if (!self->_clientContext)
  {
    return;
  }

  state = [(SUUIItemState *)self->_itemState state];
  if ((state & 4) == 0)
  {
    itemOffer = self->_itemOffer;
    if (!itemOffer)
    {
      v28 = 0;
      goto LABEL_33;
    }

    price = [(SSLookupItemOffer *)itemOffer price];
    [price floatValue];
    v8 = v7;

    v9 = self->_itemOffer;
    if (v8 >= 0.00000011921)
    {
      formattedPrice = [(SSLookupItemOffer *)v9 formattedPrice];
    }

    else
    {
      v10 = [(SSLookupItemOffer *)v9 actionTextForType:*MEMORY[0x277D6A2C0]];
      formattedPrice = [v10 uppercaseString];
    }

    if (![formattedPrice length])
    {
      v28 = 0;
      goto LABEL_29;
    }

    subscriptionType = [(SSLookupItemOffer *)self->_itemOffer subscriptionType];
    v16 = [subscriptionType isEqualToString:*MEMORY[0x277D6A2B8]];

    clientContext = self->_clientContext;
    if (v16)
    {
      if (clientContext)
      {
        v18 = @"BANNER_PRICE_FORMAT_PODCASTS";
LABEL_24:
        v19 = [(SUUIClientContext *)clientContext localizedStringForKey:v18];
LABEL_28:
        v21 = v19;
        v28 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, formattedPrice];

LABEL_29:
        v22 = self->_clientContext;
        if (v22)
        {
          [(SUUIClientContext *)v22 localizedStringForKey:@"BANNER_VIEW_BUTTON"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"BANNER_VIEW_BUTTON" inBundles:0];
        }
        v13 = ;

        if (v13)
        {
          goto LABEL_15;
        }

LABEL_33:
        [(UIButton *)self->_itemOfferButton setHidden:1];
        goto LABEL_34;
      }

      v20 = @"BANNER_PRICE_FORMAT_PODCASTS";
    }

    else
    {
      if (clientContext)
      {
        v18 = @"BANNER_PRICE_FORMAT";
        goto LABEL_24;
      }

      v20 = @"BANNER_PRICE_FORMAT";
    }

    v19 = [SUUIClientContext localizedStringForKey:v20 inBundles:0];
    goto LABEL_28;
  }

  v4 = self->_clientContext;
  if (v4)
  {
    [(SUUIClientContext *)v4 localizedStringForKey:@"BANNER_ITEM_STATE_INSTALLED"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BANNER_ITEM_STATE_INSTALLED" inBundles:0];
  }
  v28 = ;
  v12 = self->_clientContext;
  if (v12)
  {
    [(SUUIClientContext *)v12 localizedStringForKey:@"BANNER_OPEN_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BANNER_OPEN_BUTTON" inBundles:0];
  }
  v13 = ;
  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_15:
  itemOfferButton = [(SUUIBannerView *)self itemOfferButton];
  [itemOfferButton setHidden:0];
  [itemOfferButton setTitle:v13 forState:0];
  [itemOfferButton sizeToFit];

LABEL_34:
  itemStateLabel = self->_itemStateLabel;
  v24 = v28;
  if (v28)
  {
    if (!itemStateLabel)
    {
      _newDefaultLabel = [(SUUIBannerView *)self _newDefaultLabel];
      v26 = self->_itemStateLabel;
      self->_itemStateLabel = _newDefaultLabel;

      [(SUUIBannerView *)self addSubview:self->_itemStateLabel];
      v24 = v28;
      itemStateLabel = self->_itemStateLabel;
    }

    [(UILabel *)itemStateLabel setText:v24];
    [(UILabel *)self->_itemStateLabel sizeToFit];
  }

  else
  {
    [(UILabel *)itemStateLabel removeFromSuperview];
    v27 = self->_itemStateLabel;
    self->_itemStateLabel = 0;
  }

  [(UIImageView *)self->_userRatingStarImageView setHidden:(state >> 2) & 1];
  [(SUUIBannerView *)self setNeedsLayout];
}

@end