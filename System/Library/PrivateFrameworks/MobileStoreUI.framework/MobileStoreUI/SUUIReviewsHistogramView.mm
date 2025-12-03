@interface SUUIReviewsHistogramView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)segmentedControlTitles;
- (SUUIReviewsHistogramView)initWithClientContext:(id)context;
- (UIControl)segmentedControl;
- (id)_countLabelString;
- (id)_histogramImageForValues:(id)values;
- (int64_t)selectedSegmentIndex;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setHistogramValues:(id)values;
- (void)setNumberOfUserRatings:(int64_t)ratings;
- (void)setSegmentedControlTitles:(id)titles;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)setTitle:(id)title;
- (void)setUserRating:(double)rating;
- (void)setVersionString:(id)string;
@end

@implementation SUUIReviewsHistogramView

- (SUUIReviewsHistogramView)initWithClientContext:(id)context
{
  contextCopy = context;
  v76.receiver = self;
  v76.super_class = SUUIReviewsHistogramView;
  v6 = [(SUUIReviewsHistogramView *)&v76 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    if (SUUIUserInterfaceIdiom(v7->_clientContext) == 1)
    {
      v8 = objc_alloc_init(SUUIStarRatingControl);
      starRatingControl = v7->_starRatingControl;
      v7->_starRatingControl = v8;

      v10 = v7->_starRatingControl;
      v11 = MEMORY[0x277D755B8];
      v12 = SUUIBundle();
      v13 = [v11 imageNamed:@"LightRateControl" inBundle:v12];
      [(SUUIStarRatingControl *)v10 setEmptyStarsImage:v13];

      v14 = v7->_starRatingControl;
      v15 = MEMORY[0x277D755B8];
      v16 = SUUIBundle();
      v17 = [v15 imageNamed:@"RateControlFilled" inBundle:v16];
      [(SUUIStarRatingControl *)v14 setFilledStarsImage:v17];

      [(SUUIStarRatingControl *)v7->_starRatingControl sizeToFit];
      [(SUUIReviewsHistogramView *)v7 addSubview:v7->_starRatingControl];
      v18 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_starRatingControlLabel = &v7->_starRatingControlLabel;
      starRatingControlLabel = v7->_starRatingControlLabel;
      v7->_starRatingControlLabel = v18;

      v21 = v7->_starRatingControlLabel;
      backgroundColor = [(SUUIReviewsHistogramView *)v7 backgroundColor];
      [(UILabel *)v21 setBackgroundColor:backgroundColor];

      v23 = v7->_starRatingControlLabel;
      v24 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v23 setFont:v24];

      v25 = v7->_starRatingControlLabel;
      secondaryTextColor = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
      if (secondaryTextColor)
      {
        [(UILabel *)v25 setTextColor:secondaryTextColor];
      }

      else
      {
        v31 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
        [(UILabel *)v25 setTextColor:v31];
      }

      v32 = *p_starRatingControlLabel;
      clientContext = v7->_clientContext;
      v34 = 0x277D74000;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_TAP_TO_RATE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"REVIEWS_TAP_TO_RATE" inBundles:0 inTable:@"ProductPage"];
      }
      v46 = ;
      [v32 setText:v46];

      [*p_starRatingControlLabel sizeToFit];
    }

    else
    {
      v27 = [MEMORY[0x277D75220] buttonWithType:1];
      appSupportButton = v7->_appSupportButton;
      v7->_appSupportButton = v27;

      v29 = v7->_appSupportButton;
      v30 = v7->_clientContext;
      if (v30)
      {
        [(SUUIClientContext *)v30 localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inBundles:0 inTable:@"ProductPage"];
      }
      v35 = ;
      [(UIButton *)v29 setTitle:v35 forState:0];

      titleLabel = [(UIButton *)v7->_appSupportButton titleLabel];
      v37 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel setFont:v37];

      titleLabel2 = [(UIButton *)v7->_appSupportButton titleLabel];
      [titleLabel2 setAdjustsFontSizeToFitWidth:1];

      titleLabel3 = [(UIButton *)v7->_appSupportButton titleLabel];
      [titleLabel3 setMinimumScaleFactor:0.833333333];

      [(UIButton *)v7->_appSupportButton sizeToFit];
      v40 = v7->_appSupportButton;
      secondaryTextColor2 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
      [(UIButton *)v40 setTintColor:secondaryTextColor2];

      [(SUUIReviewsHistogramView *)v7 addSubview:v7->_appSupportButton];
      v42 = [MEMORY[0x277D75220] buttonWithType:1];
      p_starRatingControlLabel = &v7->_writeAReviewButton;
      writeAReviewButton = v7->_writeAReviewButton;
      v7->_writeAReviewButton = v42;

      v44 = v7->_writeAReviewButton;
      v45 = v7->_clientContext;
      v34 = 0x277D74000uLL;
      if (v45)
      {
        [(SUUIClientContext *)v45 localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPHONE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPHONE" inBundles:0 inTable:@"ProductPage"];
      }
      v47 = ;
      [(UIButton *)v44 setTitle:v47 forState:0];

      titleLabel4 = [*p_starRatingControlLabel titleLabel];
      v49 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel4 setFont:v49];

      titleLabel5 = [*p_starRatingControlLabel titleLabel];
      [titleLabel5 setAdjustsFontSizeToFitWidth:1];

      titleLabel6 = [*p_starRatingControlLabel titleLabel];
      [titleLabel6 setMinimumScaleFactor:0.833333333];

      [*p_starRatingControlLabel sizeToFit];
      v52 = *p_starRatingControlLabel;
      secondaryTextColor3 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
      [v52 setTintColor:secondaryTextColor3];
    }

    [(SUUIReviewsHistogramView *)v7 addSubview:*p_starRatingControlLabel];
    v54 = objc_alloc(MEMORY[0x277D755E8]);
    v55 = [(SUUIReviewsHistogramView *)v7 _histogramImageForValues:&unk_286BBE118];
    v56 = [v54 initWithImage:v55];
    histogramImageView = v7->_histogramImageView;
    v7->_histogramImageView = v56;

    [(UIImageView *)v7->_histogramImageView sizeToFit];
    [(SUUIReviewsHistogramView *)v7 addSubview:v7->_histogramImageView];
    v58 = objc_alloc(MEMORY[0x277D755E8]);
    v59 = [SUUIRatingStarsCache cacheWithProperties:1];
    v60 = [v59 ratingStarsImageForRating:0.0];
    v61 = [v58 initWithImage:v60];
    userRatingStarsView = v7->_userRatingStarsView;
    v7->_userRatingStarsView = v61;

    [(SUUIReviewsHistogramView *)v7 addSubview:v7->_userRatingStarsView];
    v63 = objc_alloc_init(MEMORY[0x277D756B8]);
    countLabel = v7->_countLabel;
    v7->_countLabel = v63;

    v65 = v7->_countLabel;
    secondaryTextColor4 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor4)
    {
      [(UILabel *)v65 setTextColor:secondaryTextColor4];
    }

    else
    {
      v67 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
      [(UILabel *)v65 setTextColor:v67];
    }

    [(UILabel *)v7->_countLabel setNumberOfLines:0];
    v68 = v7->_countLabel;
    v69 = [*(v34 + 768) systemFontOfSize:14.0];
    [(UILabel *)v68 setFont:v69];

    [(SUUIReviewsHistogramView *)v7 addSubview:v7->_countLabel];
    [(SUUIReviewsHistogramView *)v7 setNumberOfUserRatings:0];
    v70 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v7->_bottomSeparatorView;
    v7->_bottomSeparatorView = v70;

    v72 = v7->_bottomSeparatorView;
    primaryTextColor = [(SUUIColorScheme *)v7->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)v72 setBackgroundColor:primaryTextColor];
    }

    else
    {
      v74 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v72 setBackgroundColor:v74];
    }

    [(SUUIReviewsHistogramView *)v7 addSubview:v7->_bottomSeparatorView];
  }

  return v7;
}

- (UIControl)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = objc_alloc(MEMORY[0x277D75A08]);
    v5 = [v4 initWithItems:MEMORY[0x277CBEBF8]];
    v6 = self->_segmentedControl;
    self->_segmentedControl = v5;

    v7 = self->_segmentedControl;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UISegmentedControl *)v7 setTintColor:secondaryTextColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)v7 setTintColor:v9];
    }

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (NSArray)segmentedControlTitles
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(UISegmentedControl *)self->_segmentedControl numberOfSegments])
  {
    v4 = 0;
    do
    {
      v5 = [(UISegmentedControl *)self->_segmentedControl titleForSegmentAtIndex:v4];
      if (v5)
      {
        [array addObject:v5];
      }

      ++v4;
    }

    while (v4 < [(UISegmentedControl *)self->_segmentedControl numberOfSegments]);
  }

  return array;
}

- (int64_t)selectedSegmentIndex
{
  segmentedControl = [(SUUIReviewsHistogramView *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  return selectedSegmentIndex;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v24 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    countLabel = self->_countLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)countLabel setTextColor:secondaryTextColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
      [(UILabel *)countLabel setTextColor:v8];
    }

    starRatingControlLabel = self->_starRatingControlLabel;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)starRatingControlLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)starRatingControlLabel setTextColor:blackColor];
    }

    titleLabel = self->_titleLabel;
    secondaryTextColor3 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor3)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor3];
    }

    else
    {
      blackColor2 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor2];
    }

    histogramImageView = self->_histogramImageView;
    v16 = [(SUUIReviewsHistogramView *)self _histogramImageForValues:self->_histogramValues];
    [(UIImageView *)histogramImageView setImage:v16];

    segmentedControl = self->_segmentedControl;
    secondaryTextColor4 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor4)
    {
      [(UISegmentedControl *)segmentedControl setTintColor:secondaryTextColor4];
    }

    else
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)segmentedControl setTintColor:v19];
    }

    appSupportButton = self->_appSupportButton;
    secondaryTextColor5 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)appSupportButton setTintColor:secondaryTextColor5];

    writeAReviewButton = self->_writeAReviewButton;
    secondaryTextColor6 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)writeAReviewButton setTintColor:secondaryTextColor6];

    schemeCopy = v24;
  }
}

- (void)setHistogramValues:(id)values
{
  valuesCopy = values;
  if (!-[NSArray isEqualToArray:](self->_histogramValues, "isEqualToArray:") && [valuesCopy count] == 5)
  {
    objc_storeStrong(&self->_histogramValues, values);
    histogramImageView = self->_histogramImageView;
    v6 = [(SUUIReviewsHistogramView *)self _histogramImageForValues:self->_histogramValues];
    [(UIImageView *)histogramImageView setImage:v6];
  }
}

- (void)setNumberOfUserRatings:(int64_t)ratings
{
  self->_numberOfUserRatings = ratings;
  countLabel = self->_countLabel;
  _countLabelString = [(SUUIReviewsHistogramView *)self _countLabelString];
  [(UILabel *)countLabel setText:_countLabelString];

  [(SUUIReviewsHistogramView *)self setNeedsLayout];
}

- (void)setSegmentedControlTitles:(id)titles
{
  titlesCopy = titles;
  segmentedControl = [(SUUIReviewsHistogramView *)self segmentedControl];
  [segmentedControl removeAllSegments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SUUIReviewsHistogramView_setSegmentedControlTitles___block_invoke;
  v8[3] = &unk_2798FCE80;
  v9 = segmentedControl;
  v6 = segmentedControl;
  [titlesCopy enumerateObjectsUsingBlock:v8];
  v7 = [titlesCopy count];

  if (v7)
  {
    [v6 sizeToFit];
    [(SUUIReviewsHistogramView *)self addSubview:v6];
  }

  else
  {
    [v6 removeFromSuperview];
  }
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  segmentedControl = [(SUUIReviewsHistogramView *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:index];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
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
        backgroundColor = [(SUUIReviewsHistogramView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v12 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:blackColor];
        }

        [(SUUIReviewsHistogramView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIReviewsHistogramView *)self setNeedsLayout];
  }
}

- (void)setUserRating:(double)rating
{
  if (self->_userRating != rating)
  {
    self->_userRating = rating;
    userRatingStarsView = self->_userRatingStarsView;
    v6 = [SUUIRatingStarsCache cacheWithProperties:1];
    v5 = [v6 ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)userRatingStarsView setImage:v5];
  }
}

- (void)setVersionString:(id)string
{
  if (self->_versionString != string)
  {
    v4 = [string copy];
    versionString = self->_versionString;
    self->_versionString = v4;

    countLabel = self->_countLabel;
    _countLabelString = [(SUUIReviewsHistogramView *)self _countLabelString];
    [(UILabel *)countLabel setText:_countLabelString];

    [(SUUIReviewsHistogramView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIReviewsHistogramView *)self bounds];
  v4 = v3;
  v6 = v5;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v9 = v8;
    v11 = v10;
    [(UILabel *)self->_titleLabel setFrame:15.0, 11.0];
    v64.origin.x = 15.0;
    v64.origin.y = 11.0;
    v64.size.width = v9;
    v64.size.height = v11;
    v12 = CGRectGetMaxY(v64) + -4.0 + 19.0;
  }

  else
  {
    v12 = 15.0;
  }

  if ([(UISegmentedControl *)self->_segmentedControl isDescendantOfView:self])
  {
    [(UISegmentedControl *)self->_segmentedControl frame];
    v14 = v13;
    if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v15 = 295.0;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v15 = 290.0;
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v15 = v18 + -30.0;
      }
    }

    [(UISegmentedControl *)self->_segmentedControl setFrame:15.0, v12, v15, v14];
    v65.origin.x = 15.0;
    v65.origin.y = v12;
    v65.size.width = v15;
    v65.size.height = v14;
    v12 = CGRectGetMaxY(v65) + 19.0;
  }

  if (self->_userRatingStarsView)
  {
    countLabel = self->_countLabel;
    if (countLabel)
    {
      [(UILabel *)countLabel frame];
      v20 = self->_countLabel;
      [(UIImageView *)self->_userRatingStarsView frame];
      [(UILabel *)v20 sizeThatFits:v4 + -45.0 - v21 + -9.0, 1.79769313e308];
      v23 = v22;
      v25 = v24;
      [(UIImageView *)self->_userRatingStarsView frame];
      v27 = v26 + 15.0 + 9.0;
      [(UILabel *)self->_countLabel setFrame:v27, (v12 + -4.0), v23, v25];
      v66.origin.x = v27;
      v66.origin.y = (v12 + -4.0);
      v66.size.width = v23;
      v66.size.height = v25;
      v28 = CGRectGetMaxY(v66) + -3.0;
      [(UIImageView *)self->_userRatingStarsView frame];
      [(UIImageView *)self->_userRatingStarsView setFrame:15.0, (v12 + 1.0)];
      v12 = v28 + 10.0;
    }
  }

  histogramImageView = self->_histogramImageView;
  if (histogramImageView)
  {
    [(UIImageView *)histogramImageView frame];
    v31 = v30;
    v33 = v32;
    [(UIImageView *)self->_histogramImageView setFrame:15.0, (v12 + -2.0)];
    v67.origin.x = 15.0;
    v67.origin.y = (v12 + -2.0);
    v67.size.width = v31;
    v67.size.height = v33;
    v12 = CGRectGetMaxY(v67) + 19.0 + -3.0;
  }

  if (self->_starRatingControl)
  {
    [(UILabel *)self->_countLabel frame];
    v61 = v12;
    v34 = CGRectGetMinY(v68) + -19.0;
    [(UIImageView *)self->_histogramImageView frame];
    MaxY = CGRectGetMaxY(v69);
    v36 = v4 * 0.5;
    v37 = floorf(v36);
    [(SUUIStarRatingControl *)self->_starRatingControl frame];
    v60 = v38;
    v40 = v39;
    [(UILabel *)self->_starRatingControlLabel frame];
    width = v70.size.width;
    v62 = v4;
    height = v70.size.height;
    v43 = v37 + 40.0;
    v44 = v6;
    v45 = MaxY - v34;
    v46 = (MaxY - v34 - v70.size.height) * 0.5;
    v47 = v34 + floorf(v46);
    v70.origin.x = v43;
    v70.origin.y = v47;
    MaxX = CGRectGetMaxX(v70);
    v49 = v45 - v40;
    v6 = v44;
    *&v49 = v49 * 0.5;
    v50 = v34 + floorf(*&v49);
    v12 = v61;
    [(SUUIStarRatingControl *)self->_starRatingControl setFrame:MaxX + 8.0, v50, v60, v40];
    v51 = height;
    v4 = v62;
    [(UILabel *)self->_starRatingControlLabel setFrame:v43, v47, width, v51];
  }

  if (self->_appSupportButton)
  {
    writeAReviewButton = self->_writeAReviewButton;
    if (writeAReviewButton)
    {
      v53 = (v4 + -30.0 + -10.0) * 0.5;
      v54 = floorf(v53);
      [(UIButton *)writeAReviewButton frame];
      [(UIButton *)self->_writeAReviewButton setFrame:15.0, (v12 + -11.0), v54];
      [(UIButton *)self->_appSupportButton frame];
      [(UIButton *)self->_appSupportButton setFrame:v4 + -15.0 - v54, (v12 + -11.0), v54];
    }
  }

  bottomSeparatorView = self->_bottomSeparatorView;
  if (bottomSeparatorView)
  {
    [(UIView *)bottomSeparatorView frame];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v58 = 1.0 / v57;

    v59 = self->_bottomSeparatorView;

    [(UIView *)v59 setFrame:15.0, v6 - v58, v4 + -15.0, v58];
  }
}

- (void)setBackgroundColor:(id)color
{
  countLabel = self->_countLabel;
  colorCopy = color;
  [(UILabel *)countLabel setBackgroundColor:colorCopy];
  [(SUUIStarRatingControl *)self->_starRatingControl setBackgroundColor:colorCopy];
  [(UILabel *)self->_starRatingControlLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIReviewsHistogramView;
  [(SUUIReviewsHistogramView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v5 = 136.0;
  }

  else
  {
    v5 = 168.0;
  }

  if ([(UISegmentedControl *)self->_segmentedControl isDescendantOfView:self])
  {
    [(UISegmentedControl *)self->_segmentedControl frame];
    v5 = v5 + v6 + 19.0;
  }

  countLabel = self->_countLabel;
  if (countLabel)
  {
    [(UIImageView *)self->_userRatingStarsView frame];
    [(UILabel *)countLabel sizeThatFits:width + -45.0 - v8 + -9.0, 1.79769313e308];
    v5 = v5 + v9 + -7.0;
  }

  v10 = width;
  v11 = v5;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_histogramImageForValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  v6 = SUUIUserInterfaceIdiom(self->_clientContext);
  mainScreen = &off_259FCA000;
  if (v6 == 1)
  {
    v8 = 0;
    v9 = 295.0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v8 = 0;
      v9 = 290.0;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v9 = v10 + -30.0;
      v8 = 1;
    }
  }

  v11 = [valuesCopy count] * 14.0;
  if (v8)
  {
  }

  v12 = v11;
  if (v6 != 1)
  {
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v15 = v14;
  v67.width = v9;
  v67.height = v12;
  UIGraphicsBeginImageContextWithOptions(v67, 0, v15);

  c = UIGraphicsGetCurrentContext();
  v16 = MEMORY[0x277D755B8];
  v17 = SUUIBundle();
  v18 = [v16 imageNamed:@"SmallStarFull" inBundle:v17];

  primaryTextColor = [(SUUIColorScheme *)selfCopy->_colorScheme primaryTextColor];
  if (primaryTextColor)
  {
    primaryTextColor2 = [(SUUIColorScheme *)selfCopy->_colorScheme primaryTextColor];
    v21 = SUUIColorWithAlpha(primaryTextColor2, 0.1);
    v22 = SUUITintedImage(v18, 0, v21);
  }

  else
  {
    primaryTextColor2 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
    v22 = SUUITintedImage(v18, 0, primaryTextColor2);
  }

  primaryTextColor3 = [(SUUIColorScheme *)selfCopy->_colorScheme primaryTextColor];
  if (primaryTextColor3)
  {
    v24 = SUUITintedImage(v18, 0, primaryTextColor3);
  }

  else
  {
    v25 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
    v24 = SUUITintedImage(v18, 0, v25);
  }

  [v18 size];
  v27 = v26;
  if ([valuesCopy count])
  {
    v28 = 0;
    v29 = (14.0 - v27) * 0.5;
    v30 = roundf(v29);
    do
    {
      if ([valuesCopy count])
      {
        v31 = 0;
        do
        {
          v32 = v31 + 1;
          if (v31 >= v28)
          {
            v33 = v24;
          }

          else
          {
            v33 = v22;
          }

          v34 = v31;
          v35 = v33;
          [v18 size];
          [v35 drawAtPoint:{v36 * v34, v30 + (v28 * 14.0)}];

          v37 = [valuesCopy count];
          v31 = v32;
        }

        while (v32 < v37);
      }

      ++v28;
    }

    while (v28 < [valuesCopy count]);
  }

  [v18 size];
  v39 = v38;
  v40 = [valuesCopy count];
  v41 = selfCopy;
  if (SUUIUserInterfaceIdiom(selfCopy->_clientContext) == 1)
  {
    v42 = 295.0;
    v43 = 424;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      v42 = 290.0;
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 bounds];
      v42 = v46 + -30.0;
    }

    v43 = 424;
  }

  if ([valuesCopy count])
  {
    v47 = 0;
    v48 = v39 * v40 + 9.0;
    v49 = v42 - v48;
    v50 = -1;
    do
    {
      v51 = [valuesCopy objectAtIndex:{objc_msgSend(valuesCopy, "count") + v50}];
      [v51 floatValue];
      v53 = v52;

      v65 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v48 cornerRadius:{(v47 * 14.0) + 6.0, v49, 2.0, 2.0}];
      primaryTextColor4 = [*(&v41->super.super.super.isa + v43) primaryTextColor];
      if (primaryTextColor4)
      {
        [*(&v41->super.super.super.isa + v43) primaryTextColor];
        v56 = v55 = v43;
        v57 = SUUIColorWithAlpha(v56, 0.1);
        [v57 set];

        v41 = selfCopy;
      }

      else
      {
        [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
        v56 = v55 = v43;
        [v56 set];
      }

      [v65 fill];
      CGContextSaveGState(c);
      v68.size.height = 2.0;
      v68.origin.x = v48;
      v68.origin.y = (v47 * 14.0) + 6.0;
      v68.size.width = v49 * v53;
      CGContextClipToRect(c, v68);
      primaryTextColor5 = [*(&v41->super.super.super.isa + v55) primaryTextColor];
      v59 = primaryTextColor5;
      if (primaryTextColor5)
      {
        v43 = v55;
        [primaryTextColor5 set];
      }

      else
      {
        v60 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
        [v60 set];

        v43 = 424;
      }

      [v65 fill];
      CGContextRestoreGState(c);

      ++v47;
      --v50;
    }

    while (v47 < [valuesCopy count]);
  }

  v61 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v61;
}

- (id)_countLabelString
{
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setNumberStyle:1];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
  v5 = [v3 stringFromNumber:v4];

  numberOfUserRatings = self->_numberOfUserRatings;
  if (!numberOfUserRatings)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_COUNT_NONE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_COUNT_NONE" inBundles:0 inTable:@"ProductPage"];
    }
    v12 = ;
    goto LABEL_27;
  }

  v7 = self->_clientContext;
  if (self->_versionString)
  {
    if (numberOfUserRatings == 1)
    {
      if (v7)
      {
        v8 = @"REVIEWS_COUNT_CURRENT_VERSION_ONE";
LABEL_13:
        v11 = [(SUUIClientContext *)v7 localizedStringForKey:v8 inTable:@"ProductPage"];
LABEL_22:
        v15 = v11;
        v12 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:0, v5, self->_versionString];

        goto LABEL_27;
      }

      v14 = @"REVIEWS_COUNT_CURRENT_VERSION_ONE";
    }

    else
    {
      if (v7)
      {
        v8 = @"REVIEWS_COUNT_CURRENT_VERSION_PLURAL";
        goto LABEL_13;
      }

      v14 = @"REVIEWS_COUNT_CURRENT_VERSION_PLURAL";
    }

    v11 = [SUUIClientContext localizedStringForKey:v14 inBundles:0 inTable:@"ProductPage"];
    goto LABEL_22;
  }

  if (numberOfUserRatings != 1)
  {
    if (v7)
    {
      v10 = @"REVIEWS_COUNT_ALL_VERSIONS_PLURAL";
      goto LABEL_18;
    }

    v16 = @"REVIEWS_COUNT_ALL_VERSIONS_PLURAL";
LABEL_25:
    v13 = [SUUIClientContext localizedStringForKey:v16 inBundles:0 inTable:@"ProductPage"];
    goto LABEL_26;
  }

  if (!v7)
  {
    v16 = @"REVIEWS_COUNT_ALL_VERSIONS_ONE";
    goto LABEL_25;
  }

  v10 = @"REVIEWS_COUNT_ALL_VERSIONS_ONE";
LABEL_18:
  v13 = [(SUUIClientContext *)v7 localizedStringForKey:v10 inTable:@"ProductPage"];
LABEL_26:
  v17 = v13;
  v12 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v5];

LABEL_27:

  return v12;
}

@end