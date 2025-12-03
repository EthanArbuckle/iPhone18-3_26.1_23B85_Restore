@interface FMFFence
+ (BOOL)isAllowedAtLocation:(CLLocationCoordinate2D)location;
+ (NSString)genericFriendName;
+ (id)endDateForMuteTimespan:(unint64_t)timespan;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMuted;
- (BOOL)isOnMe;
- (BOOL)isRegionAllowed;
- (BOOL)shouldUseIDSTrigger;
- (FMFFence)initWithCoder:(id)coder;
- (FMFFence)initWithDictionary:(id)dictionary;
- (FMFFence)initWithRecipient:(id)recipient location:(id)location placemark:(id)placemark label:(id)label trigger:(id)trigger type:(id)type locationType:(unint64_t)locationType recurring:(BOOL)self0;
- (NSDate)inviteDate;
- (NSString)displayLocationName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)handlesForArray:(id)array;
- (id)localizedNotificationStringForFollower:(id)follower locationName:(id)name;
- (id)localizedRequestNotificationStringForFollower:(id)follower locationName:(id)name;
- (id)localizedSubtitleStringWithLocationName:(id)name;
- (id)localizedWillBeNotifiedStringForFollower:(id)follower locationName:(id)name;
- (id)locationForDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateFenceLocation:(id)location placemark:(id)placemark label:(id)label trigger:(id)trigger type:(id)type locationType:(unint64_t)locationType;
@end

@implementation FMFFence

- (NSString)displayLocationName
{
  label = [(FMFFence *)self label];
  v4 = [label length];

  if (v4)
  {
    label2 = [(FMFFence *)self label];
LABEL_3:
    v6 = 0;
    goto LABEL_11;
  }

  placemark = [(FMFFence *)self placemark];
  if (!placemark)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    label2 = [v11 localizedStringForKey:@"FENCE_GENERIC_LOCATION" value:&stru_285D7AA10 table:0];

    goto LABEL_3;
  }

  v6 = placemark;
  streetAddress = [placemark streetAddress];
  v9 = [streetAddress length];

  if (v9)
  {
    streetAddress2 = [v6 streetAddress];
LABEL_10:
    label2 = streetAddress2;
    goto LABEL_11;
  }

  streetName = [v6 streetName];
  v13 = [streetName length];

  if (v13)
  {
    streetAddress2 = [v6 streetName];
    goto LABEL_10;
  }

  locality = [v6 locality];
  v16 = [locality length];

  locality2 = [v6 locality];
  label2 = locality2;
  if (!v16)
  {
    v18 = [(__CFString *)locality2 length];

    if (v18)
    {
      streetAddress2 = [v6 locality];
      goto LABEL_10;
    }

    administrativeArea = [v6 administrativeArea];
    v20 = [administrativeArea length];

    if (v20)
    {
      streetAddress2 = [v6 administrativeArea];
      goto LABEL_10;
    }

    label2 = &stru_285D7AA10;
  }

LABEL_11:

  return label2;
}

+ (NSString)genericFriendName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FENCE_GENERIC_FRIEND" value:&stru_285D7AA10 table:0];

  return v3;
}

- (id)localizedNotificationStringForFollower:(id)follower locationName:(id)name
{
  followerCopy = follower;
  nameCopy = name;
  isRecurring = [(FMFFence *)self isRecurring];
  if (!nameCopy)
  {
    nameCopy = [(FMFFence *)self displayLocationName];
  }

  trigger = [(FMFFence *)self trigger];
  if (!followerCopy)
  {
    followerCopy = +[FMFFence genericFriendName];
  }

  if ([trigger isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"FENCE_NOTIFY_FRIEND_WHEN_I_ARRIVE_AT_LOCATION";
    v13 = @"FENCE_NOTIFY_FRIEND_WHEN_I_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_9:
    if (isRecurring)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = [v10 localizedStringForKey:v14 value:&stru_285D7AA10 table:0];

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v15, followerCopy, nameCopy];
LABEL_13:

    goto LABEL_14;
  }

  if ([trigger isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"FENCE_NOTIFY_FRIEND_WHEN_I_LEAVE_LOCATION";
    v13 = @"FENCE_NOTIFY_FRIEND_WHEN_I_LEAVE_LOCATION_EVERY_TIME";
    goto LABEL_9;
  }

  if ([trigger isEqualToString:@"scheduled"])
  {
    schedule = [(FMFFence *)self schedule];
    startHour = [schedule startHour];

    schedule2 = [(FMFFence *)self schedule];
    startMin = [schedule2 startMin];

    schedule3 = [(FMFFence *)self schedule];
    endHour = [schedule3 endHour];

    schedule4 = [(FMFFence *)self schedule];
    endMin = [schedule4 endMin];

    schedule5 = [(FMFFence *)self schedule];
    daysOfWeek = [schedule5 daysOfWeek];

    v15 = [FMFSchedule localizedTimeStringForHour:startHour andMinute:startMin timeStyle:1];
    if (startHour == endHour && startMin == endMin)
    {
      if (daysOfWeek == 127)
      {
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v29, followerCopy, nameCopy, v15];
      }

      else
      {
        v29 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v34 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v35, followerCopy, nameCopy, v15, v29];
      }
    }

    else
    {
      v29 = [FMFSchedule localizedTimeStringForHour:endHour andMinute:endMin timeStyle:1];
      if (daysOfWeek == 127)
      {
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v31, followerCopy, nameCopy, v15, v29];
      }

      else
      {
        v31 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v33, followerCopy, nameCopy, v15, v29, v31];
      }
    }

    goto LABEL_13;
  }

  nameCopy = &stru_285D7AA10;
LABEL_14:

  return nameCopy;
}

- (id)localizedRequestNotificationStringForFollower:(id)follower locationName:(id)name
{
  followerCopy = follower;
  nameCopy = name;
  isRecurring = [(FMFFence *)self isRecurring];
  if (!nameCopy)
  {
    nameCopy = [(FMFFence *)self displayLocationName];
  }

  trigger = [(FMFFence *)self trigger];
  if (!followerCopy)
  {
    followerCopy = +[FMFFence genericFriendName];
  }

  if ([trigger isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isRecurring)
    {
      v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_11:
      v12 = @"Localizable-TINKER";
      v13 = v10;
LABEL_20:
      v24 = [v13 localizedStringForKey:v11 value:&stru_285D7AA10 table:v12];

      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v24, followerCopy, nameCopy];
LABEL_21:

      goto LABEL_22;
    }

    v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARRIVE_AT_LOCATION";
    goto LABEL_19;
  }

  if ([trigger isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isRecurring)
    {
      v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_LEAVE_LOCATION_EVERY_TIME";
      goto LABEL_11;
    }

    v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_LEAVE_LOCATION";
LABEL_19:
    v13 = v10;
    v12 = 0;
    goto LABEL_20;
  }

  if ([trigger isEqualToString:@"scheduled"])
  {
    schedule = [(FMFFence *)self schedule];
    startHour = [schedule startHour];

    schedule2 = [(FMFFence *)self schedule];
    startMin = [schedule2 startMin];

    schedule3 = [(FMFFence *)self schedule];
    endHour = [schedule3 endHour];

    schedule4 = [(FMFFence *)self schedule];
    endMin = [schedule4 endMin];

    schedule5 = [(FMFFence *)self schedule];
    daysOfWeek = [schedule5 daysOfWeek];

    v24 = [FMFSchedule localizedTimeStringForHour:startHour andMinute:startMin timeStyle:1];
    if (startHour == endHour && startMin == endMin)
    {
      if (daysOfWeek == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v26, followerCopy, nameCopy, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v34, followerCopy, nameCopy, v24, v26];
      }
    }

    else
    {
      v26 = [FMFSchedule localizedTimeStringForHour:endHour andMinute:endMin timeStyle:1];
      if (daysOfWeek == 127)
      {
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v30, followerCopy, nameCopy, v24, v26];
      }

      else
      {
        v30 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v32, followerCopy, nameCopy, v24, v26, v30];
      }
    }

    goto LABEL_21;
  }

  nameCopy = &stru_285D7AA10;
LABEL_22:

  return nameCopy;
}

- (id)localizedWillBeNotifiedStringForFollower:(id)follower locationName:(id)name
{
  followerCopy = follower;
  nameCopy = name;
  isRecurring = [(FMFFence *)self isRecurring];
  if (!nameCopy)
  {
    nameCopy = [(FMFFence *)self displayLocationName];
  }

  trigger = [(FMFFence *)self trigger];
  if (!followerCopy)
  {
    followerCopy = +[FMFFence genericFriendName];
  }

  if ([trigger isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isRecurring)
    {
      v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_11:
      v12 = @"Localizable-TINKER";
      v13 = v10;
LABEL_20:
      v24 = [v13 localizedStringForKey:v11 value:&stru_285D7AA10 table:v12];

      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v24, followerCopy, nameCopy];
LABEL_21:

      goto LABEL_22;
    }

    v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARRIVE_AT_LOCATION";
    goto LABEL_19;
  }

  if ([trigger isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isRecurring)
    {
      v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_LEAVE_LOCATION_EVERY_TIME";
      goto LABEL_11;
    }

    v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_LEAVE_LOCATION";
LABEL_19:
    v13 = v10;
    v12 = 0;
    goto LABEL_20;
  }

  if ([trigger isEqualToString:@"scheduled"])
  {
    schedule = [(FMFFence *)self schedule];
    startHour = [schedule startHour];

    schedule2 = [(FMFFence *)self schedule];
    startMin = [schedule2 startMin];

    schedule3 = [(FMFFence *)self schedule];
    endHour = [schedule3 endHour];

    schedule4 = [(FMFFence *)self schedule];
    endMin = [schedule4 endMin];

    schedule5 = [(FMFFence *)self schedule];
    daysOfWeek = [schedule5 daysOfWeek];

    v24 = [FMFSchedule localizedTimeStringForHour:startHour andMinute:startMin timeStyle:1];
    if (startHour == endHour && startMin == endMin)
    {
      if (daysOfWeek == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v26, followerCopy, nameCopy, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v34, followerCopy, nameCopy, v24, v26];
      }
    }

    else
    {
      v26 = [FMFSchedule localizedTimeStringForHour:endHour andMinute:endMin timeStyle:1];
      if (daysOfWeek == 127)
      {
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v30, followerCopy, nameCopy, v24, v26];
      }

      else
      {
        v30 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v32, followerCopy, nameCopy, v24, v26, v30];
      }
    }

    goto LABEL_21;
  }

  nameCopy = &stru_285D7AA10;
LABEL_22:

  return nameCopy;
}

- (id)localizedSubtitleStringWithLocationName:(id)name
{
  nameCopy = name;
  isRecurring = [(FMFFence *)self isRecurring];
  if (!nameCopy)
  {
    nameCopy = [(FMFFence *)self displayLocationName];
  }

  trigger = [(FMFFence *)self trigger];
  if (([trigger isEqualToString:@"enter"] & 1) != 0 || objc_msgSend(trigger, "isEqualToString:", @"exit"))
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (isRecurring)
    {
      v9 = @"FENCE_NOTIFICATION_LOCATION_AND_EVERY_TIME";
    }

    else
    {
      v9 = @"FENCE_NOTIFICATION_LOCATION_AND_NEXT_TIME";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_285D7AA10 table:0];

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v10, nameCopy];
LABEL_9:

    goto LABEL_10;
  }

  if ([trigger isEqualToString:@"scheduled"])
  {
    schedule = [(FMFFence *)self schedule];
    startHour = [schedule startHour];

    schedule2 = [(FMFFence *)self schedule];
    startMin = [schedule2 startMin];

    schedule3 = [(FMFFence *)self schedule];
    endHour = [schedule3 endHour];

    schedule4 = [(FMFFence *)self schedule];
    endMin = [schedule4 endMin];

    schedule5 = [(FMFFence *)self schedule];
    daysOfWeek = [schedule5 daysOfWeek];

    v10 = [FMFSchedule localizedTimeStringForHour:startHour andMinute:startMin timeStyle:1];
    if (startHour == endHour && startMin == endMin)
    {
      if (daysOfWeek == 127)
      {
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v24, nameCopy, v10];
      }

      else
      {
        v24 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v30, nameCopy, v10, v24];
      }
    }

    else
    {
      v24 = [FMFSchedule localizedTimeStringForHour:endHour andMinute:endMin timeStyle:1];
      if (daysOfWeek == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v26, nameCopy, v10, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v28, nameCopy, v10, v24, v26];
      }
    }

    goto LABEL_9;
  }

  nameCopy = &stru_285D7AA10;
LABEL_10:

  return nameCopy;
}

+ (id)endDateForMuteTimespan:(unint64_t)timespan
{
  if (timespan == 1)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [currentCalendar startOfDayForDate:v4];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:v5 options:1024];

    if (v7)
    {
      currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [currentCalendar3 dateByAddingUnit:64 value:-1 toDate:v7 options:4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (FMFFence)initWithRecipient:(id)recipient location:(id)location placemark:(id)placemark label:(id)label trigger:(id)trigger type:(id)type locationType:(unint64_t)locationType recurring:(BOOL)self0
{
  v31 = *MEMORY[0x277D85DE8];
  recipientCopy = recipient;
  locationCopy = location;
  placemarkCopy = placemark;
  labelCopy = label;
  triggerCopy = trigger;
  typeCopy = type;
  v22 = [(FMFFence *)self init];
  if (v22)
  {
    v23 = LogCategory_Daemon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = recipientCopy;
      _os_log_impl(&dword_24A33F000, v23, OS_LOG_TYPE_DEFAULT, "FMFFence: initWithRecipient %@", &v29, 0xCu);
    }

    [(FMFFence *)v22 setRecipients:recipientCopy];
    [(FMFFence *)v22 setLocation:locationCopy];
    [(FMFFence *)v22 setPlacemark:placemarkCopy];
    [(FMFFence *)v22 setLabel:labelCopy];
    [(FMFFence *)v22 setTrigger:triggerCopy];
    [(FMFFence *)v22 setType:typeCopy];
    [(FMFFence *)v22 setLocationType:locationType];
    [(FMFFence *)v22 setRecurring:recurring];
    date = [MEMORY[0x277CBEAA8] date];
    [(FMFFence *)v22 setTimestamp:date];

    v25 = objc_opt_new();
    uUIDString = [v25 UUIDString];
    [(FMFFence *)v22 setPendingIdentifier:uUIDString];

    [(FMFFence *)v22 setActive:1];
    [(FMFFence *)v22 setFromMe:1];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (FMFFence)initWithDictionary:(id)dictionary
{
  v136 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(FMFFence *)self init];
  if (!v5)
  {
    goto LABEL_100;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"isOn"];
  null = [MEMORY[0x277CBEB68] null];
  if (v6 == null)
  {
    v125 = 0;
  }

  else
  {
    v125 = [dictionaryCopy objectForKeyedSubscript:@"isOn"];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"onetimeonly"];
  null2 = [MEMORY[0x277CBEB68] null];
  if (v8 == null2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"onetimeonly"];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
  null3 = [MEMORY[0x277CBEB68] null];
  v13 = MEMORY[0x277CBEBF8];
  if (v11 != null3)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v13 = v16;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"emails"];
  null4 = [MEMORY[0x277CBEB68] null];
  v19 = MEMORY[0x277CBEBF8];
  if (v17 == null4)
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"emails"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22;

    v24 = v23;
  }

  v25 = [v13 arrayByAddingObjectsFromArray:v24];
  v26 = [dictionaryCopy objectForKeyedSubscript:@"updateTimestamp"];
  null5 = [MEMORY[0x277CBEB68] null];
  if (v26 == null5)
  {
    v124 = 0;
  }

  else
  {
    v124 = [dictionaryCopy objectForKeyedSubscript:@"updateTimestamp"];
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"locationType"];
  null6 = [MEMORY[0x277CBEB68] null];
  v122 = v13;
  if (v28 == null6)
  {
    v123 = 0;
  }

  else
  {
    v123 = [dictionaryCopy objectForKeyedSubscript:@"locationType"];
  }

  v121 = v24;

  -[FMFFence setActive:](v5, "setActive:", [v125 BOOLValue]);
  v30 = [dictionaryCopy objectForKeyedSubscript:@"createdById"];
  null7 = [MEMORY[0x277CBEB68] null];
  if (v30 == null7)
  {
    [(FMFFence *)v5 setCreatedByIdentifier:&stru_285D7AA10];
  }

  else
  {
    v32 = [dictionaryCopy objectForKeyedSubscript:@"createdById"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setCreatedByIdentifier:v34];
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:@"followerIds"];
  null8 = [MEMORY[0x277CBEB68] null];
  if (v35 == null8)
  {
    [(FMFFence *)v5 setFollowerIds:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v37 = [dictionaryCopy objectForKeyedSubscript:@"followerIds"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v19;
    }

    [(FMFFence *)v5 setFollowerIds:v39];
  }

  v40 = [dictionaryCopy objectForKeyedSubscript:@"friendId"];
  null9 = [MEMORY[0x277CBEB68] null];
  if (v40 == null9)
  {
    [(FMFFence *)v5 setFriendIdentifier:&stru_285D7AA10];
  }

  else
  {
    v42 = [dictionaryCopy objectForKeyedSubscript:@"friendId"];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setFriendIdentifier:v44];
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  null10 = [MEMORY[0x277CBEB68] null];
  if (v45 == null10)
  {
    [(FMFFence *)v5 setIdentifier:&stru_285D7AA10];
  }

  else
  {
    v47 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setIdentifier:v49];
  }

  v50 = [dictionaryCopy objectForKeyedSubscript:@"label"];
  null11 = [MEMORY[0x277CBEB68] null];
  if (v50 == null11)
  {
    [(FMFFence *)v5 setLabel:&stru_285D7AA10];
  }

  else
  {
    v52 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setLabel:v54];
  }

  v55 = [(FMFFence *)v5 locationForDictionary:dictionaryCopy];
  [(FMFFence *)v5 setLocation:v55];

  v56 = [FMFPlacemark alloc];
  v57 = [dictionaryCopy objectForKeyedSubscript:@"fullAddress"];
  null12 = [MEMORY[0x277CBEB68] null];
  if (v57 == null12)
  {
    v59 = 0;
  }

  else
  {
    v59 = [dictionaryCopy objectForKeyedSubscript:@"fullAddress"];
  }

  v60 = [(FMFPlacemark *)v56 initWithDictionary:v59];
  [(FMFFence *)v5 setPlacemark:v60];

  if (v57 != null12)
  {
  }

  v61 = [(FMFFence *)v5 handlesForArray:v25];
  [(FMFFence *)v5 setRecipients:v61];

  -[FMFFence setRecurring:](v5, "setRecurring:", [v10 BOOLValue] ^ 1);
  v62 = MEMORY[0x277CBEAA8];
  [v124 doubleValue];
  v64 = [v62 dateWithTimeIntervalSince1970:v63 / 1000.0];
  [(FMFFence *)v5 setTimestamp:v64];

  v65 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
  null13 = [MEMORY[0x277CBEB68] null];
  if (v65 == null13)
  {
    [(FMFFence *)v5 setTrigger:0];
  }

  else
  {
    v67 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
    [(FMFFence *)v5 setTrigger:v67];
  }

  -[FMFFence setLocationType:](v5, "setLocationType:", [v123 intValue]);
  v68 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordName"];
  null14 = [MEMORY[0x277CBEB68] null];
  if (v68 == null14)
  {
    [(FMFFence *)v5 setCkRecordName:&stru_285D7AA10];
  }

  else
  {
    v70 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordName"];
    v71 = v70;
    if (v70)
    {
      v72 = v70;
    }

    else
    {
      v72 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setCkRecordName:v72];
  }

  v73 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
  null15 = [MEMORY[0x277CBEB68] null];
  if (v73 == null15)
  {
    [(FMFFence *)v5 setCkRecordZoneOwnerName:&stru_285D7AA10];
  }

  else
  {
    v75 = [dictionaryCopy objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
    v76 = v75;
    if (v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setCkRecordZoneOwnerName:v77];
  }

  v78 = [dictionaryCopy objectForKeyedSubscript:@"acceptanceStatus"];
  null16 = [MEMORY[0x277CBEB68] null];
  if (v78 == null16)
  {
    [(FMFFence *)v5 setAcceptanceStatus:&stru_285D7AA10];
  }

  else
  {
    v80 = [dictionaryCopy objectForKeyedSubscript:@"acceptanceStatus"];
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = &stru_285D7AA10;
    }

    [(FMFFence *)v5 setAcceptanceStatus:v82];
  }

  v83 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  null17 = [MEMORY[0x277CBEB68] null];
  if (v83 == null17)
  {
    v85 = 0;
  }

  else
  {
    v85 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  }

  lowercaseString = [v85 lowercaseString];
  v87 = @"NotifyMe";
  lowercaseString2 = [@"NotifyMe" lowercaseString];
  v89 = [lowercaseString isEqualToString:lowercaseString2];

  if (v89)
  {
    goto LABEL_86;
  }

  lowercaseString3 = [v85 lowercaseString];
  v87 = @"NotifyOthers";
  lowercaseString4 = [@"NotifyOthers" lowercaseString];
  v92 = [lowercaseString3 isEqualToString:lowercaseString4];

  if (v92)
  {
LABEL_86:
    [(FMFFence *)v5 setType:v87];
  }

  v93 = [dictionaryCopy objectForKeyedSubscript:@"fenceTimeRange"];
  null18 = [MEMORY[0x277CBEB68] null];
  v95 = null18;
  if (v93 == null18)
  {
  }

  else
  {
    v96 = [dictionaryCopy objectForKeyedSubscript:@"fenceTimeRange"];

    if (v96)
    {
      v97 = [[FMFSchedule alloc] initWithDictionary:v96];
      [(FMFFence *)v5 setSchedule:v97];

      goto LABEL_92;
    }
  }

  [(FMFFence *)v5 setSchedule:0];
  v96 = 0;
LABEL_92:
  v120 = v85;
  v98 = [dictionaryCopy objectForKeyedSubscript:@"muteEndDate"];
  null19 = [MEMORY[0x277CBEB68] null];
  if (v98 == null19)
  {
    [(FMFFence *)v5 setMuteEndDate:0];
  }

  else
  {
    v100 = [dictionaryCopy objectForKeyedSubscript:@"muteEndDate"];
    [(FMFFence *)v5 setMuteEndDate:v100];
  }

  trigger = [(FMFFence *)v5 trigger];
  if (!trigger)
  {
    goto LABEL_103;
  }

  v102 = trigger;
  type = [(FMFFence *)v5 type];
  if (!type)
  {
LABEL_102:

    goto LABEL_103;
  }

  v104 = type;
  location = [(FMFFence *)v5 location];
  if (!location)
  {

    goto LABEL_102;
  }

  v106 = location;
  timestamp = [(FMFFence *)v5 timestamp];

  if (timestamp)
  {

LABEL_100:
    v108 = v5;
    goto LABEL_106;
  }

LABEL_103:
  v109 = LogCategory_Daemon();
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FMFFence *)v5 identifier];
    trigger2 = [(FMFFence *)v5 trigger];
    type2 = [(FMFFence *)v5 type];
    [(FMFFence *)v5 location];
    v119 = v96;
    v113 = v10;
    v115 = v114 = v25;
    timestamp2 = [(FMFFence *)v5 timestamp];
    *buf = 138413314;
    v127 = identifier;
    v128 = 2112;
    v129 = trigger2;
    v130 = 2112;
    v131 = type2;
    v132 = 2112;
    v133 = v115;
    v134 = 2112;
    v135 = timestamp2;
    _os_log_impl(&dword_24A33F000, v109, OS_LOG_TYPE_DEFAULT, "FMFFence: Cannot initialize fence with nil value (Identifier:%@, trigger: %@, type: %@, location: %@, timestamp: %@)", buf, 0x34u);

    v25 = v114;
    v10 = v113;
    v96 = v119;
  }

  v108 = 0;
LABEL_106:

  v117 = *MEMORY[0x277D85DE8];
  return v108;
}

- (FMFFence)initWithCoder:(id)coder
{
  v59 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(FMFFence *)self init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAddress"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"recipients"];

  -[FMFFence setActive:](v5, "setActive:", [coderCopy decodeBoolForKey:@"isOn"]);
  -[FMFFence setFromMe:](v5, "setFromMe:", [coderCopy decodeBoolForKey:@"fromMe"]);
  -[FMFFence setRecurring:](v5, "setRecurring:", [coderCopy decodeBoolForKey:@"onetimeonly"]);
  v12 = [coderCopy decodeObjectForKey:@"createdById"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285D7AA10;
  }

  [(FMFFence *)v5 setCreatedByIdentifier:v14];

  v15 = [coderCopy decodeObjectForKey:@"followerIds"];
  [(FMFFence *)v5 setFollowerIds:v15];

  v16 = [coderCopy decodeObjectForKey:@"friendId"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_285D7AA10;
  }

  [(FMFFence *)v5 setFriendIdentifier:v18];

  v19 = [coderCopy decodeObjectForKey:@"id"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_285D7AA10;
  }

  [(FMFFence *)v5 setIdentifier:v21];

  v22 = [coderCopy decodeObjectForKey:@"label"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_285D7AA10;
  }

  [(FMFFence *)v5 setLabel:v24];

  v25 = [coderCopy decodeObjectForKey:@"updateTimestamp"];
  [(FMFFence *)v5 setTimestamp:v25];

  v26 = [coderCopy decodeObjectForKey:@"trigger"];
  [(FMFFence *)v5 setTrigger:v26];

  -[FMFFence setLocationType:](v5, "setLocationType:", [coderCopy decodeIntegerForKey:@"locationType"]);
  v27 = [coderCopy decodeObjectForKey:@"type"];
  v28 = @"NotifyMe";
  if (([v27 isEqualToString:@"NotifyMe"] & 1) != 0 || (v28 = @"NotifyOthers", objc_msgSend(v27, "isEqualToString:", @"NotifyOthers")))
  {
    [(FMFFence *)v5 setType:v28];
  }

  v29 = [coderCopy decodeObjectForKey:@"acceptanceStatus"];
  [(FMFFence *)v5 setAcceptanceStatus:v29];

  v30 = [coderCopy decodeObjectForKey:@"ckRecordName"];
  [(FMFFence *)v5 setCkRecordName:v30];

  v31 = [coderCopy decodeObjectForKey:@"ckRecordZoneOwnerName"];
  [(FMFFence *)v5 setCkRecordZoneOwnerName:v31];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fenceTimeRange"];
  [(FMFFence *)v5 setSchedule:v32];

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muteEndDate"];
  [(FMFFence *)v5 setMuteEndDate:v33];

  trigger = [(FMFFence *)v5 trigger];
  if (trigger)
  {
    v35 = trigger;
    type = [(FMFFence *)v5 type];

    if (type)
    {
      if (v6 && v7 && v11)
      {
        [(FMFFence *)v5 setLocation:v6];
        [(FMFFence *)v5 setPlacemark:v7];
        [(FMFFence *)v5 setRecipients:v11];

LABEL_23:
        v37 = v5;
        goto LABEL_27;
      }
    }
  }

  v38 = LogCategory_Daemon();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FMFFence *)v5 identifier];
    [(FMFFence *)v5 trigger];
    v40 = v48 = v7;
    type2 = [(FMFFence *)v5 type];
    location = [(FMFFence *)v5 location];
    [(FMFFence *)v5 timestamp];
    v47 = v11;
    v44 = v43 = v6;
    *buf = 138413314;
    v50 = identifier;
    v51 = 2112;
    v52 = v40;
    v53 = 2112;
    v54 = type2;
    v55 = 2112;
    v56 = location;
    v57 = 2112;
    v58 = v44;
    _os_log_impl(&dword_24A33F000, v38, OS_LOG_TYPE_DEFAULT, "FMFFence: Cannot initialize fence with nil value (Identifier:%@, trigger: %@, type: %@, location: %@, timestamp: %@)", buf, 0x34u);

    v6 = v43;
    v11 = v47;

    v7 = v48;
  }

  v37 = 0;
LABEL_27:

  v45 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)encodeWithCoder:(id)coder
{
  active = self->_active;
  coderCopy = coder;
  [coderCopy encodeBool:active forKey:@"isOn"];
  [coderCopy encodeBool:self->_fromMe forKey:@"fromMe"];
  [coderCopy encodeBool:self->_recurring forKey:@"onetimeonly"];
  [coderCopy encodeObject:self->_createdByIdentifier forKey:@"createdById"];
  [coderCopy encodeObject:self->_followerIds forKey:@"followerIds"];
  [coderCopy encodeObject:self->_friendIdentifier forKey:@"friendId"];
  [coderCopy encodeObject:self->_identifier forKey:@"id"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_placemark forKey:@"fullAddress"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
  [coderCopy encodeObject:self->_timestamp forKey:@"updateTimestamp"];
  [coderCopy encodeObject:self->_trigger forKey:@"trigger"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_locationType forKey:@"locationType"];
  [coderCopy encodeObject:self->_acceptanceStatus forKey:@"acceptanceStatus"];
  [coderCopy encodeObject:self->_ckRecordName forKey:@"ckRecordName"];
  [coderCopy encodeObject:self->_ckRecordZoneOwnerName forKey:@"ckRecordZoneOwnerName"];
  [coderCopy encodeObject:self->_schedule forKey:@"fenceTimeRange"];
  [coderCopy encodeObject:self->_muteEndDate forKey:@"muteEndDate"];
}

- (BOOL)isOnMe
{
  isFromMe = [(FMFFence *)self isFromMe];
  type = [(FMFFence *)self type];
  v5 = type;
  if (isFromMe)
  {
    v6 = @"NotifyOthers";
  }

  else
  {
    v6 = @"NotifyMe";
  }

  v7 = [type isEqualToString:v6];

  return v7;
}

- (BOOL)shouldUseIDSTrigger
{
  type = [(FMFFence *)self type];
  v5 = [type isEqualToString:@"NotifyMe"];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (![(FMFFence *)self isRecurring])
  {
    trigger = [(FMFFence *)self trigger];
    if ([trigger isEqualToString:@"scheduled"])
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_6:
    type2 = [(FMFFence *)self type];
    if ([type2 isEqualToString:@"NotifyOthers"])
    {
      trigger2 = [(FMFFence *)self trigger];
      v6 = [trigger2 isEqualToString:@"scheduled"];

      if ((v5 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v6 = 0;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (BOOL)isMuted
{
  muteEndDate = [(FMFFence *)self muteEndDate];

  if (muteEndDate)
  {
    muteEndDate2 = [(FMFFence *)self muteEndDate];
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = [muteEndDate2 compare:v5];

    if (v6 == 1)
    {
      return 1;
    }

    [(FMFFence *)self setMuteEndDate:0];
  }

  return 0;
}

- (NSDate)inviteDate
{
  trigger = [(FMFFence *)self trigger];
  v4 = [trigger isEqualToString:@"scheduled"];

  if (v4)
  {
    schedule = [(FMFFence *)self schedule];
    timestamp = [(FMFFence *)self timestamp];
    v7 = [schedule nextStartDateFrom:timestamp options:1024];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isRegionAllowed
{
  v3 = objc_opt_class();
  location = [(FMFFence *)self location];
  [location coordinate];
  LOBYTE(v3) = [v3 isAllowedAtLocation:?];

  return v3;
}

+ (BOOL)isAllowedAtLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  v5 = GEOSouthKoreaRegion();
  v6 = [v5 containsCoordinate:{latitude, longitude}];

  return v6 ^ 1;
}

- (void)updateFenceLocation:(id)location placemark:(id)placemark label:(id)label trigger:(id)trigger type:(id)type locationType:(unint64_t)locationType
{
  typeCopy = type;
  triggerCopy = trigger;
  labelCopy = label;
  placemarkCopy = placemark;
  [(FMFFence *)self setLocation:location];
  [(FMFFence *)self setPlacemark:placemarkCopy];

  [(FMFFence *)self setLabel:labelCopy];
  [(FMFFence *)self setTrigger:triggerCopy];

  [(FMFFence *)self setType:typeCopy];

  [(FMFFence *)self setLocationType:locationType];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setActive:self->_active];
  [v4 setCreatedByIdentifier:self->_createdByIdentifier];
  [v4 setFollowerIds:self->_followerIds];
  [v4 setFriendIdentifier:self->_friendIdentifier];
  [v4 setIdentifier:self->_identifier];
  [v4 setLabel:self->_label];
  [v4 setLocation:self->_location];
  [v4 setPlacemark:self->_placemark];
  [v4 setRecipients:self->_recipients];
  [v4 setRecurring:self->_recurring];
  [v4 setTimestamp:self->_timestamp];
  [v4 setTrigger:self->_trigger];
  [v4 setType:self->_type];
  [v4 setLocationType:self->_locationType];
  v5 = [(FMFSchedule *)self->_schedule copy];
  [v4 setSchedule:v5];

  v6 = [(NSDate *)self->_muteEndDate copy];
  [v4 setMuteEndDate:v6];

  [v4 setAcceptanceStatus:self->_acceptanceStatus];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(FMFFence *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v8 = 1;
    }

    else
    {
      pendingIdentifier = [(FMFFence *)self pendingIdentifier];
      pendingIdentifier2 = [v5 pendingIdentifier];
      v8 = [pendingIdentifier isEqualToString:pendingIdentifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(FMFFence *)self identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = [identifier hash];
  }

  else
  {
    pendingIdentifier = [(FMFFence *)self pendingIdentifier];
    v5 = [pendingIdentifier hash];
  }

  return v5;
}

- (id)locationForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  null = [MEMORY[0x277CBEB68] null];
  if (v4 == null)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  null2 = [MEMORY[0x277CBEB68] null];
  if (v7 == null2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
  null3 = [MEMORY[0x277CBEB68] null];
  if (v10 == null3)
  {
    v12 = 0;
  }

  else
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
  }

  v13 = 0;
  if (v6 && v9 && v12)
  {
    [v6 doubleValue];
    v15 = v14;
    [v9 doubleValue];
    v17 = CLLocationCoordinate2DMake(v15, v16);
    v18 = objc_alloc(MEMORY[0x277CE41F8]);
    [v12 doubleValue];
    v20 = v19;
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [v18 initWithCoordinate:date altitude:v17.latitude horizontalAccuracy:v17.longitude verticalAccuracy:0.0 timestamp:{v20, -1.0}];
  }

  return v13;
}

- (id)handlesForArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [FMFHandle handleWithId:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v22 = MEMORY[0x277CCACA8];
  identifier = [(FMFFence *)self identifier];
  isActive = [(FMFFence *)self isActive];
  location = [(FMFFence *)self location];
  locationType = [(FMFFence *)self locationType];
  label = [(FMFFence *)self label];
  type = [(FMFFence *)self type];
  trigger = [(FMFFence *)self trigger];
  isRecurring = [(FMFFence *)self isRecurring];
  isFromMe = [(FMFFence *)self isFromMe];
  friendIdentifier = [(FMFFence *)self friendIdentifier];
  recipients = [(FMFFence *)self recipients];
  followerIds = [(FMFFence *)self followerIds];
  schedule = [(FMFFence *)self schedule];
  v4 = [schedule description];
  muteEndDate = [(FMFFence *)self muteEndDate];
  ckRecordName = [(FMFFence *)self ckRecordName];
  ckRecordZoneOwnerName = [(FMFFence *)self ckRecordZoneOwnerName];
  acceptanceStatus = [(FMFFence *)self acceptanceStatus];
  v9 = [v22 stringWithFormat:@"<FMFFence 0x%lX: identifier: %@, isActive: %d, location: %@, locationType: %ld, label: %@, type: %@, trigger: %@, isRecurring: %d, isFromMe: %d, friendIdentifier: %@, recipient(s): %@, followerId(s): %@, schedule: %@, muteEndDate: %@, ckRecordName: %@ ckRecordZoneOwnerName: %@ acceptanceStatus: %@>", self, identifier, isActive, location, locationType, label, type, trigger, isRecurring, isFromMe, friendIdentifier, recipients, followerIds, v4, muteEndDate, ckRecordName, ckRecordZoneOwnerName, acceptanceStatus];

  return v9;
}

@end