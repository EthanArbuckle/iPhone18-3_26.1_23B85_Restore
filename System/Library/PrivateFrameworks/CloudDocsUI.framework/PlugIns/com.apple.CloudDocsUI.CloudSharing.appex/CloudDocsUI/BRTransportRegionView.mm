@interface BRTransportRegionView
- (BRTransportRegionView)initWithTransportView:(id)view;
- (void)setCompactMode:(BOOL)mode;
- (void)setIsLoading:(BOOL)loading;
- (void)setIsPreparingForFolderSharing:(BOOL)sharing;
@end

@implementation BRTransportRegionView

- (BRTransportRegionView)initWithTransportView:(id)view
{
  viewCopy = view;
  v44.receiver = self;
  v44.super_class = BRTransportRegionView;
  v6 = [(BRTransportRegionView *)&v44 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityView, view);
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
    allSubViews = [viewCopy allSubViews];
    v9 = [allSubViews countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(allSubViews);
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
        v10 = [allSubViews countByEnumeratingWithState:&v40 objects:v45 count:16];
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
    leadingAnchor = [(UILabel *)v7->_infoLabel leadingAnchor];
    leadingAnchor2 = [(BRTransportRegionView *)v7 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v16 addObject:v26];

    trailingAnchor = [(UILabel *)v7->_infoLabel trailingAnchor];
    trailingAnchor2 = [(BRTransportRegionView *)v7 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v16 addObject:v29];

    [(BRTransportRegionView *)v7 addArrangedSubview:viewCopy];
    heightAnchor = [viewCopy heightAnchor];
    v31 = [heightAnchor constraintEqualToConstant:129.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v31;

    [v16 addObject:v7->_heightConstraint];
    leadingAnchor3 = [viewCopy leadingAnchor];
    leadingAnchor4 = [(BRTransportRegionView *)v7 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v16 addObject:v35];

    trailingAnchor3 = [viewCopy trailingAnchor];
    trailingAnchor4 = [(BRTransportRegionView *)v7 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v16 addObject:v38];

    [NSLayoutConstraint activateConstraints:v16];
  }

  return v7;
}

- (void)setCompactMode:(BOOL)mode
{
  self->_compactMode = mode;
  heightConstraint = self->_heightConstraint;
  v4 = 129.0;
  if (mode)
  {
    v4 = 119.0;
  }

  [(NSLayoutConstraint *)heightConstraint setConstant:v4];
}

- (void)setIsPreparingForFolderSharing:(BOOL)sharing
{
  if (self->_isPreparingForFolderSharing != sharing)
  {
    self->_isPreparingForFolderSharing = sharing;
    if (sharing)
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

- (void)setIsLoading:(BOOL)loading
{
  if (self->_isLoading != loading)
  {
    self->_isLoading = loading;
    activityView = self->_activityView;
    if (loading)
    {
      [(UIView *)activityView setHidden:1];
      v5 = objc_alloc_init(BRLoadingView);
      loadingView = self->_loadingView;
      self->_loadingView = v5;

      v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v8 = [v7 localizedStringForKey:@"PREPARING_FOLDER" value:@"Preparing Folder" table:@"Localizable"];
      loadingLabel = [(BRLoadingView *)self->_loadingView loadingLabel];
      [loadingLabel setText:v8];

      [(BRLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
      heightAnchor = [(BRLoadingView *)self->_loadingView heightAnchor];
      [(NSLayoutConstraint *)self->_heightConstraint constant];
      v11 = [heightAnchor constraintEqualToConstant:?];
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