@interface NMBUIMediaTableCell
+ (CGSize)artworkSize;
+ (id)_configurationFromSpecifier:(id)a3;
- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NMBUIDownloadProgressView)downloadProgressView;
- (NMBUIMediaTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_errorButtonWithSpecifier:(id)a3;
- (void)_handleDownloadIndicatorTapGesture:(id)a3;
- (void)_setDownloadState:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation NMBUIMediaTableCell

+ (CGSize)artworkSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (NMBUIMediaTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v9 propertyForKey:*MEMORY[0x277D40150]];
  v11 = v10;
  if (v10)
  {
    a3 = [v10 integerValue];
  }

  v19.receiver = self;
  v19.super_class = NMBUIMediaTableCell;
  v12 = [(PSControlTableCell *)&v19 initWithStyle:a3 reuseIdentifier:v8 specifier:v9];
  v13 = v12;
  if (v12)
  {
    v14 = [(NMBUIMediaTableCell *)v12 imageView];
    [v14 setContentMode:2];

    v15 = [(NMBUIMediaTableCell *)v13 imageView];
    [v15 setClipsToBounds:1];

    v16 = [(NMBUIMediaTableCell *)v13 imageView];
    v17 = [v16 layer];
    [v17 setCornerRadius:10.0];
  }

  return v13;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = NMBUIMediaTableCell;
  [(NMBUIMediaTableCell *)&v5 sizeThatFits:a3.width, a3.height];
  if (v4 < 64.0)
  {
    v4 = 64.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NMBUIMediaTableCell;
  [(PSSwitchTableCell *)&v3 prepareForReuse];
  [(NMBUIMediaTableCell *)self clearArtworkCatalogs];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NMBUIMediaTableCell;
  [(PSSwitchTableCell *)&v29 refreshCellContentsWithSpecifier:v4];
  [(NMBUIMediaTableCell *)self setAccessoryView:0];
  v5 = [objc_opt_class() _configurationFromSpecifier:v4];
  v6 = [v5 title];
  v7 = [(PSTableCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [(NMBUIMediaTableCell *)self style];
  if ((v8 - 1) >= 2)
  {
    if (v8 == 3)
    {
      v10 = [v5 subtitle];
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (![v4 hasValidGetter])
  {
LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [v4 performGetter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  v11 = [(NMBUIMediaTableCell *)self detailTextLabel];
  [v11 setText:v10];

  v12 = [(NMBUIMediaTableCell *)self imageView];
  v13 = [v5 artworkCatalog];
  v14 = [v5 placeholderImage];
  [v12 setArtworkCatalog:v13 withPlaceholderImage:v14 withDesiredSize:{44.0, 44.0}];

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v16 = [v5 downloadState];
  LODWORD(v14) = [(NMBUIMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:v16];

  if (v14)
  {
    v17 = [v5 downloadState];
    [(NMBUIMediaTableCell *)self _setDownloadState:v17];

    v18 = [(NMBUIMediaTableCell *)self downloadProgressView];
  }

  else
  {
    v19 = [v4 propertyForKey:@"NMBUISpecifierShouldShowExclamationIconKey"];
    v20 = [v19 BOOLValue];

    if (!v20)
    {
      goto LABEL_15;
    }

    v18 = [(NMBUIMediaTableCell *)self _errorButtonWithSpecifier:v4];
  }

  v21 = v18;
  [v15 addObject:v18];

LABEL_15:
  v22 = [v4 propertyForKey:@"NMBUISpecifierShouldShowSwitchKey"];
  v23 = [v22 BOOLValue];

  v24 = [(PSControlTableCell *)self control];
  v25 = v24;
  if (v23)
  {
    [v15 addObject:v24];
  }

  else
  {
    [v24 removeFromSuperview];
  }

  if ([v15 count])
  {
    v26 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v15];
    [v26 setSpacing:10.0];
    [v26 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    [v26 setFrame:{0.0, 0.0, v27, v28}];
    [(NMBUIMediaTableCell *)self setAccessoryView:v26];
  }

  else
  {
    [(NMBUIMediaTableCell *)self setAccessoryView:0];
  }
}

- (NMBUIDownloadProgressView)downloadProgressView
{
  downloadProgressView = self->_downloadProgressView;
  if (!downloadProgressView)
  {
    v4 = objc_alloc_init(NMBUIDownloadProgressView);
    v5 = self->_downloadProgressView;
    self->_downloadProgressView = v4;

    v6 = self->_downloadProgressView;
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDownloadIndicatorTapGesture_];
    [(NMBUIDownloadProgressView *)v6 addGestureRecognizer:v7];

    downloadProgressView = self->_downloadProgressView;
  }

  return downloadProgressView;
}

- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 state] == 5)
    {
      [v4 progress];
      v6 = v5 < 1.0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setDownloadState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = v4;
    if (self->_downloadProgressView || (v6 = [(NMBUIMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:v4], v5 = v13, v6))
    {
      v7 = [v5 state];
      v8 = [(NMBUIMediaTableCell *)self downloadProgressView];
      [v8 setState:v7];

      [v13 progress];
      v10 = v9;
      v11 = [(NMBUIMediaTableCell *)self downloadProgressView];
      *&v12 = v10;
      [v11 setProgress:v12];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleDownloadIndicatorTapGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(PSTableCell *)self specifier];
    v7 = [v4 propertyForKey:@"NMBUISpecifierCellConfigurationKey"];

    v5 = [v7 downloadIndicatorTapAction];

    if (v5)
    {
      v6 = [v7 downloadIndicatorTapAction];
      v6[2]();
    }
  }
}

- (id)_errorButtonWithSpecifier:(id)a3
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = [v3 buttonWithType:118];
  v6 = [MEMORY[0x277D75348] redColor];
  [v5 setTintColor:v6];

  v7 = [v4 propertyForKey:@"NMBUISpecifierIconTargetKey"];
  v8 = [v4 propertyForKey:@"NMBUISpecifierIconActionStringKey"];

  v9 = NSSelectorFromString(v8);
  [v5 removeTarget:0 action:0 forControlEvents:64];
  [v5 addTarget:v7 action:v9 forEvents:64];

  return v5;
}

+ (id)_configurationFromSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  if (!v4)
  {
    v4 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
    v5 = [v3 propertyForKey:@"NMBUISpecifierModelObjectKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setModelObject:v5];

    v6 = [v3 propertyForKey:@"NMBUISpecifierArtworkCatalogKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setArtworkCatalog:v6];

    v7 = [v3 propertyForKey:@"NMBUISpecifierPlaceholderImageKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setPlaceholderImage:v7];

    v8 = [v3 propertyForKey:@"NMBUISpecifierTitleKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setTitle:v8];

    v9 = [v3 propertyForKey:@"NMBUISpecifierSubtitleKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setSubtitle:v9];

    v10 = [v3 propertyForKey:@"NMBUISpecifierShouldShowDownloadInfoKey"];
    v11 = [v10 BOOLValue];

    v12 = [v3 propertyForKey:@"NMBUISpecifierDownloadStateKey"];
    if (v12)
    {
      v13 = [v3 propertyForKey:@"NMBUISpecifierDownloadStateKey"];
      v14 = [v13 unsignedIntegerValue];
    }

    else
    {
      v14 = 5;
    }

    v15 = [v3 propertyForKey:@"NMBUISpecifierDownloadProgressKey"];
    [v15 floatValue];
    v17 = v16;

    if (v11)
    {
      v18 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:v14 progress:v17];
      [(NMBUIMediaTableCellConfiguration *)v4 setDownloadState:v18];
    }

    else
    {
      [(NMBUIMediaTableCellConfiguration *)v4 setDownloadState:0];
    }
  }

  return v4;
}

@end