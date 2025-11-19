@interface INIntentResolutionResult
@end

@implementation INIntentResolutionResult

void __60__INIntentResolutionResult_CMSCoding__instanceFromCMSCoded___block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"BooleanResolutionResult";
  v4[0] = objc_opt_class();
  v3[1] = @"DoubleResoultionResult";
  v4[1] = objc_opt_class();
  v3[2] = @"PlayMediaMediaItemResolutionResult";
  v4[2] = objc_opt_class();
  v3[3] = @"AddMediaMediaItemResolutionResult";
  v4[3] = objc_opt_class();
  v3[4] = @"AddMediaMediaDestinationResolutionResult";
  v4[4] = objc_opt_class();
  v3[5] = @"PlaybackQueueLocationResolutionResult";
  v4[5] = objc_opt_class();
  v3[6] = @"PlaybackRepeatModeResolutionResult";
  v4[6] = objc_opt_class();
  v3[7] = @"UpdateMediaAffinityMediaItemResolutionResult";
  v4[7] = objc_opt_class();
  v3[8] = @"MediaAffinityTypeResolutionResult";
  v4[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = instanceFromCMSCoded__classmap;
  instanceFromCMSCoded__classmap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end