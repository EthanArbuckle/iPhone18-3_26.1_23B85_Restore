@interface MOTime
+ (id)buildSimpleMealTagIntervalsForDate:(id)a3;
+ (id)buildSimpleTimeTagIntervalsForDate:(id)a3;
+ (id)buildTimeTagIntervalsForDate:(id)a3;
+ (id)dateFromDate:(id)a3 hour:(int64_t)a4;
+ (id)dayOfWeekFromStartDate:(id)a3 endDate:(id)a4 timeZoneManager:(id)a5;
+ (id)localTimeOfDate:(id)a3 timeZone:(id)a4;
+ (id)timeFromStartDate:(id)a3 endDate:(id)a4 timeZoneManager:(id)a5;
+ (id)timeOfDayPrefixFromStartDate:(id)a3 endDate:(id)a4;
+ (id)timeStringFromTimeTag:(unint64_t)a3;
+ (id)timeStringSingularToPluralForm:(id)a3;
+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4;
+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4 nowDate:(id)a5 timeZone:(id)a6;
+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5;
+ (unint64_t)dayOfWeekTagFromDate:(id)a3;
+ (unint64_t)dayOfWeekTagFromStartDate:(id)a3 endDate:(id)a4;
+ (unint64_t)mealtagFromStartDate:(id)a3 endDate:(id)a4;
+ (unint64_t)simpleTimetagFromStartDate:(id)a3 endDate:(id)a4;
+ (unint64_t)timetagFromStartDate:(id)a3 endDate:(id)a4;
+ (unint64_t)typeOfDayTagFromStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MOTime)initWithCoder:(id)a3;
- (MOTime)initWithIdentifier:(id)a3;
- (MOTime)initWithIdentifier:(id)a3 timestamp:(double)a4 timeString:(id)a5 timeZone:(id)a6 timeTag:(unint64_t)a7;
- (MOTime)initWithTimestamp:(double)a3 timeString:(id)a4 timeZone:(id)a5 timeTag:(unint64_t)a6;
- (id)date;
- (id)description;
- (id)localTime;
- (id)timeZoneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOTime

- (MOTime)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOTime initWithIdentifier:v6];
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOTime.m" lineNumber:102 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOTime initWithIdentifier:]", 102}];
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [(MOTime *)self initWithIdentifier:v5 timestamp:@"today" timeString:@"Unknown" timeZone:0 timeTag:?];

  return v9;
}

- (MOTime)initWithTimestamp:(double)a3 timeString:(id)a4 timeZone:(id)a5 timeTag:(unint64_t)a6
{
  v10 = MEMORY[0x277CCAD78];
  v11 = a5;
  v12 = a4;
  v13 = [v10 UUID];
  v14 = [(MOTime *)self initWithIdentifier:v13 timestamp:v12 timeString:v11 timeZone:a6 timeTag:a3];

  return v14;
}

- (MOTime)initWithIdentifier:(id)a3 timestamp:(double)a4 timeString:(id)a5 timeZone:(id)a6 timeTag:(unint64_t)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MOTime;
  v16 = [(MOTime *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v17->_timestamp = a4;
    objc_storeStrong(&v17->_timeString, a5);
    objc_storeStrong(&v17->_timeZone, a6);
    v17->_timeTag = a7;
    v17->_dateReferenceTag = 0;
  }

  return v17;
}

- (id)timeZoneObject
{
  v3 = [(MOTime *)self timeZone];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBB0];
    v5 = [(MOTime *)self timeZone];
    v6 = [v4 timeZoneWithName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localTime
{
  [(MOTime *)self timestamp];
  if (v3 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEAA8];
    [(MOTime *)self timestamp];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = [(MOTime *)self timeZoneObject];
    v7 = [MOTime localTimeOfDate:v5 timeZone:v6];
  }

  return v7;
}

- (id)date
{
  [(MOTime *)self timestamp];
  if (v3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEAA8];
    [(MOTime *)self timestamp];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v5;
}

+ (id)localTimeOfDate:(id)a3 timeZone:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CBEBB0] systemTimeZone];
      if ([v8 isEqualToTimeZone:v7])
      {
        v9 = v5;
      }

      else
      {
        v10 = [v7 secondsFromGMTForDate:v5];
        v11 = v10 - [v8 secondsFromGMTForDate:v5];
        v9 = [v5 dateByAddingTimeInterval:v11];
        v12 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138413314;
          v16 = v5;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = v8;
          v21 = 2048;
          v22 = v11;
          v23 = 2112;
          v24 = v9;
          _os_log_debug_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEBUG, "localTime, object date, %@, object timezone, %@, system timezone, %@, timezone diff, %ld, adjusted date, %@", &v15, 0x34u);
        }
      }
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)timeFromStartDate:(id)a3 endDate:(id)a4 timeZoneManager:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  if (v7)
  {
    v10 = [v7 timeZoneAtDate:v6];
    v11 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v7;
      _os_log_debug_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEBUG, "timeZone, date, %@, timeZone, %@, source, timeZoneManager, %@", &v17, 0x20u);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v11 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime timeFromStartDate:endDate:timeZoneManager:];
    }
  }

  v12 = [MOTime alloc];
  v13 = [v10 name];
  v14 = [(MOTime *)v12 initWithTimestamp:0 timeString:v13 timeZone:0 timeTag:v9];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)dateFromDate:(id)a3 hour:(int64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:60 fromDate:v6];

  [v8 setHour:a4];
  v9 = [v7 dateFromComponents:v8];

  return v9;
}

+ (id)buildTimeTagIntervalsForDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [MOTime dateFromDate:v3 hour:0];
  v8 = [v6 initWithStartDate:v7 duration:10800.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:8 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MOTime dateFromDate:v3 hour:3];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:2 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x277CCA970]);
  v17 = [MOTime dateFromDate:v3 hour:9];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:3 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [MOTimeTagInterval alloc];
  v21 = objc_alloc(MEMORY[0x277CCA970]);
  v22 = [MOTime dateFromDate:v3 hour:12];
  v23 = [v21 initWithStartDate:v22 duration:10800.0];
  v24 = [(MOTimeTagInterval *)v20 initWithTimeTag:4 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [MOTimeTagInterval alloc];
  v26 = objc_alloc(MEMORY[0x277CCA970]);
  v27 = [MOTime dateFromDate:v3 hour:15];
  v28 = [v26 initWithStartDate:v27 duration:10800.0];
  v29 = [(MOTimeTagInterval *)v25 initWithTimeTag:5 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [MOTimeTagInterval alloc];
  v31 = objc_alloc(MEMORY[0x277CCA970]);
  v32 = [MOTime dateFromDate:v3 hour:18];
  v33 = [v31 initWithStartDate:v32 duration:10800.0];
  v34 = [(MOTimeTagInterval *)v30 initWithTimeTag:6 dateInterval:v33];
  [v4 addObject:v34];

  v35 = [MOTimeTagInterval alloc];
  v36 = objc_alloc(MEMORY[0x277CCA970]);
  v37 = [MOTime dateFromDate:v3 hour:21];

  v38 = [v36 initWithStartDate:v37 duration:10800.0];
  v39 = [(MOTimeTagInterval *)v35 initWithTimeTag:7 dateInterval:v38];
  [v4 addObject:v39];

  v40 = [v4 copy];

  return v40;
}

+ (id)buildSimpleTimeTagIntervalsForDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [MOTime dateFromDate:v3 hour:3];
  v8 = [v6 initWithStartDate:v7 duration:32400.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:2 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MOTime dateFromDate:v3 hour:12];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:4 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x277CCA970]);
  v17 = [MOTime dateFromDate:v3 hour:18];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:6 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [MOTimeTagInterval alloc];
  v21 = objc_alloc(MEMORY[0x277CCA970]);
  v22 = [MOTime dateFromDate:v3 hour:21];
  v23 = [v21 initWithStartDate:v22 duration:21600.0];
  v24 = [(MOTimeTagInterval *)v20 initWithTimeTag:7 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [MOTimeTagInterval alloc];
  v26 = objc_alloc(MEMORY[0x277CCA970]);
  v27 = [MOTime dateFromDate:v3 hour:-3];

  v28 = [v26 initWithStartDate:v27 duration:21600.0];
  v29 = [(MOTimeTagInterval *)v25 initWithTimeTag:7 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [v4 copy];

  return v30;
}

+ (unint64_t)timetagFromStartDate:(id)a3 endDate:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6 || ([v5 isSameDayWithDate:v6] & 1) != 0 || (objc_msgSend(v6, "timeIntervalSinceDate:", v5), v7 <= 43200.0))
  {
    [MOTime buildTimeTagIntervalsForDate:v5];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v43 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v41;
      *&v11 = 138413058;
      v34 = v11;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        [v15 overlapsScoreForStartDate:v5 endDate:{v6, v34}];
        v17 = v16;
        if (v16 > 0.0)
        {
          v18 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v46 = v5;
            v47 = 2112;
            v48 = v6;
            v49 = 2112;
            v50 = v15;
            v51 = 2048;
            v52 = v17;
            _os_log_debug_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v17 > 0.7)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
          if (v12)
          {
            goto LABEL_9;
          }

          goto LABEL_19;
        }
      }

      v28 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      v29 = [v15 timetag];
      v30 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v34;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      v49 = 2048;
      v50 = v29;
      v51 = 2112;
      v52 = *&v30;
    }

    else
    {
LABEL_19:

      v19 = [MOTime buildSimpleTimeTagIntervalsForDate:v5];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v8 = v19;
      v20 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v20)
      {
LABEL_31:
        v9 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v22 = v20;
      v23 = *v37;
      *&v21 = 138413058;
      v35 = v21;
LABEL_21:
      v24 = 0;
      while (1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v36 + 1) + 8 * v24);
        [v15 overlapsScoreForStartDate:v5 endDate:{v6, v35, v36}];
        v26 = v25;
        if (v25 > 0.0)
        {
          v27 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v35;
            v46 = v5;
            v47 = 2112;
            v48 = v6;
            v49 = 2112;
            v50 = v15;
            v51 = 2048;
            v52 = v26;
            _os_log_debug_impl(&dword_22D8C5000, v27, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v26 > 0.7)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v22)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }
      }

      v28 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      v33 = [v15 timetag];
      v30 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v35;
      v46 = v5;
      v47 = 2112;
      v48 = v6;
      v49 = 2048;
      v50 = v33;
      v51 = 2112;
      v52 = *&v30;
    }

    _os_log_debug_impl(&dword_22D8C5000, v28, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);

LABEL_35:
    v9 = [v15 timetag];
    goto LABEL_36;
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime timetagFromStartDate:endDate:];
  }

  v9 = 0;
LABEL_37:

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (unint64_t)simpleTimetagFromStartDate:(id)a3 endDate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6 || ([v5 isSameDayWithDate:v6] & 1) != 0 || (objc_msgSend(v6, "timeIntervalSinceDate:", v5), v7 <= 43200.0))
  {
    [MOTime buildSimpleTimeTagIntervalsForDate:v5];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v28 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      *&v11 = 138413058;
      v24 = v11;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:v5 endDate:{v6, v24, v25}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v30 = v5;
              v31 = 2112;
              v32 = v6;
              v33 = 2112;
              v34 = v15;
              v35 = 2048;
              v36 = v17;
              _os_log_debug_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v15 timetag];
              v23 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v24;
              v30 = v5;
              v31 = 2112;
              v32 = v6;
              v33 = 2048;
              v34 = v22;
              v35 = 2112;
              v36 = *&v23;
              _os_log_debug_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            v9 = [v15 timetag];
            goto LABEL_23;
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_23:
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime timetagFromStartDate:endDate:];
    }

    v9 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)buildSimpleMealTagIntervalsForDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MOTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v7 = [MOTime dateFromDate:v3 hour:6];
  v8 = [v6 initWithStartDate:v7 duration:18000.0];
  v9 = [(MOTimeTagInterval *)v5 initWithTimeTag:2000 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [MOTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MOTime dateFromDate:v3 hour:11];
  v13 = [v11 initWithStartDate:v12 duration:10800.0];
  v14 = [(MOTimeTagInterval *)v10 initWithTimeTag:2001 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [MOTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x277CCA970]);
  v17 = [MOTime dateFromDate:v3 hour:17];

  v18 = [v16 initWithStartDate:v17 duration:14400.0];
  v19 = [(MOTimeTagInterval *)v15 initWithTimeTag:2002 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [v4 copy];

  return v20;
}

+ (unint64_t)mealtagFromStartDate:(id)a3 endDate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6 || ([v5 isSameDayWithDate:v6] & 1) != 0 || (objc_msgSend(v6, "timeIntervalSinceDate:", v5), v7 <= 43200.0))
  {
    [MOTime buildSimpleMealTagIntervalsForDate:v5];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      *&v11 = 138413058;
      v24 = v11;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:v5 endDate:{v6, v24, v25}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v30 = v5;
              v31 = 2112;
              v32 = v6;
              v33 = 2112;
              v34 = v15;
              v35 = 2048;
              v36 = v17;
              _os_log_debug_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v15 timetag];
              v23 = +[MOTime timeStringFromTimeTag:](MOTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v24;
              v30 = v5;
              v31 = 2112;
              v32 = v6;
              v33 = 2048;
              v34 = v22;
              v35 = 2112;
              v36 = *&v23;
              _os_log_debug_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            v8 = [v15 timetag];
            goto LABEL_21;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_21:
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)timeOfDayPrefixFromStartDate:(id)a3 endDate:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MOTime timetagFromStartDate:v5 endDate:v6];
  v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = [MOTime timeStringFromTimeTag:v7];
    v20 = 138413058;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timeTag, %lu(%@)", &v20, 0x2Au);
  }

  v9 = [MOTime timeStringFromTimeTag:v7];
  if (v9)
  {
    [v5 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [MOTime alloc];
    v14 = [v12 timeZone];
    v15 = [v14 name];
    v16 = [(MOTime *)v13 initWithTimestamp:v9 timeString:v15 timeZone:v7 timeTag:v11];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)dayOfWeekFromStartDate:(id)a3 endDate:(id)a4 timeZoneManager:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9)
  {
    v11 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v19 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
    }

    v18 = v8 != 0;
    goto LABEL_13;
  }

  v11 = [v9 timeZoneAtDate:v7];
  v12 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412802;
    v31 = v7;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v10;
    _os_log_debug_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEBUG, "timeZone, startDate, %@, timeZone, %@, source, timeZoneManager, %@", &v30, 0x20u);
  }

  if (!v8)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v13 = [v10 timeZoneAtDate:v7];
  v14 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
  }

  v15 = [v11 name];
  v16 = [v13 name];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {

    v18 = 1;
LABEL_13:
    v13 = [MOTime localTimeOfDate:v7 timeZone:v11];
    if (v18)
    {
      v20 = [MOTime localTimeOfDate:v8 timeZone:v11];
    }

    else
    {
      v20 = 0;
    }

    v21 = [MOTime dayOfWeekTagFromStartDate:v13 endDate:v20];
    v22 = [MOTime timeStringFromTimeTag:v21];
    if (v22)
    {
      [v7 timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [MOTime alloc];
      v26 = [v11 name];
      v27 = [(MOTime *)v25 initWithTimestamp:v22 timeString:v26 timeZone:v21 timeTag:v24];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_20;
  }

  v20 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    +[MOTime dayOfWeekFromStartDate:endDate:timeZoneManager:];
  }

  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)timeStringFromTimeTag:(unint64_t)a3
{
  if (a3 <= 99)
  {
    v4 = @"night";
    v5 = @"midnight";
    if (a3 != 8)
    {
      v5 = 0;
    }

    if (a3 != 7)
    {
      v4 = v5;
    }

    v6 = @"preevening";
    v7 = @"evening";
    if (a3 != 6)
    {
      v7 = 0;
    }

    if (a3 != 5)
    {
      v6 = v7;
    }

    if (a3 <= 6)
    {
      v4 = v6;
    }

    v8 = @"morning";
    v9 = @"prenoon";
    v10 = @"afternoon";
    if (a3 != 4)
    {
      v10 = 0;
    }

    if (a3 != 3)
    {
      v9 = v10;
    }

    if (a3 != 2)
    {
      v8 = v9;
    }

    v11 = a3 <= 4;
  }

  else
  {
    if (a3 <= 1999)
    {
      switch(a3)
      {
        case 'd':
          result = @"today";
          break;
        case 'e':
          result = @"yesterday";
          break;
        case 'f':
          result = @"Sunday";
          break;
        case 'g':
          result = @"Monday";
          break;
        case 'h':
          result = @"Tuesday";
          break;
        case 'i':
          result = @"Wednesday";
          break;
        case 'j':
          result = @"Thursday";
          break;
        case 'k':
          result = @"Friday";
          break;
        case 'l':
          result = @"Saturday";
          break;
        case 'm':
          result = @"this week";
          break;
        case 'n':
          result = @"last week";
          break;
        case 'o':
          result = @"this month";
          break;
        case 'p':
          result = @"last month";
          break;
        case 'q':
          result = @"this year";
          break;
        case 'r':
          result = @"last year";
          break;
        default:
          result = 0;
          break;
      }

      return result;
    }

    v4 = @"dinner";
    v12 = @"weekend";
    if (a3 != 10001)
    {
      v12 = 0;
    }

    if (a3 == 10000)
    {
      v13 = @"weekday";
    }

    else
    {
      v13 = v12;
    }

    if (a3 != 2002)
    {
      v4 = v13;
    }

    v8 = @"breakfast";
    v14 = @"lunch";
    if (a3 != 2001)
    {
      v14 = 0;
    }

    if (a3 != 2000)
    {
      v8 = v14;
    }

    v11 = a3 <= 2001;
  }

  if (v11)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

+ (id)timeStringSingularToPluralForm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"morning"])
  {
    v4 = @"mornings";
  }

  else if ([v3 isEqualToString:@"afternoon"])
  {
    v4 = @"afternoons";
  }

  else if ([v3 isEqualToString:@"evening"])
  {
    v4 = @"evenings";
  }

  else if ([v3 isEqualToString:@"night"])
  {
    v4 = @"nights";
  }

  else if ([v3 isEqualToString:@"midnight"])
  {
    v4 = @"midnights";
  }

  else if ([v3 isEqualToString:@"Sunday"])
  {
    v4 = @"Sundays";
  }

  else if ([v3 isEqualToString:@"Monday"])
  {
    v4 = @"Mondays";
  }

  else if ([v3 isEqualToString:@"Tuesday"])
  {
    v4 = @"Tuesdays";
  }

  else if ([v3 isEqualToString:@"Wednesday"])
  {
    v4 = @"Wednesdays";
  }

  else if ([v3 isEqualToString:@"Thursday"])
  {
    v4 = @"Thursdays";
  }

  else if ([v3 isEqualToString:@"Friday"])
  {
    v4 = @"Fridays";
  }

  else if ([v3 isEqualToString:@"Saturday"])
  {
    v4 = @"Saturdays";
  }

  else if ([v3 isEqualToString:@"weekday"])
  {
    v4 = @"weekdays";
  }

  else if ([v3 isEqualToString:@"weekend"])
  {
    v4 = @"weekends";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)typeOfDayTagFromStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (v8 && [v8 isBeforeDate:v7])
    {
      v10 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = v7;
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted.", buf, 0x20u);
      }

      v8 = 0;
    }

    if (v9)
    {
      v11 = [MOTime localTimeOfDate:v7 timeZone:v9];

      if (!v8)
      {
        goto LABEL_17;
      }

      v12 = [MOTime localTimeOfDate:v8 timeZone:v9];

      v8 = v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v7;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    if ([v8 isBeforeDate:v11])
    {
      v14 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = v11;
        v30 = 2112;
        v31 = v8;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted after time zone shifting.", buf, 0x20u);
      }

      v8 = 0;
    }

LABEL_17:
    v15 = [MEMORY[0x277CBEA80] currentCalendar];
    v28 = 0;
    *buf = 0;
    v16 = [v15 rangeOfWeekendStartDate:&v28 interval:buf containingDate:v11];
    v17 = v28;
    v18 = v17;
    if (!v8)
    {
      if (v16)
      {
        v13 = 10001;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_34;
    }

    if (!v17)
    {
      v13 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v8];
    [v19 duration];
    if (v20 == 0.0)
    {
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v21 = objc_alloc(MEMORY[0x277CCA970]);
    v22 = [v21 initWithStartDate:v18 duration:*buf];
    if ([v19 intersectsDateInterval:v22])
    {
      v23 = [v19 startDate];
      if ([v22 containsDate:v23])
      {
        v24 = [v19 endDate];
        v25 = [v22 containsDate:v24];

        if (v25)
        {
          v13 = 10001;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_32;
      }
    }

    v13 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v13 = 0;
LABEL_35:

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (unint64_t)dayOfWeekTagFromStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && ![v5 isSameDayWithDate:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = [MOTime dayOfWeekTagFromDate:v5];
  }

  return v7;
}

+ (unint64_t)dayOfWeekTagFromDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v4 setFirstWeekday:1];
  v5 = [v4 components:512 fromDate:v3];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MOTime *)v3 dayOfWeekTagFromDate:v5, v6];
  }

  if ([v5 weekday] == 1)
  {
    v7 = 102;
  }

  else if ([v5 weekday] == 2)
  {
    v7 = 103;
  }

  else if ([v5 weekday] == 3)
  {
    v7 = 104;
  }

  else if ([v5 weekday] == 4)
  {
    v7 = 105;
  }

  else if ([v5 weekday] == 5)
  {
    v7 = 106;
  }

  else if ([v5 weekday] == 6)
  {
    v7 = 107;
  }

  else if ([v5 weekday] == 7)
  {
    v7 = 108;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MOTime *)v3 dayOfWeekTagFromDate:v5, v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 date];
  v9 = [MOTime dateReferenceTagFromStartDate:v7 endDate:v6 nowDate:v8 timeZone:0];

  return v9;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5
{
  v7 = MEMORY[0x277CBEAA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 date];
  v12 = [MOTime dateReferenceTagFromStartDate:v10 endDate:v9 nowDate:v11 timeZone:v8];

  return v12;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)a3 endDate:(id)a4 nowDate:(id)a5 timeZone:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9 && v12)
  {
    v14 = [MOTime localTimeOfDate:v9 timeZone:v12];

    v9 = v14;
  }

  if (v10 && v13)
  {
    v15 = [MOTime localTimeOfDate:v10 timeZone:v13];

    v10 = v15;
  }

  if ([v11 isBeforeDate:v9])
  {
    goto LABEL_10;
  }

  if (!v10)
  {
    if ([v11 isSameDayWithDate:v9])
    {
LABEL_22:
      v16 = 100;
      goto LABEL_11;
    }

    if ([v11 isFollowingDayAfterDate:v9])
    {
LABEL_25:
      v16 = 101;
      goto LABEL_11;
    }

    if ([v11 isSameWeekWithDate:v9])
    {
LABEL_30:
      v16 = 109;
      goto LABEL_11;
    }

    if ([v11 isFollowingWeekAfterDate:v9])
    {
LABEL_33:
      v16 = 110;
      goto LABEL_11;
    }

    if ([v11 isSameMonthWithDate:v9])
    {
LABEL_38:
      v16 = 111;
      goto LABEL_11;
    }

    if ([v11 isFollowingMonthAfterDate:v9])
    {
LABEL_41:
      v16 = 112;
      goto LABEL_11;
    }

    if ([v11 isSameYearWithDate:v9])
    {
LABEL_46:
      v16 = 113;
      goto LABEL_11;
    }

    v18 = v11;
    v19 = v9;
LABEL_49:
    if ([v18 isFollowingYearAfterDate:v19])
    {
      v16 = 114;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (([v11 isBeforeDate:v10] & 1) == 0)
  {
    if ([v11 isSameDayWithDate:v9] && (objc_msgSend(v11, "isSameDayWithDate:", v10) & 1) != 0)
    {
      goto LABEL_22;
    }

    if ([v11 isFollowingDayAfterDate:v9])
    {
      if ([v11 isFollowingDayAfterDate:v10])
      {
        goto LABEL_25;
      }

      if (![v11 isSameWeekWithDate:v9])
      {
        goto LABEL_31;
      }
    }

    else if (([v11 isSameWeekWithDate:v9] & 1) == 0)
    {
      goto LABEL_31;
    }

    if ([v11 isSameWeekWithDate:v10])
    {
      goto LABEL_30;
    }

LABEL_31:
    if ([v11 isFollowingWeekAfterDate:v9])
    {
      if ([v11 isFollowingWeekAfterDate:v10])
      {
        goto LABEL_33;
      }

      if (![v11 isSameMonthWithDate:v9])
      {
        goto LABEL_39;
      }
    }

    else if (([v11 isSameMonthWithDate:v9] & 1) == 0)
    {
      goto LABEL_39;
    }

    if ([v11 isSameMonthWithDate:v10])
    {
      goto LABEL_38;
    }

LABEL_39:
    if ([v11 isFollowingMonthAfterDate:v9])
    {
      if ([v11 isFollowingMonthAfterDate:v10])
      {
        goto LABEL_41;
      }

      if ([v11 isSameYearWithDate:v9])
      {
LABEL_45:
        if ([v11 isSameYearWithDate:v10])
        {
          goto LABEL_46;
        }
      }
    }

    else if ([v11 isSameYearWithDate:v9])
    {
      goto LABEL_45;
    }

    if (([v11 isFollowingYearAfterDate:v9] & 1) == 0)
    {
      goto LABEL_10;
    }

    v18 = v11;
    v19 = v10;
    goto LABEL_49;
  }

LABEL_10:
  v16 = 1;
LABEL_11:

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOTime *)self identifier];
  [(MOTime *)self timestamp];
  v6 = v5;
  v7 = [(MOTime *)self timeString];
  v8 = [(MOTime *)self timeZone];
  v9 = [(MOTime *)self localTime];
  v10 = [v3 stringWithFormat:@"<MOTime identifier, %@, timestamp, %f, timeString, %@, timeZone, %@, localTime, %@, timeTag, %lu, dateReferenceTag, %lu>", v4, v6, v7, v8, v9, -[MOTime timeTag](self, "timeTag"), -[MOTime dateReferenceTag](self, "dateReferenceTag")];

  return v10;
}

- (MOTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [v4 decodeDoubleForKey:@"timestamp"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeString"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  v10 = [v4 decodeInt64ForKey:@"timeTag"];
  v11 = [v4 decodeInt64ForKey:@"dateReferenceTag"];

  v12 = [(MOTime *)self initWithIdentifier:v5 timestamp:v8 timeString:v9 timeZone:v10 timeTag:v7];
  v13 = v12;
  if (v12)
  {
    [(MOTime *)v12 setDateReferenceTag:v11];
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v5 encodeObject:self->_timeString forKey:@"timeString"];
  [v5 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v5 encodeInt64:self->_timeTag forKey:@"timeTag"];
  [v5 encodeInt64:self->_dateReferenceTag forKey:@"dateReferenceTag"];
}

- (unint64_t)hash
{
  v2 = [(MOTime *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOTime *)self identifier];
        if (v8 || ([(MOTime *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOTime *)self identifier];
          v10 = [(MOTime *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MOTime initWithIdentifier:]";
  v4 = 1024;
  v5 = 102;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)timeFromStartDate:endDate:timeZoneManager:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_22D8C5000, v0, v1, "timeZone, date, %@, timeZone, %@, source, system");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)timetagFromStartDate:endDate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_22D8C5000, v0, v1, "timeOfDay, startDate, %@, endDate, %@, skip");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)dayOfWeekFromStartDate:endDate:timeZoneManager:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_22D8C5000, v0, v1, "timeZone, endDate, %@, timeZone, %@, source, system");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)dayOfWeekFromStartDate:endDate:timeZoneManager:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_22D8C5000, v0, v1, "timeZone crossing, timeZone, %@, endTimeZone, %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)dayOfWeekFromStartDate:endDate:timeZoneManager:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_22D8C5000, v0, v1, "timeZone, startDate, %@, timeZone, %@, source, system");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)dayOfWeekTagFromDate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  [a2 weekday];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_DEBUG, "dayOfWeekTagFromDate, date, %@, weekday, %lu", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)dayOfWeekTagFromDate:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  [a2 weekday];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_ERROR, "dayOfWeekTagFromDate, cannot read weekday, date, %@, weekday, %lu", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end