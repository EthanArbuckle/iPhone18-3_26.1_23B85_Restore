@interface GTMTLReplayActivityLoadArchive
- (GTMTLReplayActivityLoadArchive)initWithPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityLoadArchive

- (void)outputToLog:(id)log
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    path = self->_path;
    v8 = 138543618;
    v9 = activityType;
    v10 = 2114;
    v11 = path;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@:\t%{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v11[4] = *MEMORY[0x277D85DE8];
  activityType = self->super._activityType;
  v10[0] = @"activityType";
  v10[1] = @"path";
  path = self->_path;
  v11[0] = activityType;
  v11[1] = path;
  v10[2] = @"activityStartTime";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v11[2] = v5;
  v10[3] = @"activityEndTime";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityLoadArchive;
  v4 = [(GTMTLReplayActivity *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_path);
  }

  return v5;
}

- (GTMTLReplayActivityLoadArchive)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = GTMTLReplayActivityLoadArchive;
  v6 = [(GTMTLReplayActivity *)&v9 initWithType:@"loadArchive"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
  }

  return v7;
}

@end