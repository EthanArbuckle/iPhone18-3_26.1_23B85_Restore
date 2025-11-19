@interface CKPhotosSearchResultsTitleHeaderCell
- (CKPhotosSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
- (void)updateSegmentedControlToFitWidth:(double)a3;
@end

@implementation CKPhotosSearchResultsTitleHeaderCell

- (CKPhotosSearchResultsTitleHeaderCell)initWithFrame:(CGRect)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CKPhotosSearchResultsTitleHeaderCell;
  v3 = [(CKSearchResultsTitleHeaderCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF38]);
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"SEARCH_PHOTOS_ALL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v20[0] = v6;
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"SEARCH_PHOTOS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v20[1] = v8;
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SEARCH_SCREENSHOTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v20[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v12 = [v4 initWithItems:v11];

    [v12 setSelectedSegmentIndex:0];
    [v12 addTarget:v3 action:sel__controlIndexDidChange_ forControlEvents:4096];
    [(CKPhotosSearchResultsTitleHeaderCell *)v3 addSubview:v12];
    [(CKPhotosSearchResultsTitleHeaderCell *)v3 setControl:v12];
    v13 = +[CKUIBehavior sharedBehaviors];
    LODWORD(v6) = [v13 isAccessibilityPreferredContentSizeCategory];

    v14 = 2.0;
    if (v6)
    {
      v14 = 8.0;
      v15 = 11.0;
    }

    else
    {
      v15 = 4.0;
    }

    [(CKPhotosSearchResultsTitleHeaderCell *)v3 setControlTopPadding:v14];
    [(CKPhotosSearchResultsTitleHeaderCell *)v3 setControlBottomPadding:v15];
    v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v17 = [v16 isSearchRefreshEnabled];

    if (v17)
    {
      [(CKPhotosSearchResultsTitleHeaderCell *)v3 setBackgroundColor:0];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = CKPhotosSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v27 layoutSubviews];
  [(CKPhotosSearchResultsTitleHeaderCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
  [v9 frame];
  v11 = v10;

  [(CKSearchResultsTitleHeaderCell *)self marginInsets];
  v14 = v8 - (v12 + v13);
  [(CKPhotosSearchResultsTitleHeaderCell *)self bounds];
  MaxY = CGRectGetMaxY(v28);
  [(CKPhotosSearchResultsTitleHeaderCell *)self controlBottomPadding];
  v17 = v16;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v14;
  v29.size.height = v11;
  Height = CGRectGetHeight(v29);
  [(CKPhotosSearchResultsTitleHeaderCell *)self bounds];
  v20 = v19;
  v22 = v21;
  if (CKMainScreenScale_once_101 != -1)
  {
    [CKPhotosSearchResultsTitleHeaderCell layoutSubviews];
  }

  v23 = MaxY - v17 - Height;
  v24 = *&CKMainScreenScale_sMainScreenScale_101;
  if (*&CKMainScreenScale_sMainScreenScale_101 == 0.0)
  {
    v24 = 1.0;
  }

  v25 = floor((v20 + (v22 - v14) * 0.5) * v24) / v24;
  v26 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
  [v26 setFrame:{v25, v23, v14, v11}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v23.receiver = self;
  v23.super_class = CKPhotosSearchResultsTitleHeaderCell;
  v4 = [(CKSearchResultsTitleHeaderCell *)&v23 preferredLayoutAttributesFittingAttributes:a3];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
  [v13 alpha];
  v15 = v14;

  if (v15 > 0.0)
  {
    v16 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
    [v16 sizeThatFits:{v10, v12}];
    v18 = v17;

    [(CKPhotosSearchResultsTitleHeaderCell *)self controlTopPadding];
    v20 = v18 + v19;
    [(CKPhotosSearchResultsTitleHeaderCell *)self controlBottomPadding];
    v12 = v12 + v20 + v21;
  }

  [v4 setFrame:{v6, v8, v10, v12}];

  return v4;
}

- (void)setTitle:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKPhotosSearchResultsTitleHeaderCell;
  [(CKSearchResultsTitleHeaderCell *)&v3 setTitle:a3];
}

- (void)updateSegmentedControlToFitWidth:(double)a3
{
  v5 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
  [v5 intrinsicContentSize];
  v7 = v6 >= a3;

  v8 = [(CKPhotosSearchResultsTitleHeaderCell *)self control];
  [v8 setApportionsSegmentWidthsByContent:v7];
}

@end