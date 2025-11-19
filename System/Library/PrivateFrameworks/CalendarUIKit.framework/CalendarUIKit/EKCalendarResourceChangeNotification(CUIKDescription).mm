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
  if ([a1 type] == 4)
  {
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"Added to %@ by %@" value:&stru_1F4AA8958 table:0];

    v10 = [a1 calendarName];
LABEL_9:
    v15 = [a1 _identityStringWithOptions:a3];
    v16 = 0;
    v17 = 1;
    goto LABEL_126;
  }

  if ([a1 type] != 5 && objc_msgSend(a1, "type") != 13)
  {
    if ([a1 type] == 6 || objc_msgSend(a1, "type") == 14)
    {
      v18 = [a1 dateChanged];
      v19 = [a1 timeChanged] + v18;
      v20 = [a1 titleChanged];
      v21 = v19 + v20 + [a1 locationChanged];
      v22 = [a1 _identityStringWithOptions:a3];
      v23 = [a1 type];
      v17 = v23 == 6 && v22 != 0;
      if (v21 == 1)
      {
        if ([a1 dateChanged])
        {
          v25 = CUIKBundle();
          v26 = v25;
          if (v17)
          {
            v9 = [v25 localizedStringForKey:@"Date changed to %@ by %@" value:&stru_1F4AA8958 table:0];

            v15 = v22;
          }

          else
          {
            v9 = [v25 localizedStringForKey:@"Date changed to %@" value:&stru_1F4AA8958 table:0];

            v15 = 0;
          }

          v74 = [v7 _sharedDateFormatter];
LABEL_124:
          v90 = v74;
          v91 = [a1 startDate];
          v10 = [v90 stringFromDate:v91];

          goto LABEL_125;
        }

        if ([a1 timeChanged])
        {
          v43 = MEMORY[0x1E6992F68];
          v44 = [a1 startDate];
          v45 = [v43 requiresSingularLocalizationForDate:v44];

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

            v15 = v22;
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

            v15 = 0;
          }

          v74 = [v7 _sharedTimeFormatter];
          goto LABEL_124;
        }

        if ([a1 titleChanged])
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
          if (![a1 locationChanged])
          {
            v15 = 0;
            v10 = 0;
            v9 = 0;
            goto LABEL_125;
          }

          v82 = [a1 location];
          v83 = [v82 length];

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

            v15 = v22;
            v10 = [a1 location];
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

            v77 = [a1 location];
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
          v49 = v23;
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

          v10 = [a1 calendarName];
          v15 = v53;
          goto LABEL_125;
        }

        if ([a1 dateChanged] && objc_msgSend(a1, "timeChanged"))
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

        if ([a1 dateChanged] && objc_msgSend(a1, "titleChanged"))
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

        if ([a1 dateChanged] && objc_msgSend(a1, "locationChanged"))
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

        if ([a1 timeChanged] && objc_msgSend(a1, "titleChanged"))
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

        if ([a1 timeChanged] && objc_msgSend(a1, "locationChanged"))
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

        if ([a1 titleChanged] && objc_msgSend(a1, "locationChanged"))
        {
          v70 = CUIKBundle();
          v71 = v70;
          if (!v17)
          {
            v88 = [v70 localizedStringForKey:@"Location and title changed" value:&stru_1F4AA8958 table:0];

            v15 = 0;
            v10 = 0;
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
          v77 = v22;
LABEL_92:
          v10 = v77;
          v15 = 0;
LABEL_125:

          v16 = 0;
          goto LABEL_126;
        }
      }

      v15 = 0;
      v10 = 0;
      goto LABEL_125;
    }

    if ([a1 type] != 7)
    {
      if ([a1 type] == 11)
      {
        v73 = CUIKBundle();
        v9 = [v73 localizedStringForKey:@"This calendar is now public." value:&stru_1F4AA8958 table:0];

        v17 = 0;
        v16 = 0;
        v15 = 0;
        v10 = 0;
      }

      else
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v10 = 0;
        v9 = 0;
      }

      goto LABEL_126;
    }

    v30 = [a1 updateCount];
    v31 = [a1 createCount];
    v32 = [a1 deleteCount];
    v108 = v30;
    v33 = [v30 intValue];
    v34 = [v31 intValue];
    v35 = [v32 intValue];
    v36 = v35;
    if (v34 && !v35 && !v33)
    {
      v37 = [a1 name];
      if (v37 || ([a1 emailAddress], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v101 = [a1 phoneNumber];

        if (!v101)
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

      v40 = [v7 _sharedNumberFormatter];
      v41 = v40;
      v42 = v31;
LABEL_101:
      v10 = [v40 stringFromNumber:v42];
LABEL_116:

      v15 = [a1 calendarName];
      v16 = [a1 _identityStringWithOptions:a3];

      goto LABEL_126;
    }

    v78 = [a1 name];
    if (v36 && !v34 && !v33)
    {
      if (v78 || ([a1 emailAddress], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v103 = [a1 phoneNumber];

        if (!v103)
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

      v40 = [v7 _sharedNumberFormatter];
      v41 = v40;
      v42 = v32;
      goto LABEL_101;
    }

    if (v78 || ([a1 emailAddress], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v102 = [a1 phoneNumber];

      if (!v102)
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
    v106 = [v31 intValue] + v87;
    LODWORD(v87) = [v32 intValue];
    v41 = [v7 _sharedNumberFormatter];
    v107 = [MEMORY[0x1E696AD98] numberWithInt:(v106 + v87)];
    v10 = [v41 stringFromNumber:v107];

    goto LABEL_116;
  }

  v11 = [a1 type];
  v12 = CUIKBundle();
  v13 = v12;
  if (v11 == 5)
  {
    v14 = @"Deleted from %@ by %@";
  }

  else
  {
    v14 = @"Deleted from %@";
  }

  v9 = [v12 localizedStringForKey:v14 value:&stru_1F4AA8958 table:0];

  v10 = [a1 calendarName];
  if (v11 == 5)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v16 = 0;
  v15 = 0;
LABEL_126:
  if (v9)
  {
    v92 = v10 == 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = !v92;
  if (v15)
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  if (v94 == 1 && v16 != 0)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@%@" error:0, v10, v15, v16];
    v96 = LABEL_142:;
    goto LABEL_143;
  }

  if (v94)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v10, v15, v105];
    goto LABEL_142;
  }

  if (v93)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10, v104, v105];
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
    [EKCalendarResourceChangeNotification(CUIKDescription) _resourceChangeStringWithOptions:a1 dict:v99];
  }

  v97 = 0;
  if (!v6)
  {
    goto LABEL_154;
  }

LABEL_144:
  if ([a1 _changedPropertyCount] == 1 && objc_msgSend(a1, "dateChanged"))
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
  if (a3 & 0x40) == 0 || [a1 type] != 4 && (objc_msgSend(a1, "type") != 6 || objc_msgSend(a1, "_changedPropertyCount") == 1 && ((objc_msgSend(a1, "dateChanged") & 1) != 0 || (objc_msgSend(a1, "timeChanged"))))
  {
    v3 = 0;
  }

  else
  {
    v5 = [a1 allDay];
    v6 = [a1 startDateForNextOccurrence];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [a1 startDate];
    }

    v9 = v8;

    v10 = +[CUIKDateDescriptionGenerator sharedGenerator];
    v3 = [v10 dateStringForDate:v9 allDay:v5 shortFormat:0];
  }

  return v3;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v5 = [a1 _resourceChangeStringWithOptions:a3 dict:0];
  v6 = [a1 _dateStringWithOptions:a3];
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
  v6 = [a1 _resourceChangeStringWithOptions:a3 dict:v5];
  v7 = [a1 _dateStringWithOptions:a3];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"Date"];
  }

  return v5;
}

- (uint64_t)_changedPropertyCount
{
  LODWORD(v2) = [a1 dateChanged];
  v3 = [a1 timeChanged];
  v4 = 1;
  if (v2)
  {
    v4 = 2;
  }

  if (v3)
  {
    v2 = v4;
  }

  else
  {
    v2 = v2;
  }

  v5 = v2 + [a1 titleChanged];
  return v5 + [a1 locationChanged];
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