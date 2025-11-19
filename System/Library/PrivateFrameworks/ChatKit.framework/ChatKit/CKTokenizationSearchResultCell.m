@interface CKTokenizationSearchResultCell
- (CKTokenizationSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (id)_displayStringForTokenResult:(id)a3 searchText:(id)a4;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
@end

@implementation CKTokenizationSearchResultCell

- (CKTokenizationSearchResultCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKTokenizationSearchResultCell;
  v3 = [(CKTokenizationSearchResultCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  [(CKTokenizationSearchResultCell *)v3 setTintColor:v4];

  return v3;
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DB978];
  v10 = a4;
  v11 = [v8 systemFontOfSize:14.0 weight:v9];
  v12 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD00]];
  v13 = [v12 scaledFontForFont:v11];

  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v13];
  v15 = [(CKTokenizationSearchResultCell *)self defaultContentConfiguration];
  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 searchSuggestionsImageToTextPadding];
  [v15 setImageToTextPadding:?];

  v20 = v7;
  v17 = [(CKTokenizationSearchResultCell *)self _displayStringForTokenResult:v20 searchText:v10];

  [v15 setAttributedText:v17];
  v18 = [v20 image];

  v19 = [v18 imageByApplyingSymbolConfiguration:v14];
  [v15 setImage:v19];

  [(CKTokenizationSearchResultCell *)self setContentConfiguration:v15];
}

- (id)_displayStringForTokenResult:(id)a3 searchText:(id)a4
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DB978];
  v7 = a4;
  v8 = a3;
  v9 = [v5 systemFontOfSize:16.0 weight:v6];
  v10 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v11 = [v10 scaledFontForFont:v9];

  v12 = [v8 attributedSuggestionTextForSearchText:v7 font:v11];

  return v12;
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