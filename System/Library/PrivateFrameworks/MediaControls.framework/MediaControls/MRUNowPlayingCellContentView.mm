@interface MRUNowPlayingCellContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUNowPlayingCellContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentScale:(double)scale;
- (void)setStylingProvider:(id)provider;
@end

@implementation MRUNowPlayingCellContentView

- (MRUNowPlayingCellContentView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MRUNowPlayingCellContentView;
  v3 = [(MRUNowPlayingCellContentView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUArtworkView);
    artworkView = v3->_artworkView;
    v3->_artworkView = v4;

    [(MRUArtworkView *)v3->_artworkView setUserInteractionEnabled:0];
    [(MRUNowPlayingCellContentView *)v3 addSubview:v3->_artworkView];
    v6 = objc_alloc_init(MRUNowPlayingHeaderView);
    headerView = v3->_headerView;
    v3->_headerView = v6;

    labelView = [(MRUNowPlayingHeaderView *)v3->_headerView labelView];
    [labelView setEnabled:0];

    labelView2 = [(MRUNowPlayingHeaderView *)v3->_headerView labelView];
    [labelView2 setShowRoute:1];

    labelView3 = [(MRUNowPlayingHeaderView *)v3->_headerView labelView];
    [labelView3 setShowSubtitle:0];

    [(MRUNowPlayingCellContentView *)v3 addSubview:v3->_headerView];
    v3->_contentScale = 1.0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MRUNowPlayingCellContentView;
  [(MRUNowPlayingCellContentView *)&v13 layoutSubviews];
  [(MRUNowPlayingCellContentView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = CGRectGetHeight(v15);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetHeight(v17);
  if (v9 >= v10)
  {
    v9 = v10;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  [(MRUNowPlayingCellContentView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUArtworkView *)self->_artworkView setFrame:?];
  v20.origin.x = MinX;
  v20.origin.y = MinY;
  v20.size.width = v7;
  v20.size.height = v9;
  CGRectGetWidth(v20);
  UIRectInset();
  [(MRUNowPlayingCellContentView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:fits.width, fits.height];
  if (v4 <= 60.0)
  {
    v4 = 60.0;
  }

  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUNowPlayingHeaderView *)self->_headerView setStylingProvider:v6];
    providerCopy = v6;
  }
}

- (void)setContentScale:(double)scale
{
  if (vabdd_f64(self->_contentScale, scale) > 2.22044605e-16)
  {
    self->_contentScale = scale;
    headerView = [(MRUNowPlayingCellContentView *)self headerView];
    [headerView setContentScale:scale];

    artworkView = [(MRUNowPlayingCellContentView *)self artworkView];
    [artworkView setContentScale:scale];
  }
}

@end