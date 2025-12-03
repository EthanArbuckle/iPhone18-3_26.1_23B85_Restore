@interface UITableViewCell(SafariExtras)
- (void)_safari_setLinkedPageTitle:()SafariExtras URL:;
- (void)_safari_setLinkedPageTitle:()SafariExtras description:;
@end

@implementation UITableViewCell(SafariExtras)

- (void)_safari_setLinkedPageTitle:()SafariExtras URL:
{
  v6 = a3;
  safari_stringForListDisplay = [a4 safari_stringForListDisplay];
  [self _safari_setLinkedPageTitle:v6 description:safari_stringForListDisplay];
}

- (void)_safari_setLinkedPageTitle:()SafariExtras description:
{
  v10 = a4;
  v6 = a3;
  textLabel = [self textLabel];
  [textLabel setLineBreakMode:4];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v10;
  }

  [textLabel setText:v8];

  if ([self style] == 3)
  {
    detailTextLabel = [self detailTextLabel];
    [detailTextLabel setLineBreakMode:5];
    [detailTextLabel setText:v10];
  }
}

@end