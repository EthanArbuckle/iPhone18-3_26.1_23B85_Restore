@interface GKFocusHighlightingCollectionViewCell
- (GKFocusHighlightingCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_gkFocusHighlightInsets;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)initFocusHighlightView;
- (void)updateFocusHighlightView;
@end

@implementation GKFocusHighlightingCollectionViewCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKFocusHighlightingCollectionViewCell;
  [(GKFocusHighlightingCollectionViewCell *)&v3 awakeFromNib];
  [(GKFocusHighlightingCollectionViewCell *)self initFocusHighlightView];
}

- (GKFocusHighlightingCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKFocusHighlightingCollectionViewCell;
  v3 = [(GKFocusHighlightingCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKFocusHighlightingCollectionViewCell *)v3 initFocusHighlightView];
  }

  return v4;
}

- (void)initFocusHighlightView
{
  [(GKFocusHighlightingCollectionViewCell *)self _gkDisableDefaultFocusEffect];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(GKFocusHighlightingCollectionViewCell *)self setFocusHighlightView:v3];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  focusHighlightView = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [focusHighlightView setBackgroundColor:whiteColor];

  focusHighlightView2 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [focusHighlightView2 setAlpha:0.0];

  contentView = [(GKFocusHighlightingCollectionViewCell *)self contentView];
  focusHighlightView3 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [contentView insertSubview:focusHighlightView3 atIndex:0];

  v9 = *MEMORY[0x277D768C8];
  v10 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v12 = *(MEMORY[0x277D768C8] + 24);

  [(GKFocusHighlightingCollectionViewCell *)self set_gkFocusHighlightInsets:v9, v10, v11, v12];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = GKFocusHighlightingCollectionViewCell;
  coordinatorCopy = coordinator;
  [(GKFocusHighlightingCollectionViewCell *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  [(GKFocusHighlightingCollectionViewCell *)self updateFocusHighlightView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__GKFocusHighlightingCollectionViewCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v7[3] = &unk_2796699A8;
  v7[4] = self;
  [coordinatorCopy addCoordinatedAnimations:v7 completion:0];
}

uint64_t __90__GKFocusHighlightingCollectionViewCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isFocused];
  v3 = [*(a1 + 32) focusHighlightView];
  v4 = v3;
  v5 = 0.2;
  if (!v2)
  {
    v5 = 0.0;
  }

  [v3 setAlpha:v5];

  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

- (void)updateFocusHighlightView
{
  contentView = [(GKFocusHighlightingCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightInsets];
  v13.f64[1] = v12;
  v15.f64[1] = v14;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, *MEMORY[0x277D768C8]), vceqq_f64(v15, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightInsets];
    v5 = v5 + v16;
    v7 = v7 + v17;
    v9 = v9 - (v16 + v18);
    v11 = v11 - (v17 + v19);
  }

  focusHighlightView = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [focusHighlightView setFrame:{v5, v7, v9, v11}];

  [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightCornerRadius];
  if (v21 > 0.0)
  {
    [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightCornerRadius];
    v23 = v22;
    focusHighlightView2 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
    layer = [focusHighlightView2 layer];
    [layer setCornerRadius:v23];

    v26 = *MEMORY[0x277CDA138];
    focusHighlightView3 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
    layer2 = [focusHighlightView3 layer];
    [layer2 setCornerCurve:v26];
  }
}

- (UIEdgeInsets)_gkFocusHighlightInsets
{
  top = self->__gkFocusHighlightInsets.top;
  left = self->__gkFocusHighlightInsets.left;
  bottom = self->__gkFocusHighlightInsets.bottom;
  right = self->__gkFocusHighlightInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end