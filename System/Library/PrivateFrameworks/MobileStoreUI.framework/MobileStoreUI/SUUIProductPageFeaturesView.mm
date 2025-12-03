@interface SUUIProductPageFeaturesView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIProductPageFeaturesView)initWithFrame:(CGRect)frame;
- (id)_gameCenterStringWithFeatures:(unint64_t)features;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFeatures:(int64_t)features gameCenterFeatures:(unint64_t)centerFeatures;
- (void)setTitle:(id)title;
@end

@implementation SUUIProductPageFeaturesView

- (SUUIProductPageFeaturesView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIProductPageFeaturesView;
  v3 = [(SUUIProductPageFeaturesView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v3->_bottomBorderView;
    v3->_bottomBorderView = v4;

    v6 = v3->_bottomBorderView;
    primaryTextColor = [(SUUIColorScheme *)v3->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)v6 setBackgroundColor:primaryTextColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v6 setBackgroundColor:v8];
    }

    [(SUUIProductPageFeaturesView *)v3 addSubview:v3->_bottomBorderView];
  }

  return v3;
}

- (void)setFeatures:(int64_t)features gameCenterFeatures:(unint64_t)centerFeatures
{
  gameCenterFeatures = centerFeatures;
  v36[16] = *MEMORY[0x277D85DE8];
  if (self->_features != features || self->_gameCenterFeatures != centerFeatures)
  {
    [(NSMutableArray *)self->_featureViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_featureViews removeAllObjects];
    self->_features = features;
    self->_gameCenterFeatures = gameCenterFeatures;
    if (!self->_featureViews)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      featureViews = self->_featureViews;
      self->_featureViews = v7;

      gameCenterFeatures = self->_gameCenterFeatures;
    }

    v36[0] = 1;
    v36[1] = @"ProductViewGameCenterBadge";
    v36[2] = [(SUUIProductPageFeaturesView *)self _gameCenterStringWithFeatures:gameCenterFeatures, 440];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"SUPPORTS_GAMECENTER_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      v10 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_GAMECENTER_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v11 = ;

    v36[3] = v11;
    v36[4] = 4;
    v36[5] = @"ProductViewPassbookBadge";
    v12 = self->_clientContext;
    if (v12)
    {
      [(SUUIClientContext *)v12 localizedStringForKey:@"SUPPORTS_PASSBOOK_BODY" inTable:@"ProductPage"];
    }

    else
    {
      v13 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_PASSBOOK_BODY" inBundles:0 inTable:@"ProductPage"];
    }
    v14 = ;

    v36[6] = v14;
    v15 = self->_clientContext;
    if (v15)
    {
      [(SUUIClientContext *)v15 localizedStringForKey:@"SUPPORTS_PASSBOOK_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      v16 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_PASSBOOK_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v17 = ;

    v36[7] = v17;
    v36[8] = 8;
    v36[9] = @"ProductViewNewsstandBadge";
    v18 = self->_clientContext;
    if (v18)
    {
      [(SUUIClientContext *)v18 localizedStringForKey:@"SUPPORTS_NEWSSTAND_BODY" inTable:@"ProductPage"];
    }

    else
    {
      v19 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_NEWSSTAND_BODY" inBundles:0 inTable:@"ProductPage"];
    }
    v20 = ;

    v36[10] = v20;
    v21 = self->_clientContext;
    if (v21)
    {
      [(SUUIClientContext *)v21 localizedStringForKey:@"SUPPORTS_NEWSSTAND_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      v22 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_NEWSSTAND_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v23 = ;

    v36[11] = v23;
    v36[12] = 2;
    v36[13] = @"ProductViewCloudBadge";
    v24 = self->_clientContext;
    if (v24)
    {
      [(SUUIClientContext *)v24 localizedStringForKey:@"SUPPORTS_ICLOUD_BODY" inTable:@"ProductPage"];
    }

    else
    {
      v25 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_ICLOUD_BODY" inBundles:0 inTable:@"ProductPage"];
    }
    v26 = ;

    v36[14] = v26;
    v27 = self->_clientContext;
    if (v27)
    {
      [(SUUIClientContext *)v27 localizedStringForKey:@"SUPPORTS_ICLOUD_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      v28 = 0;
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_ICLOUD_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v29 = ;

    v36[15] = v29;
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    for (i = 0; i != 16; i += 4)
    {
      if ((v36[i] & self->_features) != 0)
      {
        v32 = objc_alloc_init(SUUIProductPageFeatureView);
        [(SUUIProductPageFeatureView *)v32 setColorScheme:self->_colorScheme];
        backgroundColor = [(SUUIProductPageFeaturesView *)self backgroundColor];
        [(SUUIProductPageFeatureView *)v32 setBackgroundColor:backgroundColor];

        v34 = [MEMORY[0x277D755B8] imageNamed:v36[i + 1] inBundle:v30];
        [(SUUIProductPageFeatureView *)v32 setIcon:v34];

        [(SUUIProductPageFeatureView *)v32 setSubtitle:v36[i + 2]];
        [(SUUIProductPageFeatureView *)v32 setTitle:v36[i + 3]];
        [*(&self->super.super.super.isa + v35) addObject:v32];
        [(SUUIProductPageFeaturesView *)self addSubview:v32];
      }
    }

    [(SUUIProductPageFeaturesView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIProductPageFeaturesView *)self title];
  if (title != titleCopy && ([title isEqualToString:titleCopy] & 1) == 0)
  {
    v5 = [titleCopy length];
    titleLabel = self->_titleLabel;
    if (v5)
    {
      if (!titleLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_titleLabel;
        self->_titleLabel = v7;

        v9 = self->_titleLabel;
        backgroundColor = [(SUUIProductPageFeaturesView *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:backgroundColor];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_titleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v13 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:blackColor];
        }

        [(SUUIProductPageFeaturesView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v15 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIProductPageFeaturesView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v33 = *MEMORY[0x277D85DE8];
  [(SUUIProductPageFeaturesView *)self bounds];
  v4 = v3;
  v27 = v5;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v8 = v7;
    [(UILabel *)self->_titleLabel setFrame:15.0, 11.0, v4 + -15.0 + -15.0];
    v34.origin.x = 15.0;
    v34.origin.y = 11.0;
    v34.size.width = v4 + -15.0 + -15.0;
    v34.size.height = v8;
    v9 = CGRectGetMaxY(v34) + -4.0 + 15.0;
  }

  else
  {
    v9 = 15.0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_featureViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 frame];
        v16 = v9 + -2.0;
        [v15 sizeThatFits:{v4 + -30.0, 1.79769313e308}];
        v18 = v17;
        v20 = v19;
        [v15 setFrame:{15.0, v16, v17, v19}];
        v35.origin.x = 15.0;
        v35.origin.y = v16;
        v35.size.width = v18;
        v35.size.height = v20;
        v9 = CGRectGetMaxY(v35) + -2.0 + 16.0;
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  bottomBorderView = self->_bottomBorderView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v24 = v27 - 1.0 / v23;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  [(UIView *)bottomBorderView setFrame:15.0, v24, v4 + -15.0, 1.0 / v26];
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_featureViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v10.receiver = self;
  v10.super_class = SUUIProductPageFeaturesView;
  [(SUUIProductPageFeaturesView *)&v10 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_featureViews count:fits.width];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v8 = v7 + -4.0 + -4.0 + 30.0 + 15.0;
  }

  else
  {
    v8 = 45.0;
  }

  if (v5 >= 2)
  {
    v8 = v8 + ((v5 - 1) * 16.0);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_featureViews;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * i) sizeThatFits:{width + -30.0, 1.79769313e308, v17}];
        v8 = v8 + v14 + -2.0 + -2.0;
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = width;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)_gameCenterStringWithFeatures:(unint64_t)features
{
  if (!features)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"SUPPORTS_GAMECENTER_BODY" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SUPPORTS_GAMECENTER_BODY" inBundles:0 inTable:@"ProductPage"];
    }
    v12 = ;
    goto LABEL_44;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = &off_2798FC2A0;
  v7 = 5;
  do
  {
    if ((*(v6 - 1) & features) != 0)
    {
      v8 = self->_clientContext;
      v9 = *v6;
      if (v8)
      {
        [(SUUIClientContext *)v8 localizedStringForKey:v9 inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:v9 inBundles:0 inTable:@"ProductPage"];
      }
      v10 = ;
      [v5 addObject:v10];
    }

    v6 += 2;
    --v7;
  }

  while (v7);
  v11 = [v5 count];
  v12 = 0;
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v18 = self->_clientContext;
      if (v18)
      {
        [(SUUIClientContext *)v18 localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@" inBundles:0 inTable:@"ProductPage"];
      }
      v19 = ;
      v26 = MEMORY[0x277CCACA8];
      v21 = [v5 objectAtIndexedSubscript:0];
      v12 = [v26 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v21];
      goto LABEL_42;
    }

    if (v11 == 2)
    {
      v15 = self->_clientContext;
      if (v15)
      {
        [(SUUIClientContext *)v15 localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@" inBundles:0 inTable:@"ProductPage"];
      }
      v19 = ;
      v29 = MEMORY[0x277CCACA8];
      v21 = [v5 objectAtIndexedSubscript:0];
      v22 = [v5 objectAtIndexedSubscript:1];
      v12 = [v29 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@" error:0, v21, v22];
      goto LABEL_41;
    }
  }

  else
  {
    switch(v11)
    {
      case 3:
        v16 = self->_clientContext;
        if (v16)
        {
          [(SUUIClientContext *)v16 localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@" inBundles:0 inTable:@"ProductPage"];
        }
        v19 = ;
        v20 = MEMORY[0x277CCACA8];
        v21 = [v5 objectAtIndexedSubscript:0];
        v22 = [v5 objectAtIndexedSubscript:1];
        v23 = [v5 objectAtIndexedSubscript:2];
        v12 = [v20 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@%@" error:0, v21, v22, v23];
        goto LABEL_38;
      case 4:
        v17 = self->_clientContext;
        if (v17)
        {
          [(SUUIClientContext *)v17 localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@_%@" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@_%@" inBundles:0 inTable:@"ProductPage"];
        }
        v19 = ;
        v24 = MEMORY[0x277CCACA8];
        v21 = [v5 objectAtIndexedSubscript:0];
        v22 = [v5 objectAtIndexedSubscript:1];
        v23 = [v5 objectAtIndexedSubscript:2];
        v25 = [v5 objectAtIndexedSubscript:3];
        v12 = [v24 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@%@%@" error:0, v21, v22, v23, v25];
        goto LABEL_37;
      case 5:
        v13 = self->_clientContext;
        if (v13)
        {
          [(SUUIClientContext *)v13 localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@_%@_%@" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"GAME_CENTER_SUPPORTS_FORMAT_%@_%@_%@_%@_%@" inBundles:0 inTable:@"ProductPage"];
        }
        v19 = ;
        v27 = MEMORY[0x277CCACA8];
        v21 = [v5 objectAtIndexedSubscript:0];
        v22 = [v5 objectAtIndexedSubscript:1];
        v23 = [v5 objectAtIndexedSubscript:2];
        v25 = [v5 objectAtIndexedSubscript:3];
        v28 = [v5 objectAtIndexedSubscript:4];
        v12 = [v27 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@%@%@%@" error:0, v21, v22, v23, v25, v28];

LABEL_37:
LABEL_38:

LABEL_41:
LABEL_42:

        break;
    }
  }

LABEL_44:

  return v12;
}

@end