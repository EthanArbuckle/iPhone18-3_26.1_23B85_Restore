@interface CKPhotosSearchResultsModeHeaderReusableView
- (CKPhotosSearchResultsModeHeaderReusableView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation CKPhotosSearchResultsModeHeaderReusableView

- (CKPhotosSearchResultsModeHeaderReusableView)initWithFrame:(CGRect)frame
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CKPhotosSearchResultsModeHeaderReusableView;
  v3 = [(CKPhotosSearchResultsModeHeaderReusableView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF38]);
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"SEARCH_PHOTOS_ALL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16[0] = v6;
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"SEARCH_PHOTOS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16[1] = v8;
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SEARCH_SCREENSHOTS_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v16[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v12 = [v4 initWithItems:v11];

    [v12 setSelectedSegmentIndex:0];
    [v12 addTarget:v3 action:sel__controlIndexDidChange_ forControlEvents:4096];
    [v12 setApportionsSegmentWidthsByContent:1];
    [(CKPhotosSearchResultsModeHeaderReusableView *)v3 addSubview:v12];
    [(CKPhotosSearchResultsModeHeaderReusableView *)v3 setControl:v12];
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 searchPhotosSegmentedControlBottomPadding];
    [(CKPhotosSearchResultsModeHeaderReusableView *)v3 setBottomPadding:?];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKPhotosSearchResultsModeHeaderReusableView;
  [(CKPhotosSearchResultsModeHeaderReusableView *)&v30 layoutSubviews];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSearchRefreshEnabled = [mEMORY[0x1E69A8070] isSearchRefreshEnabled];

  if (isSearchRefreshEnabled)
  {
    [(CKPhotosSearchResultsModeHeaderReusableView *)self setBackgroundColor:0];
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    spotlightSearchSegmentedControlBackgroundColor = [theme spotlightSearchSegmentedControlBackgroundColor];
    [(CKPhotosSearchResultsModeHeaderReusableView *)self setBackgroundColor:spotlightSearchSegmentedControlBackgroundColor];
  }

  [(CKPhotosSearchResultsModeHeaderReusableView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CKPhotosSearchResultsModeHeaderReusableView *)self bottomPadding];
  v15 = v14 + 44.0;
  [(CKPhotosSearchResultsModeHeaderReusableView *)self setBounds:v9, v11, v13, v14 + 44.0];
  [(CKPhotosSearchResultsModeHeaderReusableView *)self marginInsets];
  v17 = v16;
  v19 = v18;
  control = [(CKPhotosSearchResultsModeHeaderReusableView *)self control];
  [control frame];
  v22 = v21;

  if (CKMainScreenScale_once_4 != -1)
  {
    [CKPhotosSearchResultsModeHeaderReusableView layoutSubviews];
  }

  v23 = v13 - (v17 + v19);
  v24 = *&CKMainScreenScale_sMainScreenScale_4;
  if (*&CKMainScreenScale_sMainScreenScale_4 == 0.0)
  {
    v24 = 1.0;
  }

  v25 = floor((v9 + (v13 - v23) * 0.5) * v24) / v24;
  v26 = floor((v11 + (v15 - v22) * 0.5) * v24) / v24;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  MidY = CGRectGetMidY(v31);
  v32.origin.x = v25;
  v32.origin.y = v26;
  v32.size.width = v23;
  v32.size.height = v22;
  v28 = MidY + CGRectGetHeight(v32) * -0.5;
  control2 = [(CKPhotosSearchResultsModeHeaderReusableView *)self control];
  [control2 setFrame:{v25, v28, v23, v22}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy size];
  v6 = v5;
  [(CKPhotosSearchResultsModeHeaderReusableView *)self bottomPadding];
  [attributesCopy setSize:{v6, v7 + 44.0}];

  return attributesCopy;
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

@end