@interface UITableViewCell(SafariExtras)
- (void)_safari_setLinkedPageTitle:()SafariExtras URL:;
- (void)_safari_setLinkedPageTitle:()SafariExtras description:;
@end

@implementation UITableViewCell(SafariExtras)

- (void)_safari_setLinkedPageTitle:()SafariExtras URL:
{
  v6 = a3;
  v7 = [a4 safari_stringForListDisplay];
  [a1 _safari_setLinkedPageTitle:v6 description:v7];
}

- (void)_safari_setLinkedPageTitle:()SafariExtras description:
{
  v10 = a4;
  v6 = a3;
  v7 = [a1 textLabel];
  [v7 setLineBreakMode:4];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v10;
  }

  [v7 setText:v8];

  if ([a1 style] == 3)
  {
    v9 = [a1 detailTextLabel];
    [v9 setLineBreakMode:5];
    [v9 setText:v10];
  }
}

@end