@interface HKMCDailyHeartStatistics
+ (id)dailyHeartStatisticsWithDayIndex:(int64_t)a3 asleepStatistics:(id)a4 awakeStatistics:(id)a5;
- (BOOL)getData:(id *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (HKMCDailyHeartStatistics)initWithCoder:(id)a3;
- (HKMCDailyHeartStatistics)initWithDayIndex:(int64_t)a3 tenthPercentileAsleepHeartRateStatistics:(id)a4 tenthPercentileAwakeHeartRateStatistics:(id)a5;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCDailyHeartStatistics

- (HKMCDailyHeartStatistics)initWithDayIndex:(int64_t)a3 tenthPercentileAsleepHeartRateStatistics:(id)a4 tenthPercentileAwakeHeartRateStatistics:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKMCDailyHeartStatistics;
  v11 = [(HKMCDailyHeartStatistics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_dayIndex = a3;
    objc_storeStrong(&v11->_tenthPercentileAsleepHeartRateStatistics, a4);
    objc_storeStrong(&v12->_tenthPercentileAwakeHeartRateStatistics, a5);
  }

  return v12;
}

+ (id)dailyHeartStatisticsWithDayIndex:(int64_t)a3 asleepStatistics:(id)a4 awakeStatistics:(id)a5
{
  v8 = a5;
  v9 = [HKMCHeartStatistics heartStatisticsFromStatistics:a4];
  v10 = [HKMCHeartStatistics heartStatisticsFromStatistics:v8];

  v11 = [[a1 alloc] initWithDayIndex:a3 tenthPercentileAsleepHeartRateStatistics:v9 tenthPercentileAwakeHeartRateStatistics:v10];

  return v11;
}

- (BOOL)getData:(id *)a3 error:(id *)a4
{
  v16 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v8 = v16;
  v9 = v7;
  *a3 = v7;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (!v10)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HKMCDailyHeartStatistics *)v12 getData:v8 error:?];
    }

    v13 = v8;
    if (v8)
    {
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  dayIndex = self->_dayIndex;
  v5 = a3;
  [v5 encodeInteger:dayIndex forKey:@"DayIndex"];
  [v5 encodeObject:self->_tenthPercentileAsleepHeartRateStatistics forKey:@"TenthPercentileAsleepHeartRateStatistics"];
  [v5 encodeObject:self->_tenthPercentileAwakeHeartRateStatistics forKey:@"TenthPercentileAwakeHeartRateStatistics"];
}

- (HKMCDailyHeartStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMCDailyHeartStatistics;
  v5 = [(HKMCDailyHeartStatistics *)&v11 init];
  if (v5)
  {
    v5->_dayIndex = [v4 decodeIntegerForKey:@"DayIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TenthPercentileAsleepHeartRateStatistics"];
    tenthPercentileAsleepHeartRateStatistics = v5->_tenthPercentileAsleepHeartRateStatistics;
    v5->_tenthPercentileAsleepHeartRateStatistics = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TenthPercentileAwakeHeartRateStatistics"];
    tenthPercentileAwakeHeartRateStatistics = v5->_tenthPercentileAwakeHeartRateStatistics;
    v5->_tenthPercentileAwakeHeartRateStatistics = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v6 = [v3 stringWithFormat:@"<%@:%p dayIndex:%@ tenthPercentileAsleepHeartRateStatistics:%@ tenthPercentileAwakeHeartRateStatistics:%@>", v4, self, v5, self->_tenthPercentileAsleepHeartRateStatistics, self->_tenthPercentileAwakeHeartRateStatistics];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(HKMCDailyHeartStatistics *)self dayIndex];
      if (v6 == [(HKMCDailyHeartStatistics *)v5 dayIndex])
      {
        v7 = [(HKMCDailyHeartStatistics *)self tenthPercentileAwakeHeartRateStatistics];
        v8 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAwakeHeartRateStatistics];
        if (v7 == v8)
        {
          [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics:v21];
        }

        else
        {
          v9 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAwakeHeartRateStatistics];
          if (!v9)
          {
            v12 = 0;
LABEL_20:

            goto LABEL_21;
          }

          v3 = v9;
          v10 = [(HKMCDailyHeartStatistics *)self tenthPercentileAwakeHeartRateStatistics];
          v11 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAwakeHeartRateStatistics];
          if (![v10 isEqual:v11])
          {
            v12 = 0;
LABEL_19:

            goto LABEL_20;
          }

          [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics:v11];
        }
        v13 = ;
        v14 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAsleepHeartRateStatistics];
        v15 = v14;
        if (v13 == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAsleepHeartRateStatistics];
          if (v16)
          {
            v17 = v16;
            v18 = [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics];
            v19 = [(HKMCDailyHeartStatistics *)v5 tenthPercentileAsleepHeartRateStatistics];
            v12 = [v18 isEqual:v19];
          }

          else
          {

            v12 = 0;
          }
        }

        v11 = v22;
        v10 = v24;
        if (v7 == v8)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v4 = [v3 hash];
  v5 = [(HKMCHeartStatistics *)self->_tenthPercentileAwakeHeartRateStatistics hash];
  v6 = v5 ^ [(HKMCHeartStatistics *)self->_tenthPercentileAsleepHeartRateStatistics hash];

  return v6 ^ v4;
}

- (void)getData:(uint64_t)a3 error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2518FC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error archiving data: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end