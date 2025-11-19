@interface CUIKCalendarDescriptionGenerator
+ (id)localCalendarsGroupTitle;
@end

@implementation CUIKCalendarDescriptionGenerator

+ (id)localCalendarsGroupTitle
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"On My Mac" value:&stru_1F4AA8958 table:0];

  return v3;
}

@end