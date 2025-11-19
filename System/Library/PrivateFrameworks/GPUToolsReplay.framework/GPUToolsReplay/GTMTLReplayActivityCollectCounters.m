@interface GTMTLReplayActivityCollectCounters
- (GTMTLReplayActivityCollectCounters)initWithCounters:(id)a3 statLocations:(unint64_t)a4 index:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (void)outputToLog:(id)a3;
@end

@implementation GTMTLReplayActivityCollectCounters

- (void)outputToLog:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    index = self->_index;
    locations = self->_locations;
    counterNames = self->_counterNames;
    v10 = 138544130;
    v11 = activityType;
    v12 = 2048;
    v13 = index;
    v14 = 2048;
    v15 = locations;
    v16 = 2114;
    v17 = counterNames;
    _os_log_impl(&dword_24D764000, a3, OS_LOG_TYPE_INFO, "%{public}@(%llu):\t0x%08llx %{public}@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v13[6] = *MEMORY[0x277D85DE8];
  activityType = self->super._activityType;
  counterNames = self->_counterNames;
  v12[0] = @"activityType";
  v12[1] = @"counterNames";
  v13[0] = activityType;
  v13[1] = counterNames;
  v12[2] = @"locations";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_locations];
  v13[2] = v5;
  v12[3] = @"index";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_index];
  v13[3] = v6;
  v12[4] = @"activityStartTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v13[4] = v7;
  v12[5] = @"activityEndTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityCollectCounters;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_counterNames);
    v5[6] = self->_locations;
    v5[7] = self->_index;
  }

  return v5;
}

- (GTMTLReplayActivityCollectCounters)initWithCounters:(id)a3 statLocations:(unint64_t)a4 index:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = GTMTLReplayActivityCollectCounters;
  v10 = [(GTMTLReplayActivity *)&v13 initWithType:@"collectCounters"];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_counterNames, a3);
    v11->_locations = a4;
    v11->_index = a5;
  }

  return v11;
}

@end