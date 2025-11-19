@interface HDHeadphoneAudioExposureStatisticsSyncEntity
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDHeadphoneAudioExposureStatisticsSyncEntity

+ (id)decodeSyncObjectWithData:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"HDHeadphoneAudioExposureStatisticsSyncEntity.m" lineNumber:32 description:{@"%@ does not support decoding sync object data", objc_opt_class()}];

  return 0;
}

+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7
{
  v10 = *MEMORY[0x277D11250];
  v11 = a5;
  v12 = [a6 profileExtensionWithIdentifier:v10];
  v13 = [v12 headphoneDoseManager];
  v14 = [v13 _pruneWithNowDate:v11 limit:a4 error:a7];

  return v14;
}

@end