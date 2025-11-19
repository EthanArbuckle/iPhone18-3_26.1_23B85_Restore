@interface DPDeviceInfo
@end

@implementation DPDeviceInfo

uint64_t __32___DPDeviceInfo_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild_isInternalBuild = result;
  return result;
}

uint64_t __40___DPDeviceInfo_isDataCollectionEnabled__block_invoke()
{
  result = DiagnosticLogSubmissionEnabled();
  isDataCollectionEnabled_dataCollectionEnabled = result;
  return result;
}

Class __35___DPDeviceInfo_isRunningUnitTests__block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  isRunningUnitTests_runningTests = result != 0;
  return result;
}

@end