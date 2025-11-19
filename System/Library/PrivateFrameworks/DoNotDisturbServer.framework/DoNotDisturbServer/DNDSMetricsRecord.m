@interface DNDSMetricsRecord
+ (id)backingStoreWithFileURL:(id)a3;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithMetricsByDay:(id)a3 lastDailyHeartbeat:(id)a4 metricsByWeek:(id)a5 lastWeeklyHeartbeat:(id)a6 metricsByMonth:(id)a7 lastMonthlyHeartbeat:(id)a8;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSMetricsRecord

+ (id)backingStoreWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:a1 fileURL:v4 versionNumber:1];

  return v5;
}

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 metricsByDay];
  v6 = [v4 lastDailyHeartbeat];
  v7 = [v4 metricsByWeek];
  v8 = [v4 lastWeeklyHeartbeat];
  v9 = [v4 metricsByMonth];
  v10 = [v4 lastMonthlyHeartbeat];

  v11 = [(DNDSMetricsRecord *)self _initWithMetricsByDay:v5 lastDailyHeartbeat:v6 metricsByWeek:v7 lastWeeklyHeartbeat:v8 metricsByMonth:v9 lastMonthlyHeartbeat:v10];
  return v11;
}

- (id)_initWithMetricsByDay:(id)a3 lastDailyHeartbeat:(id)a4 metricsByWeek:(id)a5 lastWeeklyHeartbeat:(id)a6 metricsByMonth:(id)a7 lastMonthlyHeartbeat:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v46.receiver = self;
  v46.super_class = DNDSMetricsRecord;
  v20 = [(DNDSMetricsRecord *)&v46 init];
  if (v20)
  {
    v21 = [v14 copy];
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

    v25 = [v15 copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastDailyHeartbeat = v20->_lastDailyHeartbeat;
    v20->_lastDailyHeartbeat = v27;

    v29 = [v16 copy];
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

    v33 = [v17 copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastWeeklyHeartbeat = v20->_lastWeeklyHeartbeat;
    v20->_lastWeeklyHeartbeat = v35;

    v37 = [v18 copy];
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

    v41 = [v19 copy];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = [MEMORY[0x277CBEAA8] distantPast];
    }

    lastMonthlyHeartbeat = v20->_lastMonthlyHeartbeat;
    v20->_lastMonthlyHeartbeat = v43;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(DNDSMetricsRecord *)self metricsByDay];
  v4 = [v3 hash];
  v5 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSMetricsRecord *)self metricsByWeek];
  v8 = [v7 hash];
  v9 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSMetricsRecord *)self metricsByMonth];
  v12 = [v11 hash];
  v13 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSMetricsRecord *)self metricsByDay];
      v8 = [(DNDSMetricsRecord *)v6 metricsByDay];
      if (v7 != v8)
      {
        v9 = [(DNDSMetricsRecord *)self metricsByDay];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_70;
        }

        v10 = v9;
        v11 = [(DNDSMetricsRecord *)v6 metricsByDay];
        if (!v11)
        {
          v13 = 0;
LABEL_69:

          goto LABEL_70;
        }

        v3 = [(DNDSMetricsRecord *)self metricsByDay];
        v12 = [(DNDSMetricsRecord *)v6 metricsByDay];
        if (![v3 isEqual:v12])
        {
          v13 = 0;
LABEL_68:

          goto LABEL_69;
        }

        v75 = v10;
        v76 = v12;
        v77 = v3;
        v78 = v11;
      }

      v14 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
      v15 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
      if (v14 != v15)
      {
        v16 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
        if (v16)
        {
          v17 = v16;
          v79 = v14;
          v18 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
          if (v18)
          {
            v3 = v18;
            v19 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
            v20 = [(DNDSMetricsRecord *)v6 lastDailyHeartbeat];
            if ([v19 isEqual:v20])
            {
              v72 = v20;
              v73 = v19;
              v69 = v3;
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

      v79 = v14;
LABEL_17:
      v21 = [(DNDSMetricsRecord *)self metricsByWeek];
      v22 = [(DNDSMetricsRecord *)v6 metricsByWeek];
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      v23 = [(DNDSMetricsRecord *)self metricsByWeek];
      if (v23)
      {
        v71 = v23;
        v24 = [(DNDSMetricsRecord *)v6 metricsByWeek];
        if (v24)
        {
          v68 = v24;
          v3 = [(DNDSMetricsRecord *)self metricsByWeek];
          v25 = [(DNDSMetricsRecord *)v6 metricsByWeek];
          if ([v3 isEqual:v25])
          {
            v59 = v25;
            v60 = v3;
LABEL_25:
            v26 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
            v74 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
            if (v26 == v74)
            {
              v67 = v22;
              v30 = v21;
LABEL_33:
              v31 = [(DNDSMetricsRecord *)self metricsByMonth];
              [(DNDSMetricsRecord *)v6 metricsByMonth];
              v62 = v66 = v31;
              if (v31 == v62)
              {
                v33 = v30;
                goto LABEL_43;
              }

              v64 = v26;
              v32 = [(DNDSMetricsRecord *)self metricsByMonth];
              v33 = v30;
              if (v32)
              {
                v56 = v32;
                v34 = [(DNDSMetricsRecord *)v6 metricsByMonth];
                v35 = v66;
                v36 = v67;
                if (v34)
                {
                  v53 = v34;
                  v37 = [(DNDSMetricsRecord *)self metricsByMonth];
                  v38 = [(DNDSMetricsRecord *)v6 metricsByMonth];
                  if ([v37 isEqual:v38])
                  {
                    v51 = v38;
                    v52 = v37;
                    v26 = v64;
LABEL_43:
                    v40 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                    v41 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                    v54 = v3;
                    v57 = v33;
                    if (v40 == v41)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v65 = v41;
                      v42 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                      if (v42)
                      {
                        v50 = v42;
                        v43 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                        if (v43)
                        {
                          v44 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
                          v49 = [(DNDSMetricsRecord *)v6 lastMonthlyHeartbeat];
                          v13 = [v44 isEqual:v49];
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

                    if (v26 != v74)
                    {
                    }

                    if (v57 != v67)
                    {
                    }

                    if (v79 != v15)
                    {
                    }

LABEL_67:
                    v3 = v77;
                    v11 = v78;
                    v10 = v75;
                    v12 = v76;
                    if (v7 != v8)
                    {
                      goto LABEL_68;
                    }

LABEL_70:

                    goto LABEL_71;
                  }

                  v34 = v53;
                  v35 = v66;
                  v36 = v67;
                }

                v46 = v74;
                v47 = v64;
                if (v64 != v74)
                {
                  goto LABEL_59;
                }
              }

              else
              {

                v46 = v74;
                v47 = v64;
                v36 = v67;
                if (v64 != v74)
                {
LABEL_59:
                }
              }

              v45 = v73;
              if (v33 != v36)
              {
              }

              v39 = v79;
              if (v79 == v15)
              {
                goto LABEL_65;
              }

              goto LABEL_63;
            }

            v27 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
            if (v27)
            {
              v61 = v27;
              v28 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
              if (v28)
              {
                v63 = v26;
                v58 = v28;
                v29 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
                v3 = [(DNDSMetricsRecord *)v6 lastWeeklyHeartbeat];
                if ([v29 isEqual:v3])
                {
                  v67 = v22;
                  v30 = v21;
                  v55 = v29;
                  v26 = v63;
                  goto LABEL_33;
                }

LABEL_50:
                if (v21 != v22)
                {
                }

                v39 = v79;
                v45 = v73;
                if (v79 == v15)
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
      if (v79 == v15)
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
  v5 = [(DNDSMetricsRecord *)self metricsByDay];
  v6 = [(DNDSMetricsRecord *)self lastDailyHeartbeat];
  v7 = [(DNDSMetricsRecord *)self metricsByWeek];
  v8 = [(DNDSMetricsRecord *)self lastWeeklyHeartbeat];
  v9 = [(DNDSMetricsRecord *)self metricsByMonth];
  v10 = [(DNDSMetricsRecord *)self lastMonthlyHeartbeat];
  v11 = [v3 stringWithFormat:@"<%@: %p metricsByDay: %@; lastDailyHeartbeat: %@; metricsByWeek: %@; lastWeeklyHeartbeat: %@; metricsByMonth: %@; lastMonthlyHeartbeat: %@>", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableMetricsRecord alloc];

  return [(DNDSMetricsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"metricsByDay" ofType:objc_opt_class()];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [v5 bs_safeNumberForKey:@"lastDailyHeartbeat"];
  [v8 doubleValue];
  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

  v10 = [v5 bs_safeObjectForKey:@"metricsByWeek" ofType:objc_opt_class()];
  v11 = MEMORY[0x277CBEAA8];
  v12 = [v5 bs_safeNumberForKey:@"lastWeeklyHeartbeat"];
  [v12 doubleValue];
  v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

  v14 = [v5 bs_safeObjectForKey:@"metricsByMonth" ofType:objc_opt_class()];
  v15 = MEMORY[0x277CBEAA8];
  v16 = [v5 bs_safeNumberForKey:@"lastMonthlyHeartbeat"];

  [v16 doubleValue];
  v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];

  v18 = [[a1 alloc] _initWithMetricsByDay:v6 lastDailyHeartbeat:v9 metricsByWeek:v10 lastWeeklyHeartbeat:v13 metricsByMonth:v14 lastMonthlyHeartbeat:v17];
  return v18;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:self->_metricsByDay forKey:@"metricsByDay"];
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastDailyHeartbeat timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKey:@"lastDailyHeartbeat"];

  [v4 setObject:self->_metricsByWeek forKey:@"metricsByWeek"];
  v7 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastWeeklyHeartbeat timeIntervalSinceReferenceDate];
  v8 = [v7 numberWithDouble:?];
  [v4 setObject:v8 forKey:@"lastWeeklyHeartbeat"];

  [v4 setObject:self->_metricsByMonth forKey:@"metricsByMonth"];
  v9 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastMonthlyHeartbeat timeIntervalSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  [v4 setObject:v10 forKey:@"lastMonthlyHeartbeat"];

  return v4;
}

@end