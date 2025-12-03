@interface CNAutocompleteGroupExpansionTableViewCell
- (CNAutocompleteGroupExpansionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)margins;
@end

@implementation CNAutocompleteGroupExpansionTableViewCell

- (CNAutocompleteGroupExpansionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNAutocompleteGroupExpansionTableViewCell;
  v4 = [(CNComposeRecipientTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(CNComposeTableViewCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];

    detailLabel = [(CNComposeTableViewCell *)v5 detailLabel];
    [detailLabel setNumberOfLines:0];
  }

  return v5;
}

- (double)leadingInsetsFromCurrentMargins:(NSDirectionalEdgeInsets)margins
{
  leading = margins.leading;
  v5 = [CNAutocompleteResultsTableViewController avatarsAreHidden:margins.top];
  result = 0.0;
  if (!v5)
  {
    v8.receiver = self;
    v8.super_class = CNAutocompleteGroupExpansionTableViewCell;
    [-[CNAutocompleteGroupExpansionTableViewCell class](&v8 class];
    return leading + v7;
  }

  return result;
}

@end