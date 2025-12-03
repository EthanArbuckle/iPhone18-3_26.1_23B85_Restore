@interface CalDAVOfficeHour
+ (id)_gregorianGMTCalendar;
+ (id)dataFromOfficeHours:(id)hours;
+ (id)icsFromOfficeHours:(id)hours;
+ (id)logHandle;
+ (id)officeHoursFromData:(id)data;
+ (id)officeHoursFromICS:(id)s;
- (CalDAVOfficeHour)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (CalDAVOfficeHour)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CalDAVOfficeHour;
  v5 = [(CalDAVOfficeHour *)&v13 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDay"];
    v7 = [v6 copy];
    startDate = v5->_startDate;
    v5->_startDate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    v10 = [v9 copy];
    endDate = v5->_endDate;
    v5->_endDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CalDAVOfficeHour enabled](self forKey:{"enabled"), @"enabled"}];
  startDate = [(CalDAVOfficeHour *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDay"];

  endDate = [(CalDAVOfficeHour *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
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

  startDate = [(CalDAVOfficeHour *)self startDate];
  endDate = [(CalDAVOfficeHour *)self endDate];
  v9 = [v3 stringWithFormat:@"%@ <%p> {%@, %@, %@}", v5, self, v6, startDate, endDate];

  return v9;
}

+ (id)officeHoursFromData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x277D7F108];
    dataCopy = data;
    v5 = [[v3 alloc] initWithData:dataCopy options:0 error:0];

    v6 = [CalDAVOfficeHour officeHoursFromICS:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)officeHoursFromICS:(id)s
{
  v112 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v3 = 7;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
  do
  {
    v5 = objc_alloc_init(CalDAVOfficeHour);
    [v4 addObject:v5];

    --v3;
  }

  while (v3);
  date = [MEMORY[0x277CBEAA8] date];
  calendar = [sCopy calendar];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  calendar2 = [sCopy calendar];
  components = [calendar2 components];

  obj = components;
  v9 = v4;
  v74 = [components countByEnumeratingWithState:&v105 objects:v111 count:16];
  if (v74)
  {
    v10 = 0x277D7F000uLL;
    v73 = *v106;
    v77 = calendar;
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
        dtstart = [v13 dtstart];
        v15 = [calendar systemDateForDate:dtstart options:0];

        v80 = v13;
        dtend = [v13 dtend];
        v17 = [calendar systemDateForDate:dtend options:0];

        v75 = v17;
        if (!v17)
        {
          duration = [v80 duration];
          v19 = duration;
          if (duration)
          {
            [duration timeInterval];
            v75 = [v15 dateByAddingTimeInterval:?];
          }

          else
          {
            v75 = 0;
          }
        }

        v20 = v15;
        if ((!v15 || [date compare:v15] == 1) && (!v75 || objc_msgSend(date, "compare:", v75) == -1))
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          components2 = [v80 components];
          v22 = [components2 countByEnumeratingWithState:&v101 objects:v110 count:16];
          if (!v22)
          {
            goto LABEL_70;
          }

          v23 = v22;
          v70 = v20;
          v24 = *v102;
          v78 = *v102;
          v79 = components2;
          while (1)
          {
            v25 = 0;
            v84 = v23;
            do
            {
              if (*v102 != v24)
              {
                objc_enumerationMutation(components2);
              }

              v26 = *(*(&v101 + 1) + 8 * v25);
              v27 = *(v10 + 192);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = v26;
                dtstart2 = [v28 dtstart];
                v88 = v28;
                dtend2 = [v28 dtend];
                v90 = [calendar systemDateForDate:dtstart2 options:0];
                v87 = dtstart2;
                v89 = [calendar systemCalendarForDate:dtstart2 options:0];
                v31 = [calendar systemDateForDate:dtend2 options:0];
                v86 = dtend2;
                v32 = [calendar systemCalendarForDate:dtend2 options:0];
                v33 = v32;
                v91 = v31;
                if (v31)
                {
                  v34 = v89;
                }

                else
                {
                  v35 = v24;
                  v36 = calendar;
                  v37 = components2;
                  v38 = v10;
                  v39 = v32;
                  duration2 = [v80 duration];
                  v41 = duration2;
                  if (duration2)
                  {
                    [duration2 timeInterval];
                    v91 = [v90 dateByAddingTimeInterval:?];
                  }

                  else
                  {
                    v91 = 0;
                  }

                  v34 = v89;
                  v33 = v89;

                  v10 = v38;
                  components2 = v37;
                  calendar = v36;
                  v24 = v35;
                  v23 = v84;
                }

                v42 = [v34 components:764 fromDate:v90];
                v93 = v33;
                v43 = [v33 components:764 fromDate:v91];
                v95 = v42;
                weekday = [v42 weekday];
                v94 = v43;
                if (weekday == [v43 weekday])
                {
                  rrule = [v88 rrule];
                  if ([rrule count]== 1)
                  {
                    lastObject = [rrule lastObject];
                    byday = [lastObject byday];
                    v48 = byday;
                    v49 = v89;
                    v82 = rrule;
                    v83 = v25;
                    v81 = lastObject;
                    if (byday)
                    {
                      v99 = 0u;
                      v100 = 0u;
                      v97 = 0u;
                      v98 = 0u;
                      v50 = [byday countByEnumeratingWithState:&v97 objects:v109 count:16];
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
                          startDate = [v54 startDate];
                          if (!startDate)
                          {
                            v57 = 0;
LABEL_45:
                            [v54 setStartDate:v95];
                            goto LABEL_46;
                          }

                          v56 = [v49 dateFromComponents:startDate];
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
                          endDate = [v54 endDate];
                          if (!endDate)
                          {
                            v61 = 0;
LABEL_52:
                            [v54 setEndDate:v94];
                            goto LABEL_53;
                          }

                          v60 = [v93 dateFromComponents:endDate];
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

                    logHandle = [self logHandle];
                    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2243BD000, logHandle, OS_LOG_TYPE_DEFAULT, "Discarding overly-complex recurrence for AVAILABLE, iCal doesn't understand it.", buf, 2u);
                    }

LABEL_64:
                    calendar = v77;
                    v24 = v78;
                    v10 = 0x277D7F000;
                    components2 = v79;
                    v25 = v83;
                    v23 = v84;
                    logHandle2 = v81;
                    rrule = v82;
                  }

                  else
                  {
                    logHandle2 = [self logHandle];
                    v49 = v89;
                    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2243BD000, logHandle2, OS_LOG_TYPE_DEFAULT, "Discarding non-recurring AVAILABLE, iCal doesn't understand it.", buf, 2u);
                    }
                  }
                }

                else
                {
                  rrule = [self logHandle];
                  if (os_log_type_enabled(rrule, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2243BD000, rrule, OS_LOG_TYPE_DEFAULT, "Discarding non-same-day AVAILABLE, iCal doesn't understand it.", buf, 2u);
                  }

                  v49 = v89;
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v23 = [components2 countByEnumeratingWithState:&v101 objects:v110 count:16];
            if (!v23)
            {
              v20 = v70;
              goto LABEL_70;
            }
          }
        }

        components2 = [self logHandle];
        if (os_log_type_enabled(components2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2243BD000, components2, OS_LOG_TYPE_DEFAULT, "Discarding non-current VAVAILABILITY, iCal doesn't understand it.", buf, 2u);
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

+ (id)dataFromOfficeHours:(id)hours
{
  v3 = [CalDAVOfficeHour icsFromOfficeHours:hours];
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

+ (id)icsFromOfficeHours:(id)hours
{
  hoursCopy = hours;
  if ([hoursCopy count] != 7)
  {
    [(CalDAVOfficeHour *)a2 icsFromOfficeHours:self];
  }

  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  _gregorianGMTCalendar = [self _gregorianGMTCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v66 = _gregorianGMTCalendar;
  v8 = [_gregorianGMTCalendar components:764 fromDate:date];

  v62 = v5;
  v64 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v8 month:"year") day:objc_msgSend(v8 hour:"month") minute:objc_msgSend(v8 second:"day") timeZone:{objc_msgSend(v8, "hour"), objc_msgSend(v8, "minute"), objc_msgSend(v8, "second"), v5}];
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = v8;
  weekday = [v8 weekday];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = 0; i != 7; ++i)
  {
    v15 = [hoursCopy objectAtIndex:weekday - 1];
    if (![v15 enabled])
    {
      goto LABEL_21;
    }

    v77 = i;
    startDate = [v15 startDate];
    v73 = v15;
    endDate = [v15 endDate];
    v76 = startDate;
    if (!v11 || !v12)
    {
      goto LABEL_17;
    }

    hour = [startDate hour];
    value = [v12 value];
    if (hour != [value hour])
    {
      goto LABEL_16;
    }

    minute = [startDate minute];
    value2 = [v12 value];
    if (minute != [value2 minute] || !v13)
    {
      goto LABEL_15;
    }

    v21 = v12;
    hour2 = [endDate hour];
    value3 = [v13 value];
    if (hour2 != [value3 hour])
    {

      v12 = v21;
LABEL_15:

LABEL_16:
LABEL_17:
      v72 = weekday;
      v31 = v13;
      if (v10)
      {
        makeUID = [MEMORY[0x277D7F0E0] makeUID];
        [v10 setUid:makeUID];

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
      byday = [v66 components:28 fromDate:v35];

      v36 = objc_alloc(MEMORY[0x277D7F0E8]);
      year = [byday year];
      v38 = v12;
      month = [byday month];
      v40 = [byday day];
      hour3 = [startDate hour];
      minute2 = [startDate minute];
      [MEMORY[0x277CBEBB0] defaultTimeZone];
      v43 = v67 = v31;
      v68 = [v36 initWithYear:year month:month day:v40 hour:hour3 minute:minute2 second:0 timeZone:v43];

      v44 = objc_alloc(MEMORY[0x277D7F0E8]);
      year2 = [byday year];
      month2 = [byday month];
      v47 = [byday day];
      hour4 = [endDate hour];
      minute3 = [endDate minute];
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      v13 = [v44 initWithYear:year2 month:month2 day:v47 hour:hour4 minute:minute3 second:0 timeZone:defaultTimeZone];

      v11 = [objc_alloc(MEMORY[0x277D7F138]) initWithFrequency:5];
      weekday = v72;
      v29 = [objc_alloc(MEMORY[0x277D7F0C8]) initWithWeekday:v72];
      v30 = [MEMORY[0x277CBEA60] arrayWithObject:v29];
      [v11 setByday:v30];
      v21 = v68;
      v27 = endDate;
      i = v77;
      v10 = v70;
      goto LABEL_20;
    }

    minute4 = [endDate minute];
    value4 = [v13 value];
    minute5 = [value4 minute];

    v26 = minute4 == minute5;
    v12 = v21;
    startDate = v76;
    v27 = endDate;
    if (!v26)
    {
      goto LABEL_17;
    }

    byday = [v11 byday];
    v29 = [objc_alloc(MEMORY[0x277D7F0C8]) initWithWeekday:weekday];
    v30 = [byday arrayByAddingObject:v29];
    [v11 setByday:v30];
    i = v77;
LABEL_20:

    v12 = v21;
    v15 = v73;
LABEL_21:
    weekday = weekday % 7 + 1;
  }

  v51 = v12;
  v52 = v13;
  if (v10)
  {
    makeUID2 = [MEMORY[0x277D7F0E0] makeUID];
    [v10 setUid:makeUID2];

    [v10 setDtstamp:v64];
    [v10 setDtstart:v51];
    [v10 setDtend:v52];
    v54 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
    [v10 setRrule:v54];

    [v63 addObject:v10];
  }

  v55 = objc_alloc_init(MEMORY[0x277D7F0B8]);
  makeUID3 = [MEMORY[0x277D7F0E0] makeUID];
  [v55 setUid:makeUID3];

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