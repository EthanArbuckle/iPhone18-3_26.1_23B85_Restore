@interface FAAgeRangeViewControllerProvider
- (id)ageRangeViewControllerForAccount:(id)a3;
@end

@implementation FAAgeRangeViewControllerProvider

- (id)ageRangeViewControllerForAccount:(id)a3
{
  v3 = a3;
  v4 = [[_TtC14FamilyCircleUI29AgeRangeSharingViewController alloc] initWithAgeRangeAccountProtocol:v3 presentAsModal:0];

  return v4;
}

@end