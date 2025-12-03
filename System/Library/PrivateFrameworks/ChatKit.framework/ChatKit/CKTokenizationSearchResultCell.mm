@interface CKTokenizationSearchResultCell
- (CKTokenizationSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (id)_displayStringForTokenResult:(id)result searchText:(id)text;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
@end

@implementation CKTokenizationSearchResultCell

- (CKTokenizationSearchResultCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKTokenizationSearchResultCell;
  v3 = [(CKTokenizationSearchResultCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(CKTokenizationSearchResultCell *)v3 setTintColor:labelColor];

  return v3;
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DB978];
  textCopy = text;
  v11 = [v8 systemFontOfSize:14.0 weight:v9];
  v12 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD00]];
  v13 = [v12 scaledFontForFont:v11];

  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v13];
  defaultContentConfiguration = [(CKTokenizationSearchResultCell *)self defaultContentConfiguration];
  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 searchSuggestionsImageToTextPadding];
  [defaultContentConfiguration setImageToTextPadding:?];

  v20 = resultCopy;
  v17 = [(CKTokenizationSearchResultCell *)self _displayStringForTokenResult:v20 searchText:textCopy];

  [defaultContentConfiguration setAttributedText:v17];
  image = [v20 image];

  v19 = [image imageByApplyingSymbolConfiguration:v14];
  [defaultContentConfiguration setImage:v19];

  [(CKTokenizationSearchResultCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (id)_displayStringForTokenResult:(id)result searchText:(id)text
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DB978];
  textCopy = text;
  resultCopy = result;
  v9 = [v5 systemFontOfSize:16.0 weight:v6];
  v10 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v11 = [v10 scaledFontForFont:v9];

  v12 = [resultCopy attributedSuggestionTextForSearchText:textCopy font:v11];

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