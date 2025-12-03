@interface EKCalendarResourceChangeNotification(CUIKDescription)
- (id)_dateStringWithOptions:()CUIKDescription;
- (id)_resourceChangeStringWithOptions:()CUIKDescription dict:;
- (id)allDescriptionStringsWithOptions:()CUIKDescription;
- (id)descriptionStrings:()CUIKDescription;
- (uint64_t)_changedPropertyCount;
@end

@implementation EKCalendarResourceChangeNotification(CUIKDescription)

- (id)_resourceChangeStringWithOptions:()CUIKDescription dict:
{
  v6 = a4;
  v7 = +[CUIKNotificationDescriptionGenerator sharedGenerator];
  if ([self type] == 4)
  {
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"Added to %@ by %@" value:&stru_1F4AA8958 table:0];

    calendarName = [self calendarName];
LABEL_9:
    calendarName2 = [self _identityStringWithOptions:a3];
    v16 = 0;
    v17 = 1;
    goto LABEL_126;
  }

  if ([self type] != 5 && objc_msgSend(self, "type") != 13)
  {
    if ([self type] == 6 || objc_msgSend(self, "type") == 14)
    {
      dateChanged = [self dateChanged];
      v19 = [self timeChanged] + dateChanged;
      titleChanged = [self titleChanged];
      v21 = v19 + titleChanged + [self locationChanged];
      v22 = [self _identityStringWithOptions:a3];
      type = [self type];
      v17 = type == 6 && v22 != 0;
      if (v21 == 1)
      {
        if ([self dateChanged])
        {
          v25 = CUIKBundle();
          v26 = v25;
          if (v17)
          {
            v9 = [v25 localizedStringForKey:@"Date changed to %@ by %@" value:&stru_1F4AA8958 table:0];

            calendarName2 = v22;
          }

          else
          {
            v9 = [v25 localizedStringForKey:@"Date changed to %@" value:&stru_1F4AA8958 table:0];

            calendarName2 = 0;
          }

          _sharedDateFormatter = [v7 _sharedDateFormatter];
LABEL_124:
          v90 = _sharedDateFormatter;
          startDate = [self startDate];
          calendarName = [v90 stringFromDate:startDate];

          goto LABEL_125;
        }

        if ([self timeChanged])
        {
          v43 = MEMORY[0x1E6992F68];
          startDate2 = [self startDate];
          v45 = [v43 requiresSingularLocalizationForDate:startDate2];

          v46 = CUIKBundle();
          v47 = v46;
          if (v17)
          {
            if (v45)
            {
              v48 = @"Time changed to %@ by %@ (singular hour)";
            }

            else
            {
              v48 = @"Time changed to %@ by %@ (plural hour)";
            }

            v9 = [v46 localizedStringForKey:v48 value:@"Time changed to %@ by %@" table:0];

            calendarName2 = v22;
          }

          else
          {
            if (v45)
            {
              v81 = @"Time changed to %@ (singular hour)";
            }

            else
            {
              v81 = @"Time changed to %@ (plural hour)";
            }

            v9 = [v46 localizedStringForKey:v81 value:@"Time changed to %@" table:0];

            calendarName2 = 0;
          }

          _sharedDateFormatter = [v7 _sharedTimeFormatter];
          goto LABEL_124;
        }

        if ([self titleChanged])
        {
          v75 = CUIKBundle();
          if (v17)
          {
            v76 = @"Title changed by %@";
LABEL_90:
            v9 = [v75 localizedStringForKey:v76 value:&stru_1F4AA8958 table:0];

            goto LABEL_91;
          }

          v89 = @"Title changed";
        }

        else
        {
          if (![self locationChanged])
          {
            calendarName2 = 0;
            calendarName = 0;
            v9 = 0;
            goto LABEL_125;
          }

          location = [self location];
          v83 = [location length];

          if (v83)
          {
            v84 = v17;
          }

          else
          {
            v84 = 0;
          }

          v85 = CUIKBundle();
          v75 = v85;
          if (v84)
          {
            v9 = [v85 localizedStringForKey:@"Location changed to %@ by %@" value:&stru_1F4AA8958 table:0];

            calendarName2 = v22;
            calendarName = [self location];
            goto LABEL_125;
          }

          if (v17)
          {
            v76 = @"Location changed by %@";
            goto LABEL_90;
          }

          if (v83)
          {
            v9 = [v85 localizedStringForKey:@"Location changed to %@" value:&stru_1F4AA8958 table:0];

            location2 = [self location];
            goto LABEL_92;
          }

          v89 = @"Location changed.";
        }

        v9 = [v75 localizedStringForKey:v89 value:&stru_1F4AA8958 table:0];
      }

      else
      {
        if ((v21 - 1) > 1)
        {
          v49 = type;
          v50 = CUIKBundle();
          v51 = v50;
          if (v17)
          {
            v52 = @"Updated in %@ by %@";
          }

          else
          {
            v52 = @"Updated in %@";
          }

          if (v49 == 6)
          {
            v53 = v22;
          }

          else
          {
            v53 = 0;
          }

          v9 = [v50 localizedStringForKey:v52 value:&stru_1F4AA8958 table:0];

          calendarName = [self calendarName];
          calendarName2 = v53;
          goto LABEL_125;
        }

        if ([self dateChanged] && objc_msgSend(self, "timeChanged"))
        {
          v27 = CUIKBundle();
          v28 = v27;
          if (v17)
          {
            v29 = @"Date and time changed by %@";
          }

          else
          {
            v29 = @"Date and time changed";
          }

          v9 = [v27 localizedStringForKey:v29 value:&stru_1F4AA8958 table:0];
        }

        else
        {
          v9 = 0;
        }

        if ([self dateChanged] && objc_msgSend(self, "titleChanged"))
        {
          v54 = CUIKBundle();
          v55 = v54;
          if (v17)
          {
            v56 = @"Date and title changed by %@";
          }

          else
          {
            v56 = @"Date and title changed";
          }

          v57 = [v54 localizedStringForKey:v56 value:&stru_1F4AA8958 table:0];

          v9 = v57;
        }

        if ([self dateChanged] && objc_msgSend(self, "locationChanged"))
        {
          v58 = CUIKBundle();
          v59 = v58;
          if (v17)
          {
            v60 = @"Date and location changed by %@";
          }

          else
          {
            v60 = @"Date and location changed";
          }

          v61 = [v58 localizedStringForKey:v60 value:&stru_1F4AA8958 table:0];

          v9 = v61;
        }

        if ([self timeChanged] && objc_msgSend(self, "titleChanged"))
        {
          v62 = CUIKBundle();
          v63 = v62;
          if (v17)
          {
            v64 = @"Time and title changed by %@";
          }

          else
          {
            v64 = @"Time and title changed";
          }

          v65 = [v62 localizedStringForKey:v64 value:&stru_1F4AA8958 table:0];

          v9 = v65;
        }

        if ([self timeChanged] && objc_msgSend(self, "locationChanged"))
        {
          v66 = CUIKBundle();
          v67 = v66;
          if (v17)
          {
            v68 = @"Time and location changed by %@";
          }

          else
          {
            v68 = @"Time and location changed";
          }

          v69 = [v66 localizedStringForKey:v68 value:&stru_1F4AA8958 table:0];

          v9 = v69;
        }

        if ([self titleChanged] && objc_msgSend(self, "locationChanged"))
        {
          v70 = CUIKBundle();
          v71 = v70;
          if (!v17)
          {
            v88 = [v70 localizedStringForKey:@"Location and title changed" value:&stru_1F4AA8958 table:0];

            calendarName2 = 0;
            calendarName = 0;
            v9 = v88;
            goto LABEL_125;
          }

          v72 = [v70 localizedStringForKey:@"Location and title changed by %@" value:&stru_1F4AA8958 table:0];

          v9 = v72;
          goto LABEL_91;
        }

        if (v17)
        {
LABEL_91:
          location2 = v22;
LABEL_92:
          calendarName = location2;
          calendarName2 = 0;
LABEL_125:

          v16 = 0;
          goto LABEL_126;
        }
      }

      calendarName2 = 0;
      calendarName = 0;
      goto LABEL_125;
    }

    if ([self type] != 7)
    {
      if ([self type] == 11)
      {
        v73 = CUIKBundle();
        v9 = [v73 localizedStringForKey:@"This calendar is now public." value:&stru_1F4AA8958 table:0];

        v17 = 0;
        v16 = 0;
        calendarName2 = 0;
        calendarName = 0;
      }

      else
      {
        v17 = 0;
        v16 = 0;
        calendarName2 = 0;
        calendarName = 0;
        v9 = 0;
      }

      goto LABEL_126;
    }

    updateCount = [self updateCount];
    createCount = [self createCount];
    deleteCount = [self deleteCount];
    v108 = updateCount;
    intValue = [updateCount intValue];
    intValue2 = [createCount intValue];
    intValue3 = [deleteCount intValue];
    v36 = intValue3;
    if (intValue2 && !intValue3 && !intValue)
    {
      name = [self name];
      if (name || ([self emailAddress], (name = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        phoneNumber = [self phoneNumber];

        if (!phoneNumber)
        {
          v17 = 0;
          v38 = @"%@ events were added to %@.";
          goto LABEL_38;
        }
      }

      v17 = 1;
      v38 = @"%@ events were added to %@ by %@.";
LABEL_38:
      v39 = CUIKBundle();
      v9 = [v39 localizedStringForKey:v38 value:&stru_1F4AA8958 table:0];

      _sharedNumberFormatter = [v7 _sharedNumberFormatter];
      _sharedNumberFormatter2 = _sharedNumberFormatter;
      v42 = createCount;
LABEL_101:
      calendarName = [_sharedNumberFormatter stringFromNumber:v42];
LABEL_116:

      calendarName2 = [self calendarName];
      v16 = [self _identityStringWithOptions:a3];

      goto LABEL_126;
    }

    name2 = [self name];
    if (v36 && !intValue2 && !intValue)
    {
      if (name2 || ([self emailAddress], (name2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        phoneNumber2 = [self phoneNumber];

        if (!phoneNumber2)
        {
          v17 = 0;
          v79 = @"%@ events were deleted from %@.";
          goto LABEL_100;
        }
      }

      v17 = 1;
      v79 = @"%@ events were deleted from %@ by %@.";
LABEL_100:
      v80 = CUIKBundle();
      v9 = [v80 localizedStringForKey:v79 value:&stru_1F4AA8958 table:0];

      _sharedNumberFormatter = [v7 _sharedNumberFormatter];
      _sharedNumberFormatter2 = _sharedNumberFormatter;
      v42 = deleteCount;
      goto LABEL_101;
    }

    if (name2 || ([self emailAddress], (name2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      phoneNumber3 = [self phoneNumber];

      if (!phoneNumber3)
      {
        v17 = 0;
        v86 = @"%@ events were updated in %@.";
        goto LABEL_115;
      }
    }

    v17 = 1;
    v86 = @"%@ events were updated in %@ by %@.";
LABEL_115:
    v87 = CUIKBundle();
    v9 = [v87 localizedStringForKey:v86 value:&stru_1F4AA8958 table:0];

    LODWORD(v87) = [v108 intValue];
    v106 = [createCount intValue] + v87;
    LODWORD(v87) = [deleteCount intValue];
    _sharedNumberFormatter2 = [v7 _sharedNumberFormatter];
    v107 = [MEMORY[0x1E696AD98] numberWithInt:(v106 + v87)];
    calendarName = [_sharedNumberFormatter2 stringFromNumber:v107];

    goto LABEL_116;
  }

  type2 = [self type];
  v12 = CUIKBundle();
  v13 = v12;
  if (type2 == 5)
  {
    v14 = @"Deleted from %@ by %@";
  }

  else
  {
    v14 = @"Deleted from %@";
  }

  v9 = [v12 localizedStringForKey:v14 value:&stru_1F4AA8958 table:0];

  calendarName = [self calendarName];
  if (type2 == 5)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v16 = 0;
  calendarName2 = 0;
LABEL_126:
  if (v9)
  {
    v92 = calendarName == 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = !v92;
  if (calendarName2)
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  if (v94 == 1 && v16 != 0)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@%@" error:0, calendarName, calendarName2, v16];
    v96 = LABEL_142:;
    goto LABEL_143;
  }

  if (v94)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, calendarName, calendarName2, v105];
    goto LABEL_142;
  }

  if (v93)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, calendarName, v104, v105];
    goto LABEL_142;
  }

  if (v9)
  {
    v96 = v9;
LABEL_143:
    v97 = v96;
    if (!v6)
    {
      goto LABEL_154;
    }

    goto LABEL_144;
  }

  v99 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
  {
    [EKCalendarResourceChangeNotification(CUIKDescription) _resourceChangeStringWithOptions:self dict:v99];
  }

  v97 = 0;
  if (!v6)
  {
    goto LABEL_154;
  }

LABEL_144:
  if ([self _changedPropertyCount] == 1 && objc_msgSend(self, "dateChanged"))
  {
    v98 = @"Date";
    goto LABEL_157;
  }

LABEL_154:
  if (v17)
  {
    v98 = @"Person";
  }

  else
  {
    v98 = @"Action";
  }

LABEL_157:
  [v6 setObject:v97 forKeyedSubscript:v98];

  return v97;
}

- (id)_dateStringWithOptions:()CUIKDescription
{
  if (a3 & 0x40) == 0 || [self type] != 4 && (objc_msgSend(self, "type") != 6 || objc_msgSend(self, "_changedPropertyCount") == 1 && ((objc_msgSend(self, "dateChanged") & 1) != 0 || (objc_msgSend(self, "timeChanged"))))
  {
    v3 = 0;
  }

  else
  {
    allDay = [self allDay];
    startDateForNextOccurrence = [self startDateForNextOccurrence];
    v7 = startDateForNextOccurrence;
    if (startDateForNextOccurrence)
    {
      startDate = startDateForNextOccurrence;
    }

    else
    {
      startDate = [self startDate];
    }

    v9 = startDate;

    v10 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v3 = [v10 dateStringForDate:v9 allDay:allDay shortFormat:0];
  }

  return v3;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v5 = [self _resourceChangeStringWithOptions:a3 dict:0];
  v6 = [self _dateStringWithOptions:a3];
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  if (v6)
  {
    v8 = [v7 initWithObjects:{v6, v5, 0}];
  }

  else
  {
    v8 = [v7 initWithObjects:{v5, 0, v11}];
  }

  v9 = v8;

  return v9;
}

- (id)descriptionStrings:()CUIKDescription
{
  v5 = objc_opt_new();
  v6 = [self _resourceChangeStringWithOptions:a3 dict:v5];
  v7 = [self _dateStringWithOptions:a3];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"Date"];
  }

  return v5;
}

- (uint64_t)_changedPropertyCount
{
  LODWORD(v2) = [self dateChanged];
  timeChanged = [self timeChanged];
  v4 = 1;
  if (v2)
  {
    v4 = 2;
  }

  if (timeChanged)
  {
    v2 = v4;
  }

  else
  {
    v2 = v2;
  }

  v5 = v2 + [self titleChanged];
  return v5 + [self locationChanged];
}

- (void)_resourceChangeStringWithOptions:()CUIKDescription dict:.cold.1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a1 type];
  v5 = [objc_opt_class() description];
  v6[0] = 67110402;
  v6[1] = v4;
  v7 = 2114;
  v8 = v5;
  v9 = 1024;
  v10 = [a1 titleChanged];
  v11 = 1024;
  v12 = [a1 locationChanged];
  v13 = 1024;
  v14 = [a1 dateChanged];
  v15 = 1024;
  v16 = [a1 timeChanged];
  _os_log_fault_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_FAULT, "Unhandled type of %d for class %{public}@. With titleChange = %d, locationChange = %d, dateChange = %d and timeChange = %d. Can't generate human readable description.", v6, 0x2Au);
}

@end