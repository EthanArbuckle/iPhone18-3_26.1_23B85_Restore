@interface CUIKAvailabilityDescriptionGenerator
+ (id)allInviteesCanAttendString;
+ (id)attendeeProposedANewTime:(id)time attendeeName:(id)name;
+ (id)failedString;
+ (id)proposeANewTimePlaceholderString;
+ (id)showMoreString;
+ (id)someInviteesCanAttendString;
+ (id)timeRangeStringWithStartDate:(id)date withEndDate:(id)endDate;
+ (id)waitingForAvailabilityQueryString;
+ (id)youProposedString;
@end

@implementation CUIKAvailabilityDescriptionGenerator

+ (id)waitingForAvailabilityQueryString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Waiting for availability results…" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)failedString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Unable to get availability" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)allInviteesCanAttendString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"All Invitees Can Attend" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)someInviteesCanAttendString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Some Invitees Can Attend" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)youProposedString
{
  v2 = CalSystemSolariumEnabled(self, a2);
  v3 = CUIKBundle();
  v4 = v3;
  if (v2)
  {
    v5 = @"Proposed";
  }

  else
  {
    v5 = @"You proposed";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F4AA8958 table:0];

  return v6;
}

+ (id)showMoreString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Show more…" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)proposeANewTimePlaceholderString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Propose a New Time" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)attendeeProposedANewTime:(id)time attendeeName:(id)name
{
  nameCopy = name;
  timeCopy = time;
  v7 = +[CUIKDateDescriptionGenerator sharedGenerator];
  v8 = [v7 dateStringForDate:timeCopy allDay:0 standalone:0 shortFormat:0];

  v9 = MEMORY[0x1E696AEC0];
  v10 = CUIKBundle();
  v11 = [v10 localizedStringForKey:@"%@ proposed %@." value:&stru_1F4AA8958 table:0];
  v12 = [v9 localizedStringWithFormat:v11, nameCopy, v8];

  return v12;
}

+ (id)timeRangeStringWithStartDate:(id)date withEndDate:(id)endDate
{
  endDateCopy = endDate;
  v6 = [date timeStringAlwaysIncludeMinutes:1];
  v7 = [endDateCopy timeStringAlwaysIncludeMinutes:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v6, v7];

  return v8;
}

@end