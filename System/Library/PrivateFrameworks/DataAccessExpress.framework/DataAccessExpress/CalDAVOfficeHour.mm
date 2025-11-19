@interface CalDAVOfficeHour
+ (id)_gregorianGMTCalendar;
+ (id)dataFromOfficeHours:(id)a3;
+ (id)icsFromOfficeHours:(id)a3;
+ (id)logHandle;
+ (id)officeHoursFromData:(id)a3;
+ (id)officeHoursFromICS:(id)a3;
- (CalDAVOfficeHour)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalDAVOfficeHour

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[CalDAVOfficeHour logHandle];
  }

  v3 = logHandle_logHandle;

  return v3;
}

uint64_t __29__CalDAVOfficeHour_logHandle__block_invoke()
{
  logHandle_logHandle = os_log_create("com.apple.calendar.DataAccessExpress", "CalDAVOfficeHour");

  return MEMORY[0x2821F96F8]();
}

- (CalDAVOfficeHour)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CalDAVOfficeHour;
  v5 = [(CalDAVOfficeHour *)&v13 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDay"];
    v7 = [v6 copy];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    v10 = [v9 copy];
    endDate = v5->_endDate;
    v5->_endDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CalDAVOfficeHour enabled](self forKey:{"enabled"), @"enabled"}];
  v5 = [(CalDAVOfficeHour *)self startDate];
  [v4 encodeObject:v5 forKey:@"startDay"];

  v6 = [(CalDAVOfficeHour *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(CalDAVOfficeHour *)self enabled])
  {
    v6 = @"enabled";
  }

  else
  {
    v6 = @"disabled";
  }

  v7 = [(CalDAVOfficeHour *)self startDate];
  v8 = [(CalDAVOfficeHour *)self endDate];
  v9 = [v3 stringWithFormat:@"%@ <%p> {%@, %@, %@}", v5, self, v6, v7, v8];

  return v9;
}

+ (id)officeHoursFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D7F108];
    v4 = a3;
    v5 = [[v3 alloc] initWithData:v4 options:0 error:0];

    v6 = [CalDAVOfficeHour officeHoursFromICS:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)officeHoursFromICS:(id)a3
{
  v112 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v3 = 7;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
  do
  {
    v5 = objc_alloc_init(CalDAVOfficeHour);
    [v4 addObject:v5];

    --v3;
  }

  while (v3);
  v71 = [MEMORY[0x277CBEAA8] date];
  v6 = [v69 calendar];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v7 = [v69 calendar];
  v8 = [v7 components];

  obj = v8;
  v9 = v4;
  v74 = [v8 countByEnumeratingWithState:&v105 objects:v111 count:16];
  if (v74)
  {
    v10 = 0x277D7F000uLL;
    v73 = *v106;
    v77 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v106 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v76 = v11;
        v12 = *(*(&v105 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_71;
        }

        v13 = v12;
        v14 = [v13 dtstart];
        v15 = [v6 systemDateForDate:v14 options:0];

        v80 = v13;
        v16 = [v13 dtend];
        v17 = [v6 systemDateForDate:v16 options:0];

        v75 = v17;
        if (!v17)
        {
          v18 = [v80 duration];
          v19 = v18;
          if (v18)
          {
            [v18 timeInterval];
            v75 = [v15 dateByAddingTimeInterval:?];
          }

          else
          {
            v75 = 0;
          }
        }

        v20 = v15;
        if ((!v15 || [v71 compare:v15] == 1) && (!v75 || objc_msgSend(v71, "compare:", v75) == -1))
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v21 = [v80 components];
          v22 = [v21 countByEnumeratingWithState:&v101 objects:v110 count:16];
          if (!v22)
          {
            goto LABEL_70;
          }

          v23 = v22;
          v70 = v20;
          v24 = *v102;
          v78 = *v102;
          v79 = v21;
          while (1)
          {
            v25 = 0;
            v84 = v23;
            do
            {
              if (*v102 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v101 + 1) + 8 * v25);
              v27 = *(v10 + 192);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = v26;
                v29 = [v28 dtstart];
                v88 = v28;
                v30 = [v28 dtend];
                v90 = [v6 systemDateForDate:v29 options:0];
                v87 = v29;
                v89 = [v6 systemCalendarForDate:v29 options:0];
                v31 = [v6 systemDateForDate:v30 options:0];
                v86 = v30;
                v32 = [v6 systemCalendarForDate:v30 options:0];
                v33 = v32;
                v91 = v31;
                if (v31)
                {
                  v34 = v89;
                }

                else
                {
                  v35 = v24;
                  v36 = v6;
                  v37 = v21;
                  v38 = v10;
                  v39 = v32;
                  v40 = [v80 duration];
                  v41 = v40;
                  if (v40)
                  {
                    [v40 timeInterval];
                    v91 = [v90 dateByAddingTimeInterval:?];
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v34 = v89;
                  v33 = v89;

                  v10 = v38;
                  v21 = v37;
                  v6 = v36;
                  v24 = v35;
                  v23 = v84;
                }

                v42 = [v34 components:764 fromDate:v90];
                v93 = v33;
                v43 = [v33 components:764 fromDate:v91];
                v95 = v42;
                v44 = [v42 weekday];
                v94 = v43;
                if (v44 == [v43 weekday])
                {
                  v45 = [v88 rrule];
                  if ([v45 count]== 1)
                  {
                    v46 = [v45 lastObject];
                    v47 = [v46 byday];
                    v48 = v47;
                    v49 = v89;
                    v82 = v45;
                    v83 = v25;
                    v81 = v46;
                    if (v47)
                    {
                      v99 = 0u;
                      v100 = 0u;
                      v97 = 0u;
                      v98 = 0u;
                      v50 = [v47 countByEnumeratingWithState:&v97 objects:v109 count:16];
                      if (!v50)
                      {
                        goto LABEL_64;
                      }

                      v51 = v50;
                      v52 = *v98;
                      v92 = v48;
                      while (1)
                      {
                        for (i = 0; i != v51; ++i)
                        {
                          if (*v98 != v52)
                          {
                            objc_enumerationMutation(v92);
                          }

                          v54 = [v9 objectAtIndex:{objc_msgSend(*(*(&v97 + 1) + 8 * i), "weekday") - 1}];
                          [v54 setEnabled:1];
                          v55 = [v54 startDate];
                          if (!v55)
                          {
                            v57 = 0;
LABEL_45:
                            [v54 setStartDate:v95];
                            goto LABEL_46;
                          }

                          v56 = [v49 dateFromComponents:v55];
                          v57 = v56;
                          if (!v56)
                          {
                            goto LABEL_45;
                          }

                          v58 = [v56 laterDate:v90];

                          if (v58 == v57)
                          {
                            goto LABEL_45;
                          }

LABEL_46:
                          v59 = [v54 endDate];
                          if (!v59)
                          {
                            v61 = 0;
LABEL_52:
                            [v54 setEndDate:v94];
                            goto LABEL_53;
                          }

                          v60 = [v93 dateFromComponents:v59];
                          v61 = v60;
                          if (!v60)
                          {
                            goto LABEL_52;
                          }

                          [v60 earlierDate:v91];
                          v63 = v62 = v9;

                          v64 = v63 == v61;
                          v9 = v62;
                          v49 = v89;
                          if (v64)
                          {
                            goto LABEL_52;
                          }

LABEL_53:
                        }

                        v48 = v92;
                        v51 = [v92 countByEnumeratingWithState:&v97 objects:v109 count:16];
                        if (!v51)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    v66 = [a1 logHandle];
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2243BD000, v66, OS_LOG_TYPE_DEFAULT, "Discarding overly-complex recurrence for AVAILABLE, iCal doesn't understand it.", buf, 2u);
                    }

LABEL_64:
                    v6 = v77;
                    v24 = v78;
                    v10 = 0x277D7F000;
                    v21 = v79;
                    v25 = v83;
                    v23 = v84;
                    v65 = v81;
                    v45 = v82;
                  }

                  else
                  {
                    v65 = [a1 logHandle];
                    v49 = v89;
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2243BD000, v65, OS_LOG_TYPE_DEFAULT, "Discarding non-recurring AVAILABLE, iCal doesn't understand it.", buf, 2u);
                    }
                  }
                }

                else
                {
                  v45 = [a1 logHandle];
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2243BD000, v45, OS_LOG_TYPE_DEFAULT, "Discarding non-same-day AVAILABLE, iCal doesn't understand it.", buf, 2u);
                  }

                  v49 = v89;
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v23 = [v21 countByEnumeratingWithState:&v101 objects:v110 count:16];
            if (!v23)
            {
              v20 = v70;
              goto LABEL_70;
            }
          }
        }

        v21 = [a1 logHandle];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2243BD000, v21, OS_LOG_TYPE_DEFAULT, "Discarding non-current VAVAILABILITY, iCal doesn't understand it.", buf, 2u);
        }

LABEL_70:

LABEL_71:
        v11 = v76 + 1;
      }

      while (v76 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
    }

    while (v74);
  }

  v67 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)dataFromOfficeHours:(id)a3
{
  v3 = [CalDAVOfficeHour icsFromOfficeHours:a3];
  v4 = [v3 ICSDataWithOptions:0];

  return v4;
}

+ (id)_gregorianGMTCalendar
{
  if (_gregorianGMTCalendar_onceToken != -1)
  {
    +[CalDAVOfficeHour _gregorianGMTCalendar];
  }

  v3 = _gregorianGMTCalendar_gregorianGMTCalendar;

  return v3;
}

void __41__CalDAVOfficeHour__gregorianGMTCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = _gregorianGMTCalendar_gregorianGMTCalendar;
  _gregorianGMTCalendar_gregorianGMTCalendar = v1;

  v3 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  [_gregorianGMTCalendar_gregorianGMTCalendar setTimeZone:v3];
}

+ (id)icsFromOfficeHours:(id)a3
{
  v74 = a3;
  if ([v74 count] != 7)
  {
    [(CalDAVOfficeHour *)a2 icsFromOfficeHours:a1];
  }

  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  v6 = [a1 _gregorianGMTCalendar];
  v7 = [MEMORY[0x277CBEAA8] date];
  v66 = v6;
  v8 = [v6 components:764 fromDate:v7];

  v62 = v5;
  v64 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v8 month:"year") day:objc_msgSend(v8 hour:"month") minute:objc_msgSend(v8 second:"day") timeZone:{objc_msgSend(v8, "hour"), objc_msgSend(v8, "minute"), objc_msgSend(v8, "second"), v5}];
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = v8;
  v9 = [v8 weekday];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = 0; i != 7; ++i)
  {
    v15 = [v74 objectAtIndex:v9 - 1];
    if (![v15 enabled])
    {
      goto LABEL_21;
    }

    v77 = i;
    v16 = [v15 startDate];
    v73 = v15;
    v75 = [v15 endDate];
    v76 = v16;
    if (!v11 || !v12)
    {
      goto LABEL_17;
    }

    v17 = [v16 hour];
    v18 = [v12 value];
    if (v17 != [v18 hour])
    {
      goto LABEL_16;
    }

    v19 = [v16 minute];
    v20 = [v12 value];
    if (v19 != [v20 minute] || !v13)
    {
      goto LABEL_15;
    }

    v21 = v12;
    v22 = [v75 hour];
    v23 = [v13 value];
    if (v22 != [v23 hour])
    {

      v12 = v21;
LABEL_15:

LABEL_16:
LABEL_17:
      v72 = v9;
      v31 = v13;
      if (v10)
      {
        v32 = [MEMORY[0x277D7F0E0] makeUID];
        [v10 setUid:v32];

        [v10 setDtstamp:v64];
        [v10 setDtstart:v12];
        [v10 setDtend:v13];
        v33 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
        [v10 setRrule:v33];

        [v63 addObject:v10];
      }

      v70 = objc_alloc_init(MEMORY[0x277D7F0C0]);

      v34 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v69 = v11;
      [v34 setYear:{objc_msgSend(v65, "year")}];
      [v34 setMonth:{objc_msgSend(v65, "month") - 1}];
      [v34 setDay:{objc_msgSend(v65, "day") + v77}];
      v35 = [v66 dateFromComponents:v34];
      v28 = [v66 components:28 fromDate:v35];

      v36 = objc_alloc(MEMORY[0x277D7F0E8]);
      v37 = [v28 year];
      v38 = v12;
      v39 = [v28 month];
      v40 = [v28 day];
      v41 = [v16 hour];
      v42 = [v16 minute];
      [MEMORY[0x277CBEBB0] defaultTimeZone];
      v43 = v67 = v31;
      v68 = [v36 initWithYear:v37 month:v39 day:v40 hour:v41 minute:v42 second:0 timeZone:v43];

      v44 = objc_alloc(MEMORY[0x277D7F0E8]);
      v45 = [v28 year];
      v46 = [v28 month];
      v47 = [v28 day];
      v48 = [v75 hour];
      v49 = [v75 minute];
      v50 = [MEMORY[0x277CBEBB0] defaultTimeZone];
      v13 = [v44 initWithYear:v45 month:v46 day:v47 hour:v48 minute:v49 second:0 timeZone:v50];

      v11 = [objc_alloc(MEMORY[0x277D7F138]) initWithFrequency:5];
      v9 = v72;
      v29 = [objc_alloc(MEMORY[0x277D7F0C8]) initWithWeekday:v72];
      v30 = [MEMORY[0x277CBEA60] arrayWithObject:v29];
      [v11 setByday:v30];
      v21 = v68;
      v27 = v75;
      i = v77;
      v10 = v70;
      goto LABEL_20;
    }

    v71 = [v75 minute];
    v24 = [v13 value];
    v25 = [v24 minute];

    v26 = v71 == v25;
    v12 = v21;
    v16 = v76;
    v27 = v75;
    if (!v26)
    {
      goto LABEL_17;
    }

    v28 = [v11 byday];
    v29 = [objc_alloc(MEMORY[0x277D7F0C8]) initWithWeekday:v9];
    v30 = [v28 arrayByAddingObject:v29];
    [v11 setByday:v30];
    i = v77;
LABEL_20:

    v12 = v21;
    v15 = v73;
LABEL_21:
    v9 = v9 % 7 + 1;
  }

  v51 = v12;
  v52 = v13;
  if (v10)
  {
    v53 = [MEMORY[0x277D7F0E0] makeUID];
    [v10 setUid:v53];

    [v10 setDtstamp:v64];
    [v10 setDtstart:v51];
    [v10 setDtend:v52];
    v54 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
    [v10 setRrule:v54];

    [v63 addObject:v10];
  }

  v55 = objc_alloc_init(MEMORY[0x277D7F0B8]);
  v56 = [MEMORY[0x277D7F0E0] makeUID];
  [v55 setUid:v56];

  [v55 setDtstamp:v64];
  [v55 setComponents:v63];
  v57 = objc_alloc_init(MEMORY[0x277D7F0D0]);
  v58 = [MEMORY[0x277CBEA60] arrayWithObject:v55];
  [v57 setComponents:v58 options:2];

  v59 = ICSDefaultPRODID();
  [v57 setProdid:v59];

  v60 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v57];

  return v60;
}

+ (void)icsFromOfficeHours:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalDAVOfficeHour.m" lineNumber:196 description:@"Office hours array must contain seven items"];
}

@end