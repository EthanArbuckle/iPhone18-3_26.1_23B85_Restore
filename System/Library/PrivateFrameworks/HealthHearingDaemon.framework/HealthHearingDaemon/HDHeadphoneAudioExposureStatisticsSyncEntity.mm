@interface HDHeadphoneAudioExposureStatisticsSyncEntity
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)pruneSyncedObjectsThroughAnchor:(id)anchor limit:(unint64_t)limit nowDate:(id)date profile:(id)profile error:(id *)error;
@end

@implementation HDHeadphoneAudioExposureStatisticsSyncEntity

+ (id)decodeSyncObjectWithData:(id)data
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDHeadphoneAudioExposureStatisticsSyncEntity.m" lineNumber:32 description:{@"%@ does not support decoding sync object data", objc_opt_class()}];

  return 0;
}

+ (id)pruneSyncedObjectsThroughAnchor:(id)anchor limit:(unint64_t)limit nowDate:(id)date profile:(id)profile error:(id *)error
{
  v10 = *MEMORY[0x277D11250];
  dateCopy = date;
  v12 = [profile profileExtensionWithIdentifier:v10];
  headphoneDoseManager = [v12 headphoneDoseManager];
  v14 = [headphoneDoseManager _pruneWithNowDate:dateCopy limit:limit error:error];

  return v14;
}

@end