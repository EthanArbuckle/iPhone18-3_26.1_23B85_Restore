@interface MOTimeTagInterval
- (MOTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval;
- (double)overlapsScoreForStartDate:(id)date endDate:(id)endDate;
- (id)description;
@end

@implementation MOTimeTagInterval

- (MOTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = MOTimeTagInterval;
  v8 = [(MOTimeTagInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timetag = tag;
    objc_storeStrong(&v8->_dateInterval, interval);
  }

  return v9;
}

- (double)overlapsScoreForStartDate:(id)date endDate:(id)endDate
{
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    dateInterval = [(MOTimeTagInterval *)self dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [(MOTimeTagInterval *)self dateInterval];
    endDate = [dateInterval2 endDate];
    v36 = 138413058;
    v37 = dateCopy;
    v38 = 2112;
    v39 = endDateCopy;
    v40 = 2112;
    v41 = startDate;
    v42 = 2112;
    v43 = endDate;
    _os_log_debug_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
  }

  if (!endDateCopy || [dateCopy isEqualToDate:endDateCopy])
  {
    goto LABEL_9;
  }

  if ([dateCopy isAfterDate:endDateCopy])
  {
    v9 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      dateInterval3 = [(MOTimeTagInterval *)self dateInterval];
      startDate2 = [dateInterval3 startDate];
      dateInterval4 = [(MOTimeTagInterval *)self dateInterval];
      endDate2 = [dateInterval4 endDate];
      v36 = 138413058;
      v37 = dateCopy;
      v38 = 2112;
      v39 = endDateCopy;
      v40 = 2112;
      v41 = startDate2;
      v42 = 2112;
      v43 = endDate2;
      _os_log_error_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
    }

LABEL_9:
    dateInterval5 = [(MOTimeTagInterval *)self dateInterval];
    v11 = [dateInterval5 containsDate:dateCopy];

    if (v11)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    goto LABEL_12;
  }

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];
  [v15 duration];
  v12 = 0.0;
  if (v16 > 0.0)
  {
    dateInterval6 = [(MOTimeTagInterval *)self dateInterval];
    v18 = [dateInterval6 intersectsDateInterval:v15];

    if (v18)
    {
      dateInterval7 = [(MOTimeTagInterval *)self dateInterval];
      v20 = [dateInterval7 intersectionWithDateInterval:v15];
      [v20 duration];
      v22 = v21;

      [v15 duration];
      v24 = v23 - v22;
      [v15 duration];
      v26 = v22 / v25;
      if (v26 > 0.5 && v24 < 1800.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = v26;
      }
    }
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MOTime timeStringFromTimeTag:[(MOTimeTagInterval *)self timetag]];
  dateInterval = [(MOTimeTagInterval *)self dateInterval];
  v6 = [v3 stringWithFormat:@"Interval: timetag, %@, interval, %@", v4, dateInterval];

  return v6;
}

@end