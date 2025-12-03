@interface NMBUIDisclosureMediaTableCell
- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)state;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NMBUIDisclosureMediaTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (NMBUIDownloadProgressView)downloadProgressView;
- (void)_handleDownloadIndicatorTapGesture:(id)gesture;
- (void)_setDownloadState:(id)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation NMBUIDisclosureMediaTableCell

- (NMBUIDisclosureMediaTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = NMBUIDisclosureMediaTableCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    imageView = [(NMBUIDisclosureMediaTableCell *)v5 imageView];
    [imageView setContentMode:2];

    imageView2 = [(NMBUIDisclosureMediaTableCell *)v6 imageView];
    [imageView2 setClipsToBounds:1];

    imageView3 = [(NMBUIDisclosureMediaTableCell *)v6 imageView];
    layer = [imageView3 layer];
    [layer setCornerRadius:10.0];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = NMBUIDisclosureMediaTableCell;
  [(NMBUIDisclosureMediaTableCell *)&v5 sizeThatFits:fits.width, fits.height];
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
  v3.super_class = NMBUIDisclosureMediaTableCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(NMBUIDisclosureMediaTableCell *)self clearArtworkCatalogs];
  [(NMBUIDownloadProgressView *)self->_downloadProgressView removeFromSuperview];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = NMBUIDisclosureMediaTableCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  title = [v5 title];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:title];

  style = [(NMBUIDisclosureMediaTableCell *)self style];
  if (style == 3)
  {
    subtitle = [v5 subtitle];
LABEL_15:
    [(NMBUIDisclosureMediaTableCell *)self _setBadgeText:0];
    detailTextLabel = [(NMBUIDisclosureMediaTableCell *)self detailTextLabel];
    [detailTextLabel setText:subtitle];

    goto LABEL_19;
  }

  if (style == 2)
  {
    if ([specifierCopy hasValidGetter])
    {
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
    }

    else
    {
      subtitle = 0;
    }

    goto LABEL_15;
  }

  if (style != 1)
  {
    goto LABEL_20;
  }

  if ([specifierCopy hasValidGetter])
  {
    performGetter2 = [specifierCopy performGetter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subtitle = performGetter2;
    }

    else
    {
      subtitle = 0;
    }
  }

  else
  {
    subtitle = 0;
  }

  detailTextLabel2 = [(NMBUIDisclosureMediaTableCell *)self detailTextLabel];
  [detailTextLabel2 setText:0];

  [(NMBUIDisclosureMediaTableCell *)self _setBadgeText:subtitle];
LABEL_19:

LABEL_20:
  imageView = [(NMBUIDisclosureMediaTableCell *)self imageView];
  artworkCatalog = [v5 artworkCatalog];
  placeholderImage = [v5 placeholderImage];
  [imageView setArtworkCatalog:artworkCatalog withPlaceholderImage:placeholderImage withDesiredSize:{44.0, 44.0}];

  downloadState = [v5 downloadState];

  if (downloadState)
  {
    downloadState2 = [v5 downloadState];
    [(NMBUIDisclosureMediaTableCell *)self _setDownloadState:downloadState2];
  }

  [(NMBUIDisclosureMediaTableCell *)self setAccessoryType:1];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = NMBUIDisclosureMediaTableCell;
  [(PSTableCell *)&v47 layoutSubviews];
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  downloadState = [v4 downloadState];

  if ([(NMBUIDisclosureMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:downloadState])
  {
    contentView = [(NMBUIDisclosureMediaTableCell *)self contentView];
    downloadProgressView = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [contentView addSubview:downloadProgressView];

    contentView2 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    effectiveUserInterfaceLayoutDirection = [contentView2 effectiveUserInterfaceLayoutDirection];

    downloadProgressView2 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [(NMBUIDisclosureMediaTableCell *)self bounds];
    [downloadProgressView2 sizeThatFits:{v11, v12}];
    v14 = v13;
    v16 = v15;

    downloadProgressView3 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [downloadProgressView3 frame];

    contentView3 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    [contentView3 bounds];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      MinX = CGRectGetMinX(*&v19);
      v24 = 10.0;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v19) - v14;
      v24 = -10.0;
    }

    v25 = MinX + v24;

    contentView4 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    [contentView4 bounds];
    v27 = CGRectGetMidY(v48) + v16 * -0.5;

    downloadProgressView4 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [downloadProgressView4 setFrame:{v25, v27, v14, v16}];

    titleLabel = [(PSTableCell *)self titleLabel];
    [titleLabel frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v49.origin.x = v31;
      v49.origin.y = v33;
      v49.size.width = v35;
      v49.size.height = v37;
      MaxX = CGRectGetMaxX(v49);
      v50.origin.x = v25;
      v50.origin.y = v27;
      v50.size.width = v14;
      v50.size.height = v16;
      v39 = MaxX - CGRectGetMaxX(v50);
    }

    else
    {
      v51.origin.x = v25;
      v51.origin.y = v27;
      v51.size.width = v14;
      v51.size.height = v16;
      v40 = CGRectGetMinX(v51);
      v52.origin.x = v31;
      v52.origin.y = v33;
      v52.size.width = v35;
      v52.size.height = v37;
      v39 = v40 - CGRectGetMinX(v52);
    }

    v41 = v39 + -10.0;
    titleLabel2 = [(PSTableCell *)self titleLabel];
    superview = [titleLabel2 superview];
    [superview bounds];
    Height = CGRectGetHeight(v53);

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      contentView5 = [(NMBUIDisclosureMediaTableCell *)self contentView];
      [contentView5 bounds];
      v31 = v14 + CGRectGetMinX(v54) + 20.0;
    }

    titleLabel3 = [(PSTableCell *)self titleLabel];
    [titleLabel3 setFrame:{v31, 0.0, v41, Height}];
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
    if (self->_downloadProgressView || (v6 = [(NMBUIDisclosureMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:stateCopy], v5 = v13, v6))
    {
      state = [v5 state];
      downloadProgressView = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
      [downloadProgressView setState:state];

      [v13 progress];
      v10 = v9;
      downloadProgressView2 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
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

@end