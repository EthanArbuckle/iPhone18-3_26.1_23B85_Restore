@interface ICTTVectorMultiTimestamp(ICTTVectorTimestampPersistenceAdditions)
@end

@implementation ICTTVectorMultiTimestamp(ICTTVectorTimestampPersistenceAdditions)

- (void)initWithArchive:()ICTTVectorTimestampPersistenceAdditions andCapacity:.cold.1(int a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "ICTTVectorMultiTimestamp requires the same number of clocks as capacity %d != %ld.", v3, 0x12u);
}

@end