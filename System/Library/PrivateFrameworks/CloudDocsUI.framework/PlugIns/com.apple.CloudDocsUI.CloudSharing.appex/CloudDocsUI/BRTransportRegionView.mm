@interface BRTransportRegionView
- (BRTransportRegionView)initWithTransportView:(id)a3;
- (void)setCompactMode:(BOOL)a3;
- (void)setIsLoading:(BOOL)a3;
- (void)setIsPreparingForFolderSharing:(BOOL)a3;
@end

@implementation BRTransportRegionView

- (BRTransportRegionView)initWithTransportView:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = BRTransportRegionView;
  v6 = [(BRTransportRegionView *)&v44 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityView, a3);
    [(BRTransportRegionView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BRTransportRegionView *)v7 setAlignment:3];
    [(BRTransportRegionView *)v7 setDistribution:0];
    [(BRTransportRegionView *)v7 setAxis:1];
    [(BRTransportRegionView *)v7 setLayoutMarginsRelativeArrangement:1];
    [(BRTransportRegionView *)v7 setDirectionalLayoutMargins:0.0, 0.0, -1.0, 0.0];
    [(BRTransportRegionView *)v7 setClipsToBounds:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [v5 allSubViews];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        v12 = 0;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          v14 = +[UIColor clearColor];
          [v13 setBackgroundColor:v14];

          [v13 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v13;
              [v15 setAlwaysBounceVertical:0];
              [v15 setClipsToBounds:0];
              [v15 contentInset];
              [v15 setContentInset:?];
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v10);
    }

    v16 = +[NSMutableArray array];
    v17 = objc_alloc_init(UILabel);
    infoLabel = v7->_infoLabel;
    v7->_infoLabel = v17;

    v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v7->_infoLabel setFont:v19];

    [(UILabel *)v7->_infoLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_infoLabel setNumberOfLines:0];
    [(UILabel *)v7->_infoLabel setTextAlignment:1];
    v20 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v21 = [v20 localizedStringForKey:@"SHARE_INVITE_INFO_LABEL_TEXT" value:@"Choose how you’d like to send your invitation:" table:@"Localizable"];
    [(UILabel *)v7->_infoLabel setText:v21];

    LODWORD(v22) = 1148846080;
    [(UILabel *)v7->_infoLabel setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v7->_infoLabel setContentHuggingPriority:1 forAxis:v23];
    [(BRTransportRegionView *)v7 addArrangedSubview:v7->_infoLabel];
    v24 = [(UILabel *)v7->_infoLabel leadingAnchor];
    v25 = [(BRTransportRegionView *)v7 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];
    [v16 addObject:v26];

    v27 = [(UILabel *)v7->_infoLabel trailingAnchor];
    v28 = [(BRTransportRegionView *)v7 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-16.0];
    [v16 addObject:v29];

    [(BRTransportRegionView *)v7 addArrangedSubview:v5];
    v30 = [v5 heightAnchor];
    v31 = [v30 constraintEqualToConstant:129.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v31;

    [v16 addObject:v7->_heightConstraint];
    v33 = [v5 leadingAnchor];
    v34 = [(BRTransportRegionView *)v7 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v16 addObject:v35];

    v36 = [v5 trailingAnchor];
    v37 = [(BRTransportRegionView *)v7 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v16 addObject:v38];

    [NSLayoutConstraint activateConstraints:v16];
  }

  return v7;
}

- (void)setCompactMode:(BOOL)a3
{
  self->_compactMode = a3;
  heightConstraint = self->_heightConstraint;
  v4 = 129.0;
  if (a3)
  {
    v4 = 119.0;
  }

  [(NSLayoutConstraint *)heightConstraint setConstant:v4];
}

- (void)setIsPreparingForFolderSharing:(BOOL)a3
{
  if (self->_isPreparingForFolderSharing != a3)
  {
    self->_isPreparingForFolderSharing = a3;
    if (a3)
    {
      [(UIView *)self->_activityView setHidden:1];
      v4 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001FE4;
      block[3] = &unk_10004C920;
      block[4] = self;
      dispatch_after(v4, &_dispatch_main_q, block);
    }

    else
    {

      [(BRTransportRegionView *)self setIsLoading:?];
    }
  }
}

- (void)setIsLoading:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    self->_isLoading = a3;
    activityView = self->_activityView;
    if (a3)
    {
      [(UIView *)activityView setHidden:1];
      v5 = objc_alloc_init(BRLoadingView);
      loadingView = self->_loadingView;
      self->_loadingView = v5;

      v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v8 = [v7 localizedStringForKey:@"PREPARING_FOLDER" value:@"Preparing Folder" table:@"Localizable"];
      v9 = [(BRLoadingView *)self->_loadingView loadingLabel];
      [v9 setText:v8];

      [(BRLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [(BRLoadingView *)self->_loadingView heightAnchor];
      [(NSLayoutConstraint *)self->_heightConstraint constant];
      v11 = [v10 constraintEqualToConstant:?];
      [v11 setActive:1];

      v12 = self->_loadingView;

      [(BRTransportRegionView *)self addArrangedSubview:v12];
    }

    else
    {
      [(UIView *)activityView setHidden:?];
      v13 = self->_loadingView;

      [(BRLoadingView *)v13 removeFromSuperview];
    }
  }
}

@end