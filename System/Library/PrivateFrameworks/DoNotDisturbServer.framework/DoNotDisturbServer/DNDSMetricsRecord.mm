@interface DNDSMetricsRecord
+ (id)backingStoreWithFileURL:(id)l;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithMetricsByDay:(id)day lastDailyHeartbeat:(id)heartbeat metricsByWeek:(id)week lastWeeklyHeartbeat:(id)weeklyHeartbeat metricsByMonth:(id)month lastMonthlyHeartbeat:(id)monthlyHeartbeat;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSMetricsRecord

+ (id)backingStoreWithFileURL:(id)l
{
  lCopy = l;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy versionNumber:1];

  return v5;
}

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  metricsByDay = [recordCopy metricsByDay];
  lastDailyHeartbeat = [recordCopy lastDailyHeartbeat];
  metricsByWeek = [recordCopy metricsByWeek];
  lastWeeklyHeartbeat = [recordCopy lastWeeklyHeartbeat];
  metricsByMonth = [recordCopy metricsByMonth];
  lastMonthlyHeartbeat = [recordCopy lastMonthlyHeartbeat];

  v11 = [(DNDSMetricsRecord *)self _initWithMetricsByDay:metricsByDay lastDailyHeartbeat:lastDailyHeartbeat metricsByWeek:metricsByWeek lastWeeklyHeartbeat:lastWeeklyHeartbeat metricsByMonth:metricsByMonth lastMonthlyHeartbeat:lastMonthlyHeartbeat];
  return v11;
}

- (id)_initWithMetricsByDay:(id)day lastDailyHeartbeat:(id)heartbeat metricsByWeek:(id)week lastWeeklyHeartbeat:(id)weeklyHeartbeat metricsByMonth:(id)month lastMonthlyHeartbeat:(id)monthlyHeartbeat
{
  dayCopy = day;
  heartbeatCopy = heartbeat;
  weekCopy = week;
  weeklyHeartbeatCopy = weeklyHeartbeat;
  monthCopy = month;
  monthlyHeartbeatCopy = monthlyHeartbeat;
  v46.receiver = self;
  v46.super_class = DNDSMetricsRecord;
  v20 = [(DNDSMetricsRecord *)&v46 init];
  if (v20)
  {
    v21 = [dayCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    metricsByDay = v20->_metricsByDay;
    v20->_metricsByDay = v23;

    v25 = [heartbeatCopy copy];
    v26 = v25;
    if (v25)
    {
      distantPast = v25;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastDailyHeartbeat = v20->_lastDailyHeartbeat;
    v20->_lastDailyHeartbeat = distantPast;

    v29 = [weekCopy copy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    metricsByWeek = v20->_metricsByWeek;
    v20->_metricsByWeek = v31;

    v33 = [weeklyHeartbeatCopy copy];
    v34 = v33;
    if (v33)
    {
      distantPast2 = v33;
    }

    else
    {
      distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastWeeklyHeartbeat = v20->_lastWeeklyHeartbeat;
    v20->_lastWeeklyHeartbeat = distantPast2;

    v37 = [monthCopy copy];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    metricsByMonth = v20->_metricsByMonth;
    v20->_metricsByMonth = v39;

    v41 = [monthlyHeartbeatCopy copy];
    v42 = v41;
    if (v41)
    {
      distantPast3 = v41;
    }

    else
    {
      distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastMonthlyHeartbeat = v20->_lastMonthlyHeartbeat;
    v20->_lastMonthlyHeartbeat = distantPast3;
  }

  return v20;
}

- (unint64_t)hash
{
  metricsByDay = [(DNDSMetricsRecord *)self metricsByDay];
  v4 = [metricsByDay hash];
  lastDailyHeartbeat = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
  v6 = [lastDailyHeartbeat hash] ^ v4;
  metricsByWeek = [(DNDSMetricsRecord *)self metricsByWeek];
  v8 = [metricsByWeek hash];
  lastWeeklyHeartbeat = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
  v10 = v6 ^ v8 ^ [lastWeeklyHeartbeat hash];
  metricsByMonth = [(DNDSMetricsRecord *)self metricsByMonth];
  v12 = [metricsByMonth hash];
  lastMonthlyHeartbeat = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
  v14 = v12 ^ [lastMonthlyHeartbeat hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      metricsByDay = [(DNDSMetricsRecord *)self metricsByDay];
      metricsByDay2 = [(DNDSMetricsRecord *)v6 metricsByDay];
      if (metricsByDay != metricsByDay2)
      {
        metricsByDay3 = [(DNDSMetricsRecord *)self metricsByDay];
        if (!metricsByDay3)
        {
          v13 = 0;
          goto LABEL_70;
        }

        v10 = metricsByDay3;
        metricsByDay4 = [(DNDSMetricsRecord *)v6 metricsByDay];
        if (!metricsByDay4)
        {
          v13 = 0;
LABEL_69:

          goto LABEL_70;
        }

        metricsByDay5 = [(DNDSMetricsRecord *)self metricsByDay];
        metricsByDay6 = [(DNDSMetricsRecord *)v6 metricsByDay];
        if (![metricsByDay5 isEqual:metricsByDay6])
        {
          v13 = 0;
LABEL_68:

          goto LABEL_69;
        }

        v75 = v10;
        v76 = metricsByDay6;
        v77 = metricsByDay5;
        v78 = metricsByDay4;
      }

      lastDailyHeartbeat = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
      lastDailyHeartbeat2 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
      if (lastDailyHeartbeat != lastDailyHeartbeat2)
      {
        lastDailyHeartbeat3 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
        if (lastDailyHeartbeat3)
        {
          v17 = lastDailyHeartbeat3;
          v79 = lastDailyHeartbeat;
          lastDailyHeartbeat4 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
          if (lastDailyHeartbeat4)
          {
            metricsByDay5 = lastDailyHeartbeat4;
            lastDailyHeartbeat5 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
            lastDailyHeartbeat6 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
            if ([lastDailyHeartbeat5 isEqual:lastDailyHeartbeat6])
            {
              v72 = lastDailyHeartbeat6;
              v73 = lastDailyHeartbeat5;
              v69 = metricsByDay5;
              v70 = v17;
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

LABEL_66:
        v13 = 0;
        goto LABEL_67;
      }

      v79 = lastDailyHeartbeat;
LABEL_17:
      metricsByWeek = [(DNDSMetricsRecord *)self metricsByWeek];
      metricsByWeek2 = [(DNDSMetricsRecord *)v6 metricsByWeek];
      if (metricsByWeek == metricsByWeek2)
      {
        goto LABEL_25;
      }

      metricsByWeek3 = [(DNDSMetricsRecord *)self metricsByWeek];
      if (metricsByWeek3)
      {
        v71 = metricsByWeek3;
        metricsByWeek4 = [(DNDSMetricsRecord *)v6 metricsByWeek];
        if (metricsByWeek4)
        {
          v68 = metricsByWeek4;
          metricsByDay5 = [(DNDSMetricsRecord *)self metricsByWeek];
          metricsByWeek5 = [(DNDSMetricsRecord *)v6 metricsByWeek];
          if ([metricsByDay5 isEqual:metricsByWeek5])
          {
            v59 = metricsByWeek5;
            v60 = metricsByDay5;
LABEL_25:
            lastWeeklyHeartbeat = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
            lastWeeklyHeartbeat2 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
            if (lastWeeklyHeartbeat == lastWeeklyHeartbeat2)
            {
              v67 = metricsByWeek2;
              v30 = metricsByWeek;
LABEL_33:
              metricsByMonth = [(DNDSMetricsRecord *)self metricsByMonth];
              [(DNDSMetricsRecord *)v6 metricsByMonth];
              v62 = v66 = metricsByMonth;
              if (metricsByMonth == v62)
              {
                v33 = v30;
                goto LABEL_43;
              }

              v64 = lastWeeklyHeartbeat;
              metricsByMonth2 = [(DNDSMetricsRecord *)self metricsByMonth];
              v33 = v30;
              if (metricsByMonth2)
              {
                v56 = metricsByMonth2;
                metricsByMonth3 = [(DNDSMetricsRecord *)v6 metricsByMonth];
                v35 = v66;
                v36 = v67;
                if (metricsByMonth3)
                {
                  v53 = metricsByMonth3;
                  metricsByMonth4 = [(DNDSMetricsRecord *)self metricsByMonth];
                  metricsByMonth5 = [(DNDSMetricsRecord *)v6 metricsByMonth];
                  if ([metricsByMonth4 isEqual:metricsByMonth5])
                  {
                    v51 = metricsByMonth5;
                    v52 = metricsByMonth4;
                    lastWeeklyHeartbeat = v64;
LABEL_43:
                    lastMonthlyHeartbeat = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                    lastMonthlyHeartbeat2 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                    v54 = metricsByDay5;
                    v57 = v33;
                    if (lastMonthlyHeartbeat == lastMonthlyHeartbeat2)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v65 = lastMonthlyHeartbeat2;
                      lastMonthlyHeartbeat3 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                      if (lastMonthlyHeartbeat3)
                      {
                        v50 = lastMonthlyHeartbeat3;
                        lastMonthlyHeartbeat4 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                        if (lastMonthlyHeartbeat4)
                        {
                          lastMonthlyHeartbeat5 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                          lastMonthlyHeartbeat6 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                          v13 = [lastMonthlyHeartbeat5 isEqual:lastMonthlyHeartbeat6];
                        }

                        else
                        {
                          v13 = 0;
                        }
                      }

                      else
                      {

                        v13 = 0;
                      }
                    }

                    if (v66 != v62)
                    {
                    }

                    if (lastWeeklyHeartbeat != lastWeeklyHeartbeat2)
                    {
                    }

                    if (v57 != v67)
                    {
                    }

                    if (v79 != lastDailyHeartbeat2)
                    {
                    }

LABEL_67:
                    metricsByDay5 = v77;
                    metricsByDay4 = v78;
                    v10 = v75;
                    metricsByDay6 = v76;
                    if (metricsByDay != metricsByDay2)
                    {
                      goto LABEL_68;
                    }

LABEL_70:

                    goto LABEL_71;
                  }

                  metricsByMonth3 = v53;
                  v35 = v66;
                  v36 = v67;
                }

                v46 = lastWeeklyHeartbeat2;
                v47 = v64;
                if (v64 != lastWeeklyHeartbeat2)
                {
                  goto LABEL_59;
                }
              }

              else
              {

                v46 = lastWeeklyHeartbeat2;
                v47 = v64;
                v36 = v67;
                if (v64 != lastWeeklyHeartbeat2)
                {
LABEL_59:
                }
              }

              v45 = v73;
              if (v33 != v36)
              {
              }

              v39 = v79;
              if (v79 == lastDailyHeartbeat2)
              {
                goto LABEL_65;
              }

              goto LABEL_63;
            }

            lastWeeklyHeartbeat3 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
            if (lastWeeklyHeartbeat3)
            {
              v61 = lastWeeklyHeartbeat3;
              lastWeeklyHeartbeat4 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
              if (lastWeeklyHeartbeat4)
              {
                v63 = lastWeeklyHeartbeat;
                v58 = lastWeeklyHeartbeat4;
                lastWeeklyHeartbeat5 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
                metricsByDay5 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
                if ([lastWeeklyHeartbeat5 isEqual:metricsByDay5])
                {
                  v67 = metricsByWeek2;
                  v30 = metricsByWeek;
                  v55 = lastWeeklyHeartbeat5;
                  lastWeeklyHeartbeat = v63;
                  goto LABEL_33;
                }

LABEL_50:
                if (metricsByWeek != metricsByWeek2)
                {
                }

                v39 = v79;
                v45 = v73;
                if (v79 == lastDailyHeartbeat2)
                {
                  goto LABEL_65;
                }

LABEL_63:

                goto LABEL_64;
              }
            }

            goto LABEL_50;
          }
        }
      }

      v39 = v79;
      if (v79 == lastDailyHeartbeat2)
      {
LABEL_65:

        goto LABEL_66;
      }

LABEL_64:
      goto LABEL_65;
    }

    v13 = 0;
  }

LABEL_71:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  metricsByDay = [(DNDSMetricsRecord *)self metricsByDay];
  lastDailyHeartbeat = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
  metricsByWeek = [(DNDSMetricsRecord *)self metricsByWeek];
  lastWeeklyHeartbeat = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
  metricsByMonth = [(DNDSMetricsRecord *)self metricsByMonth];
  lastMonthlyHeartbeat = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
  v11 = [v3 stringWithFormat:@"<%@: %p metricsByDay: %@; lastDailyHeartbeat: %@; metricsByWeek: %@; lastWeeklyHeartbeat: %@; metricsByMonth: %@; lastMonthlyHeartbeat: %@>", v4, self, metricsByDay, lastDailyHeartbeat, metricsByWeek, lastWeeklyHeartbeat, metricsByMonth, lastMonthlyHeartbeat];;

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableMetricsRecord alloc];

  return [(DNDSMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"metricsByDay" ofType:objc_opt_class()];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [representationCopy bs_safeNumberForKey:@"lastDailyHeartbeat"];
  [v8 doubleValue];
  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

  v10 = [representationCopy bs_safeObjectForKey:@"metricsByWeek" ofType:objc_opt_class()];
  v11 = MEMORY[0x277CBEAA8];
  v12 = [representationCopy bs_safeNumberForKey:@"lastWeeklyHeartbeat"];
  [v12 doubleValue];
  v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

  v14 = [representationCopy bs_safeObjectForKey:@"metricsByMonth" ofType:objc_opt_class()];
  v15 = MEMORY[0x277CBEAA8];
  v16 = [representationCopy bs_safeNumberForKey:@"lastMonthlyHeartbeat"];

  [v16 doubleValue];
  v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];

  v18 = [[self alloc] _initWithMetricsByDay:v6 lastDailyHeartbeat:v9 metricsByWeek:v10 lastWeeklyHeartbeat:v13 metricsByMonth:v14 lastMonthlyHeartbeat:v17];
  return v18;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_metricsByDay forKey:@"metricsByDay"];
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastDailyHeartbeat timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKey:@"lastDailyHeartbeat"];

  [dictionary setObject:self->_metricsByWeek forKey:@"metricsByWeek"];
  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastWeeklyHeartbeat timeIntervalSinceReferenceDate];
  v8 = [v7 numberWithDouble:?];
  [dictionary setObject:v8 forKey:@"lastWeeklyHeartbeat"];

  [dictionary setObject:self->_metricsByMonth forKey:@"metricsByMonth"];
  v9 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastMonthlyHeartbeat timeIntervalSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  [dictionary setObject:v10 forKey:@"lastMonthlyHeartbeat"];

  return dictionary;
}

@end