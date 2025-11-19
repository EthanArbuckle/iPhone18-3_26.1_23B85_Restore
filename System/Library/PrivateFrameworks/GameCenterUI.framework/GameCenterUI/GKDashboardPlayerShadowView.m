@interface GKDashboardPlayerShadowView
- (BOOL)dimmed;
- (BOOL)isUsingPlaceholder;
- (GKDashboardPlayerShadowView)initWithFrame:(CGRect)a3;
- (GKPlayer)player;
- (UIView)parentView;
- (void)awakeFromNib;
- (void)invalidatePhoto;
- (void)layoutSubviews;
- (void)setDimmed:(BOOL)a3;
- (void)setPlayer:(id)a3;
- (void)setupPhoto;
@end

@implementation GKDashboardPlayerShadowView

- (GKDashboardPlayerShadowView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GKDashboardPlayerShadowView;
  v3 = [(GKDashboardPlayerShadowView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKDashboardPlayerShadowView *)v3 setupPhoto];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKDashboardPlayerShadowView;
  [(GKDashboardPlayerShadowView *)&v3 awakeFromNib];
  [(GKDashboardPlayerShadowView *)self setupPhoto];
}

- (void)setupPhoto
{
  v3 = [GKDashboardPlayerPhotoView alloc];
  [(GKDashboardPlayerShadowView *)self bounds];
  v4 = [(GKDashboardPlayerPhotoView *)v3 initWithFrame:?];
  [(GKDashboardPlayerShadowView *)self setPhotoView:v4];

  v5 = [(GKDashboardPlayerShadowView *)self photoView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(GKDashboardPlayerShadowView *)self photoView];
  [(GKDashboardPlayerShadowView *)self addSubview:v6];

  v7 = MEMORY[0x277CCAAD0];
  v9 = [(GKDashboardPlayerShadowView *)self photoView];
  v8 = [v7 _gkConstraintsForView:v9 withinView:self insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [(GKDashboardPlayerShadowView *)self addConstraints:v8];
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardPlayerShadowView *)self photoView];
  [v5 setPlayer:v4];

  v6 = [(GKDashboardPlayerShadowView *)self parentView];
  [v6 setNeedsDisplay];
}

- (GKPlayer)player
{
  v2 = [(GKDashboardPlayerShadowView *)self photoView];
  v3 = [v2 player];

  return v3;
}

- (void)invalidatePhoto
{
  v2 = [(GKDashboardPlayerShadowView *)self photoView];
  [v2 invalidatePhoto];
}

- (UIView)parentView
{
  parentCell = self->_parentCell;
  if (parentCell)
  {
    v3 = parentCell;
  }

  else
  {
    v3 = [(GKDashboardPlayerShadowView *)self superview];
  }

  return v3;
}

- (BOOL)isUsingPlaceholder
{
  v2 = [(GKDashboardPlayerShadowView *)self photoView];
  v3 = [v2 isUsingPlaceholder];

  return v3;
}

- (BOOL)dimmed
{
  v2 = [(GKDashboardPlayerShadowView *)self photoView];
  v3 = [v2 dimmed];

  return v3;
}

- (void)setDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKDashboardPlayerShadowView *)self photoView];
  [v4 setDimmed:v3];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = GKDashboardPlayerShadowView;
  [(GKDashboardPlayerShadowView *)&v2 layoutSubviews];
}

@end