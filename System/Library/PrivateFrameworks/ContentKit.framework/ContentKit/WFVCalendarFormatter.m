@interface WFVCalendarFormatter
+ (id)ICSFromCalendarItems:(id)a3;
+ (id)foldString:(id)a3 withOctetCount:(int64_t)a4;
+ (id)hexColorFromCGColor:(CGColor *)a3;
+ (id)stringRepresentationOfParticipant:(id)a3;
@end

@implementation WFVCalendarFormatter

+ (id)hexColorFromCGColor:(CGColor *)a3
{
  v3 = [MEMORY[0x277D79E20] colorWithCGColor:a3];
  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v3 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", (v9 * 255.0), (v8 * 255.0), (v7 * 255.0)];

  return v4;
}

+ (id)stringRepresentationOfParticipant:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 name];

  if (v5)
  {
    v6 = [v3 name];
    [v4 appendFormat:@";CN=%@", v6];
  }

  v7 = [v3 participantRole] - 1;
  if (v7 <= 3)
  {
    [v4 appendFormat:@";ROLE=%@", off_278346A18[v7]];
  }

  v8 = [v3 participantStatus] - 1;
  if (v8 <= 6)
  {
    [v4 appendFormat:@";PARTSTAT=%@", off_278346A38[v8]];
  }

  v9 = [v3 participantType];
  if (v9 <= 4)
  {
    [v4 appendFormat:@";CUTYPE=%@", off_278346A70[v9]];
  }

  v10 = [v3 URL];

  if (v10)
  {
    v11 = [v3 URL];
    v12 = [v11 absoluteString];
    [v4 appendFormat:@":%@", v12];
  }

  return v4;
}

+ (id)foldString:(id)a3 withOctetCount:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [v5 dataUsingEncoding:4 allowLossyConversion:1];
  if ([v7 length])
  {
    v8 = 0;
    do
    {
      v9 = a4 - (v8 > 0);
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
        [v6 appendFormat:@"\r\n %@", v12];
      }

      else
      {
        [v6 appendString:v12];
      }

      v8 += v9;
    }

    while (v8 < [v7 length]);
  }

  v13 = v6;
LABEL_13:

  return v13;
}

+ (id)ICSFromCalendarItems:(id)a3
{
  v158 = *MEMORY[0x277D85DE8];
  v126 = a3;
  v3 = [MEMORY[0x277CCAB68] string];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__WFVCalendarFormatter_ICSFromCalendarItems___block_invoke;
  aBlock[3] = &unk_2783469A0;
  v148 = a1;
  v115 = v3;
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
  if ([v126 count])
  {
    v6 = [v126 firstObject];
    v7 = [v6 calendar];

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v8 = v126;
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

          v12 = [*(*(&v140 + 1) + 8 * v11) calendar];
          v13 = [v12 calendarIdentifier];
          v14 = [(__CFString *)v7 calendarIdentifier];
          v15 = [v13 isEqualToString:v14];

          if (!v15)
          {
            v17 = v7;
            v7 = v8;
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

    if (v7)
    {
      v16 = [(__CFString *)v7 title];
      v5[2](v5, @"X-WR-CALNAME", v16);

      v17 = [a1 hexColorFromCGColor:{-[__CFString CGColor](v7, "CGColor")}];
      v5[2](v5, @"X-APPLE-CALENDAR-COLOR", v17);
LABEL_13:
    }
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v126;
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
        v22 = [v122 title];

        if (v22)
        {
          v23 = [v122 title];
          v5[2](v5, @"SUMMARY", v23);
        }

        if ([v122 hasNotes])
        {
          v24 = [v122 notes];
          v5[2](v5, @"DESCRIPTION", v24);
        }

        v25 = [v122 location];

        if (v25)
        {
          v26 = [v122 location];
          v5[2](v5, @"LOCATION", v26);
        }

        v27 = [v122 URL];

        if (v27)
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [v122 URL];
          v30 = [v29 absoluteString];
          v31 = [v28 stringWithFormat:@"URLVALUE=URI:%@", v30];;
          (*(v127 + 2))(v127, v31);
        }

        v32 = [v122 calendarItemExternalIdentifier];

        if (v32)
        {
          v33 = [v122 calendarItemExternalIdentifier];
          v5[2](v5, @"UID", v33);
        }

        v124 = objc_alloc_init(MEMORY[0x277CCA968]);
        v34 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v124 setLocale:v34];

        [v124 setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
        v35 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
        [v124 setTimeZone:v35];

        v36 = [v122 creationDate];

        if (v36)
        {
          v37 = [v122 creationDate];
          v38 = [v124 stringFromDate:v37];
          v5[2](v5, @"CREATED", v38);
        }

        v39 = [v122 lastModifiedDate];

        if (v39)
        {
          v40 = [v122 lastModifiedDate];
          v41 = [v124 stringFromDate:v40];
          v5[2](v5, @"LAST-MODIFIED", v41);
        }

        v42 = [MEMORY[0x277CBEAA8] date];
        v43 = [v124 stringFromDate:v42];
        v5[2](v5, @"DTSTAMP", v43);

        if ([v122 hasAttendees])
        {
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v44 = [v122 attendees];
          v45 = [v44 countByEnumeratingWithState:&v132 objects:v155 count:16];
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
                  objc_enumerationMutation(v44);
                }

                v48 = MEMORY[0x277CCACA8];
                v49 = [a1 stringRepresentationOfParticipant:*(*(&v132 + 1) + 8 * v47)];
                v50 = [v48 stringWithFormat:@"ATTENDEE%@", v49];
                (*(v127 + 2))(v127, v50);

                ++v47;
              }

              while (v45 != v47);
              v45 = [v44 countByEnumeratingWithState:&v132 objects:v155 count:16];
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
          v123 = [v122 alarms];
          v51 = [v123 countByEnumeratingWithState:&v128 objects:v154 count:16];
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
                  objc_enumerationMutation(v123);
                }

                v54 = *(*(&v128 + 1) + 8 * v53);
                v5[2](v5, @"BEGIN", @"VALARM");
                v5[2](v5, @"ACTION", @"DISPLAY");
                v5[2](v5, @"DESCRIPTION", @"Reminder");
                v55 = [v54 absoluteDate];

                if (v55)
                {
                  v56 = MEMORY[0x277CCACA8];
                  v57 = [v54 absoluteDate];
                  v58 = [v124 stringFromDate:v57];
                  v59 = [v56 stringWithFormat:@"TRIGGERVALUE=DATE-TIME:%@", v58];;
                  (*(v127 + 2))(v127, v59);
                }

                else
                {
                  [v54 relativeOffset];
                  v61 = v60;
                  v62 = [MEMORY[0x277CCAB68] stringWithString:@"-P"];
                  v57 = v62;
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
                    [(__CFString *)v57 appendString:@"T"];
                    if (v72)
                    {
                      [(__CFString *)v57 appendFormat:@"%ldH", v65];
                    }

                    if (v71 <= 0xFFFFFF88)
                    {
                      [(__CFString *)v57 appendFormat:@"%ldM", v68];
                    }

                    if (v69)
                    {
                      [(__CFString *)v57 appendFormat:@"%ldS", v69];
                    }
                  }

                  v5[2](v5, @"TRIGGER", v57);
                }

                v5[2](v5, @"END", @"VALARM");
                ++v53;
              }

              while (v51 != v53);
              v51 = [v123 countByEnumeratingWithState:&v128 objects:v154 count:16];
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
          v88 = [v86 startDateComponents];

          if (v88)
          {
            v89 = [v86 startDateComponents];
            v90 = [v87 dateFromComponents:v89];

            v91 = [v124 stringFromDate:v90];
            v5[2](v5, @"DTSTART", v91);
          }

          v92 = [v86 dueDateComponents];

          if (v92)
          {
            v93 = [v86 dueDateComponents];
            v94 = [v87 dateFromComponents:v93];

            v95 = [v124 stringFromDate:v94];
            v5[2](v5, @"DUE", v95);
          }

          v96 = [v86 completionDate];

          if (v96)
          {
            v97 = [v86 completionDate];
            v98 = [v124 stringFromDate:v97];
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
          v78 = [v75 startDate];
          v79 = [(__CFString *)v76 stringFromDate:v78];

          v80 = [MEMORY[0x277CBEA80] currentCalendar];
          v81 = [v75 startDate];
          v82 = [v80 dateByAddingComponents:v77 toDate:v81 options:0];
          v83 = [(__CFString *)v76 stringFromDate:v82];

          v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"DTSTARTVALUE=DATE:%@", v79];;
          (*(v127 + 2))(v127, v84);

          v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"DTENDVALUE=DATE:%@", v83];;
          (*(v127 + 2))(v127, v85);
        }

        else
        {
          v100 = [v75 startDate];
          if (!v100)
          {
            goto LABEL_84;
          }

          v101 = [v75 endDate];
          v102 = v101 == 0;

          if (v102)
          {
            goto LABEL_84;
          }

          v103 = [v75 startDate];
          v76 = [v124 stringFromDate:v103];

          v104 = [v75 endDate];
          v77 = [v124 stringFromDate:v104];

          v5[2](v5, @"DTSTART", v76);
          v5[2](v5, @"DTEND", v77);
        }

LABEL_84:
        v105 = [v75 organizer];

        if (v105)
        {
          v106 = MEMORY[0x277CCACA8];
          v107 = [v75 organizer];
          v108 = [a1 stringRepresentationOfParticipant:v107];
          v109 = [v106 stringWithFormat:@"ORGANIZER%@", v108];
          (*(v127 + 2))(v127, v109);
        }

        v110 = [v75 status] - 1;
        if (v110 <= 2)
        {
          v5[2](v5, @"STATUS", off_278346A00[v110]);
        }

        v111 = [v75 availability];
        if (!v111)
        {
          v112 = @"OPAQUE";
          goto LABEL_92;
        }

        if (v111 == 1)
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