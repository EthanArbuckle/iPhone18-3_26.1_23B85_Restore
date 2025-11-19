@interface CNAutocompleteDisambiguatingTableViewCell
+ (id)createCheckmarkView;
- (CNAutocompleteDisambiguatingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)a3;
- (void)setCheckmarkVisible:(BOOL)a3;
- (void)setRecipient:(id)a3;
@end

@implementation CNAutocompleteDisambiguatingTableViewCell

+ (id)createCheckmarkView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:2];
  v5 = [v3 imageWithConfiguration:v4];
  v6 = [v2 initWithImage:v5];

  [v6 setContentMode:4];

  return v6;
}

- (CNAutocompleteDisambiguatingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = CNAutocompleteDisambiguatingTableViewCell;
  v4 = [(CNComposeTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_opt_class() createCheckmarkView];
    [(CNAutocompleteDisambiguatingTableViewCell *)v4 setCheckmarkImageView:v5];

    v6 = objc_opt_class();
    v7 = [(CNAutocompleteDisambiguatingTableViewCell *)v4 checkmarkImageView];
    [v6 requireIntrinsicSizeForView:v7];

    v8 = [(NUITableViewContainerCell *)v4 containerView];
    v9 = [(CNAutocompleteDisambiguatingTableViewCell *)v4 checkmarkImageView];
    [v8 addArrangedSubview:v9];

    v10 = [(CNComposeTableViewCell *)v4 titleLabel];
    [v10 setNumberOfLines:0];
  }

  return v4;
}

- (void)setRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeTableViewCell *)self recipient];

  if (v5 != v4)
  {
    v10.receiver = self;
    v10.super_class = CNAutocompleteDisambiguatingTableViewCell;
    [(CNComposeTableViewCell *)&v10 setRecipient:v4];
    v6 = [v4 address];
    v7 = [(CNComposeTableViewCell *)self titleLabel];
    [v7 setText:v6];

    v8 = [v4 label];
    v9 = [(CNComposeTableViewCell *)self detailLabel];
    [v9 setText:v8];
  }
}

- (void)setCheckmarkVisible:(BOOL)a3
{
  self->_checkmarkVisible = a3;
  v3 = a3;
  v4 = [(CNAutocompleteDisambiguatingTableViewCell *)self checkmarkImageView];
  [v4 setAlpha:v3];
}

- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)a3
{
  leading = a3.leading;
  v5 = [CNAutocompleteResultsTableViewController avatarsAreHidden:a3.top];
  result = 0.0;
  if (!v5)
  {
    v8.receiver = self;
    v8.super_class = CNAutocompleteDisambiguatingTableViewCell;
    [-[CNAutocompleteDisambiguatingTableViewCell class](&v8 class];
    return leading + v7;
  }

  return result;
}

@end