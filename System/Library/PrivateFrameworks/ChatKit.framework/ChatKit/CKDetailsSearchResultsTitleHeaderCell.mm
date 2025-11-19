@interface CKDetailsSearchResultsTitleHeaderCell
- (CKDetailsSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3;
- (CKDetailsSearchResultsTitleHeaderCellDelegate)detailsViewDelegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_showAllButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)layoutSubviewsForWolfWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5;
- (void)layoutSubviewsWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5;
- (void)setTitle:(id)a3;
@end

@implementation CKDetailsSearchResultsTitleHeaderCell

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v5 setText:v4];
}

- (CKDetailsSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CKDetailsSearchResultsTitleHeaderCell;
  v3 = [(CKSearchResultsTitleHeaderCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 isAccessibilityPreferredContentSizeCategory];

    if ((v5 & 1) == 0)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      [v6 searchResultsTitleHeaderDetailsTopPadding];
      [(CKSearchResultsTitleHeaderCell *)v3 setTitleTopPadding:?];

      [(CKSearchResultsTitleHeaderCell *)v3 setTitleBottomPadding:0.0];
    }

    v7 = [(CKSearchResultsTitleHeaderCell *)v3 sectionTitle];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 searchDetailsHeaderFontIdentity];
    [v7 setFont:v9];
  }

  return v3;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CKDetailsSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v23 layoutSubviews];
  v3 = [(CKSearchResultsTitleHeaderCell *)self topHairline];
  [v3 setHidden:1];

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
  LODWORD(v3) = [(CKDetailsSearchResultsTitleHeaderCell *)self _shouldReverseLayoutDirection];
  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 isAccessibilityPreferredContentSizeCategory];

  v22 = v3 ^ 1;
  if (v21)
  {
    [(CKSearchResultsTitleHeaderCell *)self layoutSubviewsAXFontSizeWithBounds:v22 layoutMargins:v5 isLTR:v7, v9, v11, v13, v15, v17, v19];
  }

  else
  {
    [(CKDetailsSearchResultsTitleHeaderCell *)self layoutSubviewsWithBounds:v22 layoutMargins:v5 isLTR:v7, v9, v11, v13, v15, v17, v19];
  }
}

- (void)layoutSubviewsWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5
{
  right = a4.right;
  rect.size.width = a4.left;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&rect.size.height = self;
  v53 = CKDetailsSearchResultsTitleHeaderCell;
  [(CGFloat *)&rect.size.height layoutSubviewsWithBounds:a3.origin.x layoutMargins:a3.origin.y isLTR:a3.size.width, a3.size.height, a4.top, a4.left, a4.bottom];
  v11 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v11 frame];
  rect.origin.x = v12;
  v49 = v14;
  v50 = v13;

  v15 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v15 frame];
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
    if (!a5)
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

  v39 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v39 setFrame:{v33, v29, v28, v30}];

  v40 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  v41 = [v40 titleLabel];
  [v41 _baselineOffsetFromBottom];
  v43 = v42;

  v44 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v44 setFrame:{v17, v31 + v43, v32, rect.origin.y}];
}

- (void)layoutSubviewsForWolfWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5
{
  v5 = a5;
  right = a4.right;
  left = a4.left;
  y = a3.origin.y;
  x = a3.origin.x;
  v58.receiver = self;
  v58.super_class = CKDetailsSearchResultsTitleHeaderCell;
  width = a3.size.width;
  height = a3.size.height;
  [(CKSearchResultsTitleHeaderCell *)&v58 layoutSubviewsForWolfWithBounds:a3.origin.x layoutMargins:a3.origin.y isLTR:a3.size.width, a3.size.height, a4.top, a4.left, a4.bottom];
  v11 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v11 frame];
  v52 = v12;
  v53 = v13;
  v54 = v14;

  v15 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v55 = left;
  if (v5)
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

  v31 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v31 setFrame:{v29, v19, v21, v23}];

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

  if (v5)
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

  v51 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v51 setFrame:{v46, v47, v42, v44}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 searchDetailsHeaderFont];
  [v14 capHeight];
  v16 = v15;

  v17 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v17 sizeThatFits:{v10, v12}];
  v19 = v18;

  v20 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v14) = [v20 isAccessibilityPreferredContentSizeCategory];

  [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
  if (v14)
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

  [v4 setFrame:{v6, v8, v10, v24}];

  return v4;
}

- (void)_showAllButtonTapped:(id)a3
{
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [(CKSearchResultsTitleHeaderCell *)self delegate];
    [v4 searchResultsTitleCellShowAllButtonTapped:self];
  }

  else
  {
    v4 = [(CKDetailsSearchResultsTitleHeaderCell *)self detailsViewDelegate];
    [v4 searchDetailsShowAllButtonTapped:self];
  }
}

- (CKDetailsSearchResultsTitleHeaderCellDelegate)detailsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsViewDelegate);

  return WeakRetained;
}

@end