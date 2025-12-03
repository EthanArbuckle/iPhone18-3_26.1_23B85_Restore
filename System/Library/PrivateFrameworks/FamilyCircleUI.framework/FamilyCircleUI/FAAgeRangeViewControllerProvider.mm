@interface FAAgeRangeViewControllerProvider
- (id)ageRangeViewControllerForAccount:(id)account;
@end

@implementation FAAgeRangeViewControllerProvider

- (id)ageRangeViewControllerForAccount:(id)account
{
  accountCopy = account;
  v4 = [[_TtC14FamilyCircleUI29AgeRangeSharingViewController alloc] initWithAgeRangeAccountProtocol:accountCopy presentAsModal:0];

  return v4;
}

@end