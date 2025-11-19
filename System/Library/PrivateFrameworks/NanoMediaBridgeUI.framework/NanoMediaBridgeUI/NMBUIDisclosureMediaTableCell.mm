@interface NMBUIDisclosureMediaTableCell
- (BOOL)_shouldDisplayDownloadProgressViewForDownloadState:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NMBUIDisclosureMediaTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (NMBUIDownloadProgressView)downloadProgressView;
- (void)_handleDownloadIndicatorTapGesture:(id)a3;
- (void)_setDownloadState:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation NMBUIDisclosureMediaTableCell

- (NMBUIDisclosureMediaTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = NMBUIDisclosureMediaTableCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NMBUIDisclosureMediaTableCell *)v5 imageView];
    [v7 setContentMode:2];

    v8 = [(NMBUIDisclosureMediaTableCell *)v6 imageView];
    [v8 setClipsToBounds:1];

    v9 = [(NMBUIDisclosureMediaTableCell *)v6 imageView];
    v10 = [v9 layer];
    [v10 setCornerRadius:10.0];
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = NMBUIDisclosureMediaTableCell;
  [(NMBUIDisclosureMediaTableCell *)&v5 sizeThatFits:a3.width, a3.height];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NMBUIDisclosureMediaTableCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  v6 = [v5 title];
  v7 = [(PSTableCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [(NMBUIDisclosureMediaTableCell *)self style];
  if (v8 == 3)
  {
    v10 = [v5 subtitle];
LABEL_15:
    [(NMBUIDisclosureMediaTableCell *)self _setBadgeText:0];
    v12 = [(NMBUIDisclosureMediaTableCell *)self detailTextLabel];
    [v12 setText:v10];

    goto LABEL_19;
  }

  if (v8 == 2)
  {
    if ([v4 hasValidGetter])
    {
      v11 = [v4 performGetter];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v11;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 1)
  {
    goto LABEL_20;
  }

  if ([v4 hasValidGetter])
  {
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
  }

  else
  {
    v10 = 0;
  }

  v13 = [(NMBUIDisclosureMediaTableCell *)self detailTextLabel];
  [v13 setText:0];

  [(NMBUIDisclosureMediaTableCell *)self _setBadgeText:v10];
LABEL_19:

LABEL_20:
  v14 = [(NMBUIDisclosureMediaTableCell *)self imageView];
  v15 = [v5 artworkCatalog];
  v16 = [v5 placeholderImage];
  [v14 setArtworkCatalog:v15 withPlaceholderImage:v16 withDesiredSize:{44.0, 44.0}];

  v17 = [v5 downloadState];

  if (v17)
  {
    v18 = [v5 downloadState];
    [(NMBUIDisclosureMediaTableCell *)self _setDownloadState:v18];
  }

  [(NMBUIDisclosureMediaTableCell *)self setAccessoryType:1];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = NMBUIDisclosureMediaTableCell;
  [(PSTableCell *)&v47 layoutSubviews];
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 propertyForKey:@"NMBUISpecifierCellConfigurationKey"];
  v5 = [v4 downloadState];

  if ([(NMBUIDisclosureMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:v5])
  {
    v6 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    v7 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [v6 addSubview:v7];

    v8 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    v9 = [v8 effectiveUserInterfaceLayoutDirection];

    v10 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [(NMBUIDisclosureMediaTableCell *)self bounds];
    [v10 sizeThatFits:{v11, v12}];
    v14 = v13;
    v16 = v15;

    v17 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [v17 frame];

    v18 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    [v18 bounds];
    if (v9 == 1)
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

    v26 = [(NMBUIDisclosureMediaTableCell *)self contentView];
    [v26 bounds];
    v27 = CGRectGetMidY(v48) + v16 * -0.5;

    v28 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
    [v28 setFrame:{v25, v27, v14, v16}];

    v29 = [(PSTableCell *)self titleLabel];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    if (v9 == 1)
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
    v42 = [(PSTableCell *)self titleLabel];
    v43 = [v42 superview];
    [v43 bounds];
    Height = CGRectGetHeight(v53);

    if (v9 == 1)
    {
      v45 = [(NMBUIDisclosureMediaTableCell *)self contentView];
      [v45 bounds];
      v31 = v14 + CGRectGetMinX(v54) + 20.0;
    }

    v46 = [(PSTableCell *)self titleLabel];
    [v46 setFrame:{v31, 0.0, v41, Height}];
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
    if (self->_downloadProgressView || (v6 = [(NMBUIDisclosureMediaTableCell *)self _shouldDisplayDownloadProgressViewForDownloadState:v4], v5 = v13, v6))
    {
      v7 = [v5 state];
      v8 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
      [v8 setState:v7];

      [v13 progress];
      v10 = v9;
      v11 = [(NMBUIDisclosureMediaTableCell *)self downloadProgressView];
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

@end