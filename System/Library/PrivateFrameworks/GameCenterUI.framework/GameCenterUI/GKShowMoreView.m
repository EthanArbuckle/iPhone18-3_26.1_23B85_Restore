@interface GKShowMoreView
- (GKShowMoreView)initWithFrame:(CGRect)a3;
- (SEL)showMoreAction;
- (id)baseTextStyle;
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setCollectionView:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setShowMoreAction:(SEL)a3;
- (void)setTextAlignmentOffset:(double)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateConstraints;
- (void)updateLabel;
@end

@implementation GKShowMoreView

- (GKShowMoreView)initWithFrame:(CGRect)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = GKShowMoreView;
  v3 = [(GKShowMoreView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(GKShowMoreView *)v3 baseTextStyle];
    v6 = [v5 buttonTitle];

    v7 = objc_alloc_init(GKLabel);
    label = v4->_label;
    v4->_label = v7;

    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [v10 _gkAttributedStringByApplyingStyle:v6];
    [(GKLabel *)v4->_label setAttributedText:v11];

    [(GKLabel *)v4->_label setBackgroundColor:0];
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 1)
    {
      v14 = *MEMORY[0x277D0C258] & (*MEMORY[0x277D0C8F0] ^ 1);
    }

    else
    {
      v14 = 1;
    }

    [(GKLabel *)v4->_label setShouldInhibitReplay:v14 & 1];
    [(GKLabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v4->_label setOpaque:0];
    v4->_textAlignmentOffset = 2.22507386e-308;
    [(GKShowMoreView *)v4 addSubview:v4->_label];
    v15 = [MEMORY[0x277CCAAD0] _gkConstraintForView:v4->_label centeredYInView:v4];
    verticalContraint = v4->_verticalContraint;
    v4->_verticalContraint = v15;

    [(GKShowMoreView *)v4 addConstraint:v4->_verticalContraint];
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    spinner = v4->_spinner;
    v4->_spinner = v17;

    [(UIActivityIndicatorView *)v4->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [MEMORY[0x277D0C868] sharedPalette];
    v20 = [v19 activityIndicatorColor];
    [(UIActivityIndicatorView *)v4->_spinner setColor:v20];

    [(GKShowMoreView *)v4 addSubview:v4->_spinner];
    v21 = MEMORY[0x277CCAAD0];
    v27[0] = @"label";
    v22 = v4->_label;
    v27[1] = @"spinner";
    v28[0] = v22;
    v28[1] = v4->_spinner;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v24 = [v21 constraintsWithVisualFormat:@"H:[spinner]-gap-[label]" options:1024 metrics:&unk_2861898A8 views:v23];
    [(GKShowMoreView *)v4 addConstraints:v24];
  }

  return v4;
}

- (id)baseTextStyle
{
  v2 = [MEMORY[0x277D0C8B0] textStyle];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    v5 = [v2 header4];
  }

  else
  {
    v5 = [v2 header3];
  }

  v6 = v5;

  return v6;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v6 updateConstraints];
  [(GKShowMoreView *)self removeConstraint:self->_horizontalContraint];
  [(GKShowMoreView *)self addConstraint:self->_verticalContraint];
  textAlignmentOffset = self->_textAlignmentOffset;
  if (self->_loading)
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    textAlignmentOffset = textAlignmentOffset + v4 + 6.0;
  }

  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_label attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:textAlignmentOffset];
  [(GKShowMoreView *)self setHorizontalContraint:v5];

  [(GKShowMoreView *)self addConstraint:self->_horizontalContraint];
}

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    v4 = a3;
    self->_loading = a3;
    v13 = [(GKShowMoreView *)self baseTextStyle];
    v6 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
    if (v4)
      v7 = {;
      v8 = [v13 info];
      v9 = [v7 _gkAttributedStringByApplyingStyle:v8];
      [(GKLabel *)self->_label setAttributedText:v9];

      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else
      v10 = {;
      v11 = [v13 buttonTitle];
      v12 = [v10 _gkAttributedStringByApplyingStyle:v11];
      [(GKLabel *)self->_label setAttributedText:v12];

      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    }

    [(GKShowMoreView *)self setNeedsUpdateConstraints];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v16 touchesEnded:v6 withEvent:v7];
  if (self->_showMoreAction && !self->_loading)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v6;
    if ([v8 countByEnumeratingWithState:&v12 objects:v17 count:16])
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      if (self->_showMoreAction)
      {
        showMoreAction = self->_showMoreAction;
      }

      else
      {
        showMoreAction = 0;
      }

      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:self->_sectionIndex];
      [v9 _gkSendAction:showMoreAction viaResponder:self withObject:v11];
    }
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v16 applyLayoutAttributes:v4];
  v5 = [v4 indexPath];
  -[GKShowMoreView setSectionIndex:](self, "setSectionIndex:", [v5 section]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 maxTotalItemCount];
    v8 = v7 - [v6 currentVisibleItemCount];
    v9 = [v6 sectionMetrics];
    self->_numberToShow = [v9 incrementalRevealItemCount];

    numberToShow = self->_numberToShow;
    v12 = v8 < numberToShow || numberToShow == -1;
    self->_showShowAll = v12;
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 _gkTargetForAction:sel_applyShowMoreLayoutAttributesForShowMoreView_atIndexPath_ viaResponder:self];

    v15 = [v6 indexPath];
    [v14 applyShowMoreLayoutAttributesForShowMoreView:self atIndexPath:v15];
  }
}

- (void)setTextAlignmentOffset:(double)a3
{
  if (self->_textAlignmentOffset != a3)
  {
    self->_textAlignmentOffset = a3;
    [(GKShowMoreView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  if (collectionView != v5)
  {
    v7 = v5;
    [(UICollectionView *)collectionView removeConstraint:self->_horizontalContraint];
    objc_storeStrong(&self->_collectionView, a3);
    collectionView = [(GKShowMoreView *)self setNeedsUpdateConstraints];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](collectionView, v5);
}

- (void)updateLabel
{
  v3 = [(GKShowMoreView *)self baseTextStyle];
  v11 = [v3 buttonTitle];

  if (self->_showShowAll)
  {
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
    v6 = [v5 _gkAttributedStringByApplyingStyle:v11];
    v7 = [(GKShowMoreView *)self label];
    [v7 setAttributedText:v6];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
    v6 = GKFormattedStringWithGroupingFromInteger();
    v7 = [v8 stringWithFormat:v5, v6];
    v9 = [v7 _gkAttributedStringByApplyingStyle:v11];
    v10 = [(GKShowMoreView *)self label];
    [v10 setAttributedText:v9];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v3 prepareForReuse];
  self->_showMoreAction = 0;
}

- (SEL)showMoreAction
{
  if (self->_showMoreAction)
  {
    return self->_showMoreAction;
  }

  else
  {
    return 0;
  }
}

- (void)setShowMoreAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_showMoreAction = v3;
}

@end