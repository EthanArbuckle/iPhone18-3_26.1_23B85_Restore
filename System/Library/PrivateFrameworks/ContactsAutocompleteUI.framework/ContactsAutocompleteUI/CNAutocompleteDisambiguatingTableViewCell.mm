@interface CNAutocompleteDisambiguatingTableViewCell
+ (id)createCheckmarkView;
- (CNAutocompleteDisambiguatingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)margins;
- (void)setCheckmarkVisible:(BOOL)visible;
- (void)setRecipient:(id)recipient;
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

- (CNAutocompleteDisambiguatingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = CNAutocompleteDisambiguatingTableViewCell;
  v4 = [(CNComposeTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    createCheckmarkView = [objc_opt_class() createCheckmarkView];
    [(CNAutocompleteDisambiguatingTableViewCell *)v4 setCheckmarkImageView:createCheckmarkView];

    v6 = objc_opt_class();
    checkmarkImageView = [(CNAutocompleteDisambiguatingTableViewCell *)v4 checkmarkImageView];
    [v6 requireIntrinsicSizeForView:checkmarkImageView];

    containerView = [(NUITableViewContainerCell *)v4 containerView];
    checkmarkImageView2 = [(CNAutocompleteDisambiguatingTableViewCell *)v4 checkmarkImageView];
    [containerView addArrangedSubview:checkmarkImageView2];

    titleLabel = [(CNComposeTableViewCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];
  }

  return v4;
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipient = [(CNComposeTableViewCell *)self recipient];

  if (recipient != recipientCopy)
  {
    v10.receiver = self;
    v10.super_class = CNAutocompleteDisambiguatingTableViewCell;
    [(CNComposeTableViewCell *)&v10 setRecipient:recipientCopy];
    address = [recipientCopy address];
    titleLabel = [(CNComposeTableViewCell *)self titleLabel];
    [titleLabel setText:address];

    label = [recipientCopy label];
    detailLabel = [(CNComposeTableViewCell *)self detailLabel];
    [detailLabel setText:label];
  }
}

- (void)setCheckmarkVisible:(BOOL)visible
{
  self->_checkmarkVisible = visible;
  visibleCopy = visible;
  checkmarkImageView = [(CNAutocompleteDisambiguatingTableViewCell *)self checkmarkImageView];
  [checkmarkImageView setAlpha:visibleCopy];
}

- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)margins
{
  leading = margins.leading;
  v5 = [CNAutocompleteResultsTableViewController avatarsAreHidden:margins.top];
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