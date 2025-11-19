@interface GTMTLReplayActivityRestoreResources
- (GTMTLReplayActivityRestoreResources)initWithRequests:(const GTResourceRestoreRequest *)a3 count:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonObject;
- (void)outputToLog:(id)a3;
- (void)signpostIntervalBegin:(unint64_t)a3;
@end

@implementation GTMTLReplayActivityRestoreResources

- (void)signpostIntervalBegin:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = g_signpostLog;
  v6 = v5;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [(GTMTLReplayActivity *)self messageSerial];
    activityType = self->super._activityType;
    requestCount = self->_requestCount;
    v11[0] = 67109634;
    v11[1] = v7;
    v12 = 2112;
    v13 = activityType;
    v14 = 1024;
    v15 = requestCount;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v6, OS_SIGNPOST_INTERVAL_BEGIN, a3, "Replayer-3-commandQueue", "%u. %@ x%d", v11, 0x18u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)outputToLog:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    activityType = self->super._activityType;
    requests = self->_requests;
    requestCount = self->_requestCount;
    v8 = a3;
    v9 = ArrayFromDownloadRequests(requests, requestCount);
    v11 = 138543618;
    v12 = activityType;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_24D764000, v8, OS_LOG_TYPE_INFO, "%{public}@:\t%{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)jsonObject
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = self->super._activityType;
  v9[0] = @"activityType";
  v9[1] = @"requests";
  v3 = ArrayFromDownloadRequests(self->_requests, self->_requestCount);
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
  v5.super_class = GTMTLReplayActivityRestoreResources;
  result = [(GTMTLReplayActivity *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 5) = self->_requests;
    *(result + 12) = self->_requestCount;
  }

  return result;
}

- (GTMTLReplayActivityRestoreResources)initWithRequests:(const GTResourceRestoreRequest *)a3 count:(int)a4
{
  v7.receiver = self;
  v7.super_class = GTMTLReplayActivityRestoreResources;
  result = [(GTMTLReplayActivity *)&v7 initWithType:@"restoreResources"];
  if (result)
  {
    result->_requests = a3;
    result->_requestCount = a4;
  }

  return result;
}

@end