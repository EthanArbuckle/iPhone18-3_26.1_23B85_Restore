@interface ContinuousReadingPreviewView
- (BOOL)canShowContentView;
- (CGSize)contentViewSize;
- (ContinuousReadingBannerView)bannerView;
- (ContinuousReadingPreviewView)initWithContinuousReadingItem:(id)item previewingNextDocument:(BOOL)document;
- (UILabel)headerLabel;
- (UIView)headerView;
- (double)headerHeight;
- (double)rubberBandingHeight;
- (void)_layOutContentView;
- (void)_layOutHeader;
- (void)layoutSubviews;
- (void)replaceContentViewWithItsSnapshot;
- (void)setBannerTheme:(id)theme animated:(BOOL)animated;
- (void)setContentView:(id)view;
- (void)setContentViewSize:(CGSize)size;
- (void)setDocumentSnapshot:(id)snapshot;
@end

@implementation ContinuousReadingPreviewView

- (ContinuousReadingPreviewView)initWithContinuousReadingItem:(id)item previewingNextDocument:(BOOL)document
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = ContinuousReadingPreviewView;
  v8 = [(ContinuousReadingPreviewView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_continuousReadingItem, item);
    v9->_previewingNextDocument = document;
    headerView = [(ContinuousReadingPreviewView *)v9 headerView];
    [(ContinuousReadingPreviewView *)v9 addSubview:headerView];

    bannerView = [(ContinuousReadingPreviewView *)v9 bannerView];
    [(ContinuousReadingPreviewView *)v9 addSubview:bannerView];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(ContinuousReadingPreviewView *)v9 setBackgroundColor:systemBackgroundColor];

    v13 = v9;
  }

  return v9;
}

- (double)headerHeight
{
  bannerView = [(ContinuousReadingPreviewView *)self bannerView];
  [bannerView layoutIfNeeded];
  v3 = headerLabelHeight();
  [bannerView titleRect];
  v4 = ceil(v3 + CGRectGetMinY(v6) * 1.5);

  return v4;
}

- (double)rubberBandingHeight
{
  [(ContinuousReadingPreviewView *)self headerHeight];
  v4 = v3;
  bannerView = [(ContinuousReadingPreviewView *)self bannerView];
  [bannerView bounds];
  v6 = v4 + CGRectGetHeight(v8);

  return v6;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  v14 = viewCopy;
  if (contentView != viewCopy)
  {
    [(WKWebView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    v7 = self->_contentView;
    if (v7)
    {
      contentBackgroundView = self->_contentBackgroundView;
      if (!contentBackgroundView)
      {
        v9 = objc_alloc_init(MEMORY[0x277D75D18]);
        v10 = self->_contentBackgroundView;
        self->_contentBackgroundView = v9;

        systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
        [(UIView *)self->_contentBackgroundView setBackgroundColor:systemBackgroundColor];

        [(ContinuousReadingPreviewView *)self insertSubview:self->_contentBackgroundView belowSubview:self->_contentView];
        v7 = self->_contentView;
        contentBackgroundView = self->_contentBackgroundView;
      }

      [(ContinuousReadingPreviewView *)self insertSubview:v7 aboveSubview:contentBackgroundView];
      [(WKWebView *)self->_contentView frame];
      self->_contentViewSize.width = v12;
      self->_contentViewSize.height = v13;
      [(ContinuousReadingPreviewView *)self setNeedsLayout];
    }
  }
}

- (UIView)headerView
{
  if (self->_previewingNextDocument)
  {
    headerView = self->_headerView;
    if (!headerView)
    {
      [(ContinuousReadingPreviewView *)self bounds];
      Width = CGRectGetWidth(v18);
      [(ContinuousReadingPreviewView *)self headerHeight];
      v7 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, v6}];
      v8 = self->_headerView;
      self->_headerView = v7;

      [(UIView *)self->_headerView setOpaque:1];
      v9 = self->_headerView;
      systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      [(UIView *)v9 setBackgroundColor:systemGroupedBackgroundColor];

      [(UIView *)self->_headerView setAutoresizingMask:34];
      v11 = self->_headerView;
      headerLabel = [(ContinuousReadingPreviewView *)self headerLabel];
      [(UIView *)v11 addSubview:headerLabel];

      v13 = +[ContinuousReadingBannerView makeHairlineSeparator];
      headerHairline = self->_headerHairline;
      self->_headerHairline = v13;

      [(UIView *)self->_headerHairline frame];
      v15 = self->_headerHairline;
      _SFRoundRectToPixels();
      [(UIView *)v15 setFrame:?];
      [(UIView *)self->_headerView addSubview:self->_headerHairline];
      headerView = self->_headerView;
    }

    v16 = headerView;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (ContinuousReadingBannerView)bannerView
{
  bannerView = self->_bannerView;
  if (!bannerView)
  {
    v4 = [ContinuousReadingBannerView alloc];
    continuousReadingItem = [(ContinuousReadingPreviewView *)self continuousReadingItem];
    v6 = [(ContinuousReadingBannerView *)v4 initWithContinuousReadingItem:continuousReadingItem];
    v7 = self->_bannerView;
    self->_bannerView = v6;

    v8 = self->_bannerView;
    headerView = [(ContinuousReadingPreviewView *)self headerView];
    [headerView frame];
    MaxY = CGRectGetMaxY(v14);
    [(ContinuousReadingPreviewView *)self bounds];
    [(ContinuousReadingBannerView *)v8 setFrame:0.0, MaxY];

    bannerView = self->_bannerView;
  }

  v11 = bannerView;

  return v11;
}

- (UILabel)headerLabel
{
  headerLabel = self->_headerLabel;
  if (!headerLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_headerLabel;
    self->_headerLabel = v4;

    v6 = self->_headerLabel;
    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v6 setFont:v7];

    v8 = self->_headerLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v8 setTextColor:secondaryLabelColor];

    v10 = self->_headerLabel;
    v11 = _WBSLocalizedString();
    [(UILabel *)v10 setText:v11];

    headerLabel = self->_headerLabel;
  }

  v12 = headerLabel;

  return v12;
}

- (BOOL)canShowContentView
{
  contentView = [(ContinuousReadingPreviewView *)self contentView];
  v4 = contentView || self->_snapshotView || [(ContinuousReadingPreviewView *)self isPrefetchingDisabled];

  return v4;
}

- (void)setDocumentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_documentSnapshot != snapshotCopy)
  {
    v14 = snapshotCopy;
    objc_storeStrong(&self->_documentSnapshot, snapshot);
    snapshotView = self->_snapshotView;
    if (self->_documentSnapshot)
    {
      if (!snapshotView)
      {
        v7 = *MEMORY[0x277CBF348];
        v8 = *(MEMORY[0x277CBF348] + 8);
        [(UIImage *)v14 size];
        v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
        v12 = self->_snapshotView;
        self->_snapshotView = v11;

        [(ContinuousReadingPreviewView *)self insertSubview:self->_snapshotView above:self->_contentView];
        [(ContinuousReadingPreviewView *)self layoutIfNeeded];
        snapshotView = self->_snapshotView;
      }

      [(UIImageView *)snapshotView setImage:v14];
    }

    else
    {
      [(UIImageView *)snapshotView removeFromSuperview];
      v13 = self->_snapshotView;
      self->_snapshotView = 0;
    }

    snapshotCopy = v14;
  }
}

- (void)replaceContentViewWithItsSnapshot
{
  contentView = self->_contentView;
  if (contentView)
  {
    [(WKWebView *)contentView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v14.width = v8;
    v14.height = v10;
    UIGraphicsBeginImageContext(v14);
    [(WKWebView *)self->_contentView drawViewHierarchyInRect:0 afterScreenUpdates:v5, v7, v9, v11];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [(ContinuousReadingPreviewView *)self setDocumentSnapshot:v12];
  }
}

- (void)setContentViewSize:(CGSize)size
{
  if (self->_contentViewSize.width != size.width || self->_contentViewSize.height != size.height)
  {
    self->_contentViewSize = size;
    [(ContinuousReadingPreviewView *)self setNeedsLayout];
  }
}

- (void)setBannerTheme:(id)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  themeCopy = theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __56__ContinuousReadingPreviewView_setBannerTheme_animated___block_invoke;
    v12 = &unk_2781D4C88;
    selfCopy = self;
    v14 = themeCopy;
    v7 = _Block_copy(&v9);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:50331648 animations:v7 completion:{0, v9, v10, v11, v12, selfCopy}];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __56__ContinuousReadingPreviewView_setBannerTheme_animated___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) headerView];
  v2 = [*(a1 + 40) traitCollection];
  [v9 _setLocalOverrideTraitCollection:v2];

  v3 = [*(a1 + 40) themeColor];
  if (v3)
  {
    [v9 setBackgroundColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v9 setBackgroundColor:v4];
  }

  v5 = [*(a1 + 40) separatorColor];
  v6 = v5;
  if (!v5)
  {
    v6 = +[ContinuousReadingBannerView hairlineColor];
  }

  [*(*(a1 + 32) + 416) setBackgroundColor:v6];
  if (!v5)
  {
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) bannerView];
  [v8 setTheme:v7];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = ContinuousReadingPreviewView;
  [(ContinuousReadingPreviewView *)&v5 layoutSubviews];
  [(ContinuousReadingPreviewView *)self safeAreaInsets];
  [(ContinuousReadingBannerView *)self->_bannerView setTopHairlineInsets:0.0, fmax(v3, 15.0), 0.0, fmax(v4, 15.0)];
  if (self->_previewingNextDocument)
  {
    [(ContinuousReadingPreviewView *)self _layOutHeader];
  }

  [(ContinuousReadingPreviewView *)self _layOutContentView];
}

- (void)_layOutHeader
{
  headerView = [(ContinuousReadingPreviewView *)self headerView];
  [headerView bounds];

  headerLabelHeight();
  [(ContinuousReadingPreviewView *)self safeAreaInsets];
  bannerView = [(ContinuousReadingPreviewView *)self bannerView];
  [bannerView titleRect];
  CGRectGetMinY(v15);

  _SFRoundRectToPixels();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  headerLabel = [(ContinuousReadingPreviewView *)self headerLabel];
  [headerLabel setFrame:{v6, v8, v10, v12}];
}

- (void)_layOutContentView
{
  [(ContinuousReadingPreviewView *)self bounds];
  v4 = v3;
  _SFRoundFloatToPixels();
  v6 = v5;
  if (self->_previewingNextDocument)
  {
    [(ContinuousReadingBannerView *)self->_bannerView frame];
    MaxY = CGRectGetMaxY(v13);
    height = self->_contentViewSize.height;
  }

  else
  {
    height = self->_contentViewSize.height;
    MaxY = -height;
  }

  [(WKWebView *)self->_contentView setFrame:v6, MaxY, self->_contentViewSize.width, height];
  [(UIView *)self->_contentBackgroundView setFrame:0.0, MaxY, v4, self->_contentViewSize.height];
  snapshotView = self->_snapshotView;
  [(UIImageView *)snapshotView frame];
  Width = CGRectGetWidth(v14);
  [(UIImageView *)self->_snapshotView frame];
  v11 = CGRectGetHeight(v15);

  [(UIImageView *)snapshotView setFrame:v6, MaxY, Width, v11];
}

- (CGSize)contentViewSize
{
  width = self->_contentViewSize.width;
  height = self->_contentViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end