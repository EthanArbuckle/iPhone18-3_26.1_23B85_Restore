@interface NUAddToSafariReadingListActivity
- (id)activityTitle;
@end

@implementation NUAddToSafariReadingListActivity

- (id)activityTitle
{
  v2 = NUBundle();
  v3 = [v2 localizedStringForKey:@"Add to Safari Reading List" value:&stru_286E03B58 table:0];

  return v3;
}

@end