@interface HMMTRYearDaySchedule
- (BOOL)isEqual:(id)equal;
- (HMMTRYearDaySchedule)initWithMTRSchedule:(id)schedule;
- (HMMTRYearDaySchedule)initWithStartTime:(id)time endTime:(id)endTime status:(id)status;
- (HMMTRYearDaySchedule)initWithStartTime:(id)time endTime:(id)endTime withTimeZone:(id)zone;
- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)index forUserAtUserIndex:(int64_t)userIndex;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMMTRYearDaySchedule);
  startTime = [(HMMTRYearDaySchedule *)self startTime];
  [(HMMTRYearDaySchedule *)v4 setStartTime:startTime];

  endTime = [(HMMTRYearDaySchedule *)self endTime];
  [(HMMTRYearDaySchedule *)v4 setEndTime:endTime];

  status = [(HMMTRYearDaySchedule *)self status];
  [(HMMTRYearDaySchedule *)v4 setStatus:status];

  return v4;
}

- (unint64_t)hash
{
  startTime = [(HMMTRYearDaySchedule *)self startTime];
  v4 = [startTime hash];
  endTime = [(HMMTRYearDaySchedule *)self endTime];
  v6 = [endTime hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMMTRYearDaySchedule startTime](self, "startTime"), v7 = objc_claimAutoreleasedReturnValue(), [v6 startTime], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    endTime = [(HMMTRYearDaySchedule *)self endTime];
    endTime2 = [v6 endTime];
    v12 = HMFEqualObjects();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)index forUserAtUserIndex:(int64_t)userIndex
{
  v7 = objc_alloc_init(MEMORY[0x277CD53F8]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [v7 setYearDayIndex:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:userIndex];
  [v7 setUserIndex:v9];

  startTime = [(HMMTRYearDaySchedule *)self startTime];
  [v7 setLocalStartTime:startTime];

  endTime = [(HMMTRYearDaySchedule *)self endTime];
  [v7 setLocalEndTime:endTime];

  return v7;
}

- (HMMTRYearDaySchedule)initWithMTRSchedule:(id)schedule
{
  scheduleCopy = schedule;
  localStartTime = [scheduleCopy localStartTime];
  localEndTime = [scheduleCopy localEndTime];
  status = [scheduleCopy status];

  v8 = [(HMMTRYearDaySchedule *)self initWithStartTime:localStartTime endTime:localEndTime status:status];
  return v8;
}

- (HMMTRYearDaySchedule)initWithStartTime:(id)time endTime:(id)endTime withTimeZone:(id)zone
{
  zoneCopy = zone;
  endTimeCopy = endTime;
  v10 = [HMMTRUtilities dateToMatterEpoch:time withTimeZone:zoneCopy];
  v11 = [HMMTRUtilities dateToMatterEpoch:endTimeCopy withTimeZone:zoneCopy];

  v12 = [(HMMTRYearDaySchedule *)self initWithStartTime:v10 endTime:v11 status:0];
  return v12;
}

- (HMMTRYearDaySchedule)initWithStartTime:(id)time endTime:(id)endTime status:(id)status
{
  timeCopy = time;
  endTimeCopy = endTime;
  statusCopy = status;
  v15.receiver = self;
  v15.super_class = HMMTRYearDaySchedule;
  v12 = [(HMMTRYearDaySchedule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startTime, time);
    objc_storeStrong(&v13->_endTime, endTime);
    objc_storeStrong(&v13->_status, status);
  }

  return v13;
}

@end