@interface NAAddToSafariReadingListActivity
- (id)activityTitle;
@end

@implementation NAAddToSafariReadingListActivity

- (id)activityTitle
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Add to Safari Reading List" value:&stru_1F52B5BC8 table:0];

  return v3;
}

@end