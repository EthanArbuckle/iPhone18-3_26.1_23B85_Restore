@interface FMFFence
+ (BOOL)isAllowedAtLocation:(CLLocationCoordinate2D)a3;
+ (NSString)genericFriendName;
+ (id)endDateForMuteTimespan:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMuted;
- (BOOL)isOnMe;
- (BOOL)isRegionAllowed;
- (BOOL)shouldUseIDSTrigger;
- (FMFFence)initWithCoder:(id)a3;
- (FMFFence)initWithDictionary:(id)a3;
- (FMFFence)initWithRecipient:(id)a3 location:(id)a4 placemark:(id)a5 label:(id)a6 trigger:(id)a7 type:(id)a8 locationType:(unint64_t)a9 recurring:(BOOL)a10;
- (NSDate)inviteDate;
- (NSString)displayLocationName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)handlesForArray:(id)a3;
- (id)localizedNotificationStringForFollower:(id)a3 locationName:(id)a4;
- (id)localizedRequestNotificationStringForFollower:(id)a3 locationName:(id)a4;
- (id)localizedSubtitleStringWithLocationName:(id)a3;
- (id)localizedWillBeNotifiedStringForFollower:(id)a3 locationName:(id)a4;
- (id)locationForDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateFenceLocation:(id)a3 placemark:(id)a4 label:(id)a5 trigger:(id)a6 type:(id)a7 locationType:(unint64_t)a8;
@end

@implementation FMFFence

- (NSString)displayLocationName
{
  v3 = [(FMFFence *)self label];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(FMFFence *)self label];
LABEL_3:
    v6 = 0;
    goto LABEL_11;
  }

  v7 = [(FMFFence *)self placemark];
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v11 localizedStringForKey:@"FENCE_GENERIC_LOCATION" value:&stru_285D7AA10 table:0];

    goto LABEL_3;
  }

  v6 = v7;
  v8 = [v7 streetAddress];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v6 streetAddress];
LABEL_10:
    v5 = v10;
    goto LABEL_11;
  }

  v12 = [v6 streetName];
  v13 = [v12 length];

  if (v13)
  {
    v10 = [v6 streetName];
    goto LABEL_10;
  }

  v15 = [v6 locality];
  v16 = [v15 length];

  v17 = [v6 locality];
  v5 = v17;
  if (!v16)
  {
    v18 = [(__CFString *)v17 length];

    if (v18)
    {
      v10 = [v6 locality];
      goto LABEL_10;
    }

    v19 = [v6 administrativeArea];
    v20 = [v19 length];

    if (v20)
    {
      v10 = [v6 administrativeArea];
      goto LABEL_10;
    }

    v5 = &stru_285D7AA10;
  }

LABEL_11:

  return v5;
}

+ (NSString)genericFriendName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FENCE_GENERIC_FRIEND" value:&stru_285D7AA10 table:0];

  return v3;
}

- (id)localizedNotificationStringForFollower:(id)a3 locationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMFFence *)self isRecurring];
  if (!v7)
  {
    v7 = [(FMFFence *)self displayLocationName];
  }

  v9 = [(FMFFence *)self trigger];
  if (!v6)
  {
    v6 = +[FMFFence genericFriendName];
  }

  if ([v9 isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"FENCE_NOTIFY_FRIEND_WHEN_I_ARRIVE_AT_LOCATION";
    v13 = @"FENCE_NOTIFY_FRIEND_WHEN_I_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_9:
    if (v8)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = [v10 localizedStringForKey:v14 value:&stru_285D7AA10 table:0];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:v15, v6, v7];
LABEL_13:

    goto LABEL_14;
  }

  if ([v9 isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"FENCE_NOTIFY_FRIEND_WHEN_I_LEAVE_LOCATION";
    v13 = @"FENCE_NOTIFY_FRIEND_WHEN_I_LEAVE_LOCATION_EVERY_TIME";
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"scheduled"])
  {
    v18 = [(FMFFence *)self schedule];
    v19 = [v18 startHour];

    v20 = [(FMFFence *)self schedule];
    v21 = [v20 startMin];

    v22 = [(FMFFence *)self schedule];
    v23 = [v22 endHour];

    v24 = [(FMFFence *)self schedule];
    v25 = [v24 endMin];

    v26 = [(FMFFence *)self schedule];
    v27 = [v26 daysOfWeek];

    v15 = [FMFSchedule localizedTimeStringForHour:v19 andMinute:v21 timeStyle:1];
    if (v19 == v23 && v21 == v25)
    {
      if (v27 == 127)
      {
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:v29, v6, v7, v15];
      }

      else
      {
        v29 = [FMFSchedule localizedDaysOfWeekStringFor:v27];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v34 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:v35, v6, v7, v15, v29];
      }
    }

    else
    {
      v29 = [FMFSchedule localizedTimeStringForHour:v23 andMinute:v25 timeStyle:1];
      if (v27 == 127)
      {
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:v31, v6, v7, v15, v29];
      }

      else
      {
        v31 = [FMFSchedule localizedDaysOfWeekStringFor:v27];
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"FENCE_NOTIFY_FRIEND_WHEN_I_AM_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:v33, v6, v7, v15, v29, v31];
      }
    }

    goto LABEL_13;
  }

  v16 = &stru_285D7AA10;
LABEL_14:

  return v16;
}

- (id)localizedRequestNotificationStringForFollower:(id)a3 locationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMFFence *)self isRecurring];
  if (!v7)
  {
    v7 = [(FMFFence *)self displayLocationName];
  }

  v9 = [(FMFFence *)self trigger];
  if (!v6)
  {
    v6 = +[FMFFence genericFriendName];
  }

  if ([v9 isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8)
    {
      v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_11:
      v12 = @"Localizable-TINKER";
      v13 = v10;
LABEL_20:
      v24 = [v13 localizedStringForKey:v11 value:&stru_285D7AA10 table:v12];

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v6, v7];
LABEL_21:

      goto LABEL_22;
    }

    v11 = @"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARRIVE_AT_LOCATION";
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8)
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

  if ([v9 isEqualToString:@"scheduled"])
  {
    v14 = [(FMFFence *)self schedule];
    v15 = [v14 startHour];

    v16 = [(FMFFence *)self schedule];
    v17 = [v16 startMin];

    v18 = [(FMFFence *)self schedule];
    v19 = [v18 endHour];

    v20 = [(FMFFence *)self schedule];
    v21 = [v20 endMin];

    v22 = [(FMFFence *)self schedule];
    v23 = [v22 daysOfWeek];

    v24 = [FMFSchedule localizedTimeStringForHour:v15 andMinute:v17 timeStyle:1];
    if (v15 == v19 && v17 == v21)
    {
      if (v23 == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v6, v7, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:v23];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v34, v6, v7, v24, v26];
      }
    }

    else
    {
      v26 = [FMFSchedule localizedTimeStringForHour:v19 andMinute:v21 timeStyle:1];
      if (v23 == 127)
      {
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v30, v6, v7, v24, v26];
      }

      else
      {
        v30 = [FMFSchedule localizedDaysOfWeekStringFor:v23];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"FENCE_FRIEND_REQUESTS_NOTIFICATION_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v32, v6, v7, v24, v26, v30];
      }
    }

    goto LABEL_21;
  }

  v27 = &stru_285D7AA10;
LABEL_22:

  return v27;
}

- (id)localizedWillBeNotifiedStringForFollower:(id)a3 locationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMFFence *)self isRecurring];
  if (!v7)
  {
    v7 = [(FMFFence *)self displayLocationName];
  }

  v9 = [(FMFFence *)self trigger];
  if (!v6)
  {
    v6 = +[FMFFence genericFriendName];
  }

  if ([v9 isEqualToString:@"enter"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8)
    {
      v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARRIVE_AT_LOCATION_EVERY_TIME";
LABEL_11:
      v12 = @"Localizable-TINKER";
      v13 = v10;
LABEL_20:
      v24 = [v13 localizedStringForKey:v11 value:&stru_285D7AA10 table:v12];

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v6, v7];
LABEL_21:

      goto LABEL_22;
    }

    v11 = @"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARRIVE_AT_LOCATION";
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"exit"])
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v8)
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

  if ([v9 isEqualToString:@"scheduled"])
  {
    v14 = [(FMFFence *)self schedule];
    v15 = [v14 startHour];

    v16 = [(FMFFence *)self schedule];
    v17 = [v16 startMin];

    v18 = [(FMFFence *)self schedule];
    v19 = [v18 endHour];

    v20 = [(FMFFence *)self schedule];
    v21 = [v20 endMin];

    v22 = [(FMFFence *)self schedule];
    v23 = [v22 daysOfWeek];

    v24 = [FMFSchedule localizedTimeStringForHour:v15 andMinute:v17 timeStyle:1];
    if (v15 == v19 && v17 == v21)
    {
      if (v23 == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v6, v7, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:v23];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v34, v6, v7, v24, v26];
      }
    }

    else
    {
      v26 = [FMFSchedule localizedTimeStringForHour:v19 andMinute:v21 timeStyle:1];
      if (v23 == 127)
      {
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v30, v6, v7, v24, v26];
      }

      else
      {
        v30 = [FMFSchedule localizedDaysOfWeekStringFor:v23];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"FENCE_FRIEND_WILL_BE_NOTIFIED_WHEN_YOU_ARE_NOT_AT_LOCATION_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:v32, v6, v7, v24, v26, v30];
      }
    }

    goto LABEL_21;
  }

  v27 = &stru_285D7AA10;
LABEL_22:

  return v27;
}

- (id)localizedSubtitleStringWithLocationName:(id)a3
{
  v4 = a3;
  v5 = [(FMFFence *)self isRecurring];
  if (!v4)
  {
    v4 = [(FMFFence *)self displayLocationName];
  }

  v6 = [(FMFFence *)self trigger];
  if (([v6 isEqualToString:@"enter"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"exit"))
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v5)
    {
      v9 = @"FENCE_NOTIFICATION_LOCATION_AND_EVERY_TIME";
    }

    else
    {
      v9 = @"FENCE_NOTIFICATION_LOCATION_AND_NEXT_TIME";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_285D7AA10 table:0];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v4];
LABEL_9:

    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"scheduled"])
  {
    v13 = [(FMFFence *)self schedule];
    v14 = [v13 startHour];

    v15 = [(FMFFence *)self schedule];
    v16 = [v15 startMin];

    v17 = [(FMFFence *)self schedule];
    v18 = [v17 endHour];

    v19 = [(FMFFence *)self schedule];
    v20 = [v19 endMin];

    v21 = [(FMFFence *)self schedule];
    v22 = [v21 daysOfWeek];

    v10 = [FMFSchedule localizedTimeStringForHour:v14 andMinute:v16 timeStyle:1];
    if (v14 == v18 && v16 == v20)
    {
      if (v22 == 127)
      {
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BY_TIME_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:v24, v4, v10];
      }

      else
      {
        v24 = [FMFSchedule localizedDaysOfWeekStringFor:v22];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BY_TIME_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:v30, v4, v10, v24];
      }
    }

    else
    {
      v24 = [FMFSchedule localizedTimeStringForHour:v18 andMinute:v20 timeStyle:1];
      if (v22 == 127)
      {
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BETWEEN_TIMES_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v4, v10, v24];
      }

      else
      {
        v26 = [FMFSchedule localizedDaysOfWeekStringFor:v22];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"FENCE_NOTIFICATION_LOCATION_AND_SCHEDULE_BETWEEN_TIMES_ON_DAYSLIST" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:v28, v4, v10, v24, v26];
      }
    }

    goto LABEL_9;
  }

  v11 = &stru_285D7AA10;
LABEL_10:

  return v11;
}

+ (id)endDateForMuteTimespan:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [v3 startOfDayForDate:v4];

    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [v6 dateByAddingUnit:16 value:1 toDate:v5 options:1024];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [v8 dateByAddingUnit:64 value:-1 toDate:v7 options:4];
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

- (FMFFence)initWithRecipient:(id)a3 location:(id)a4 placemark:(id)a5 label:(id)a6 trigger:(id)a7 type:(id)a8 locationType:(unint64_t)a9 recurring:(BOOL)a10
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [(FMFFence *)self init];
  if (v22)
  {
    v23 = LogCategory_Daemon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v16;
      _os_log_impl(&dword_24A33F000, v23, OS_LOG_TYPE_DEFAULT, "FMFFence: initWithRecipient %@", &v29, 0xCu);
    }

    [(FMFFence *)v22 setRecipients:v16];
    [(FMFFence *)v22 setLocation:v17];
    [(FMFFence *)v22 setPlacemark:v18];
    [(FMFFence *)v22 setLabel:v19];
    [(FMFFence *)v22 setTrigger:v20];
    [(FMFFence *)v22 setType:v21];
    [(FMFFence *)v22 setLocationType:a9];
    [(FMFFence *)v22 setRecurring:a10];
    v24 = [MEMORY[0x277CBEAA8] date];
    [(FMFFence *)v22 setTimestamp:v24];

    v25 = objc_opt_new();
    v26 = [v25 UUIDString];
    [(FMFFence *)v22 setPendingIdentifier:v26];

    [(FMFFence *)v22 setActive:1];
    [(FMFFence *)v22 setFromMe:1];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (FMFFence)initWithDictionary:(id)a3
{
  v136 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFFence *)self init];
  if (!v5)
  {
    goto LABEL_100;
  }

  v6 = [v4 objectForKeyedSubscript:@"isOn"];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v125 = 0;
  }

  else
  {
    v125 = [v4 objectForKeyedSubscript:@"isOn"];
  }

  v8 = [v4 objectForKeyedSubscript:@"onetimeonly"];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"onetimeonly"];
  }

  v11 = [v4 objectForKeyedSubscript:@"phoneNumbers"];
  v12 = [MEMORY[0x277CBEB68] null];
  v13 = MEMORY[0x277CBEBF8];
  if (v11 != v12)
  {
    v14 = [v4 objectForKeyedSubscript:@"phoneNumbers"];
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

  v17 = [v4 objectForKeyedSubscript:@"emails"];
  v18 = [MEMORY[0x277CBEB68] null];
  v19 = MEMORY[0x277CBEBF8];
  if (v17 == v18)
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v20 = [v4 objectForKeyedSubscript:@"emails"];
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
  v26 = [v4 objectForKeyedSubscript:@"updateTimestamp"];
  v27 = [MEMORY[0x277CBEB68] null];
  if (v26 == v27)
  {
    v124 = 0;
  }

  else
  {
    v124 = [v4 objectForKeyedSubscript:@"updateTimestamp"];
  }

  v28 = [v4 objectForKeyedSubscript:@"locationType"];
  v29 = [MEMORY[0x277CBEB68] null];
  v122 = v13;
  if (v28 == v29)
  {
    v123 = 0;
  }

  else
  {
    v123 = [v4 objectForKeyedSubscript:@"locationType"];
  }

  v121 = v24;

  -[FMFFence setActive:](v5, "setActive:", [v125 BOOLValue]);
  v30 = [v4 objectForKeyedSubscript:@"createdById"];
  v31 = [MEMORY[0x277CBEB68] null];
  if (v30 == v31)
  {
    [(FMFFence *)v5 setCreatedByIdentifier:&stru_285D7AA10];
  }

  else
  {
    v32 = [v4 objectForKeyedSubscript:@"createdById"];
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

  v35 = [v4 objectForKeyedSubscript:@"followerIds"];
  v36 = [MEMORY[0x277CBEB68] null];
  if (v35 == v36)
  {
    [(FMFFence *)v5 setFollowerIds:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v37 = [v4 objectForKeyedSubscript:@"followerIds"];
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

  v40 = [v4 objectForKeyedSubscript:@"friendId"];
  v41 = [MEMORY[0x277CBEB68] null];
  if (v40 == v41)
  {
    [(FMFFence *)v5 setFriendIdentifier:&stru_285D7AA10];
  }

  else
  {
    v42 = [v4 objectForKeyedSubscript:@"friendId"];
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

  v45 = [v4 objectForKeyedSubscript:@"id"];
  v46 = [MEMORY[0x277CBEB68] null];
  if (v45 == v46)
  {
    [(FMFFence *)v5 setIdentifier:&stru_285D7AA10];
  }

  else
  {
    v47 = [v4 objectForKeyedSubscript:@"id"];
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

  v50 = [v4 objectForKeyedSubscript:@"label"];
  v51 = [MEMORY[0x277CBEB68] null];
  if (v50 == v51)
  {
    [(FMFFence *)v5 setLabel:&stru_285D7AA10];
  }

  else
  {
    v52 = [v4 objectForKeyedSubscript:@"label"];
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

  v55 = [(FMFFence *)v5 locationForDictionary:v4];
  [(FMFFence *)v5 setLocation:v55];

  v56 = [FMFPlacemark alloc];
  v57 = [v4 objectForKeyedSubscript:@"fullAddress"];
  v58 = [MEMORY[0x277CBEB68] null];
  if (v57 == v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = [v4 objectForKeyedSubscript:@"fullAddress"];
  }

  v60 = [(FMFPlacemark *)v56 initWithDictionary:v59];
  [(FMFFence *)v5 setPlacemark:v60];

  if (v57 != v58)
  {
  }

  v61 = [(FMFFence *)v5 handlesForArray:v25];
  [(FMFFence *)v5 setRecipients:v61];

  -[FMFFence setRecurring:](v5, "setRecurring:", [v10 BOOLValue] ^ 1);
  v62 = MEMORY[0x277CBEAA8];
  [v124 doubleValue];
  v64 = [v62 dateWithTimeIntervalSince1970:v63 / 1000.0];
  [(FMFFence *)v5 setTimestamp:v64];

  v65 = [v4 objectForKeyedSubscript:@"trigger"];
  v66 = [MEMORY[0x277CBEB68] null];
  if (v65 == v66)
  {
    [(FMFFence *)v5 setTrigger:0];
  }

  else
  {
    v67 = [v4 objectForKeyedSubscript:@"trigger"];
    [(FMFFence *)v5 setTrigger:v67];
  }

  -[FMFFence setLocationType:](v5, "setLocationType:", [v123 intValue]);
  v68 = [v4 objectForKeyedSubscript:@"ckRecordName"];
  v69 = [MEMORY[0x277CBEB68] null];
  if (v68 == v69)
  {
    [(FMFFence *)v5 setCkRecordName:&stru_285D7AA10];
  }

  else
  {
    v70 = [v4 objectForKeyedSubscript:@"ckRecordName"];
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

  v73 = [v4 objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
  v74 = [MEMORY[0x277CBEB68] null];
  if (v73 == v74)
  {
    [(FMFFence *)v5 setCkRecordZoneOwnerName:&stru_285D7AA10];
  }

  else
  {
    v75 = [v4 objectForKeyedSubscript:@"ckRecordZoneOwnerName"];
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

  v78 = [v4 objectForKeyedSubscript:@"acceptanceStatus"];
  v79 = [MEMORY[0x277CBEB68] null];
  if (v78 == v79)
  {
    [(FMFFence *)v5 setAcceptanceStatus:&stru_285D7AA10];
  }

  else
  {
    v80 = [v4 objectForKeyedSubscript:@"acceptanceStatus"];
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

  v83 = [v4 objectForKeyedSubscript:@"type"];
  v84 = [MEMORY[0x277CBEB68] null];
  if (v83 == v84)
  {
    v85 = 0;
  }

  else
  {
    v85 = [v4 objectForKeyedSubscript:@"type"];
  }

  v86 = [v85 lowercaseString];
  v87 = @"NotifyMe";
  v88 = [@"NotifyMe" lowercaseString];
  v89 = [v86 isEqualToString:v88];

  if (v89)
  {
    goto LABEL_86;
  }

  v90 = [v85 lowercaseString];
  v87 = @"NotifyOthers";
  v91 = [@"NotifyOthers" lowercaseString];
  v92 = [v90 isEqualToString:v91];

  if (v92)
  {
LABEL_86:
    [(FMFFence *)v5 setType:v87];
  }

  v93 = [v4 objectForKeyedSubscript:@"fenceTimeRange"];
  v94 = [MEMORY[0x277CBEB68] null];
  v95 = v94;
  if (v93 == v94)
  {
  }

  else
  {
    v96 = [v4 objectForKeyedSubscript:@"fenceTimeRange"];

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
  v98 = [v4 objectForKeyedSubscript:@"muteEndDate"];
  v99 = [MEMORY[0x277CBEB68] null];
  if (v98 == v99)
  {
    [(FMFFence *)v5 setMuteEndDate:0];
  }

  else
  {
    v100 = [v4 objectForKeyedSubscript:@"muteEndDate"];
    [(FMFFence *)v5 setMuteEndDate:v100];
  }

  v101 = [(FMFFence *)v5 trigger];
  if (!v101)
  {
    goto LABEL_103;
  }

  v102 = v101;
  v103 = [(FMFFence *)v5 type];
  if (!v103)
  {
LABEL_102:

    goto LABEL_103;
  }

  v104 = v103;
  v105 = [(FMFFence *)v5 location];
  if (!v105)
  {

    goto LABEL_102;
  }

  v106 = v105;
  v107 = [(FMFFence *)v5 timestamp];

  if (v107)
  {

LABEL_100:
    v108 = v5;
    goto LABEL_106;
  }

LABEL_103:
  v109 = LogCategory_Daemon();
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    v110 = [(FMFFence *)v5 identifier];
    v111 = [(FMFFence *)v5 trigger];
    v112 = [(FMFFence *)v5 type];
    [(FMFFence *)v5 location];
    v119 = v96;
    v113 = v10;
    v115 = v114 = v25;
    v116 = [(FMFFence *)v5 timestamp];
    *buf = 138413314;
    v127 = v110;
    v128 = 2112;
    v129 = v111;
    v130 = 2112;
    v131 = v112;
    v132 = 2112;
    v133 = v115;
    v134 = 2112;
    v135 = v116;
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

- (FMFFence)initWithCoder:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFFence *)self init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAddress"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"recipients"];

  -[FMFFence setActive:](v5, "setActive:", [v4 decodeBoolForKey:@"isOn"]);
  -[FMFFence setFromMe:](v5, "setFromMe:", [v4 decodeBoolForKey:@"fromMe"]);
  -[FMFFence setRecurring:](v5, "setRecurring:", [v4 decodeBoolForKey:@"onetimeonly"]);
  v12 = [v4 decodeObjectForKey:@"createdById"];
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

  v15 = [v4 decodeObjectForKey:@"followerIds"];
  [(FMFFence *)v5 setFollowerIds:v15];

  v16 = [v4 decodeObjectForKey:@"friendId"];
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

  v19 = [v4 decodeObjectForKey:@"id"];
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

  v22 = [v4 decodeObjectForKey:@"label"];
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

  v25 = [v4 decodeObjectForKey:@"updateTimestamp"];
  [(FMFFence *)v5 setTimestamp:v25];

  v26 = [v4 decodeObjectForKey:@"trigger"];
  [(FMFFence *)v5 setTrigger:v26];

  -[FMFFence setLocationType:](v5, "setLocationType:", [v4 decodeIntegerForKey:@"locationType"]);
  v27 = [v4 decodeObjectForKey:@"type"];
  v28 = @"NotifyMe";
  if (([v27 isEqualToString:@"NotifyMe"] & 1) != 0 || (v28 = @"NotifyOthers", objc_msgSend(v27, "isEqualToString:", @"NotifyOthers")))
  {
    [(FMFFence *)v5 setType:v28];
  }

  v29 = [v4 decodeObjectForKey:@"acceptanceStatus"];
  [(FMFFence *)v5 setAcceptanceStatus:v29];

  v30 = [v4 decodeObjectForKey:@"ckRecordName"];
  [(FMFFence *)v5 setCkRecordName:v30];

  v31 = [v4 decodeObjectForKey:@"ckRecordZoneOwnerName"];
  [(FMFFence *)v5 setCkRecordZoneOwnerName:v31];

  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fenceTimeRange"];
  [(FMFFence *)v5 setSchedule:v32];

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muteEndDate"];
  [(FMFFence *)v5 setMuteEndDate:v33];

  v34 = [(FMFFence *)v5 trigger];
  if (v34)
  {
    v35 = v34;
    v36 = [(FMFFence *)v5 type];

    if (v36)
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
    v39 = [(FMFFence *)v5 identifier];
    [(FMFFence *)v5 trigger];
    v40 = v48 = v7;
    v41 = [(FMFFence *)v5 type];
    v42 = [(FMFFence *)v5 location];
    [(FMFFence *)v5 timestamp];
    v47 = v11;
    v44 = v43 = v6;
    *buf = 138413314;
    v50 = v39;
    v51 = 2112;
    v52 = v40;
    v53 = 2112;
    v54 = v41;
    v55 = 2112;
    v56 = v42;
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

- (void)encodeWithCoder:(id)a3
{
  active = self->_active;
  v5 = a3;
  [v5 encodeBool:active forKey:@"isOn"];
  [v5 encodeBool:self->_fromMe forKey:@"fromMe"];
  [v5 encodeBool:self->_recurring forKey:@"onetimeonly"];
  [v5 encodeObject:self->_createdByIdentifier forKey:@"createdById"];
  [v5 encodeObject:self->_followerIds forKey:@"followerIds"];
  [v5 encodeObject:self->_friendIdentifier forKey:@"friendId"];
  [v5 encodeObject:self->_identifier forKey:@"id"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_placemark forKey:@"fullAddress"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
  [v5 encodeObject:self->_timestamp forKey:@"updateTimestamp"];
  [v5 encodeObject:self->_trigger forKey:@"trigger"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_locationType forKey:@"locationType"];
  [v5 encodeObject:self->_acceptanceStatus forKey:@"acceptanceStatus"];
  [v5 encodeObject:self->_ckRecordName forKey:@"ckRecordName"];
  [v5 encodeObject:self->_ckRecordZoneOwnerName forKey:@"ckRecordZoneOwnerName"];
  [v5 encodeObject:self->_schedule forKey:@"fenceTimeRange"];
  [v5 encodeObject:self->_muteEndDate forKey:@"muteEndDate"];
}

- (BOOL)isOnMe
{
  v3 = [(FMFFence *)self isFromMe];
  v4 = [(FMFFence *)self type];
  v5 = v4;
  if (v3)
  {
    v6 = @"NotifyOthers";
  }

  else
  {
    v6 = @"NotifyMe";
  }

  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (BOOL)shouldUseIDSTrigger
{
  v4 = [(FMFFence *)self type];
  v5 = [v4 isEqualToString:@"NotifyMe"];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (![(FMFFence *)self isRecurring])
  {
    v2 = [(FMFFence *)self trigger];
    if ([v2 isEqualToString:@"scheduled"])
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_6:
    v7 = [(FMFFence *)self type];
    if ([v7 isEqualToString:@"NotifyOthers"])
    {
      v8 = [(FMFFence *)self trigger];
      v6 = [v8 isEqualToString:@"scheduled"];

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
  v3 = [(FMFFence *)self muteEndDate];

  if (v3)
  {
    v4 = [(FMFFence *)self muteEndDate];
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = [v4 compare:v5];

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
  v3 = [(FMFFence *)self trigger];
  v4 = [v3 isEqualToString:@"scheduled"];

  if (v4)
  {
    v5 = [(FMFFence *)self schedule];
    v6 = [(FMFFence *)self timestamp];
    v7 = [v5 nextStartDateFrom:v6 options:1024];
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
  v4 = [(FMFFence *)self location];
  [v4 coordinate];
  LOBYTE(v3) = [v3 isAllowedAtLocation:?];

  return v3;
}

+ (BOOL)isAllowedAtLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = GEOSouthKoreaRegion();
  v6 = [v5 containsCoordinate:{latitude, longitude}];

  return v6 ^ 1;
}

- (void)updateFenceLocation:(id)a3 placemark:(id)a4 label:(id)a5 trigger:(id)a6 type:(id)a7 locationType:(unint64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  [(FMFFence *)self setLocation:a3];
  [(FMFFence *)self setPlacemark:v17];

  [(FMFFence *)self setLabel:v16];
  [(FMFFence *)self setTrigger:v15];

  [(FMFFence *)self setType:v14];

  [(FMFFence *)self setLocationType:a8];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMFFence *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = 1;
    }

    else
    {
      v9 = [(FMFFence *)self pendingIdentifier];
      v10 = [v5 pendingIdentifier];
      v8 = [v9 isEqualToString:v10];
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
  v3 = [(FMFFence *)self identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v6 = [(FMFFence *)self pendingIdentifier];
    v5 = [v6 hash];
  }

  return v5;
}

- (id)locationForDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"latitude"];
  v5 = [MEMORY[0x277CBEB68] null];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"latitude"];
  }

  v7 = [v3 objectForKeyedSubscript:@"longitude"];
  v8 = [MEMORY[0x277CBEB68] null];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v3 objectForKeyedSubscript:@"longitude"];
  }

  v10 = [v3 objectForKeyedSubscript:@"radius"];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v3 objectForKeyedSubscript:@"radius"];
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
    v21 = [MEMORY[0x277CBEAA8] date];
    v13 = [v18 initWithCoordinate:v21 altitude:v17.latitude horizontalAccuracy:v17.longitude verticalAccuracy:0.0 timestamp:{v20, -1.0}];
  }

  return v13;
}

- (id)handlesForArray:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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
  v21 = [(FMFFence *)self identifier];
  v20 = [(FMFFence *)self isActive];
  v19 = [(FMFFence *)self location];
  v18 = [(FMFFence *)self locationType];
  v23 = [(FMFFence *)self label];
  v16 = [(FMFFence *)self type];
  v12 = [(FMFFence *)self trigger];
  v15 = [(FMFFence *)self isRecurring];
  v14 = [(FMFFence *)self isFromMe];
  v13 = [(FMFFence *)self friendIdentifier];
  v11 = [(FMFFence *)self recipients];
  v3 = [(FMFFence *)self followerIds];
  v17 = [(FMFFence *)self schedule];
  v4 = [v17 description];
  v5 = [(FMFFence *)self muteEndDate];
  v6 = [(FMFFence *)self ckRecordName];
  v7 = [(FMFFence *)self ckRecordZoneOwnerName];
  v8 = [(FMFFence *)self acceptanceStatus];
  v9 = [v22 stringWithFormat:@"<FMFFence 0x%lX: identifier: %@, isActive: %d, location: %@, locationType: %ld, label: %@, type: %@, trigger: %@, isRecurring: %d, isFromMe: %d, friendIdentifier: %@, recipient(s): %@, followerId(s): %@, schedule: %@, muteEndDate: %@, ckRecordName: %@ ckRecordZoneOwnerName: %@ acceptanceStatus: %@>", self, v21, v20, v19, v18, v23, v16, v12, v15, v14, v13, v11, v3, v4, v5, v6, v7, v8];

  return v9;
}

@end