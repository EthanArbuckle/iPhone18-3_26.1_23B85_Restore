@interface GKFocusHighlightingCollectionViewCell
- (GKFocusHighlightingCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_gkFocusHighlightInsets;
- (void)awakeFromNib;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
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

- (GKFocusHighlightingCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GKFocusHighlightingCollectionViewCell;
  v3 = [(GKFocusHighlightingCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [v5 setBackgroundColor:v4];

  v6 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [v6 setAlpha:0.0];

  v7 = [(GKFocusHighlightingCollectionViewCell *)self contentView];
  v8 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [v7 insertSubview:v8 atIndex:0];

  v9 = *MEMORY[0x277D768C8];
  v10 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v12 = *(MEMORY[0x277D768C8] + 24);

  [(GKFocusHighlightingCollectionViewCell *)self set_gkFocusHighlightInsets:v9, v10, v11, v12];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = GKFocusHighlightingCollectionViewCell;
  v6 = a4;
  [(GKFocusHighlightingCollectionViewCell *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:v6];
  [(GKFocusHighlightingCollectionViewCell *)self updateFocusHighlightView];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__GKFocusHighlightingCollectionViewCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  v7[3] = &unk_2796699A8;
  v7[4] = self;
  [v6 addCoordinatedAnimations:v7 completion:0];
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
  v3 = [(GKFocusHighlightingCollectionViewCell *)self contentView];
  [v3 bounds];
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

  v20 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
  [v20 setFrame:{v5, v7, v9, v11}];

  [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightCornerRadius];
  if (v21 > 0.0)
  {
    [(GKFocusHighlightingCollectionViewCell *)self _gkFocusHighlightCornerRadius];
    v23 = v22;
    v24 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
    v25 = [v24 layer];
    [v25 setCornerRadius:v23];

    v26 = *MEMORY[0x277CDA138];
    v28 = [(GKFocusHighlightingCollectionViewCell *)self focusHighlightView];
    v27 = [v28 layer];
    [v27 setCornerCurve:v26];
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