@interface WFVCalendarFormatter
+ (id)ICSFromCalendarItems:(id)items;
+ (id)foldString:(id)string withOctetCount:(int64_t)count;
+ (id)hexColorFromCGColor:(CGColor *)color;
+ (id)stringRepresentationOfParticipant:(id)participant;
@end

@implementation WFVCalendarFormatter

+ (id)hexColorFromCGColor:(CGColor *)color
{
  v3 = [MEMORY[0x277D79E20] colorWithCGColor:color];
  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v3 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", (v9 * 255.0), (v8 * 255.0), (v7 * 255.0)];

  return v4;
}

+ (id)stringRepresentationOfParticipant:(id)participant
{
  participantCopy = participant;
  string = [MEMORY[0x277CCAB68] string];
  name = [participantCopy name];

  if (name)
  {
    name2 = [participantCopy name];
    [string appendFormat:@";CN=%@", name2];
  }

  v7 = [participantCopy participantRole] - 1;
  if (v7 <= 3)
  {
    [string appendFormat:@";ROLE=%@", off_278346A18[v7]];
  }

  v8 = [participantCopy participantStatus] - 1;
  if (v8 <= 6)
  {
    [string appendFormat:@";PARTSTAT=%@", off_278346A38[v8]];
  }

  participantType = [participantCopy participantType];
  if (participantType <= 4)
  {
    [string appendFormat:@";CUTYPE=%@", off_278346A70[participantType]];
  }

  v10 = [participantCopy URL];

  if (v10)
  {
    v11 = [participantCopy URL];
    absoluteString = [v11 absoluteString];
    [string appendFormat:@":%@", absoluteString];
  }

  return string;
}

+ (id)foldString:(id)string withOctetCount:(int64_t)count
{
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v7 = [stringCopy dataUsingEncoding:4 allowLossyConversion:1];
  if ([v7 length])
  {
    v8 = 0;
    do
    {
      v9 = count - (v8 > 0);
      if (v9 + v8 > [v7 length])
      {
        v9 = [v7 length] - v8;
      }

      while (1)
      {
        v10 = [v7 subdataWithRange:{v8, v9}];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
        if (v11)
        {
          break;
        }

        --v9;

        if (!v9)
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v12 = v11;

      if (v8)
      {
        [string appendFormat:@"\r\n %@", v12];
      }

      else
      {
        [string appendString:v12];
      }

      v8 += v9;
    }

    while (v8 < [v7 length]);
  }

  v13 = string;
LABEL_13:

  return v13;
}

+ (id)ICSFromCalendarItems:(id)items
{
  v158 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  string = [MEMORY[0x277CCAB68] string];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__WFVCalendarFormatter_ICSFromCalendarItems___block_invoke;
  aBlock[3] = &unk_2783469A0;
  selfCopy = self;
  v115 = string;
  v147 = v115;
  v4 = _Block_copy(aBlock);
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __45__WFVCalendarFormatter_ICSFromCalendarItems___block_invoke_2;
  v144[3] = &unk_2783469C8;
  v127 = v4;
  v145 = v127;
  v5 = _Block_copy(v144);
  v5[2](v5, @"BEGIN", @"VCALENDAR");
  v5[2](v5, @"VERSION", @"2.0");
  if ([itemsCopy count])
  {
    firstObject = [itemsCopy firstObject];
    calendar = [firstObject calendar];

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v8 = itemsCopy;
    v9 = [(__CFString *)v8 countByEnumeratingWithState:&v140 objects:v157 count:16];
    if (v9)
    {
      v10 = *v141;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v141 != v10)
          {
            objc_enumerationMutation(v8);
          }

          calendar2 = [*(*(&v140 + 1) + 8 * v11) calendar];
          calendarIdentifier = [calendar2 calendarIdentifier];
          calendarIdentifier2 = [(__CFString *)calendar calendarIdentifier];
          v15 = [calendarIdentifier isEqualToString:calendarIdentifier2];

          if (!v15)
          {
            v17 = calendar;
            calendar = v8;
            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(__CFString *)v8 countByEnumeratingWithState:&v140 objects:v157 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (calendar)
    {
      title = [(__CFString *)calendar title];
      v5[2](v5, @"X-WR-CALNAME", title);

      v17 = [self hexColorFromCGColor:{-[__CFString CGColor](calendar, "CGColor")}];
      v5[2](v5, @"X-APPLE-CALENDAR-COLOR", v17);
LABEL_13:
    }
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = itemsCopy;
  v119 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
  if (v119)
  {
    v118 = *v137;
    v116 = *MEMORY[0x277CBE5C0];
    do
    {
      v18 = 0;
      do
      {
        if (*v137 != v118)
        {
          v19 = v18;
          objc_enumerationMutation(obj);
          v18 = v19;
        }

        v120 = v18;
        v122 = *(*(&v136 + 1) + 8 * v18);
        getEKReminderClass();
        isKindOfClass = objc_opt_isKindOfClass();
        v21 = @"VEVENT";
        if (isKindOfClass)
        {
          v21 = @"VTODO";
        }

        v121 = v21;
        (v5[2])(v5, @"BEGIN");
        title2 = [v122 title];

        if (title2)
        {
          title3 = [v122 title];
          v5[2](v5, @"SUMMARY", title3);
        }

        if ([v122 hasNotes])
        {
          notes = [v122 notes];
          v5[2](v5, @"DESCRIPTION", notes);
        }

        location = [v122 location];

        if (location)
        {
          location2 = [v122 location];
          v5[2](v5, @"LOCATION", location2);
        }

        v27 = [v122 URL];

        if (v27)
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [v122 URL];
          absoluteString = [v29 absoluteString];
          v31 = [v28 stringWithFormat:@"URLVALUE=URI:%@", absoluteString];;
          (*(v127 + 2))(v127, v31);
        }

        calendarItemExternalIdentifier = [v122 calendarItemExternalIdentifier];

        if (calendarItemExternalIdentifier)
        {
          calendarItemExternalIdentifier2 = [v122 calendarItemExternalIdentifier];
          v5[2](v5, @"UID", calendarItemExternalIdentifier2);
        }

        v124 = objc_alloc_init(MEMORY[0x277CCA968]);
        v34 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v124 setLocale:v34];

        [v124 setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
        v35 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
        [v124 setTimeZone:v35];

        creationDate = [v122 creationDate];

        if (creationDate)
        {
          creationDate2 = [v122 creationDate];
          v38 = [v124 stringFromDate:creationDate2];
          v5[2](v5, @"CREATED", v38);
        }

        lastModifiedDate = [v122 lastModifiedDate];

        if (lastModifiedDate)
        {
          lastModifiedDate2 = [v122 lastModifiedDate];
          v41 = [v124 stringFromDate:lastModifiedDate2];
          v5[2](v5, @"LAST-MODIFIED", v41);
        }

        date = [MEMORY[0x277CBEAA8] date];
        v43 = [v124 stringFromDate:date];
        v5[2](v5, @"DTSTAMP", v43);

        if ([v122 hasAttendees])
        {
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          attendees = [v122 attendees];
          v45 = [attendees countByEnumeratingWithState:&v132 objects:v155 count:16];
          if (v45)
          {
            v46 = *v133;
            do
            {
              v47 = 0;
              do
              {
                if (*v133 != v46)
                {
                  objc_enumerationMutation(attendees);
                }

                v48 = MEMORY[0x277CCACA8];
                v49 = [self stringRepresentationOfParticipant:*(*(&v132 + 1) + 8 * v47)];
                v50 = [v48 stringWithFormat:@"ATTENDEE%@", v49];
                (*(v127 + 2))(v127, v50);

                ++v47;
              }

              while (v45 != v47);
              v45 = [attendees countByEnumeratingWithState:&v132 objects:v155 count:16];
            }

            while (v45);
          }
        }

        if ([v122 hasAlarms])
        {
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          alarms = [v122 alarms];
          v51 = [alarms countByEnumeratingWithState:&v128 objects:v154 count:16];
          if (v51)
          {
            v52 = *v129;
            do
            {
              v53 = 0;
              do
              {
                if (*v129 != v52)
                {
                  objc_enumerationMutation(alarms);
                }

                v54 = *(*(&v128 + 1) + 8 * v53);
                v5[2](v5, @"BEGIN", @"VALARM");
                v5[2](v5, @"ACTION", @"DISPLAY");
                v5[2](v5, @"DESCRIPTION", @"Reminder");
                absoluteDate = [v54 absoluteDate];

                if (absoluteDate)
                {
                  v56 = MEMORY[0x277CCACA8];
                  absoluteDate2 = [v54 absoluteDate];
                  v58 = [v124 stringFromDate:absoluteDate2];
                  v59 = [v56 stringWithFormat:@"TRIGGERVALUE=DATE-TIME:%@", v58];;
                  (*(v127 + 2))(v127, v59);
                }

                else
                {
                  [v54 relativeOffset];
                  v61 = v60;
                  v62 = [MEMORY[0x277CCAB68] stringWithString:@"-P"];
                  absoluteDate2 = v62;
                  v63 = -v61;
                  if ((v63 + 86399) >= 0x2A2FF)
                  {
                    [(__CFString *)v62 appendFormat:@"%ldD", v63 / 86400];
                  }

                  v64 = v63 % 86400;
                  v65 = v63 % 86400 / 3600;
                  v66 = v64 % 3600;
                  v67 = (v64 % 3600 + ((-30583 * (v64 % 3600)) >> 16)) & 0x8000;
                  v68 = (((34953 * (v63 % 86400 % 3600)) >> 16) >> 5) + (v67 >> 15);
                  v69 = (v64 % 3600 - 60 * ((((34953 * (v64 % 3600)) >> 16) >> 5) + (v67 >> 15)));
                  v70 = v64 - 3600;
                  v71 = v66 - 60;
                  if (v70 < 0xFFFFFFFFFFFFE3E1 || v71 < 0xFFFFFF89 || v69)
                  {
                    v72 = v70 < 0xFFFFFFFFFFFFE3E1;
                    [(__CFString *)absoluteDate2 appendString:@"T"];
                    if (v72)
                    {
                      [(__CFString *)absoluteDate2 appendFormat:@"%ldH", v65];
                    }

                    if (v71 <= 0xFFFFFF88)
                    {
                      [(__CFString *)absoluteDate2 appendFormat:@"%ldM", v68];
                    }

                    if (v69)
                    {
                      [(__CFString *)absoluteDate2 appendFormat:@"%ldS", v69];
                    }
                  }

                  v5[2](v5, @"TRIGGER", absoluteDate2);
                }

                v5[2](v5, @"END", @"VALARM");
                ++v53;
              }

              while (v51 != v53);
              v51 = [alarms countByEnumeratingWithState:&v128 objects:v154 count:16];
            }

            while (v51);
          }
        }

        v150 = 0;
        v151 = &v150;
        v152 = 0x2050000000;
        v73 = getEKEventClass_softClass_9440;
        v153 = getEKEventClass_softClass_9440;
        if (!getEKEventClass_softClass_9440)
        {
          v149[0] = MEMORY[0x277D85DD0];
          v149[1] = 3221225472;
          v149[2] = __getEKEventClass_block_invoke_9441;
          v149[3] = &unk_27834A178;
          v149[4] = &v150;
          __getEKEventClass_block_invoke_9441(v149);
          v73 = v151[3];
        }

        v74 = v73;
        _Block_object_dispose(&v150, 8);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          getEKReminderClass();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_94;
          }

          v86 = v122;
          v87 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v116];
          startDateComponents = [v86 startDateComponents];

          if (startDateComponents)
          {
            startDateComponents2 = [v86 startDateComponents];
            v90 = [v87 dateFromComponents:startDateComponents2];

            v91 = [v124 stringFromDate:v90];
            v5[2](v5, @"DTSTART", v91);
          }

          dueDateComponents = [v86 dueDateComponents];

          if (dueDateComponents)
          {
            dueDateComponents2 = [v86 dueDateComponents];
            v94 = [v87 dateFromComponents:dueDateComponents2];

            v95 = [v124 stringFromDate:v94];
            v5[2](v5, @"DUE", v95);
          }

          completionDate = [v86 completionDate];

          if (completionDate)
          {
            completionDate2 = [v86 completionDate];
            v98 = [v124 stringFromDate:completionDate2];
            v5[2](v5, @"COMPLETED", v98);
          }

          v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v86, "priority")];
          v5[2](v5, @"PRIORITY", v99);

          goto LABEL_93;
        }

        v75 = v122;
        if ([v75 isAllDay])
        {
          v76 = objc_alloc_init(MEMORY[0x277CCA968]);
          [(__CFString *)v76 setDateFormat:@"yyyyMMdd"];
          v77 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [(__CFString *)v77 setDay:1];
          startDate = [v75 startDate];
          v79 = [(__CFString *)v76 stringFromDate:startDate];

          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          startDate2 = [v75 startDate];
          v82 = [currentCalendar dateByAddingComponents:v77 toDate:startDate2 options:0];
          v83 = [(__CFString *)v76 stringFromDate:v82];

          v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"DTSTARTVALUE=DATE:%@", v79];;
          (*(v127 + 2))(v127, v84);

          v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"DTENDVALUE=DATE:%@", v83];;
          (*(v127 + 2))(v127, v85);
        }

        else
        {
          startDate3 = [v75 startDate];
          if (!startDate3)
          {
            goto LABEL_84;
          }

          endDate = [v75 endDate];
          v102 = endDate == 0;

          if (v102)
          {
            goto LABEL_84;
          }

          startDate4 = [v75 startDate];
          v76 = [v124 stringFromDate:startDate4];

          endDate2 = [v75 endDate];
          v77 = [v124 stringFromDate:endDate2];

          v5[2](v5, @"DTSTART", v76);
          v5[2](v5, @"DTEND", v77);
        }

LABEL_84:
        organizer = [v75 organizer];

        if (organizer)
        {
          v106 = MEMORY[0x277CCACA8];
          organizer2 = [v75 organizer];
          v108 = [self stringRepresentationOfParticipant:organizer2];
          v108 = [v106 stringWithFormat:@"ORGANIZER%@", v108];
          (*(v127 + 2))(v127, v108);
        }

        v110 = [v75 status] - 1;
        if (v110 <= 2)
        {
          v5[2](v5, @"STATUS", off_278346A00[v110]);
        }

        availability = [v75 availability];
        if (!availability)
        {
          v112 = @"OPAQUE";
          goto LABEL_92;
        }

        if (availability == 1)
        {
          v112 = @"TRANSPARENT";
LABEL_92:
          v5[2](v5, @"TRANSP", v112);
        }

LABEL_93:

LABEL_94:
        v5[2](v5, @"SEQUENCE", @"0");
        v5[2](v5, @"END", v121);

        v18 = v120 + 1;
      }

      while (v120 + 1 != v119);
      v119 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
    }

    while (v119);
  }

  v5[2](v5, @"END", @"VCALENDAR");
  v113 = v115;

  return v115;
}

void __45__WFVCalendarFormatter_ICSFromCalendarItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v7 = [v3 foldString:v4 withOctetCount:75];

  v5 = *(a1 + 32);
  v6 = [@"\r\n" stringByAppendingString:v7];
  [v5 appendString:v6];
}

void __45__WFVCalendarFormatter_ICSFromCalendarItems___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", a2, a3];
  (*(v3 + 16))(v3, v4);
}

@end