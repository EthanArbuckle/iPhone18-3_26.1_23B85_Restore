@interface GTMTLReplayActivityDisplayAttachment
- (GTMTLReplayActivityDisplayAttachment)initWithIndex:(id)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonObject;
- (void)outputToLog:(id)log;
@end

@implementation GTMTLReplayActivityDisplayAttachment

- (void)outputToLog:(id)log
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    function = self->_currentIndex.function;
    subCommand = self->_currentIndex.subCommand;
    v9 = 138543874;
    v10 = activityType;
    v11 = 1024;
    v12 = function;
    v13 = 1024;
    v14 = subCommand;
    _os_log_impl(&dword_24D764000, log, OS_LOG_TYPE_INFO, "%{public}@:\t%u:%u", &v9, 0x18u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v11[5] = *MEMORY[0x277D85DE8];
  v11[0] = self->super._activityType;
  v10[0] = @"activityType";
  v10[1] = @"functionIndex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.function];
  v11[1] = v3;
  v10[2] = @"subCommand";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.subCommand];
  v11[2] = v4;
  v10[3] = @"activityStartTime";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v11[3] = v5;
  v10[4] = @"activityEndTime";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityDisplayAttachment;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 5) = self->_currentIndex;
  }

  return result;
}

- (GTMTLReplayActivityDisplayAttachment)initWithIndex:(id)index
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityDisplayAttachment;
  result = [(GTMTLReplayActivity *)&v5 initWithType:@"displayAttachment"];
  if (result)
  {
    result->_currentIndex = index;
  }

  return result;
}

@end