@interface UIImage(HKMenstrualCyclesUI)
+ (id)_hkmcui_imageWithAssetName:()HKMenstrualCyclesUI;
+ (id)hkmc_fertilityProjectionReversedImage;
+ (id)hkmc_menstruationProjectionHighReversedImage;
+ (id)hkmc_menstruationProjectionLowReversedImage;
+ (id)hkmc_ovulationDayReversedImage;
@end

@implementation UIImage(HKMenstrualCyclesUI)

+ (id)_hkmcui_imageWithAssetName:()HKMenstrualCyclesUI
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 hkmcui_bundle];
  v7 = [v3 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

+ (id)hkmc_fertilityProjectionReversedImage
{
  v1 = [a1 hkmc_fertilityProjectionImage];
  v2 = [v1 imageWithHorizontallyFlippedOrientation];

  return v2;
}

+ (id)hkmc_menstruationProjectionHighReversedImage
{
  v1 = [a1 hkmc_menstruationProjectionHighImage];
  v2 = [v1 imageWithHorizontallyFlippedOrientation];

  return v2;
}

+ (id)hkmc_menstruationProjectionLowReversedImage
{
  v1 = [a1 hkmc_menstruationProjectionLowImage];
  v2 = [v1 imageWithHorizontallyFlippedOrientation];

  return v2;
}

+ (id)hkmc_ovulationDayReversedImage
{
  v1 = [a1 hkmc_ovulationDayImage];
  v2 = [v1 imageWithHorizontallyFlippedOrientation];

  return v2;
}

@end