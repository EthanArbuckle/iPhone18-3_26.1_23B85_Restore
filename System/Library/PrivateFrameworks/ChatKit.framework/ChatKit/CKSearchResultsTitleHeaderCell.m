@interface CKSearchResultsTitleHeaderCell
- (CKSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3;
- (CKSearchResultsTitleHeaderCellDelegate)delegate;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_showAllButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)layoutSubviewsAXFontSizeWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5;
- (void)layoutSubviewsForWolfWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5;
- (void)layoutSubviewsWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5;
- (void)prepareForReuse;
- (void)setPinnedEffectVisible:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation CKSearchResultsTitleHeaderCell

- (void)setPinnedEffectVisible:(BOOL)a3
{
  v3 = a3;
  self->_pinnedEffectVisible = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isSearchRefreshEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = !v3;
    [(UIVisualEffectView *)self->_backgroundVisualEffectView setHidden:!v3];
    if (CKIsRunningInMacCatalyst() || v3)
    {
      [(CKSearchResultsTitleHeaderCell *)self setBackgroundColor:0];
    }

    else
    {
      v10 = [MEMORY[0x1E69DC888] whiteColor];
      [(CKSearchResultsTitleHeaderCell *)self setBackgroundColor:v10];
    }

    if (CKIsRunningInMacCatalyst())
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    separatorView = self->_separatorView;

    [(UIView *)separatorView setHidden:v8];
  }
}

- (CKSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3
{
  v39.receiver = self;
  v39.super_class = CKSearchResultsTitleHeaderCell;
  v3 = [(CKSearchResultsTitleHeaderCell *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isSearchRefreshEnabled];

    if ((v5 & 1) == 0)
    {
      v3->_pinnedEffectVisible = 0;
      if (CKIsRunningInMacCatalyst())
      {
        v6 = +[CKUIBehavior sharedBehaviors];
        v7 = [v6 theme];
        v8 = [v7 spotlightSearchSegmentedControlBackgroundColor];
        [(CKSearchResultsTitleHeaderCell *)v3 setBackgroundColor:v8];
      }

      else
      {
        [(CKSearchResultsTitleHeaderCell *)v3 setBackgroundColor:0];
      }

      v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
      separatorView = v3->_separatorView;
      v3->_separatorView = v9;

      [(UIView *)v3->_separatorView setHidden:1];
      v11 = [MEMORY[0x1E69DC888] separatorColor];
      [(UIView *)v3->_separatorView setBackgroundColor:v11];

      [(CKSearchResultsTitleHeaderCell *)v3 addSubview:v3->_separatorView];
      v12 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
      v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v12];
      [(UIVisualEffectView *)v13 setHidden:1];
      [(CKSearchResultsTitleHeaderCell *)v3 addSubview:v13];
      backgroundVisualEffectView = v3->_backgroundVisualEffectView;
      v3->_backgroundVisualEffectView = v13;
    }

    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 isAccessibilityPreferredContentSizeCategory];

    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = v17;
    if (v16)
    {
      [v17 searchResultsTitleHeaderAXTopPadding];
      [(CKSearchResultsTitleHeaderCell *)v3 setTitleTopPadding:?];

      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 searchResultsTitleHeaderAXBottomPadding];
    }

    else
    {
      [v17 searchResultsTitleHeaderTopPadding];
      [(CKSearchResultsTitleHeaderCell *)v3 setTitleTopPadding:?];

      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 searchResultsTitleHeaderBottomPadding];
    }

    [(CKSearchResultsTitleHeaderCell *)v3 setTitleBottomPadding:?];

    v20 = objc_alloc(MEMORY[0x1E69DCC10]);
    v21 = [v20 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v21 setAdjustsFontForContentSizeCategory:1];
    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 searchHeaderFont];
    [v21 setFont:v23];

    [(CKSearchResultsTitleHeaderCell *)v3 setSectionTitle:v21];
    [(CKSearchResultsTitleHeaderCell *)v3 addSubview:v21];
    v24 = objc_alloc_init(CKStandardButton);
    [(CKStandardButton *)v24 addTarget:v3 action:sel__showAllButtonTapped_ forControlEvents:64];
    v25 = [(CKStandardButton *)v24 titleLabel];
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 searchHeaderButtonFont];
    [v25 setFont:v27];

    v28 = +[CKUIBehavior sharedBehaviors];
    v29 = [v28 theme];
    v30 = [v29 detailsSeeAllButtonBackgroundColor];
    [(CKStandardButton *)v24 setBackgroundColor:v30];

    v31 = +[CKUIBehavior sharedBehaviors];
    v32 = [v31 theme];
    v33 = [v32 detailsSeeAllButtonTextColor];
    [(CKStandardButton *)v24 setTintColor:v33];

    v34 = [(CKStandardButton *)v24 titleLabel];
    [v34 setAdjustsFontForContentSizeCategory:1];

    [(CKSearchResultsTitleHeaderCell *)v3 setShowAllButton:v24];
    [(CKSearchResultsTitleHeaderCell *)v3 addSubview:v24];
    v35 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LOBYTE(v32) = [v35 isSearchRefreshEnabled];

    if ((v32 & 1) == 0)
    {
      v36 = [MEMORY[0x1E6979398] layer];
      [(CKSearchResultsTitleHeaderCell *)v3 setTopHairline:v36];
      v37 = [(CKSearchResultsTitleHeaderCell *)v3 layer];
      [v37 addSublayer:v36];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = CKSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v56 layoutSubviews];
  if (!CKIsRunningInMacCatalyst())
  {
    v3 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"SEARCH_SHOW_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v3 setTitle:v5 forState:0];
  }

  v6 = [(CKSearchResultsTitleHeaderCell *)self _shouldReverseLayoutDirection];
  [(CKSearchResultsTitleHeaderCell *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CKSearchResultsTitleHeaderCell *)self marginInsets];
  v53 = v16;
  v54 = v15;
  v55 = v17;
  v52 = v18;
  [(CKSearchResultsTitleHeaderCell *)self safeAreaInsets];
  v51 = v19;
  [(CKSearchResultsTitleHeaderCell *)self safeAreaInsets];
  v50 = v20;
  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = [v21 isAccessibilityPreferredContentSizeCategory];

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 defaultSeparatorHeight];
  v25 = v24;

  v57.origin.x = v8;
  v57.origin.y = v10;
  v57.size.width = v12;
  v57.size.height = v14;
  Width = CGRectGetWidth(v57);
  v58.origin.x = v8;
  v58.origin.y = v10;
  v58.size.width = v12;
  v58.size.height = v14;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v8;
  v59.origin.y = v10;
  v59.size.width = v12;
  v59.size.height = v14;
  v28 = CGRectGetMaxY(v59) - v25;
  v29 = [(CKSearchResultsTitleHeaderCell *)self separatorView];
  [v29 setFrame:{MinX, v28, Width, v25}];

  v30 = CKIsRunningInMacCatalyst();
  v31 = [(CKSearchResultsTitleHeaderCell *)self topHairline];
  v32 = v31;
  if (v30)
  {
    [v31 setHidden:1];
  }

  else
  {
    v33 = +[CKUIBehavior sharedBehaviors];
    v34 = [v33 theme];
    v35 = [v34 spotlightSearchCellHairlineColor];
    [v32 setBackgroundColor:{objc_msgSend(v35, "CGColor")}];

    v36 = *(MEMORY[0x1E695F058] + 8);
    [(CKSearchResultsTitleHeaderCell *)self leadingSeparatorInsets];
    v38 = v37;
    [(CKSearchResultsTitleHeaderCell *)self leadingSeparatorInsets];
    v40 = v12 - v39;
    v41 = +[CKUIBehavior sharedBehaviors];
    [v41 defaultSeparatorHeight];
    v43 = v42;

    v32 = [(CKSearchResultsTitleHeaderCell *)self topHairline];
    [v32 setFrame:{v38, v36, v40, v43}];
  }

  v44 = v53 + v51;
  v45 = v52 + v50;

  v46 = [(CKSearchResultsTitleHeaderCell *)self backgroundVisualEffectView];
  [v46 setFrame:{v8, v10, v12, v14}];

  v47 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v47 sizeToFit];

  v48 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v48 sizeToFit];

  v49 = v6 ^ 1u;
  if (v22)
  {
    [(CKSearchResultsTitleHeaderCell *)self layoutSubviewsAXFontSizeWithBounds:v49 layoutMargins:v8 isLTR:v10, v12, v14, v54, v44, v55, v45];
  }

  else
  {
    [(CKSearchResultsTitleHeaderCell *)self layoutSubviewsWithBounds:v49 layoutMargins:v8 isLTR:v10, v12, v14, v54, v44, v55, v45];
  }
}

- (void)layoutSubviewsAXFontSizeWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5
{
  right = a4.right;
  left = a4.left;
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  v10 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle:a3.origin.x];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v41 = left;
  if (!a5)
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v19 = CGRectGetWidth(v43);
    v44.origin.x = v12;
    v44.origin.y = v14;
    v44.size.width = v16;
    v44.size.height = v18;
    left = v19 - CGRectGetWidth(v44) - right;
  }

  [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
  v21 = v20;
  v22 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  v23 = v16;
  v38 = v18;
  [v22 setFrame:{left, v21, v16, v18}];

  v24 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v24 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (!a5)
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = rect;
    v45.size.height = height;
    v33 = CGRectGetWidth(v45);
    v46.origin.x = v26;
    v46.origin.y = v28;
    v46.size.width = v30;
    v46.size.height = v32;
    v41 = v33 - CGRectGetWidth(v46) - right;
  }

  v47.origin.x = left;
  v47.origin.y = v21;
  v47.size.width = v23;
  v47.size.height = v38;
  MaxY = CGRectGetMaxY(v47);
  v40 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v40 setFrame:{v41, MaxY, v30, v32}];
}

- (void)layoutSubviewsWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5
{
  v5 = a5;
  right = a4.right;
  left = a4.left;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(CKSearchResultsTitleHeaderCell *)self showAllButton:a3.origin.x];
  [v12 frame];
  v58 = v13;
  rect_8 = v15;
  rect_16 = v14;

  v16 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v16 bounds];
  v18 = v17;

  v19 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  v20 = [v19 titleLabel];
  v21 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v21 bounds];
  [v20 sizeThatFits:{v22, v23}];
  v25 = v24;

  v26 = CKIsRunningInMacCatalyst();
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  if (v26)
  {
    v31 = CGRectGetMinY(*&v27) + (v18 - v25) * -0.5;
    [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
    v33 = v31 + v32;
  }

  else
  {
    v33 = CGRectGetMidY(*&v27) + v18 * -0.5;
  }

  v53 = left;
  if (v5)
  {
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v34 = CGRectGetWidth(v62);
    v63.origin.x = v58;
    v63.origin.y = v33;
    v63.size.height = rect_8;
    v63.size.width = rect_16;
    left = v34 - CGRectGetWidth(v63) - right;
  }

  v35 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v35 setFrame:{left, v33, rect_16, rect_8}];

  v36 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v36 frame];
  v51 = v38;
  v52 = v37;
  v40 = v39;

  rect = x;
  v64.origin.x = x;
  v57 = y;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v41 = v53;
  v42 = CGRectGetWidth(v64) - v53;
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 searchResultsTitleHeaderInterItemSpacing];
  v45 = v42 - v44;
  v65.origin.x = left;
  v65.origin.y = v33;
  v65.size.width = rect_16;
  v65.size.height = rect_8;
  v46 = v45 - CGRectGetWidth(v65) - right;

  if (!v5)
  {
    v66.origin.x = rect;
    v66.origin.y = v57;
    v66.size.width = width;
    v66.size.height = height;
    v47 = CGRectGetWidth(v66);
    v67.origin.y = v51;
    v67.origin.x = v52;
    v67.size.width = v46;
    v67.size.height = v40;
    v41 = v47 - CGRectGetWidth(v67) - right;
  }

  if (CKIsRunningInMacCatalyst())
  {
    v68.origin.x = rect;
    v68.origin.y = v57;
    v68.size.width = width;
    v68.size.height = height;
    MinY = CGRectGetMinY(v68);
    [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
    v50 = MinY + v49;
  }

  else
  {
    v69.origin.x = rect;
    v69.origin.y = v57;
    v69.size.width = width;
    v69.size.height = height;
    v50 = CGRectGetMidY(v69) + v40 * -0.5;
  }

  v60 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle:*&v51];
  [v60 setFrame:{v41, v50, v46, v40}];
}

- (void)layoutSubviewsForWolfWithBounds:(CGRect)a3 layoutMargins:(UIEdgeInsets)a4 isLTR:(BOOL)a5
{
  v5 = a5;
  right = a4.right;
  left = a4.left;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(CKSearchResultsTitleHeaderCell *)self showAllButton:a3.origin.x];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  rect = height;
  if (v5)
  {
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v20 = x;
    v21 = CGRectGetWidth(v63);
    v64.origin.x = v13;
    v64.origin.y = v15;
    v64.size.width = v17;
    v64.size.height = v19;
    v22 = v21 - CGRectGetWidth(v64) - right;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 searchSeeAllButtonTrailingMargin];
    v25 = v22 - v24;
    x = v20;
    height = rect;
  }

  else
  {
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 searchSeeAllButtonTrailingMargin];
    v25 = left + v26;
  }

  v27 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v27 setFrame:{v25, v15, v17, v19}];

  v28 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v28 frame];
  v56 = v29;
  v57 = v30;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v31 = x;
  v32 = CGRectGetWidth(v65) - left;
  v33 = +[CKUIBehavior sharedBehaviors];
  [v33 searchResultsTitleHeaderTextLeadingMargin];
  v35 = v32 - v34;
  v36 = +[CKUIBehavior sharedBehaviors];
  [v36 searchResultsTitleHeaderInterItemSpacing];
  v38 = v35 - v37;
  v66.origin.x = v25;
  v66.origin.y = v15;
  v66.size.width = v17;
  v66.size.height = v19;
  v39 = v38 - CGRectGetWidth(v66) - right;
  v40 = +[CKUIBehavior sharedBehaviors];
  [v40 searchSeeAllButtonTrailingMargin];
  v42 = v39 - v41;

  v43 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  v44 = [v43 font];
  [v44 _bodyLeading];
  v46 = v45;

  if (v5)
  {
    v47 = +[CKUIBehavior sharedBehaviors];
    [v47 searchResultsTitleHeaderTextLeadingMargin];
    v49 = left + v48;
    v50 = v57;
  }

  else
  {
    v67.origin.x = v31;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = rect;
    v51 = CGRectGetWidth(v67);
    v68.origin.x = v56;
    v50 = v57;
    v68.origin.y = v57;
    v68.size.width = v42;
    v68.size.height = v46;
    v52 = v51 - CGRectGetWidth(v68) - right;
    v47 = +[CKUIBehavior sharedBehaviors];
    [v47 searchResultsTitleHeaderTextLeadingMargin];
    v49 = v52 - v53;
  }

  v69.origin.x = v31;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = rect;
  MidY = CGRectGetMidY(v69);
  v70.origin.x = v49;
  v70.origin.y = v50;
  v70.size.width = v42;
  v70.size.height = v46;
  v55 = MidY + CGRectGetHeight(v70) * -0.5;
  recta = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [recta setFrame:{v49, v55, v42, v46}];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v7 prepareForReuse];
  v3 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v3 setText:0];

  [(CKSearchResultsTitleHeaderCell *)self setSectionIndex:0];
  [(CKSearchResultsTitleHeaderCell *)self setPinnedEffectVisible:0];
  if (CKIsRunningInMacCatalyst())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 spotlightSearchSegmentedControlBackgroundColor];
    [(CKSearchResultsTitleHeaderCell *)self setBackgroundColor:v6];
  }

  else
  {
    [(CKSearchResultsTitleHeaderCell *)self setBackgroundColor:0];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v5 setText:v4];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKSearchResultsTitleHeaderCell *)self sectionTitle];
  [v13 sizeThatFits:{v10, v12}];
  v15 = v14;

  v16 = [(CKSearchResultsTitleHeaderCell *)self showAllButton];
  [v16 sizeThatFits:{v10, v12}];
  v18 = v17;

  v19 = +[CKUIBehavior sharedBehaviors];
  v20 = [v19 isAccessibilityPreferredContentSizeCategory];

  [(CKSearchResultsTitleHeaderCell *)self titleTopPadding];
  if (v20)
  {
    v22 = v18 + v15 + v21;
    [(CKSearchResultsTitleHeaderCell *)self titleBottomPadding];
    v24 = v23 + v22;
  }

  else
  {
    v25 = v15 + v21;
    [(CKSearchResultsTitleHeaderCell *)self titleBottomPadding];
    v24 = v25 + v26;
  }

  [v4 setFrame:{v6, v8, v10, v24}];

  return v4;
}

- (void)_showAllButtonTapped:(id)a3
{
  v4 = [(CKSearchResultsTitleHeaderCell *)self delegate];
  [v4 searchResultsTitleCellShowAllButtonTapped:self];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CKSearchResultsTitleHeaderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end