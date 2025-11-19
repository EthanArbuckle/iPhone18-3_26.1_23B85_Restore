@interface HDHeadphoneAudioExposureStatisticsSnapshot
- (HDHeadphoneAudioExposureStatisticsSnapshot)initWithStatistics:(id)a3 includesPrunableData:(BOOL)a4 previousNotificationDate:(id)a5;
@end

@implementation HDHeadphoneAudioExposureStatisticsSnapshot

- (HDHeadphoneAudioExposureStatisticsSnapshot)initWithStatistics:(id)a3 includesPrunableData:(BOOL)a4 previousNotificationDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    [HDHeadphoneAudioExposureStatisticsSnapshot initWithStatistics:includesPrunableData:previousNotificationDate:];
  }

  v15.receiver = self;
  v15.super_class = HDHeadphoneAudioExposureStatisticsSnapshot;
  v11 = [(HDHeadphoneAudioExposureStatisticsSnapshot *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statistics, a3);
    v12->_includesPrunableData = a4;
    objc_storeStrong(&v12->_previousNotificationDate, a5);
    v13 = v12;
  }

  return v12;
}

- (void)initWithStatistics:includesPrunableData:previousNotificationDate:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"statistics" object:? file:? lineNumber:? description:?];
}

@end