@interface CKDetailsSearchResultsTitleHeaderCell
- (CKDetailsSearchResultsTitleHeaderCell)initWithFrame:(CGRect)frame;
- (CKDetailsSearchResultsTitleHeaderCellDelegate)detailsViewDelegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_showAllButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)layoutSubviewsForWolfWithBounds:(CGRect)bounds layoutMargins:(UIEdgeInsets)margins isLTR:(BOOL)r;
- (void)layoutSubviewsWithBounds:(CGRect)bounds layoutMargins:(UIEdgeInsets)margins isLTR:(BOOL)r;
- (void)setTitle:(id)title;
@end

@implementation CKDetailsSearchResultsTitleHeaderCell

- (void)setTitle:(id)title
{
  titleCopy = title;
  sectionTitle = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [sectionTitle setText:titleCopy];
}

- (CKDetailsSearchResultsTitleHeaderCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CKDetailsSearchResultsTitleHeaderCell;
  v3 = [(CKSearchResultsTitleHeaderCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    isAccessibilityPreferredContentSizeCategory = [v4 isAccessibilityPreferredContentSizeCategory];

    if ((isAccessibilityPreferredContentSizeCategory & 1) == 0)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      [v6 searchResultsTitleHeaderDetailsTopPadding];
      [(CKSearchResultsTitleHeaderCell *)v3 setTitleTopPadding:?];

      [(CKSearchResultsTitleHeaderCell *)v3 setTitleBottomPadding:0.0];
    }

    sectionTitle = [(CKSearchResultsTitleHeaderCell *)v3 sectionTitle];
    v8 = +[CKUIBehavior sharedBehaviors];
    searchDetailsHeaderFontIdentity = [v8 searchDetailsHeaderFontIdentity];
    [sectionTitle setFont:searchDetailsHeaderFontIdentity];
  }

  return v3;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CKDetailsSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v23 layoutSubviews];
  topHairline = [(CKSearchResultsTitleHeaderCell *)self topHairline];
  [topHairline setHidden:1];

  [(CKDetailsSearchResultsTitleHeaderCell *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CKSearchResultsTitleHeaderCell *)self marginInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(topHairline) = [(CKDetailsSearchResultsTitleHeaderCell *)self _shouldReverseLayoutDirection];
  v20 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v20 isAccessibilityPreferredContentSizeCategory];

  v22 = topHairline ^ 1;
  if (isAccessibilityPreferredContentSizeCategory)
  {
    [(CKSearchResultsTitleHeaderCell *)self layoutSubviewsAXFontSizeWithBounds:v22 layoutMargins:v5 isLTR:v7, v9, v11, v13, v15, v17, v19];
  }

  else
  {
    [(CKDetailsSearchResultsTitleHeaderCell *)self layoutSubviewsWithBounds:v22 layoutMargins:v5 isLTR:v7, v9, v11, v13, v15, v17, v19];
  }
}

- (void)layoutSubviewsWithBounds:(CGRect)bounds layoutMargins:(UIEdgeInsets)margins isLTR:(BOOL)r
{
  right = margins.right;
  rect.size.width = margins.left;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  *&rect.size.height = self;
  v53 = CKDetailsSearchResultsTitleHeaderCell;
  [(CGFloat *)&rect.size.height layoutSubviewsWithBounds:bounds.origin.x layoutMargins:bounds.origin.y isLTR:bounds.size.width, bounds.size.height, margins.top, margins.left, margins.bottom];
  sectionTitle = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [sectionTitle frame];
  rect.origin.x = v12;
  v49 = v14;
  v50 = v13;

  showAllButton = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [showAllButton frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v46 = height;
  v47 = x;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v24 = CGRectGetWidth(v54) - rect.size.width;
  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 searchResultsTitleHeaderInterItemSpacing];
  v27 = v24 - v26;
  v55.origin.x = v17;
  v51 = v21;
  v55.origin.y = v19;
  v55.size.width = v21;
  rect.origin.y = v23;
  v55.size.height = v23;
  v28 = v27 - CGRectGetWidth(v55) - right;

  if (CKIsRunningInMacCatalyst())
  {
    v30 = v49;
    v29 = v50;
    v31 = v19;
    v32 = v51;
    v33 = rect.origin.x;
  }

  else
  {
    v45 = v17;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = v46;
    MaxY = CGRectGetMaxY(v56);
    v57.origin.x = rect.origin.x;
    v57.size.height = v49;
    v57.origin.y = v50;
    v57.size.width = v28;
    v30 = v49;
    v35 = MaxY - CGRectGetHeight(v57);
    [(CKSearchResultsTitleHeaderCell *)self titleBottomPadding];
    v29 = v35 - v36;
    if (!r)
    {
      v58.origin.x = v47;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = v46;
      v37 = CGRectGetWidth(v58);
      v59.origin.x = rect.origin.x;
      v59.origin.y = v29;
      v59.size.width = v28;
      v59.size.height = v49;
      rect.size.width = v37 - CGRectGetWidth(v59) - right;
    }

    v60.origin.x = v47;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = v46;
    v38 = CGRectGetMaxY(v60);
    v17 = v45;
    v61.origin.x = v45;
    v61.origin.y = v19;
    v32 = v51;
    v61.size.width = v51;
    v61.size.height = v23;
    v31 = v38 - CGRectGetHeight(v61);
    v33 = rect.size.width;
  }

  sectionTitle2 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [sectionTitle2 setFrame:{v33, v29, v28, v30}];

  showAllButton2 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  titleLabel = [showAllButton2 titleLabel];
  [titleLabel _baselineOffsetFromBottom];
  v43 = v42;

  showAllButton3 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [showAllButton3 setFrame:{v17, v31 + v43, v32, rect.origin.y}];
}

- (void)layoutSubviewsForWolfWithBounds:(CGRect)bounds layoutMargins:(UIEdgeInsets)margins isLTR:(BOOL)r
{
  rCopy = r;
  right = margins.right;
  left = margins.left;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v58.receiver = self;
  v58.super_class = CKDetailsSearchResultsTitleHeaderCell;
  width = bounds.size.width;
  height = bounds.size.height;
  [(CKSearchResultsTitleHeaderCell *)&v58 layoutSubviewsForWolfWithBounds:bounds.origin.x layoutMargins:bounds.origin.y isLTR:bounds.size.width, bounds.size.height, margins.top, margins.left, margins.bottom];
  sectionTitle = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [sectionTitle frame];
  v52 = v12;
  v53 = v13;
  v54 = v14;

  showAllButton = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [showAllButton frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v55 = left;
  if (rCopy)
  {
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v24 = right;
    MaxX = CGRectGetMaxX(v59);
    v60.origin.x = v17;
    v60.origin.y = v19;
    v60.size.width = v21;
    v60.size.height = v23;
    v26 = MaxX - CGRectGetWidth(v60) - v24;
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 searchDetailsSeeAllButtonTrailingMargin];
    v29 = v26 - v28;
  }

  else
  {
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 searchDetailsSeeAllButtonTrailingMargin];
    v29 = left + v30;
    v24 = right;
  }

  showAllButton2 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [showAllButton2 setFrame:{v29, v19, v21, v23}];

  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v32 = CGRectGetWidth(v61) - v55;
  v62.origin.x = v29;
  v62.origin.y = v19;
  v62.size.width = v21;
  v62.size.height = v23;
  v33 = v32 - CGRectGetWidth(v62) - v24;
  v34 = +[CKUIBehavior sharedBehaviors];
  [v34 searchResultsDetailsTitleHeaderTextLeadingMargin];
  v36 = v33 - v35;
  v37 = +[CKUIBehavior sharedBehaviors];
  [v37 searchDetailsSeeAllButtonTrailingMargin];
  v39 = v36 - v38;
  v40 = +[CKUIBehavior sharedBehaviors];
  [v40 searchResultsTitleHeaderInterItemSpacing];
  v42 = v39 - v41;

  if (rCopy)
  {
    v43 = +[CKUIBehavior sharedBehaviors];
    [v43 searchResultsDetailsTitleHeaderTextLeadingMargin];
    v44 = v54;
    v46 = v55 + v45;
    v47 = v53;
  }

  else
  {
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v48 = CGRectGetWidth(v63);
    v64.origin.x = v52;
    v47 = v53;
    v64.origin.y = v53;
    v64.size.width = v42;
    v44 = v54;
    v64.size.height = v54;
    v49 = v48 - CGRectGetWidth(v64) - v24;
    v43 = +[CKUIBehavior sharedBehaviors];
    [v43 searchResultsDetailsTitleHeaderTextLeadingMargin];
    v46 = v49 - v50;
  }

  sectionTitle2 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [sectionTitle2 setFrame:{v46, v47, v42, v44}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  searchDetailsHeaderFont = [v13 searchDetailsHeaderFont];
  [searchDetailsHeaderFont capHeight];
  v16 = v15;

  showAllButton = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [showAllButton sizeThatFits:{v10, v12}];
  v19 = v18;

  v20 = +[CKUIBehavior sharedBehaviors];
  LODWORD(searchDetailsHeaderFont) = [v20 isAccessibilityPreferredContentSizeCategory];

  [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
  if (searchDetailsHeaderFont)
  {
    v22 = v19 + v16 + v21;
    [(CKSearchResultsTitleHeaderCell *)self titleBottomPadding];
    v24 = v23 + v22;
  }

  else
  {
    v25 = v16 + v21;
    [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
    v24 = v25 + v26;
  }

  [attributesCopy setFrame:{v6, v8, v10, v24}];

  return attributesCopy;
}

- (void)_showAllButtonTapped:(id)tapped
{
  if (CKIsRunningInMacCatalyst())
  {
    delegate = [(CKSearchResultsTitleHeaderCell *)self delegate];
    [delegate searchResultsTitleCellShowAllButtonTapped:self];
  }

  else
  {
    delegate = [(CKDetailsSearchResultsTitleHeaderCell *)self detailsViewDelegate];
    [delegate searchDetailsShowAllButtonTapped:self];
  }
}

- (CKDetailsSearchResultsTitleHeaderCellDelegate)detailsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsViewDelegate);

  return WeakRetained;
}

@end