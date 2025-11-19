@interface HMMTRYearDaySchedule
- (BOOL)isEqual:(id)a3;
- (HMMTRYearDaySchedule)initWithMTRSchedule:(id)a3;
- (HMMTRYearDaySchedule)initWithStartTime:(id)a3 endTime:(id)a4 status:(id)a5;
- (HMMTRYearDaySchedule)initWithStartTime:(id)a3 endTime:(id)a4 withTimeZone:(id)a5;
- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)a3 forUserAtUserIndex:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMMTRYearDaySchedule

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [HMMTRUtilities matterEpochToDate:self->_startTime];
  v8 = [v3 stringFromDate:v7];
  v9 = [HMMTRUtilities matterEpochToDate:self->_endTime];
  v10 = [v3 stringFromDate:v9];
  v11 = [v4 stringWithFormat:@"<%@: From %@ to %@>", v6, v8, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMMTRYearDaySchedule);
  v5 = [(HMMTRYearDaySchedule *)self startTime];
  [(HMMTRYearDaySchedule *)v4 setStartTime:v5];

  v6 = [(HMMTRYearDaySchedule *)self endTime];
  [(HMMTRYearDaySchedule *)v4 setEndTime:v6];

  v7 = [(HMMTRYearDaySchedule *)self status];
  [(HMMTRYearDaySchedule *)v4 setStatus:v7];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMMTRYearDaySchedule *)self startTime];
  v4 = [v3 hash];
  v5 = [(HMMTRYearDaySchedule *)self endTime];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMMTRYearDaySchedule startTime](self, "startTime"), v7 = objc_claimAutoreleasedReturnValue(), [v6 startTime], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    v10 = [(HMMTRYearDaySchedule *)self endTime];
    v11 = [v6 endTime];
    v12 = HMFEqualObjects();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)a3 forUserAtUserIndex:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CD53F8]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setYearDayIndex:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v7 setUserIndex:v9];

  v10 = [(HMMTRYearDaySchedule *)self startTime];
  [v7 setLocalStartTime:v10];

  v11 = [(HMMTRYearDaySchedule *)self endTime];
  [v7 setLocalEndTime:v11];

  return v7;
}

- (HMMTRYearDaySchedule)initWithMTRSchedule:(id)a3
{
  v4 = a3;
  v5 = [v4 localStartTime];
  v6 = [v4 localEndTime];
  v7 = [v4 status];

  v8 = [(HMMTRYearDaySchedule *)self initWithStartTime:v5 endTime:v6 status:v7];
  return v8;
}

- (HMMTRYearDaySchedule)initWithStartTime:(id)a3 endTime:(id)a4 withTimeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HMMTRUtilities dateToMatterEpoch:a3 withTimeZone:v8];
  v11 = [HMMTRUtilities dateToMatterEpoch:v9 withTimeZone:v8];

  v12 = [(HMMTRYearDaySchedule *)self initWithStartTime:v10 endTime:v11 status:0];
  return v12;
}

- (HMMTRYearDaySchedule)initWithStartTime:(id)a3 endTime:(id)a4 status:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTRYearDaySchedule;
  v12 = [(HMMTRYearDaySchedule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startTime, a3);
    objc_storeStrong(&v13->_endTime, a4);
    objc_storeStrong(&v13->_status, a5);
  }

  return v13;
}

@end