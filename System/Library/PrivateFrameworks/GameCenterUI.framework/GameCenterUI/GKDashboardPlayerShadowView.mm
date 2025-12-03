@interface GKDashboardPlayerShadowView
- (BOOL)dimmed;
- (BOOL)isUsingPlaceholder;
- (GKDashboardPlayerShadowView)initWithFrame:(CGRect)frame;
- (GKPlayer)player;
- (UIView)parentView;
- (void)awakeFromNib;
- (void)invalidatePhoto;
- (void)layoutSubviews;
- (void)setDimmed:(BOOL)dimmed;
- (void)setPlayer:(id)player;
- (void)setupPhoto;
@end

@implementation GKDashboardPlayerShadowView

- (GKDashboardPlayerShadowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKDashboardPlayerShadowView;
  v3 = [(GKDashboardPlayerShadowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  [photoView setTranslatesAutoresizingMaskIntoConstraints:0];

  photoView2 = [(GKDashboardPlayerShadowView *)self photoView];
  [(GKDashboardPlayerShadowView *)self addSubview:photoView2];

  v7 = MEMORY[0x277CCAAD0];
  photoView3 = [(GKDashboardPlayerShadowView *)self photoView];
  v8 = [v7 _gkConstraintsForView:photoView3 withinView:self insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [(GKDashboardPlayerShadowView *)self addConstraints:v8];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  [photoView setPlayer:playerCopy];

  parentView = [(GKDashboardPlayerShadowView *)self parentView];
  [parentView setNeedsDisplay];
}

- (GKPlayer)player
{
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  player = [photoView player];

  return player;
}

- (void)invalidatePhoto
{
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  [photoView invalidatePhoto];
}

- (UIView)parentView
{
  parentCell = self->_parentCell;
  if (parentCell)
  {
    superview = parentCell;
  }

  else
  {
    superview = [(GKDashboardPlayerShadowView *)self superview];
  }

  return superview;
}

- (BOOL)isUsingPlaceholder
{
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  isUsingPlaceholder = [photoView isUsingPlaceholder];

  return isUsingPlaceholder;
}

- (BOOL)dimmed
{
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  dimmed = [photoView dimmed];

  return dimmed;
}

- (void)setDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  photoView = [(GKDashboardPlayerShadowView *)self photoView];
  [photoView setDimmed:dimmedCopy];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = GKDashboardPlayerShadowView;
  [(GKDashboardPlayerShadowView *)&v2 layoutSubviews];
}

@end