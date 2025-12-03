@interface NMBUIMediaTableCell
+ (CGSize)artworkSize;
+ (id)_configurationFromSpecifier:(id)specifier;
- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)state;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NMBUIDownloadProgressView)downloadProgressView;
- (NMBUIMediaTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_errorButtonWithSpecifier:(id)specifier;
- (void)_handleDownloadIndicatorTapGesture:(id)gesture;
- (void)_setDownloadState:(id)state;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
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

- (NMBUIMediaTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40150]];
  v11 = v10;
  if (v10)
  {
    style = [v10 integerValue];
  }

  v19.receiver = self;
  v19.super_class = NMBUIMediaTableCell;
  v12 = [(PSControlTableCell *)&v19 initWithStyle:style reuseIdentifier:identifierCopy specifier:specifierCopy];
  v13 = v12;
  if (v12)
  {
    imageView = [(NMBUIMediaTableCell *)v12 imageView];
    [imageView setContentMode:2];

    imageView2 = [(NMBUIMediaTableCell *)v13 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(NMBUIMediaTableCell *)v13 imageView];
    layer = [imageView3 layer];
    [layer setCornerRadius:10.0];
  }

  return v13;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = NMBUIMediaTableCell;
  [(NMBUIMediaTableCell *)&v5 sizeThatFits:fits.width, fits.height];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v29.receiver = self;
  v29.super_class = NMBUIMediaTableCell;
  [(PSSwitchTableCell *)&v29 refreshCellContentsWithSpecifier:specifierCopy];
  [(NMBUIMediaTableCell *)self setAccessoryView:0];
  v5 = [objc_opt_class() _configurationFromSpecifier:specifierCopy];
  title = [v5 title];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:title];

  style = [(NMBUIMediaTableCell *)self style];
  if ((style - 1) >= 2)
  {
    if (style == 3)
    {
      subtitle = [v5 subtitle];
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (![specifierCopy hasValidGetter])
  {
LABEL_7:
    subtitle = 0;
    goto LABEL_10;
  }

  performGetter = [specifierCopy performGetter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subtitle = performGetter;
  }

  else
  {
    subtitle = 0;
  }

LABEL_10:
  detailTextLabel = [(NMBUIMediaTableCell *)self detailTextLabel];
  [detailTextLabel setText:subtitle];

  imageView = [(NMBUIMediaTableCell *)self imageView];
  artworkCatalog = [v5 artworkCatalog];
  placeholderImage = [v5 placeholderImage];
  [imageView setArtworkCatalog:artworkCatalog withPlaceholderImage:placeholderImage withDesiredSize:{44.0, 44.0}];

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  downloadState = [v5 downloadState];
  LODWORD(placeholderImage) = [(NMBUIMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:downloadState];

  if (placeholderImage)
  {
    downloadState2 = [v5 downloadState];
    [(NMBUIMediaTableCell *)self _setDownloadState:downloadState2];

    downloadProgressView = [(NMBUIMediaTableCell *)self downloadProgressView];
  }

  else
  {
    v19 = [specifierCopy propertyForKey:@"NMBUISpecifierShouldShowExclamationIconKey"];
    bOOLValue = [v19 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_15;
    }

    downloadProgressView = [(NMBUIMediaTableCell *)self _errorButtonWithSpecifier:specifierCopy];
  }

  v21 = downloadProgressView;
  [v15 addObject:downloadProgressView];

LABEL_15:
  v22 = [specifierCopy propertyForKey:@"NMBUISpecifierShouldShowSwitchKey"];
  bOOLValue2 = [v22 BOOLValue];

  control = [(PSControlTableCell *)self control];
  v25 = control;
  if (bOOLValue2)
  {
    [v15 addObject:control];
  }

  else
  {
    [control removeFromSuperview];
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

- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)state
{
  stateCopy = state;
  v4 = stateCopy;
  if (stateCopy)
  {
    if ([stateCopy state] == 5)
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

- (void)_setDownloadState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v13 = stateCopy;
    if (self->_downloadProgressView || (v6 = [(NMBUIMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:stateCopy], v5 = v13, v6))
    {
      state = [v5 state];
      downloadProgressView = [(NMBUIMediaTableCell *)self downloadProgressView];
      [downloadProgressView setState:state];

      [v13 progress];
      v10 = v9;
      downloadProgressView2 = [(NMBUIMediaTableCell *)self downloadProgressView];
      *&v12 = v10;
      [downloadProgressView2 setProgress:v12];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleDownloadIndicatorTapGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    specifier = [(PSTableCell *)self specifier];
    v7 = [specifier propertyForKey:@"NMBUISpecifierCellConfigurationKey"];

    downloadIndicatorTapAction = [v7 downloadIndicatorTapAction];

    if (downloadIndicatorTapAction)
    {
      downloadIndicatorTapAction2 = [v7 downloadIndicatorTapAction];
      downloadIndicatorTapAction2[2]();
    }
  }
}

- (id)_errorButtonWithSpecifier:(id)specifier
{
  v3 = MEMORY[0x277D75220];
  specifierCopy = specifier;
  v5 = [v3 buttonWithType:118];
  redColor = [MEMORY[0x277D75348] redColor];
  [v5 setTintColor:redColor];

  v7 = [specifierCopy propertyForKey:@"NMBUISpecifierIconTargetKey"];
  v8 = [specifierCopy propertyForKey:@"NMBUISpecifierIconActionStringKey"];

  v9 = NSSelectorFromString(v8);
  [v5 removeTarget:0 action:0 forControlEvents:64];
  [v5 addTarget:v7 action:v9 forEvents:64];

  return v5;
}

+ (id)_configurationFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  if (!v4)
  {
    v4 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
    v5 = [specifierCopy propertyForKey:@"NMBUISpecifierModelObjectKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setModelObject:v5];

    v6 = [specifierCopy propertyForKey:@"NMBUISpecifierArtworkCatalogKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setArtworkCatalog:v6];

    v7 = [specifierCopy propertyForKey:@"NMBUISpecifierPlaceholderImageKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setPlaceholderImage:v7];

    v8 = [specifierCopy propertyForKey:@"NMBUISpecifierTitleKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setTitle:v8];

    v9 = [specifierCopy propertyForKey:@"NMBUISpecifierSubtitleKey"];
    [(NMBUIMediaTableCellConfiguration *)v4 setSubtitle:v9];

    v10 = [specifierCopy propertyForKey:@"NMBUISpecifierShouldShowDownloadInfoKey"];
    bOOLValue = [v10 BOOLValue];

    v12 = [specifierCopy propertyForKey:@"NMBUISpecifierDownloadStateKey"];
    if (v12)
    {
      v13 = [specifierCopy propertyForKey:@"NMBUISpecifierDownloadStateKey"];
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 5;
    }

    v15 = [specifierCopy propertyForKey:@"NMBUISpecifierDownloadProgressKey"];
    [v15 floatValue];
    v17 = v16;

    if (bOOLValue)
    {
      v18 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:unsignedIntegerValue progress:v17];
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