@interface HKHealthStore(FitnessUI)
+ (__CFString)fiui_localizationStringSuffixForWheelchairUser:()FitnessUI;
+ (id)fiui_sharedHealthStoreForCarousel;
@end

@implementation HKHealthStore(FitnessUI)

+ (id)fiui_sharedHealthStoreForCarousel
{
  if (fiui_sharedHealthStoreForCarousel_onceToken[0] != -1)
  {
    +[HKHealthStore(FitnessUI) fiui_sharedHealthStoreForCarousel];
  }

  v1 = fiui_sharedHealthStoreForCarousel___healthStore;

  return v1;
}

+ (__CFString)fiui_localizationStringSuffixForWheelchairUser:()FitnessUI
{
  if (a3)
  {
    return @"_WHEELCHAIR";
  }

  else
  {
    return &stru_1F5F88F90;
  }
}

@end