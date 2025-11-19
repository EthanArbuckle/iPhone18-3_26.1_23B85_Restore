@interface GTMTLReplayActivityPerformFrameTiming
- (GTMTLReplayActivityPerformFrameTiming)initWithIndex:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (void)outputToLog:(id)a3;
@end

@implementation GTMTLReplayActivityPerformFrameTiming

- (void)outputToLog:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    index = self->_index;
    v8 = 138543618;
    v9 = activityType;
    v10 = 1024;
    v11 = index;
    _os_log_impl(&dword_24D764000, a3, OS_LOG_TYPE_INFO, "%{public}@:\t%d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = self->super._activityType;
  v9[0] = @"activityType";
  v9[1] = @"index";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_index];
  v10[1] = v3;
  v9[2] = @"activityStartTime";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v10[2] = v4;
  v9[3] = @"activityEndTime";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityPerformFrameTiming;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 10) = self->_index;
  }

  return result;
}

- (GTMTLReplayActivityPerformFrameTiming)initWithIndex:(int)a3
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityPerformFrameTiming;
  result = [(GTMTLReplayActivity *)&v5 initWithType:@"performFrameTiming"];
  if (result)
  {
    result->_index = a3;
  }

  return result;
}

@end