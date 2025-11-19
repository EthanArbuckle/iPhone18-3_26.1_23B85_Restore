@interface GTMTLReplayActivity
- (GTMTLReplayActivity)initWithType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (void)outputToLog:(id)a3;
- (void)signpostIntervalBegin:(unint64_t)a3;
@end

@implementation GTMTLReplayActivity

- (void)signpostIntervalBegin:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = g_signpostLog;
  v6 = v5;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(GTMTLReplayActivity *)self messageSerial];
    activityType = self->_activityType;
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = activityType;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v6, OS_SIGNPOST_INTERVAL_BEGIN, a3, "Replayer-3-commandQueue", "%u. %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)outputToLog:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->_activityType;
    v7 = 138543362;
    v8 = activityType;
    _os_log_impl(&dword_24D764000, a3, OS_LOG_TYPE_INFO, "%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = self->_activityType;
  v8[0] = @"activityType";
  v8[1] = @"activityStartTime";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->_activityStartTime];
  v9[1] = v3;
  v8[2] = @"activityEndTime";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&time_scale * self->_activityEndTime];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, self->_activityType);
    v6[2] = self->_activityStartTime;
    v6[3] = self->_activityEndTime;
    v7 = [(GTMTLReplayActivity *)self->_previousActivity copyWithZone:a3];
    v8 = v6[4];
    v6[4] = v7;
  }

  return v6;
}

- (GTMTLReplayActivity)initWithType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = GTMTLReplayActivity;
  v6 = [(GTMTLReplayActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityType, a3);
    v8 = mach_absolute_time();
    v7->_activityStartTime = v8;
    v7->_activityEndTime = v8;
  }

  return v7;
}

@end