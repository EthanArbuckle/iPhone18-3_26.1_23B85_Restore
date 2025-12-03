@interface CKCalendarMediaObject
+ (id)UTITypes;
- (id)attachmentSummary:(unint64_t)summary;
@end

@implementation CKCalendarMediaObject

+ (id)UTITypes
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.ical.vcs";
  v4[1] = @"com.apple.ical.ics";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Calendars" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

@end