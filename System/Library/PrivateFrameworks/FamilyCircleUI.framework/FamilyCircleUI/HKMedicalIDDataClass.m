@interface HKMedicalIDDataClass
@end

@implementation HKMedicalIDDataClass

Class __get_HKMedicalIDDataClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("_HKMedicalIDData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_HKMedicalIDDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_HKMedicalIDDataClass_block_invoke_cold_1();
    return __getMIUIDisplayConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __get_HKMedicalIDDataClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_1();
  result = objc_getClass("_HKMedicalIDData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_HKMedicalIDDataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_HKMedicalIDDataClass_block_invoke_cold_1();
    return __getSTSetupClientClass_block_invoke(v3);
  }

  return result;
}

Class __get_HKMedicalIDDataClass_block_invoke_1(uint64_t a1)
{
  HealthKitLibrary_2();
  result = objc_getClass("_HKMedicalIDData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_HKMedicalIDDataClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_HKMedicalIDDataClass_block_invoke_cold_1();
    return __getSTSetupClientClass_block_invoke_0(v3);
  }

  return result;
}

@end