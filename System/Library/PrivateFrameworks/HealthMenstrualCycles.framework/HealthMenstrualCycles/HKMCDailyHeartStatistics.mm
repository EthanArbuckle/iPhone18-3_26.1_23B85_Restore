@interface HKMCDailyHeartStatistics
+ (id)dailyHeartStatisticsWithDayIndex:(int64_t)index asleepStatistics:(id)statistics awakeStatistics:(id)awakeStatistics;
- (BOOL)getData:(id *)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKMCDailyHeartStatistics)initWithCoder:(id)coder;
- (HKMCDailyHeartStatistics)initWithDayIndex:(int64_t)index tenthPercentileAsleepHeartRateStatistics:(id)statistics tenthPercentileAwakeHeartRateStatistics:(id)rateStatistics;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCDailyHeartStatistics

- (HKMCDailyHeartStatistics)initWithDayIndex:(int64_t)index tenthPercentileAsleepHeartRateStatistics:(id)statistics tenthPercentileAwakeHeartRateStatistics:(id)rateStatistics
{
  statisticsCopy = statistics;
  rateStatisticsCopy = rateStatistics;
  v14.receiver = self;
  v14.super_class = HKMCDailyHeartStatistics;
  v11 = [(HKMCDailyHeartStatistics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_dayIndex = index;
    objc_storeStrong(&v11->_tenthPercentileAsleepHeartRateStatistics, statistics);
    objc_storeStrong(&v12->_tenthPercentileAwakeHeartRateStatistics, rateStatistics);
  }

  return v12;
}

+ (id)dailyHeartStatisticsWithDayIndex:(int64_t)index asleepStatistics:(id)statistics awakeStatistics:(id)awakeStatistics
{
  awakeStatisticsCopy = awakeStatistics;
  v9 = [HKMCHeartStatistics heartStatisticsFromStatistics:statistics];
  v10 = [HKMCHeartStatistics heartStatisticsFromStatistics:awakeStatisticsCopy];

  v11 = [[self alloc] initWithDayIndex:index tenthPercentileAsleepHeartRateStatistics:v9 tenthPercentileAwakeHeartRateStatistics:v10];

  return v11;
}

- (BOOL)getData:(id *)data error:(id *)error
{
  v16 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v8 = v16;
  v9 = v7;
  *data = v7;
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
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  dayIndex = self->_dayIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:dayIndex forKey:@"DayIndex"];
  [coderCopy encodeObject:self->_tenthPercentileAsleepHeartRateStatistics forKey:@"TenthPercentileAsleepHeartRateStatistics"];
  [coderCopy encodeObject:self->_tenthPercentileAwakeHeartRateStatistics forKey:@"TenthPercentileAwakeHeartRateStatistics"];
}

- (HKMCDailyHeartStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKMCDailyHeartStatistics;
  v5 = [(HKMCDailyHeartStatistics *)&v11 init];
  if (v5)
  {
    v5->_dayIndex = [coderCopy decodeIntegerForKey:@"DayIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TenthPercentileAsleepHeartRateStatistics"];
    tenthPercentileAsleepHeartRateStatistics = v5->_tenthPercentileAsleepHeartRateStatistics;
    v5->_tenthPercentileAsleepHeartRateStatistics = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TenthPercentileAwakeHeartRateStatistics"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dayIndex = [(HKMCDailyHeartStatistics *)self dayIndex];
      if (dayIndex == [(HKMCDailyHeartStatistics *)equalCopy dayIndex])
      {
        tenthPercentileAwakeHeartRateStatistics = [(HKMCDailyHeartStatistics *)self tenthPercentileAwakeHeartRateStatistics];
        tenthPercentileAwakeHeartRateStatistics2 = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAwakeHeartRateStatistics];
        if (tenthPercentileAwakeHeartRateStatistics == tenthPercentileAwakeHeartRateStatistics2)
        {
          [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics:v21];
        }

        else
        {
          tenthPercentileAwakeHeartRateStatistics3 = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAwakeHeartRateStatistics];
          if (!tenthPercentileAwakeHeartRateStatistics3)
          {
            v12 = 0;
LABEL_20:

            goto LABEL_21;
          }

          v3 = tenthPercentileAwakeHeartRateStatistics3;
          tenthPercentileAwakeHeartRateStatistics4 = [(HKMCDailyHeartStatistics *)self tenthPercentileAwakeHeartRateStatistics];
          tenthPercentileAwakeHeartRateStatistics5 = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAwakeHeartRateStatistics];
          if (![tenthPercentileAwakeHeartRateStatistics4 isEqual:tenthPercentileAwakeHeartRateStatistics5])
          {
            v12 = 0;
LABEL_19:

            goto LABEL_20;
          }

          [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics:tenthPercentileAwakeHeartRateStatistics5];
        }
        v13 = ;
        tenthPercentileAsleepHeartRateStatistics = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAsleepHeartRateStatistics];
        v15 = tenthPercentileAsleepHeartRateStatistics;
        if (v13 == tenthPercentileAsleepHeartRateStatistics)
        {

          v12 = 1;
        }

        else
        {
          tenthPercentileAsleepHeartRateStatistics2 = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAsleepHeartRateStatistics];
          if (tenthPercentileAsleepHeartRateStatistics2)
          {
            v17 = tenthPercentileAsleepHeartRateStatistics2;
            tenthPercentileAsleepHeartRateStatistics3 = [(HKMCDailyHeartStatistics *)self tenthPercentileAsleepHeartRateStatistics];
            tenthPercentileAsleepHeartRateStatistics4 = [(HKMCDailyHeartStatistics *)equalCopy tenthPercentileAsleepHeartRateStatistics];
            v12 = [tenthPercentileAsleepHeartRateStatistics3 isEqual:tenthPercentileAsleepHeartRateStatistics4];
          }

          else
          {

            v12 = 0;
          }
        }

        tenthPercentileAwakeHeartRateStatistics5 = v22;
        tenthPercentileAwakeHeartRateStatistics4 = v24;
        if (tenthPercentileAwakeHeartRateStatistics == tenthPercentileAwakeHeartRateStatistics2)
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