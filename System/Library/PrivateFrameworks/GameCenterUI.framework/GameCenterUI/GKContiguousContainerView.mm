@interface GKContiguousContainerView
+ (id)containerForViewsFontsLeadings:(id)leadings options:(int64_t)options;
+ (id)containerViewForViews:(id)views overlap:(double)overlap vertical:(BOOL)vertical applyOrthogonalConstraints:(BOOL)constraints;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)insets;
- (id)viewForBaselineLayout;
- (void)_addContiguousSubviews:(id)subviews;
- (void)replaceSubviews:(id)subviews;
- (void)setInsets:(UIEdgeInsets)insets;
- (void)setOverlap:(double)overlap;
@end

@implementation GKContiguousContainerView

+ (id)containerViewForViews:(id)views overlap:(double)overlap vertical:(BOOL)vertical applyOrthogonalConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  verticalCopy = vertical;
  viewsCopy = views;
  v11 = objc_alloc_init(self);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setApplyOrthogonalConstraints:constraintsCopy];
  [v11 setVertical:verticalCopy];
  [v11 setOverlap:overlap];
  [v11 _addContiguousSubviews:viewsCopy];

  return v11;
}

+ (id)containerForViewsFontsLeadings:(id)leadings options:(int64_t)options
{
  leadingsCopy = leadings;
  v6 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__GKContiguousContainerView_containerForViewsFontsLeadings_options___block_invoke;
  v11[3] = &unk_27966ADA0;
  v7 = v6;
  v12 = v7;
  [leadingsCopy enumerateObjectsUsingBlock:v11];
  v8 = [MEMORY[0x277CCAAD0] _gkBaselineConstraintsForViewsFontsLeadings:leadingsCopy superview:v7 options:options];

  [v7 addConstraints:v8];
  v9 = v7;

  return v7;
}

void __68__GKContiguousContainerView_containerForViewsFontsLeadings_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addSubview:v3];
  }
}

- (void)setOverlap:(double)overlap
{
  if (self->_overlap != overlap)
  {
    vertical = [(GKContiguousContainerView *)self vertical];
    replaceableConstraints = self->_replaceableConstraints;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__GKContiguousContainerView_setOverlap___block_invoke;
    v7[3] = &__block_descriptor_41_e35_v32__0__NSLayoutConstraint_8Q16_B24l;
    v8 = vertical;
    *&v7[4] = overlap;
    [(NSArray *)replaceableConstraints enumerateObjectsUsingBlock:v7];
    self->_overlap = overlap;
  }
}

void __40__GKContiguousContainerView_setOverlap___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3 >= 2)
  {
    v6 = *(a1 + 40);
    v9 = v5;
    v7 = [v5 firstAttribute];
    v8 = v6 == 1 ? v7 == 3 : v7 == 1;
    v5 = v9;
    if (v8)
    {
      [v9 setConstant:-*(a1 + 32)];
      v5 = v9;
    }
  }
}

- (void)setInsets:(UIEdgeInsets)insets
{
  p_insets = &self->_insets;
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_insets.top, v4), vceqq_f64(*&self->_insets.bottom, v5)))) & 1) == 0)
  {
    bottom = insets.bottom;
    right = insets.right;
    top = insets.top;
    left = insets.left;
    vertical = [(GKContiguousContainerView *)self vertical];
    replaceableConstraints = self->_replaceableConstraints;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__GKContiguousContainerView_setInsets___block_invoke;
    v13[3] = &__block_descriptor_65_e35_v32__0__NSLayoutConstraint_8Q16_B24l;
    v14 = vertical;
    *&v13[4] = top;
    *&v13[5] = left;
    *&v13[6] = bottom;
    *&v13[7] = right;
    [(NSArray *)replaceableConstraints enumerateObjectsUsingBlock:v13];
    p_insets->top = top;
    p_insets->left = left;
    p_insets->bottom = bottom;
    p_insets->right = right;
  }
}

void __39__GKContiguousContainerView_setInsets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  v12 = v5;
  if (a3 == 1)
  {
    v9 = 56;
    if (*(a1 + 64))
    {
      v9 = 48;
    }

    v8 = -*(a1 + v9);
    goto LABEL_20;
  }

  if (!a3)
  {
    v7 = 40;
    if (*(a1 + 64))
    {
      v7 = 32;
    }

    v8 = *(a1 + v7);
    goto LABEL_20;
  }

  v10 = [v5 firstAttribute];
  if (!v6)
  {
    if (v10 == 3)
    {
      v8 = *(a1 + 32);
      goto LABEL_19;
    }

    if ([v12 firstAttribute] != 4)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 48);
LABEL_18:
    v8 = -v11;
    goto LABEL_19;
  }

  if (v10 != 1)
  {
    if ([v12 firstAttribute] != 2)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 56);
    goto LABEL_18;
  }

  v8 = *(a1 + 40);
LABEL_19:
  v5 = v12;
LABEL_20:
  [v5 setConstant:v8];
LABEL_21:
}

- (void)_addContiguousSubviews:(id)subviews
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__GKContiguousContainerView__addContiguousSubviews___block_invoke;
  v6[3] = &unk_27966CF00;
  v6[4] = self;
  subviewsCopy = subviews;
  [subviewsCopy enumerateObjectsUsingBlock:v6];
  v5 = [MEMORY[0x277CCAAD0] _gkConstraintsForViews:subviewsCopy contiguouslyLaidOutVertically:self->_vertical overlap:self withinView:self->_applyOrthogonalConstraints insets:self->_overlap applyOrthogonalConstraints:{self->_insets.top, self->_insets.left, self->_insets.bottom, self->_insets.right}];

  [(GKContiguousContainerView *)self setReplaceableConstraints:v5];
  if ([v5 count])
  {
    [(GKContiguousContainerView *)self addConstraints:v5];
  }
}

- (void)replaceSubviews:(id)subviews
{
  subviewsCopy = subviews;
  replaceableConstraints = [(GKContiguousContainerView *)self replaceableConstraints];
  if (replaceableConstraints)
  {
    [(GKContiguousContainerView *)self removeConstraints:replaceableConstraints];
  }

  subviews = [(GKContiguousContainerView *)self subviews];
  v6 = [subviews copy];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_43];
  [(GKContiguousContainerView *)self _addContiguousSubviews:subviewsCopy];
}

- (CGSize)intrinsicContentSize
{
  [(GKContiguousContainerView *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  subviews = [(GKContiguousContainerView *)self subviews];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__GKContiguousContainerView_sizeThatFits___block_invoke;
  v12[3] = &unk_27966CF28;
  *&v12[7] = width;
  *&v12[8] = height;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = &v17;
  [subviews enumerateObjectsUsingBlock:v12];
  *&v7.f64[0] = v18[3];
  *&v7.f64[1] = v14[3];
  v8 = vsubq_f64(v7, vaddq_f64(*&self->_insets.top, *&self->_insets.bottom));
  v11 = vbicq_s8(v8, vcltzq_f64(v8));

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  v9 = *&v11.i64[1];
  v10 = *v11.i64;
  result.height = v10;
  result.width = v9;
  return result;
}

double __42__GKContiguousContainerView_sizeThatFits___block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  v5 = a1 + 40;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  if (*(*(a1 + 32) + 408) == 1)
  {
    if (v7 >= v3)
    {
      v3 = *(v6 + 24);
    }

    *(v6 + 24) = v3;
    v5 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v4 + *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    *(v6 + 24) = v3 + v7;
    v8 = *(*(a1 + 48) + 8);
    if (*(v8 + 24) >= v4)
    {
      v4 = *(v8 + 24);
    }

    *(v8 + 24) = v4;
    v4 = v3;
  }

  v9 = *(*(a1 + 32) + 424);
  if (v9 > v4)
  {
    v9 = v4;
  }

  v10 = *(*v5 + 8);
  result = *(v10 + 24) - v9;
  *(v10 + 24) = result;
  return result;
}

- (id)viewForBaselineLayout
{
  baselineView = self->_baselineView;
  if (baselineView)
  {
    superview = [(UIView *)baselineView superview];

    if (superview != self)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Baseline view MUST be a subview of the container view."];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/NSLayoutConstraint+GKAdditions.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [v5 stringWithFormat:@"%@ ([_baselineView superview] == self)\n[%s (%s:%d)]", v6, "-[GKContiguousContainerView viewForBaselineLayout]", objc_msgSend(lastPathComponent, "UTF8String"), 487];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
    }

    viewForBaselineLayout = self->_baselineView;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GKContiguousContainerView;
    viewForBaselineLayout = [(GKContiguousContainerView *)&v12 viewForBaselineLayout];
  }

  return viewForBaselineLayout;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end