@interface MOTimeTagInterval
- (MOTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4;
- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4;
- (id)description;
@end

@implementation MOTimeTagInterval

- (MOTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MOTimeTagInterval;
  v8 = [(MOTimeTagInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timetag = a3;
    objc_storeStrong(&v8->_dateInterval, a4);
  }

  return v9;
}

- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v28 = [(MOTimeTagInterval *)self dateInterval];
    v29 = [v28 startDate];
    v30 = [(MOTimeTagInterval *)self dateInterval];
    v31 = [v30 endDate];
    v36 = 138413058;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    v40 = 2112;
    v41 = v29;
    v42 = 2112;
    v43 = v31;
    _os_log_debug_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
  }

  if (!v7 || [v6 isEqualToDate:v7])
  {
    goto LABEL_9;
  }

  if ([v6 isAfterDate:v7])
  {
    v9 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v32 = [(MOTimeTagInterval *)self dateInterval];
      v33 = [v32 startDate];
      v34 = [(MOTimeTagInterval *)self dateInterval];
      v35 = [v34 endDate];
      v36 = 138413058;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v35;
      _os_log_error_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
    }

LABEL_9:
    v10 = [(MOTimeTagInterval *)self dateInterval];
    v11 = [v10 containsDate:v6];

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

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v7];
  [v15 duration];
  v12 = 0.0;
  if (v16 > 0.0)
  {
    v17 = [(MOTimeTagInterval *)self dateInterval];
    v18 = [v17 intersectsDateInterval:v15];

    if (v18)
    {
      v19 = [(MOTimeTagInterval *)self dateInterval];
      v20 = [v19 intersectionWithDateInterval:v15];
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
  v5 = [(MOTimeTagInterval *)self dateInterval];
  v6 = [v3 stringWithFormat:@"Interval: timetag, %@, interval, %@", v4, v5];

  return v6;
}

@end