@interface GTMTLReplayActivityDebugFuncStop
- (GTMTLReplayActivityDebugFuncStop)initWithCurrentIndex:(id)a3 targetIndex:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (void)outputToLog:(id)a3;
@end

@implementation GTMTLReplayActivityDebugFuncStop

- (void)outputToLog:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    function = self->_currentIndex.function;
    subCommand = self->_currentIndex.subCommand;
    v9 = self->_targetIndex.function;
    v8 = self->_targetIndex.subCommand;
    v11 = 138544386;
    v12 = activityType;
    v13 = 1024;
    v14 = function;
    v15 = 1024;
    v16 = subCommand;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_24D764000, a3, OS_LOG_TYPE_INFO, "%{public}@:\t%u:%u -> %u:%u", &v11, 0x24u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v13[7] = *MEMORY[0x277D85DE8];
  v13[0] = self->super._activityType;
  v12[0] = @"activityType";
  v12[1] = @"currentFunctionIndex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.function];
  v13[1] = v3;
  v12[2] = @"currentSubCommand";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentIndex.subCommand];
  v13[2] = v4;
  v12[3] = @"targetFunctionIndex";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_targetIndex.function];
  v13[3] = v5;
  v12[4] = @"targetSubCommand";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_targetIndex.subCommand];
  v13[4] = v6;
  v12[5] = @"activityStartTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityStartTime];
  v13[5] = v7;
  v12[6] = @"activityEndTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->super._activityEndTime];
  v13[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = GTMTLReplayActivityDebugFuncStop;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 5) = self->_currentIndex;
    *(result + 6) = self->_targetIndex;
  }

  return result;
}

- (GTMTLReplayActivityDebugFuncStop)initWithCurrentIndex:(id)a3 targetIndex:(id)a4
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityDebugFuncStop;
  result = [(GTMTLReplayActivity *)&v7 initWithType:@"debugFuncStop"];
  if (result)
  {
    result->_currentIndex = a3;
    result->_targetIndex = a4;
  }

  return result;
}

@end