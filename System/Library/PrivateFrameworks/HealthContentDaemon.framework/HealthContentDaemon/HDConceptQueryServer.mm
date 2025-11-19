@interface HDConceptQueryServer
- (HDConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDConceptQueryServer

- (HDConceptQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v7.receiver = self;
  v7.super_class = HDConceptQueryServer;
  return [(HDQueryServer *)&v7 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
}

- (void)_queue_start
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HKSensitiveLogItem();
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2514A1000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error while fetching concepts: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end