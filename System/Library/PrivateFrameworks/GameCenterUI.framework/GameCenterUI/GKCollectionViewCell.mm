@interface GKCollectionViewCell
- (BOOL)touchWithinEditActions:(id)a3;
- (CALayer)leftGradientMask;
- (CGRect)alignmentRectForText;
- (GKCollectionViewCell)initWithFrame:(CGRect)a3;
- (double)contentViewOriginXWhileEditing;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_gkEnumerateSubviewsUsingBlock:(id)a3;
- (void)alignmentRectForText;
- (void)applyGradientMaskIfNeeded;
- (void)applyLayoutAttributes:(id)a3;
- (void)beginEditing;
- (void)closeForDelete;
- (void)finishEditing;
- (void)layoutSubviews;
- (void)prepareEditActionsConstraintsIfNeeded;
- (void)prepareForReuse;
- (void)prepareHairlineConstraintsIfNeeded;
- (void)setDoesAbutLeftEdge:(BOOL)a3;
- (void)setEditingContentOriginX:(double)a3;
- (void)setNeedsDisplay;
- (void)setRepresentedItem:(id)a3;
- (void)setShouldDisplaySwipeToEditAccessories:(BOOL)a3;
- (void)shutActionPaneAnimated:(BOOL)a3 completion:(id)a4;
- (void)updateConstraints;
@end

@implementation GKCollectionViewCell

- (GKCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30.receiver = self;
  v30.super_class = GKCollectionViewCell;
  v7 = [(GKFocusHighlightingCollectionViewCell *)&v30 initWithFrame:?];
  if (v7)
  {
    v8 = [[GKCellSelectedBackgroundView alloc] initWithFrame:x, y, width, height];
    v9 = [MEMORY[0x277D0C868] sharedPalette];
    v10 = [v9 selectedCellBackgroundColor];
    [(GKCellSelectedBackgroundView *)v8 setBackgroundColor:v10];

    [(GKCollectionViewCell *)v7 setSelectedBackgroundView:v8];
    v11 = [(GKCollectionViewCell *)v7 contentView];
    v12 = [GKDetachedContentView alloc];
    [v11 bounds];
    v13 = [(GKDetachedContentView *)v12 initWithFrame:?];
    [(GKDetachedContentView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKDetachedContentView *)v13 setBackgroundColor:0];
    [(GKDetachedContentView *)v13 setOpaque:0];
    v14 = [GKEditActionsView alloc];
    v15 = [(GKEditActionsView *)v14 initWithFrame:v7 cell:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    editActionsView = v7->_editActionsView;
    v7->_editActionsView = v15;

    [(GKEditActionsView *)v7->_editActionsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = objc_alloc_init(GKStaticRenderContentView);
    contentRenderView = v7->_contentRenderView;
    v7->_contentRenderView = v17;

    [(GKStaticRenderContentView *)v7->_contentRenderView setOpaque:0];
    [(GKStaticRenderContentView *)v7->_contentRenderView setBackgroundColor:0];
    [(GKStaticRenderContentView *)v7->_contentRenderView setContentView:v13];
    [(GKStaticRenderContentView *)v7->_contentRenderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKDetachedContentView *)v13 setRenderView:v7->_contentRenderView];
    staticContentView = v7->_staticContentView;
    v7->_staticContentView = &v13->super;
    v20 = v13;

    v21 = [(GKCollectionViewCell *)v7 contentView];
    [v21 addSubview:v7->_contentRenderView];

    v22 = [(GKCollectionViewCell *)v7 contentView];
    v23 = MEMORY[0x277CCAAD0];
    v24 = v7->_contentRenderView;
    v25 = [(GKCollectionViewCell *)v7 contentView];
    v26 = [v23 _gkConstraintsForView:v24 withinView:v25 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v22 addConstraints:v26];

    v27 = [GKHairlineView hairlineViewForAlignment:0];
    [(GKCollectionViewCell *)v7 setTopHairline:v27];

    [(GKHairlineView *)v7->_topHairline setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKHairlineView *)v7->_topHairline setAlpha:0.0];
    v28 = [GKHairlineView hairlineViewForAlignment:0];
    [(GKCollectionViewCell *)v7 setBottomHairline:v28];

    [(GKHairlineView *)v7->_bottomHairline setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKHairlineView *)v7->_bottomHairline setAlpha:0.0];

    [v11 setClipsToBounds:1];
  }

  return v7;
}

- (void)_gkEnumerateSubviewsUsingBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKCollectionViewCell;
  v4 = a3;
  [(GKCollectionViewCell *)&v5 _gkEnumerateSubviewsUsingBlock:v4];
  [(UIView *)self->_staticContentView _gkEnumerateSubviewsUsingBlock:v4, v5.receiver, v5.super_class];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v5 = [MEMORY[0x277D0C868] sharedPalette];
  v3 = [v5 selectedCellBackgroundColor];
  v4 = [(GKCollectionViewCell *)self selectedBackgroundView];
  [v4 setBackgroundColor:v3];
}

- (CGRect)alignmentRectForText
{
  v3 = MEMORY[0x277D0C2A0];
  v4 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewCell *)v4 alignmentRectForText];
  }

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (double)contentViewOriginXWhileEditing
{
  [(GKEditActionsView *)self->_editActionsView frame];
  MinX = CGRectGetMinX(v8);
  v4 = [(GKCollectionViewCell *)self contentView];
  [v4 frame];
  v6 = MinX - v5;

  return v6;
}

- (void)prepareHairlineConstraintsIfNeeded
{
  if (!self->_hairlineConstraints)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(GKCollectionViewCell *)self contentView];
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_topHairline attribute:7 relatedBy:0 toItem:v11 attribute:7 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v4];

    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_topHairline attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_topHairline attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v6];

    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_bottomHairline attribute:7 relatedBy:0 toItem:v11 attribute:7 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v7];

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_bottomHairline attribute:4 relatedBy:0 toItem:v11 attribute:4 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v8];

    v9 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_bottomHairline attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v9];

    hairlineConstraints = self->_hairlineConstraints;
    self->_hairlineConstraints = v3;
  }
}

- (void)prepareEditActionsConstraintsIfNeeded
{
  if (!self->_editActionsConstraints)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [(GKCollectionViewCell *)self contentView];
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_editActionsView attribute:10 relatedBy:0 toItem:v9 attribute:10 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v4];

    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_editActionsView attribute:2 relatedBy:0 toItem:v9 attribute:2 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v5];

    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_editActionsView attribute:3 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v6];

    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_editActionsView attribute:8 relatedBy:0 toItem:v9 attribute:8 multiplier:1.0 constant:0.0];
    [(NSArray *)v3 addObject:v7];

    editActionsConstraints = self->_editActionsConstraints;
    self->_editActionsConstraints = v3;
  }
}

- (void)beginEditing
{
  v3 = [(GKCollectionViewCell *)self contentView];
  [v3 addSubview:self->_editActionsView];

  [(GKCollectionViewCell *)self prepareEditActionsConstraintsIfNeeded];
  v4 = [(GKCollectionViewCell *)self contentView];
  [v4 addConstraints:self->_editActionsConstraints];

  [(GKEditActionsView *)self->_editActionsView prepareActionButtons];

  [(GKCollectionViewCell *)self setShouldDisplaySwipeToEditAccessories:1];
}

- (void)finishEditing
{
  v3 = [(GKCollectionViewCell *)self contentView];
  [v3 removeConstraints:self->_editActionsConstraints];

  [(GKEditActionsView *)self->_editActionsView removeFromSuperview];

  [(GKCollectionViewCell *)self setShouldDisplaySwipeToEditAccessories:0];
}

- (BOOL)touchWithinEditActions:(id)a3
{
  [a3 locationInView:self->_editActionsView];
  v5 = v4;
  v7 = v6;
  [(GKEditActionsView *)self->_editActionsView bounds];
  v12 = v5;
  v13 = v7;

  return CGRectContainsPoint(*&v8, *&v12);
}

- (CALayer)leftGradientMask
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [(GKCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  leftGradientMask = self->_leftGradientMask;
  if (!leftGradientMask || ([(CALayer *)leftGradientMask frame], v24.origin.x = v5, v24.origin.y = v7, v24.size.width = v9, v24.size.height = v11, !CGRectEqualToRect(v23, v24)))
  {
    v13 = [MEMORY[0x277CD9EB0] layer];
    [v13 setFrame:{v5, v7, v9, v11}];
    v14 = [MEMORY[0x277D75348] clearColor];
    v15 = [v14 CGColor];
    v16 = [MEMORY[0x277D75348] clearColor];
    v21[1] = [v16 CGColor];
    v17 = [MEMORY[0x277D75348] blackColor];
    v21[2] = [v17 CGColor];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    [v13 setColors:v18];

    [v13 setLocations:&unk_2861896E8];
    [v13 setStartPoint:{0.0, 0.5}];
    [v13 setEndPoint:{0.025, 0.5}];
    [(GKCollectionViewCell *)self setLeftGradientMask:v13];
  }

  v19 = self->_leftGradientMask;

  return v19;
}

- (void)applyGradientMaskIfNeeded
{
  v3 = self->_shouldDisplaySwipeToEditAccessories && !self->_doesAbutLeftEdge;
  v4 = [(GKCollectionViewCell *)self contentView];
  v6 = [v4 layer];

  if (v3)
  {
    v5 = [(GKCollectionViewCell *)self leftGradientMask];
    [v6 setMask:v5];
  }

  else
  {
    [v6 setMask:0];
    [(GKCollectionViewCell *)self setLeftGradientMask:0];
  }
}

- (void)setShouldDisplaySwipeToEditAccessories:(BOOL)a3
{
  if (self->_shouldDisplaySwipeToEditAccessories != a3)
  {
    v8[7] = v3;
    v8[8] = v4;
    self->_shouldDisplaySwipeToEditAccessories = a3;
    if (a3)
    {
      v6 = [(GKCollectionViewCell *)self contentView];
      [v6 addSubview:self->_topHairline];
      [v6 addSubview:self->_bottomHairline];
      [(GKCollectionViewCell *)self prepareHairlineConstraintsIfNeeded];
      [(GKCollectionViewCell *)self addConstraints:self->_hairlineConstraints];
    }

    [(GKCollectionViewCell *)self applyGradientMaskIfNeeded];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__GKCollectionViewCell_setShouldDisplaySwipeToEditAccessories___block_invoke;
    v8[3] = &unk_2796699A8;
    v8[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__GKCollectionViewCell_setShouldDisplaySwipeToEditAccessories___block_invoke_2;
    v7[3] = &unk_279669C90;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:0.5];
  }
}

void __63__GKCollectionViewCell_setShouldDisplaySwipeToEditAccessories___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  LOBYTE(a2) = v3[696];
  v4 = *&a2;
  v5 = [v3 topHairline];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);
  LOBYTE(v7) = v6[696];
  v8 = v7;
  v9 = [v6 bottomHairline];
  [v9 setAlpha:v8];
}

uint64_t __63__GKCollectionViewCell_setShouldDisplaySwipeToEditAccessories___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 696) & 1) == 0)
  {
    [result removeConstraints:*(result + 792)];
    [*(*(a1 + 32) + 768) removeFromSuperview];
    v3 = *(*(a1 + 32) + 776);

    return [v3 removeFromSuperview];
  }

  return result;
}

- (void)setDoesAbutLeftEdge:(BOOL)a3
{
  if (self->_doesAbutLeftEdge != a3)
  {
    self->_doesAbutLeftEdge = a3;
    [(GKCollectionViewCell *)self applyGradientMaskIfNeeded];
  }
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = GKCollectionViewCell;
  [(GKCollectionViewCell *)&v12 prepareForReuse];
  [(GKCollectionViewCell *)self resetEditingContentOrigin];
  representedItem = self->_representedItem;
  self->_representedItem = 0;

  v4 = [(GKCollectionViewCell *)self staticContentView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(GKCollectionViewCell *)self staticContentView];
  [v11 setFrame:{0.0, v6, v8, v10}];
}

- (void)layoutSubviews
{
  contentOriginX = self->_contentOriginX;
  [(GKCollectionViewCell *)self bounds];
  v5 = v4;
  [(GKCollectionViewCell *)self bounds];
  v7 = v6;
  [(GKCollectionViewCell *)self bounds];
  [(GKStaticRenderContentView *)self->_contentRenderView setFrame:contentOriginX, v5, v7];
  v8.receiver = self;
  v8.super_class = GKCollectionViewCell;
  [(GKCollectionViewCell *)&v8 layoutSubviews];
  [(GKCollectionViewCell *)self applyGradientMaskIfNeeded];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = GKCollectionViewCell;
  [(GKCollectionViewCell *)&v3 setNeedsDisplay];
  [(GKStaticRenderContentView *)self->_contentRenderView setNeedsDisplay];
}

- (void)setRepresentedItem:(id)a3
{
  v5 = a3;
  if (self->_representedItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_representedItem, a3);
    [(GKCollectionViewCell *)self didUpdateModel];
    [(GKCollectionViewCell *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)updateConstraints
{
  v13.receiver = self;
  v13.super_class = GKCollectionViewCell;
  [(GKCollectionViewCell *)&v13 updateConstraints];
  [(GKCollectionViewCell *)self leadingMargin];
  v4 = v3;
  [(GKCollectionViewCell *)self trailingMargin];
  v6 = v5;
  v7 = MEMORY[0x277D75298];
  v8 = [(GKCollectionViewCell *)self staticContentView];
  v9 = [v8 constraints];
  [v7 _gkAdjustConstraintMargins:v9 leading:v4 trailing:v6];

  v10 = MEMORY[0x277D75298];
  v11 = [(GKCollectionViewCell *)self interactiveContentView];
  v12 = [v11 constraints];
  [v10 _gkAdjustConstraintMargins:v12 leading:v4 trailing:v6];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKCollectionViewCell;
  [(GKCollectionViewCell *)&v8 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    -[GKCollectionViewCell setDoesAbutLeftEdge:](self, "setDoesAbutLeftEdge:", [v5 doesAbutLeftOfCollectionView]);
    [v5 leadingMargin];
    [(GKCollectionViewCell *)self setLeadingMargin:?];
    [v5 trailingMargin];
    v7 = v6;

    [(GKCollectionViewCell *)self setTrailingMargin:v7];
    [(GKCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)closeForDelete
{
  [(UIView *)self->_staticContentView frame];
  [(UIView *)self->_staticContentView setFrame:v3 - v4];
  v15 = [(GKCollectionViewCell *)self interactiveContentView];
  [v15 frame];
  [v15 setFrame:v5 - v6];
  v7 = [(GKEditActionsView *)self->_editActionsView maskLayer];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(GKEditActionsView *)self->_editActionsView maskLayer];
  [v14 setFrame:{v9, v11, v13, 0.0}];

  [(GKHairlineView *)self->_bottomHairline frame];
  [(GKHairlineView *)self->_bottomHairline setFrame:?];
  [(GKCollectionViewCell *)self setAlpha:0.0];
}

- (void)setEditingContentOriginX:(double)a3
{
  if (self->_contentOriginX != a3)
  {
    self->_contentOriginX = a3;
    CGAffineTransformMakeTranslation(&v7, a3, 0.0);
    contentRenderView = self->_contentRenderView;
    v6 = v7;
    [(GKStaticRenderContentView *)contentRenderView setTransform:&v6];
    [(GKCollectionViewCell *)self setEditActionsVisibleWidth:(-a3 & ~(-a3 >> 31))];
  }
}

- (void)shutActionPaneAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__GKCollectionViewCell_shutActionPaneAnimated_completion___block_invoke;
  aBlock[3] = &unk_2796699A8;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__GKCollectionViewCell_shutActionPaneAnimated_completion___block_invoke_2;
    v10[3] = &unk_279669CB8;
    v11 = v6;
    [v9 animateWithDuration:v8 animations:v10 completion:0.2];
  }

  else
  {
    (*(v7 + 2))(v7);
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

uint64_t __58__GKCollectionViewCell_shutActionPaneAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)alignmentRectForText
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = objc_opt_class();
  v5 = v9;
  _os_log_debug_impl(&dword_24DE53000, v3, OS_LOG_TYPE_DEBUG, "base %@ invoked for %@", &v6, 0x16u);
}

@end