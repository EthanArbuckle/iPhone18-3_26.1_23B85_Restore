@interface CalRecurrenceRuleDescriptionGenerator
+ (id)_andDaysOfWeekString:(id)a3;
+ (id)_customDayCombinationDescription:(id)a3;
+ (id)_dayOfMonthAsString:(int64_t)a3;
+ (id)_daysOfWeek;
+ (id)_numberedWeekDayString:(id)a3;
+ (id)_orDaysOfWeekString:(id)a3;
+ (id)_weekDayPositionAsString:(int64_t)a3;
+ (id)humanReadableDescriptionWithStartDate:(id)a3 ofRecurrenceRuleICSString:(id)a4 isConcise:(BOOL)a5;
+ (id)localizedOfMonthStringForMonth:(id)a3;
+ (int64_t)daysTypeForDayArray:(id)a3;
@end

@implementation CalRecurrenceRuleDescriptionGenerator

+ (id)localizedOfMonthStringForMonth:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v4 intValue];

  if ((v6 - 1) > 0xB)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 localizedStringForKey:off_1E7EC7170[v6 - 1] value:&stru_1F379FFA8 table:0];
  }

  return v7;
}

+ (id)humanReadableDescriptionWithStartDate:(id)a3 ofRecurrenceRuleICSString:(id)a4 isConcise:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v175 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v174 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x1E69E3CD8] recurrenceRuleFromICSString:v8];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v171 = [v10 components:536 fromDate:v7];

  v11 = [v9 interval];
  v170 = [v11 integerValue];

  v12 = [v9 freq];
  v180 = [v9 byday];
  v172 = v9;
  v173 = [v9 bymonth];
  if (!humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray)
  {
    v13 = [v175 standaloneWeekdaySymbols];
    v14 = [v13 copy];
    v15 = humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray;
    humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray = v14;

    if ([humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray count] != 7)
    {
      NSLog(&cfstr_Nsdateformatte.isa);
      v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];
      v17 = humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray;
      humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableWeekDayArray = v16;
    }
  }

  if (!humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray)
  {
    v18 = [v175 standaloneMonthSymbols];
    v19 = [v18 copy];
    v20 = humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray;
    humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray = v19;

    if ([humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray count] != 12)
    {
      NSLog(&cfstr_Nsdateformatte_0.isa);
      v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];
      v22 = humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray;
      humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray = v21;
    }
  }

  v23 = 0;
  if (v12 <= 5)
  {
    if (v12 == 4)
    {
      v29 = MEMORY[0x1E696AEC0];
      if (v170 == 1)
      {
        if (v5)
        {
          v30 = @"daily";
        }

        else
        {
          v30 = @"Event will occur every day.";
        }

        goto LABEL_120;
      }

      if (v5)
      {
        v71 = @"every %ld days";
      }

      else
      {
        v71 = @"Event will occur every %ld days.";
      }

LABEL_122:
      v104 = [v174 localizedStringForKey:v71 value:&stru_1F379FFA8 table:0];
      v151 = v170;
      goto LABEL_123;
    }

    v24 = v12 == 5;
    v25 = v180;
    if (!v24)
    {
      goto LABEL_256;
    }

    if (!v180 || [v180 count] == 1 && (objc_msgSend(v180, "objectAtIndexedSubscript:", 0), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "weekday"), v28 = objc_msgSend(v171, "weekday"), v26, v25 = v180, v27 == v28))
    {
      v29 = MEMORY[0x1E696AEC0];
      if (v170 == 1)
      {
        if (v5)
        {
          v30 = @"weekly";
        }

        else
        {
          v30 = @"Event will occur every week.";
        }

LABEL_120:
        v104 = [v174 localizedStringForKey:v30 value:&stru_1F379FFA8 table:0];
LABEL_123:
        v23 = [v29 localizedStringWithFormat:v104, v151];

LABEL_255:
        v25 = v180;
        goto LABEL_256;
      }

      if (v5)
      {
        v71 = @"every %ld weeks";
      }

      else
      {
        v71 = @"Event will occur every %ld weeks.";
      }

      goto LABEL_122;
    }

    if (v170 == 1)
    {
      v72 = [objc_opt_class() daysTypeForDayArray:v25];
      v23 = 0;
      if (v72 > 1)
      {
        if (v72 == 2)
        {
          if (v5)
          {
            v73 = @"every weekday";
          }

          else
          {
            v73 = @"Event will occur every weekday.";
          }

LABEL_219:
          v23 = [v174 localizedStringForKey:v73 value:&stru_1F379FFA8 table:0];
          goto LABEL_256;
        }

        if (v72 != 3)
        {
          goto LABEL_256;
        }
      }

      else if (v72)
      {
        if (v72 != 1)
        {
          goto LABEL_256;
        }

        if (v5)
        {
          v73 = @"every day";
        }

        else
        {
          v73 = @"Event will occur every day.";
        }

        goto LABEL_219;
      }

      v90 = MEMORY[0x1E696AEC0];
      if (v5)
      {
        v107 = @"every week on %@";
      }

      else
      {
        v107 = @"Event will occur every week on %@.";
      }

      goto LABEL_185;
    }

    v90 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v91 = @"every %ld weeks on %@";
    }

    else
    {
      v91 = @"Event will occur every %ld weeks on %@.";
    }

    goto LABEL_133;
  }

  if (v12 == 6)
  {
    if ([v173 count])
    {
      v25 = v180;
      if (![v173 count])
      {
        v23 = 0;
        goto LABEL_256;
      }

LABEL_25:
      v160 = v5;
      v31 = v173;
      if ([v31 count] == 1)
      {
        v32 = [v31 objectAtIndex:0];
        v33 = [v32 integerValue];
        v34 = v33 == [v171 month];

        v25 = v180;
      }

      else
      {
        v34 = 0;
      }

      if (![v25 count] && (objc_msgSend(v31, "count") == 0 || v34))
      {
        v35 = MEMORY[0x1E696AEC0];
        if (v170 < 2)
        {
          if (v160)
          {
            v106 = @"yearly";
          }

          else
          {
            v106 = @"Event will occur every year.";
          }

          v137 = [v174 localizedStringForKey:v106 value:&stru_1F379FFA8 table:0];
        }

        else
        {
          if (v160)
          {
            v36 = @"every %ld years";
          }

          else
          {
            v36 = @"Event will occur every %ld years.";
          }

          v137 = [v174 localizedStringForKey:v36 value:&stru_1F379FFA8 table:0];
          v151 = v170;
        }

        v183 = v137;
        v23 = [v35 localizedStringWithFormat:v151];
        goto LABEL_254;
      }

      v156 = v8;
      v158 = v7;
      v183 = [MEMORY[0x1E696AD60] string];
      v181 = [MEMORY[0x1E696AD60] string];
      v37 = [v31 count];
      if (v37)
      {
        v38 = v37;
        v39 = 0;
        while (1)
        {
          v40 = [v31 objectAtIndex:v39];
          v41 = v40;
          if (v39)
          {
            break;
          }

          if ([v40 integerValue] < 1 || objc_msgSend(v41, "integerValue") >= 13)
          {
            [v183 appendString:@"???"];
          }

          else
          {
            v49 = [humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray objectAtIndex:{objc_msgSend(v41, "integerValue") - 1}];
            [v183 appendString:v49];
          }

LABEL_69:

          if (v38 == ++v39)
          {
            goto LABEL_70;
          }
        }

        v42 = v31;
        v43 = v39 + 1;
        v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v45 = v44;
        if (v39 + 1 >= v38)
        {
          if (v38 == 2)
          {
            v46 = [v44 localizedStringForKey:@" and %@" value:&stru_1F379FFA8 table:0];
            v48 = 0;
            v47 = 1;
            v164 = v45;
            v165 = v46;
          }

          else
          {
            v46 = [v44 localizedStringForKey:@"Recurrence rule last item format.  The last part of a list: X value:Y and Z. Here %@ is 'Z'" table:{@", and %@", 0}];
            v47 = 0;
            v48 = 1;
            v162 = v45;
            v163 = v46;
          }
        }

        else
        {
          v46 = [v44 localizedStringForKey:@" value:%@" table:{&stru_1F379FFA8, 0}];
          v47 = 0;
          v48 = 0;
          v177 = v45;
          v178 = v46;
        }

        if ([v41 integerValue] < 1 || objc_msgSend(v41, "integerValue") >= 13)
        {
          [v183 appendFormat:v46, @"???"];
          if (!v48)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v50 = [humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray objectAtIndex:{objc_msgSend(v41, "integerValue") - 1}];
          [v183 appendFormat:v46, v50];

          if (!v48)
          {
LABEL_51:
            if (v47)
            {
            }

            if (v43 >= v38)
            {
              v54 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v55 = v54;
              if (v38 == 2)
              {
                v51 = [v54 localizedStringForKey:@" and %@" value:&stru_1F379FFA8 table:0];
                v53 = 0;
                v52 = 1;
                v168 = v55;
                v169 = v51;
              }

              else
              {
                v51 = [v54 localizedStringForKey:@"Recurrence rule last item format.  The last part of a list: X value:Y and Z. Here %@ is 'Z'" table:{@", and %@", 0}];
                v52 = 0;
                v53 = 1;
                v166 = v55;
                v167 = v51;
              }
            }

            else
            {

              v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v51 = [v8 localizedStringForKey:@" value:%@" table:{&stru_1F379FFA8, 0}];
              v52 = 0;
              v53 = 0;
              v176 = v51;
            }

            if ([v41 integerValue] < 1 || objc_msgSend(v41, "integerValue") >= 13)
            {
              [v181 appendFormat:v51, @"???"];
              if (!v53)
              {
LABEL_64:
                if (v52)
                {
                }

                if (v43 < v38)
                {
                }

                v31 = v42;
                goto LABEL_69;
              }
            }

            else
            {
              v56 = [humanReadableDescriptionWithStartDate_ofRecurrenceRuleICSString_isConcise__readableMonthArray objectAtIndex:{objc_msgSend(v41, "integerValue") - 1}];
              [v181 appendFormat:v51, v56];

              if (!v53)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_64;
          }
        }

        goto LABEL_51;
      }

LABEL_70:
      v57 = [MEMORY[0x1E696AEC0] string];
      if ([v31 count])
      {
        v58 = objc_opt_class();
        v59 = [v31 objectAtIndexedSubscript:0];
        v60 = [v58 localizedOfMonthStringForMonth:v59];

        v61 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v60 validFormatSpecifiers:@"%@" error:0, v181];

        v57 = v61;
      }

      v62 = [v172 bysetpos];
      v63 = [v62 count];

      if (v63)
      {
        v64 = objc_opt_class();
        v65 = [v172 bysetpos];
        v66 = [v65 objectAtIndex:0];
        v67 = [v64 _weekDayPositionAsString:{objc_msgSend(v66, "integerValue")}];

        v68 = [v31 count];
        v69 = MEMORY[0x1E696AEC0];
        v8 = v156;
        v7 = v158;
        if (v68)
        {
          if (v170 != 1)
          {
            if (v160)
            {
              v92 = @"every %ld years on the %@ %@ %@";
            }

            else
            {
              v92 = @"every n years on a specific day of months";
            }

            v111 = [v174 localizedStringForKey:v92 value:&stru_1F379FFA8 table:0];
            v113 = [objc_opt_class() _orDaysOfWeekString:v180];
            [v69 localizedStringWithFormat:v111, v170, v67, v113, v57];
            goto LABEL_154;
          }

          if (v160)
          {
            v70 = @"every year on the %@ %@ %@";
          }

          else
          {
            v70 = @"Event will occur every year on the %@ %@ %@.";
          }

          v111 = [v174 localizedStringForKey:v70 value:&stru_1F379FFA8 table:0];
          v112 = [objc_opt_class() _orDaysOfWeekString:v180];
          v113 = v112;
          v154 = v57;
        }

        else
        {
          if (v170 != 1)
          {
            if (v160)
            {
              v105 = @"every n years on a specific day of the year concise";
            }

            else
            {
              v105 = @"every n years on a specific day of the year";
            }

            v111 = [v174 localizedStringForKey:v105 value:&stru_1F379FFA8 table:0];
            v113 = [objc_opt_class() _orDaysOfWeekString:v180];
            [v69 localizedStringWithFormat:v111, v170, v67, v113, v155];
            goto LABEL_154;
          }

          if (v160)
          {
            v88 = @"every year on a specific day of the year concise";
            v89 = @"every year on the %@ %@";
          }

          else
          {
            v88 = @"every year on a specific day of the year";
            v89 = @"Event will occur every year on the %@ %@.";
          }

          v111 = [v174 localizedStringForKey:v88 value:v89 table:0];
          v112 = [objc_opt_class() _orDaysOfWeekString:v180];
          v113 = v112;
        }

        [v69 localizedStringWithFormat:v111, v67, v112, v154, v155];
        v23 = LABEL_154:;

LABEL_252:
        goto LABEL_253;
      }

      v74 = [v180 objectAtIndex:0];
      v75 = [v74 number];
      v76 = [v75 integerValue];

      v8 = v156;
      v7 = v158;
      if (v76)
      {
        v77 = [v31 count];
        v78 = MEMORY[0x1E696AEC0];
        if (v77)
        {
          if (v170 != 1)
          {
            if (v160)
            {
              v119 = @"every %ld years on the %@ %@";
            }

            else
            {
              v119 = @"Event will occur every %ld years on the %@ %@.";
            }

            v67 = [v174 localizedStringForKey:v119 value:&stru_1F379FFA8 table:0];
            v111 = [objc_opt_class() _andDaysOfWeekString:v180];
            [v78 localizedStringWithFormat:v67, v170, v111, v57];
            goto LABEL_251;
          }

          if (v160)
          {
            v79 = @"every year on the %@ %@";
          }

          else
          {
            v79 = @"Event will occur every year on the %@ %@.";
          }

          v67 = [v174 localizedStringForKey:v79 value:&stru_1F379FFA8 table:0];
          v140 = [objc_opt_class() _andDaysOfWeekString:v180];
          v111 = v140;
          v153 = v57;
          goto LABEL_248;
        }

        if (v170 == 1)
        {
          if (v160)
          {
            v114 = @"every year on the %@";
          }

          else
          {
            v114 = @"Event will occur every year on the %@.";
          }

LABEL_247:
          v67 = [v174 localizedStringForKey:v114 value:&stru_1F379FFA8 table:0];
          v140 = [objc_opt_class() _andDaysOfWeekString:v180];
          v111 = v140;
LABEL_248:
          [v78 localizedStringWithFormat:v67, v140, v153, v154];
          v23 = LABEL_251:;
          goto LABEL_252;
        }

        if (v160)
        {
          v138 = @"every %ld years on the %@";
        }

        else
        {
          v138 = @"Event will occur every %ld years on the %@.";
        }

        goto LABEL_250;
      }

      if ([v180 count])
      {
        v93 = [v31 count];
        v78 = MEMORY[0x1E696AEC0];
        if (v93)
        {
          if (v170 != 1)
          {
            if (v160)
            {
              v145 = @"every %ld years on every %@ in %@";
            }

            else
            {
              v145 = @"Event will occur every %ld years on every %@ in %@.";
            }

            v67 = [v174 localizedStringForKey:v145 value:&stru_1F379FFA8 table:0];
            v111 = [objc_opt_class() _andDaysOfWeekString:v180];
            [v78 localizedStringWithFormat:v67, v170, v111, v183];
            goto LABEL_251;
          }

          if (v160)
          {
            v94 = @"every year on every %@ in %@";
          }

          else
          {
            v94 = @"Event will occur every year on every %@ in %@.";
          }

          v67 = [v174 localizedStringForKey:v94 value:&stru_1F379FFA8 table:0];
          v140 = [objc_opt_class() _andDaysOfWeekString:v180];
          v111 = v140;
          v153 = v183;
          goto LABEL_248;
        }

        if (v170 == 1)
        {
          if (v160)
          {
            v114 = @"every year on every %@";
          }

          else
          {
            v114 = @"Event will occur every year on every %@.";
          }

          goto LABEL_247;
        }

        if (v160)
        {
          v138 = @"every %ld years on every %@";
        }

        else
        {
          v138 = @"Event will occur every %ld years on every %@.";
        }

LABEL_250:
        v67 = [v174 localizedStringForKey:v138 value:&stru_1F379FFA8 table:0];
        v111 = [objc_opt_class() _andDaysOfWeekString:v180];
        [v78 localizedStringWithFormat:v67, v170, v111, v154];
        goto LABEL_251;
      }

      if (v170 == 1)
      {
        if (v160)
        {
          v67 = [v174 localizedStringForKey:@"every year in %@" value:&stru_1F379FFA8 table:0];
          [MEMORY[0x1E696AEC0] localizedStringWithFormat:v67, v183, v153];
          v23 = LABEL_243:;
LABEL_253:

LABEL_254:
          goto LABEL_255;
        }

        v146 = MEMORY[0x1E696AEC0];
        v67 = [v174 localizedStringForKey:@"Event will occur every year in %@." value:&stru_1F379FFA8 table:0];
        v149 = v183;
      }

      else
      {
        v146 = MEMORY[0x1E696AEC0];
        if (v160)
        {
          v147 = @"every %ld years in %@";
        }

        else
        {
          v147 = @"Event will occur every %ld years in %@.";
        }

        v67 = [v174 localizedStringForKey:v147 value:&stru_1F379FFA8 table:0];
        v153 = v183;
        v149 = v170;
      }

      [v146 localizedStringWithFormat:v67, v149, v153];
      goto LABEL_243;
    }

    v25 = v180;
    if ([v180 count])
    {
      v80 = [v172 bysetpos];
      v81 = [v80 count];

      if (v81)
      {
        v82 = objc_opt_class();
        v83 = [v172 bysetpos];
        v84 = [v83 objectAtIndex:0];
        v85 = [v82 _weekDayPositionAsString:{objc_msgSend(v84, "integerValue")}];

        v86 = MEMORY[0x1E696AEC0];
        if (v170 == 1)
        {
          if (v5)
          {
            v87 = @"every month on the %@ %@";
          }

          else
          {
            v87 = @"Event will occur every month on the %@ %@.";
          }

          v142 = [v174 localizedStringForKey:v87 value:&stru_1F379FFA8 table:0];
          v143 = [objc_opt_class() _orDaysOfWeekString:v180];
          [v86 localizedStringWithFormat:v142, v85, v143, v154];
        }

        else
        {
          if (v5)
          {
            v120 = @"every %ld months on the %@ %@";
          }

          else
          {
            v120 = @"Event will occur every %ld months on the %@ %@.";
          }

          v142 = [v174 localizedStringForKey:v120 value:&stru_1F379FFA8 table:0];
          v143 = [objc_opt_class() _orDaysOfWeekString:v180];
          [v86 localizedStringWithFormat:v142, v170, v85, v143];
        }
        v23 = ;

        goto LABEL_255;
      }

      v115 = [v180 objectAtIndex:0];
      v116 = [v115 number];
      v117 = [v116 integerValue];

      v90 = MEMORY[0x1E696AEC0];
      if (v117)
      {
        if (v170 == 1)
        {
          if (v5)
          {
            v107 = @"every month on the %@-XX01";
            v118 = @"every month on the %@";
          }

          else
          {
            v107 = @"Event will occur every month on the %@-XX01.";
            v118 = @"Event will occur every month on the %@.";
          }

          goto LABEL_186;
        }

        if (v5)
        {
          v91 = @"every %ld months on the %@-XX01";
        }

        else
        {
          v91 = @"Event will occur every %ld months on the %@-XX01.";
        }
      }

      else
      {
        if (v170 == 1)
        {
          if (v5)
          {
            v107 = @"every month on %@";
          }

          else
          {
            v107 = @"Event will occur every month on %@.";
          }

LABEL_185:
          v118 = &stru_1F379FFA8;
LABEL_186:
          v108 = [v174 localizedStringForKey:v107 value:v118 table:0];
          v109 = v180;
          v110 = [objc_opt_class() _andDaysOfWeekString:v180];
          v152 = v110;
          goto LABEL_187;
        }

        if (v5)
        {
          v91 = @"every %ld months on %@";
        }

        else
        {
          v91 = @"Event will occur every %ld months on %@.";
        }
      }

LABEL_133:
      v108 = [v174 localizedStringForKey:v91 value:&stru_1F379FFA8 table:0];
      v109 = v180;
      v110 = [objc_opt_class() _andDaysOfWeekString:v180];
      v152 = v170;
      v153 = v110;
LABEL_187:
      v139 = v90;
      v25 = v109;
      v23 = [v139 localizedStringWithFormat:v108, v152, v153];

      goto LABEL_256;
    }

    v95 = [v172 bymonthday];
    v96 = [v95 count];
    v184 = v95;
    if (!v95)
    {
      goto LABEL_116;
    }

    v97 = v96;
    if (v96 != 1)
    {
      goto LABEL_155;
    }

    v98 = [v95 objectAtIndex:0];
    v99 = [v98 integerValue];
    v100 = v8;
    v101 = [v171 day];

    v24 = v99 == v101;
    v8 = v100;
    v25 = v180;
    if (v24)
    {
LABEL_116:
      v102 = MEMORY[0x1E696AEC0];
      if (v170 == 1)
      {
        if (v5)
        {
          v103 = @"monthly";
        }

        else
        {
          v103 = @"Event will occur every month.";
        }

        v135 = [v174 localizedStringForKey:v103 value:&stru_1F379FFA8 table:0];
      }

      else
      {
        if (v5)
        {
          v141 = @"every %ld months";
        }

        else
        {
          v141 = @"Event will occur every %ld months.";
        }

        v135 = [v174 localizedStringForKey:v141 value:&stru_1F379FFA8 table:0];
        v151 = v170;
      }

      v23 = [v102 localizedStringWithFormat:v135, v151];
    }

    else
    {
LABEL_155:
      v161 = v5;
      v157 = v8;
      v159 = v7;
      v182 = [MEMORY[0x1E696AD60] string];
      if (v97)
      {
        v121 = 0;
        v179 = v97;
        do
        {
          if (v121)
          {
            v122 = v121 + 1;
            v123 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v124 = v123;
            if (v121 + 1 >= v97)
            {
              if (v97 == 2)
              {
                v125 = [v123 localizedStringForKey:@" and %@" value:&stru_1F379FFA8 table:0];
                v127 = 0;
                v126 = 1;
                v128 = v25;
                v129 = v7;
                v176 = v125;
                v177 = v124;
              }

              else
              {
                v125 = [v123 localizedStringForKey:@"Recurrence rule last item format.  The last part of a list: X value:Y and Z. Here %@ is 'Z'" table:{@", and %@", 0}];
                v126 = 0;
                v127 = 1;
                v128 = v25;
                v129 = v7;
                v168 = v125;
                v169 = v124;
              }
            }

            else
            {
              v125 = [v123 localizedStringForKey:@" value:%@" table:{&stru_1F379FFA8, 0}];
              v126 = 0;
              v127 = 0;
              v128 = v124;
              v129 = v125;
            }

            v131 = objc_opt_class();
            v132 = [v184 objectAtIndex:v121];
            v133 = [v131 _dayOfMonthAsString:{objc_msgSend(v132, "integerValue")}];
            [v182 appendFormat:v125, v133];

            if (v127)
            {
            }

            v97 = v179;
            if (v126)
            {
            }

            v25 = v128;
            v7 = v129;
            if (v122 >= v179)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v130 = objc_opt_class();
            v128 = [v184 objectAtIndex:0];
            v129 = [v130 _dayOfMonthAsString:{objc_msgSend(v128, "integerValue")}];
            [v182 appendString:v129];
            v122 = 1;
          }

          v128 = v25;
          v129 = v7;
LABEL_170:
          v121 = v122;
          v7 = v129;
          v25 = v128;
        }

        while (v122 != v97);
      }

      v134 = MEMORY[0x1E696AEC0];
      if (v170 == 1)
      {
        v8 = v157;
        v7 = v159;
        v135 = v182;
        if (v161)
        {
          v136 = @"every month on the %@";
        }

        else
        {
          v136 = @"Event will occur every month on the %@.";
        }

        v148 = [v174 localizedStringForKey:v136 value:&stru_1F379FFA8 table:0];
        [v134 localizedStringWithFormat:v148, v182, v153];
      }

      else
      {
        v8 = v157;
        v7 = v159;
        v135 = v182;
        if (v161)
        {
          v144 = @"every %ld months on the %@";
        }

        else
        {
          v144 = @"Event will occur every %ld months on the %@.";
        }

        v148 = [v174 localizedStringForKey:v144 value:&stru_1F379FFA8 table:0];
        [v134 localizedStringWithFormat:v148, v170, v182];
      }
      v23 = ;
      v25 = v180;
    }

    goto LABEL_256;
  }

  v24 = v12 == 7;
  v25 = v180;
  if (v24)
  {
    goto LABEL_25;
  }

LABEL_256:

  return v23;
}

+ (id)_andDaysOfWeekString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [v3 objectAtIndex:v7];
      if (v7)
      {
        ++v7;
        v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v10 = v9;
        if (v7 >= v6)
        {
          if (v6 == 2)
          {
            v11 = [v9 localizedStringForKey:@" and %@" value:&stru_1F379FFA8 table:0];
            v13 = 0;
            v12 = 1;
            v19 = v10;
            v20 = v11;
          }

          else
          {
            v11 = [v9 localizedStringForKey:@"Recurrence rule last item format.  The last part of a list: X value:Y and Z. Here %@ is 'Z'" table:{@", and %@", 0}];
            v12 = 0;
            v13 = 1;
            v17 = v10;
            v18 = v11;
          }
        }

        else
        {
          v11 = [v9 localizedStringForKey:@" value:%@" table:{&stru_1F379FFA8, 0}];
          v12 = 0;
          v13 = 0;
          v21 = v10;
          v22 = v11;
        }

        v15 = [objc_opt_class() _numberedWeekDayString:v8];
        [v4 appendFormat:v11, v15];

        if (v13)
        {
        }

        if (v12)
        {
        }

        if (v7 >= v6)
        {
          goto LABEL_17;
        }

        v14 = v21;
      }

      else
      {
        v14 = [objc_opt_class() _numberedWeekDayString:v8];
        [v4 appendString:v14];
        v7 = 1;
      }

LABEL_17:
    }

    while (v7 != v6);
  }

  return v4;
}

+ (id)_numberedWeekDayString:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v4 weekday];
  v7 = [v4 number];

  v8 = [objc_opt_class() _daysOfWeek];
  v9 = [v8 objectAtIndex:v6];

  if (v7)
  {
    v10 = [objc_opt_class() _weekDayPositionAsString:{objc_msgSend(v7, "integerValue")}];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v5 localizedStringForKey:@"%@ %@" value:&stru_1F379FFA8 table:0];
    v13 = [v11 localizedStringWithFormat:v12, v10, v9];
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

+ (id)_daysOfWeek
{
  if (_daysOfWeek_onceToken != -1)
  {
    +[CalRecurrenceRuleDescriptionGenerator _daysOfWeek];
  }

  v3 = _daysOfWeek_sDaysOfWeek;

  return v3;
}

void __52__CalRecurrenceRuleDescriptionGenerator__daysOfWeek__block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v0 = [v4 standaloneWeekdaySymbols];
  v1 = [v0 mutableCopy];

  if ([v1 count] == 7)
  {
    [v1 insertObject:&stru_1F379FFA8 atIndex:0];
    v2 = [MEMORY[0x1E695DEC8] arrayWithArray:v1];
  }

  else
  {
    NSLog(&cfstr_Nsdateformatte.isa);
    v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&stru_1F379FFA8, @"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];
  }

  v3 = _daysOfWeek_sDaysOfWeek;
  _daysOfWeek_sDaysOfWeek = v2;
}

+ (id)_dayOfMonthAsString:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F379FFA8;
  switch(a3)
  {
    case -1:
      v7 = @"last day";
      v8 = &stru_1F379FFA8;
      goto LABEL_34;
    case 1:
      v7 = @"1st-XX01";
      v8 = @"1st";
      goto LABEL_34;
    case 2:
      v7 = @"2nd-XX01";
      v8 = @"2nd";
      goto LABEL_34;
    case 3:
      v7 = @"3rd-XX01";
      v8 = @"3rd";
      goto LABEL_34;
    case 4:
      v7 = @"4th-XX01";
      v8 = @"4th";
      goto LABEL_34;
    case 5:
      v7 = @"5th-XX01";
      v8 = @"5th";
      goto LABEL_34;
    case 6:
      v7 = @"6th-XX01";
      v8 = @"6th";
      goto LABEL_34;
    case 7:
      v7 = @"7th-XX01";
      v8 = @"7th";
      goto LABEL_34;
    case 8:
      v7 = @"8th-XX01";
      v8 = @"8th";
      goto LABEL_34;
    case 9:
      v7 = @"9th-XX01";
      v8 = @"9th";
      goto LABEL_34;
    case 10:
      v7 = @"10th-XX01";
      v8 = @"10th";
      goto LABEL_34;
    case 11:
      v7 = @"11th-XX01";
      v8 = @"11th";
      goto LABEL_34;
    case 12:
      v7 = @"12th-XX01";
      v8 = @"12th";
      goto LABEL_34;
    case 13:
      v7 = @"13th-XX01";
      v8 = @"13th";
      goto LABEL_34;
    case 14:
      v7 = @"14th-XX01";
      v8 = @"14th";
      goto LABEL_34;
    case 15:
      v7 = @"15th-XX01";
      v8 = @"15th";
      goto LABEL_34;
    case 16:
      v7 = @"16th-XX01";
      v8 = @"16th";
      goto LABEL_34;
    case 17:
      v7 = @"17th-XX01";
      v8 = @"17th";
      goto LABEL_34;
    case 18:
      v7 = @"18th-XX01";
      v8 = @"18th";
      goto LABEL_34;
    case 19:
      v7 = @"19th-XX01";
      v8 = @"19th";
      goto LABEL_34;
    case 20:
      v7 = @"20th-XX01";
      v8 = @"20th";
      goto LABEL_34;
    case 21:
      v7 = @"21st-XX01";
      v8 = @"21st";
      goto LABEL_34;
    case 22:
      v7 = @"22nd-XX01";
      v8 = @"22nd";
      goto LABEL_34;
    case 23:
      v7 = @"23rd-XX01";
      v8 = @"23rd";
      goto LABEL_34;
    case 24:
      v7 = @"24th-XX01";
      v8 = @"24th";
      goto LABEL_34;
    case 25:
      v7 = @"25th-XX01";
      v8 = @"25th";
      goto LABEL_34;
    case 26:
      v7 = @"26th-XX01";
      v8 = @"26th";
      goto LABEL_34;
    case 27:
      v7 = @"27th-XX01";
      v8 = @"27th";
      goto LABEL_34;
    case 28:
      v7 = @"28th-XX01";
      v8 = @"28th";
      goto LABEL_34;
    case 29:
      v7 = @"29th-XX01";
      v8 = @"29th";
      goto LABEL_34;
    case 30:
      v7 = @"30th-XX01";
      v8 = @"30th";
      goto LABEL_34;
    case 31:
      v7 = @"31st-XX01";
      v8 = @"31st";
LABEL_34:
      v6 = [v4 localizedStringForKey:v7 value:v8 table:@"RecurrenceRule"];
      break;
    default:
      break;
  }

  return v6;
}

+ (id)_weekDayPositionAsString:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = &stru_1F379FFA8;
  switch(a3)
  {
    case -2:
      v7 = @"next to last";
      goto LABEL_25;
    case -1:
      v7 = @"last";
LABEL_25:
      v8 = &stru_1F379FFA8;
      goto LABEL_58;
    case 1:
      v7 = @"1st-XX02";
      v8 = @"1st";
      goto LABEL_58;
    case 2:
      v7 = @"2nd-XX02";
      v8 = @"2nd";
      goto LABEL_58;
    case 3:
      v7 = @"3rd-XX02";
      v8 = @"3rd";
      goto LABEL_58;
    case 4:
      v7 = @"4th-XX02";
      v8 = @"4th";
      goto LABEL_58;
    case 5:
      v7 = @"5th-XX02";
      v8 = @"5th";
      goto LABEL_58;
    case 6:
      v7 = @"6th-XX02";
      v8 = @"6th";
      goto LABEL_58;
    case 7:
      v7 = @"7th-XX02";
      v8 = @"7th";
      goto LABEL_58;
    case 8:
      v7 = @"8th-XX02";
      v8 = @"8th";
      goto LABEL_58;
    case 9:
      v7 = @"9th-XX02";
      v8 = @"9th";
      goto LABEL_58;
    case 10:
      v7 = @"10th-XX02";
      v8 = @"10th";
      goto LABEL_58;
    case 11:
      v7 = @"11th-XX02";
      v8 = @"11th";
      goto LABEL_58;
    case 12:
      v7 = @"12th-XX02";
      v8 = @"12th";
      goto LABEL_58;
    case 13:
      v7 = @"13th-XX02";
      v8 = @"13th";
      goto LABEL_58;
    case 14:
      v7 = @"14th-XX02";
      v8 = @"14th";
      goto LABEL_58;
    case 15:
      v7 = @"15th-XX02";
      v8 = @"15th";
      goto LABEL_58;
    case 16:
      v7 = @"16th-XX02";
      v8 = @"16th";
      goto LABEL_58;
    case 17:
      v7 = @"17th-XX02";
      v8 = @"17th";
      goto LABEL_58;
    case 18:
      v7 = @"18th-XX02";
      v8 = @"18th";
      goto LABEL_58;
    case 19:
      v7 = @"19th-XX02";
      v8 = @"19th";
      goto LABEL_58;
    case 20:
      v7 = @"20th-XX02";
      v8 = @"20th";
      goto LABEL_58;
    case 21:
      v7 = @"21st-XX02";
      v8 = @"21st";
      goto LABEL_58;
    case 22:
      v7 = @"22nd-XX02";
      v8 = @"22nd";
      goto LABEL_58;
    case 23:
      v7 = @"23rd-XX02";
      v8 = @"23rd";
      goto LABEL_58;
    case 24:
      v7 = @"24th-XX02";
      v8 = @"24th";
      goto LABEL_58;
    case 25:
      v7 = @"25th-XX02";
      v8 = @"25th";
      goto LABEL_58;
    case 26:
      v7 = @"26th-XX02";
      v8 = @"26th";
      goto LABEL_58;
    case 27:
      v7 = @"27th-XX02";
      v8 = @"27th";
      goto LABEL_58;
    case 28:
      v7 = @"28th-XX02";
      v8 = @"28th";
      goto LABEL_58;
    case 29:
      v7 = @"29th-XX02";
      v8 = @"29th";
      goto LABEL_58;
    case 30:
      v7 = @"30th-XX02";
      v8 = @"30th";
      goto LABEL_58;
    case 31:
      v7 = @"31st-XX02";
      v8 = @"31st";
      goto LABEL_58;
    case 32:
      v7 = @"32nd-XX02";
      v8 = @"32nd";
      goto LABEL_58;
    case 33:
      v7 = @"33rd-XX02";
      v8 = @"33rd";
      goto LABEL_58;
    case 34:
      v7 = @"34th-XX02";
      v8 = @"34th";
      goto LABEL_58;
    case 35:
      v7 = @"35th-XX02";
      v8 = @"35th";
      goto LABEL_58;
    case 36:
      v7 = @"36th-XX02";
      v8 = @"36th";
      goto LABEL_58;
    case 37:
      v7 = @"37th-XX02";
      v8 = @"37th";
      goto LABEL_58;
    case 38:
      v7 = @"38th-XX02";
      v8 = @"38th";
      goto LABEL_58;
    case 39:
      v7 = @"39th-XX02";
      v8 = @"39th";
      goto LABEL_58;
    case 40:
      v7 = @"40th-XX02";
      v8 = @"40th";
      goto LABEL_58;
    case 41:
      v7 = @"41st-XX02";
      v8 = @"41st";
      goto LABEL_58;
    case 42:
      v7 = @"42nd-XX02";
      v8 = @"42nd";
      goto LABEL_58;
    case 43:
      v7 = @"43rd-XX02";
      v8 = @"43rd";
      goto LABEL_58;
    case 44:
      v7 = @"44th-XX02";
      v8 = @"44th";
      goto LABEL_58;
    case 45:
      v7 = @"45th-XX02";
      v8 = @"45th";
      goto LABEL_58;
    case 46:
      v7 = @"46th-XX02";
      v8 = @"46th";
      goto LABEL_58;
    case 47:
      v7 = @"47th-XX02";
      v8 = @"47th";
      goto LABEL_58;
    case 48:
      v7 = @"48th-XX02";
      v8 = @"48th";
      goto LABEL_58;
    case 49:
      v7 = @"49th-XX02";
      v8 = @"49th";
      goto LABEL_58;
    case 50:
      v7 = @"50th-XX02";
      v8 = @"50th";
      goto LABEL_58;
    case 51:
      v7 = @"51st-XX02";
      v8 = @"51st";
      goto LABEL_58;
    case 52:
      v7 = @"52nd-XX02";
      v8 = @"52nd";
      goto LABEL_58;
    case 53:
      v7 = @"53rd-XX02";
      v8 = @"53rd";
LABEL_58:
      v6 = [v4 localizedStringForKey:v7 value:v8 table:@"RecurrenceRule"];
      break;
    default:
      break;
  }

  return v6;
}

+ (id)_orDaysOfWeekString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [objc_opt_class() _customDayCombinationDescription:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD60] string];
    v8 = [v3 count];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [v3 objectAtIndex:v10];
        if (v10)
        {
          if (v11 == 1)
          {
            if (v9 == 2)
            {
              v13 = @" or %@";
            }

            else
            {
              v13 = @", or %@";
            }

            v15 = &stru_1F379FFA8;
          }

          else
          {
            v13 = @", %@-XX02";
            v15 = @", %@";
          }

          v14 = [v4 localizedStringForKey:v13 value:v15 table:@"RecurrenceRule"];
          v16 = [objc_opt_class() _numberedWeekDayString:v12];
          [v7 appendFormat:v14, v16];
        }

        else
        {
          v14 = [objc_opt_class() _numberedWeekDayString:v12];
          [v7 appendString:v14];
        }

        ++v10;
        --v11;
      }

      while (v11);
      v6 = 0;
    }
  }

  return v7;
}

+ (id)_customDayCombinationDescription:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [objc_opt_class() daysTypeForDayArray:v4];

  switch(v6)
  {
    case 3:
      v7 = @"weekend day";
      goto LABEL_7;
    case 2:
      v7 = @"weekday";
LABEL_7:
      v8 = &stru_1F379FFA8;
      v10 = v5;
      v9 = 0;
      goto LABEL_8;
    case 1:
      v7 = @"day-XX02";
      v8 = @"day";
      v9 = @"RecurrenceRule";
      v10 = v5;
LABEL_8:
      v11 = [v10 localizedStringForKey:v7 value:v8 table:v9];
      goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (int64_t)daysTypeForDayArray:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  switch(v4)
  {
    case 2:
      v19 = [v3 objectAtIndexedSubscript:0];
      v20 = [v19 weekday];

      v21 = [v3 objectAtIndexedSubscript:1];
      v22 = [v21 weekday];

      if (v20 == 7 && v22 == 1 || v20 == 1 && v22 == 7)
      {
        v5 = 3;
        goto LABEL_37;
      }

      break;
    case 7:
      v5 = 1;
      v13 = 1;
      while (1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = v3;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (!v15)
        {
          goto LABEL_30;
        }

        v16 = v15;
        v17 = *v30;
LABEL_20:
        v18 = 0;
        while (1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v29 + 1) + 8 * v18) weekday] == v13)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v16)
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          }
        }

        v12 = v13++ >= 7;
        if (v12)
        {
          goto LABEL_37;
        }
      }

    case 5:
      v5 = 2;
      v6 = 2;
      while (1)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = v3;
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        v10 = *v26;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v25 + 1) + 8 * v11) weekday] == v6)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_30;
          }
        }

        v12 = v6++ >= 6;
        if (v12)
        {
          goto LABEL_37;
        }
      }

LABEL_30:

      break;
  }

  v5 = 0;
LABEL_37:

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end