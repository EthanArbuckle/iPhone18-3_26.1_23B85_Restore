@interface GKShowMoreView
- (GKShowMoreView)initWithFrame:(CGRect)frame;
- (SEL)showMoreAction;
- (id)baseTextStyle;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setCollectionView:(id)view;
- (void)setLoading:(BOOL)loading;
- (void)setShowMoreAction:(SEL)action;
- (void)setTextAlignmentOffset:(double)offset;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateConstraints;
- (void)updateLabel;
@end

@implementation GKShowMoreView

- (GKShowMoreView)initWithFrame:(CGRect)frame
{
  v28[2] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = GKShowMoreView;
  v3 = [(GKShowMoreView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    baseTextStyle = [(GKShowMoreView *)v3 baseTextStyle];
    buttonTitle = [baseTextStyle buttonTitle];

    v7 = objc_alloc_init(GKLabel);
    label = v4->_label;
    v4->_label = v7;

    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();
    v11 = [v10 _gkAttributedStringByApplyingStyle:buttonTitle];
    [(GKLabel *)v4->_label setAttributedText:v11];

    [(GKLabel *)v4->_label setBackgroundColor:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    activityIndicatorColor = [mEMORY[0x277D0C868] activityIndicatorColor];
    [(UIActivityIndicatorView *)v4->_spinner setColor:activityIndicatorColor];

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
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    header4 = [textStyle header4];
  }

  else
  {
    header4 = [textStyle header3];
  }

  v6 = header4;

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

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    loadingCopy = loading;
    self->_loading = loading;
    baseTextStyle = [(GKShowMoreView *)self baseTextStyle];
    v6 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
    if (loadingCopy)
      v7 = {;
      info = [baseTextStyle info];
      v9 = [v7 _gkAttributedStringByApplyingStyle:info];
      [(GKLabel *)self->_label setAttributedText:v9];

      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else
      v10 = {;
      buttonTitle = [baseTextStyle buttonTitle];
      v12 = [v10 _gkAttributedStringByApplyingStyle:buttonTitle];
      [(GKLabel *)self->_label setAttributedText:v12];

      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    }

    [(GKShowMoreView *)self setNeedsUpdateConstraints];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v16 touchesEnded:endedCopy withEvent:eventCopy];
  if (self->_showMoreAction && !self->_loading)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = endedCopy;
    if ([v8 countByEnumeratingWithState:&v12 objects:v17 count:16])
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      if (self->_showMoreAction)
      {
        showMoreAction = self->_showMoreAction;
      }

      else
      {
        showMoreAction = 0;
      }

      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:self->_sectionIndex];
      [mEMORY[0x277D75128] _gkSendAction:showMoreAction viaResponder:self withObject:v11];
    }
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = GKShowMoreView;
  [(GKShowMoreView *)&v16 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];
  -[GKShowMoreView setSectionIndex:](self, "setSectionIndex:", [indexPath section]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = attributesCopy;
    maxTotalItemCount = [v6 maxTotalItemCount];
    v8 = maxTotalItemCount - [v6 currentVisibleItemCount];
    sectionMetrics = [v6 sectionMetrics];
    self->_numberToShow = [sectionMetrics incrementalRevealItemCount];

    numberToShow = self->_numberToShow;
    v12 = v8 < numberToShow || numberToShow == -1;
    self->_showShowAll = v12;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v14 = [mEMORY[0x277D75128] _gkTargetForAction:sel_applyShowMoreLayoutAttributesForShowMoreView_atIndexPath_ viaResponder:self];

    indexPath2 = [v6 indexPath];
    [v14 applyShowMoreLayoutAttributesForShowMoreView:self atIndexPath:indexPath2];
  }
}

- (void)setTextAlignmentOffset:(double)offset
{
  if (self->_textAlignmentOffset != offset)
  {
    self->_textAlignmentOffset = offset;
    [(GKShowMoreView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  if (collectionView != viewCopy)
  {
    v7 = viewCopy;
    [(UICollectionView *)collectionView removeConstraint:self->_horizontalContraint];
    objc_storeStrong(&self->_collectionView, view);
    collectionView = [(GKShowMoreView *)self setNeedsUpdateConstraints];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](collectionView, viewCopy);
}

- (void)updateLabel
{
  baseTextStyle = [(GKShowMoreView *)self baseTextStyle];
  buttonTitle = [baseTextStyle buttonTitle];

  if (self->_showShowAll)
  {
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
    v6 = [v5 _gkAttributedStringByApplyingStyle:buttonTitle];
    label = [(GKShowMoreView *)self label];
    [label setAttributedText:v6];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
    v6 = GKFormattedStringWithGroupingFromInteger();
    label = [v8 stringWithFormat:v5, v6];
    v9 = [label _gkAttributedStringByApplyingStyle:buttonTitle];
    label2 = [(GKShowMoreView *)self label];
    [label2 setAttributedText:v9];
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

- (void)setShowMoreAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_showMoreAction = actionCopy;
}

@end