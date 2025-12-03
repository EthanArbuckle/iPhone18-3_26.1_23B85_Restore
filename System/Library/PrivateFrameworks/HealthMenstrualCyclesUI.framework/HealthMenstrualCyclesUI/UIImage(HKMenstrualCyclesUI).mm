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
  hkmcui_bundle = [v4 hkmcui_bundle];
  v7 = [v3 imageNamed:v5 inBundle:hkmcui_bundle compatibleWithTraitCollection:0];

  return v7;
}

+ (id)hkmc_fertilityProjectionReversedImage
{
  hkmc_fertilityProjectionImage = [self hkmc_fertilityProjectionImage];
  imageWithHorizontallyFlippedOrientation = [hkmc_fertilityProjectionImage imageWithHorizontallyFlippedOrientation];

  return imageWithHorizontallyFlippedOrientation;
}

+ (id)hkmc_menstruationProjectionHighReversedImage
{
  hkmc_menstruationProjectionHighImage = [self hkmc_menstruationProjectionHighImage];
  imageWithHorizontallyFlippedOrientation = [hkmc_menstruationProjectionHighImage imageWithHorizontallyFlippedOrientation];

  return imageWithHorizontallyFlippedOrientation;
}

+ (id)hkmc_menstruationProjectionLowReversedImage
{
  hkmc_menstruationProjectionLowImage = [self hkmc_menstruationProjectionLowImage];
  imageWithHorizontallyFlippedOrientation = [hkmc_menstruationProjectionLowImage imageWithHorizontallyFlippedOrientation];

  return imageWithHorizontallyFlippedOrientation;
}

+ (id)hkmc_ovulationDayReversedImage
{
  hkmc_ovulationDayImage = [self hkmc_ovulationDayImage];
  imageWithHorizontallyFlippedOrientation = [hkmc_ovulationDayImage imageWithHorizontallyFlippedOrientation];

  return imageWithHorizontallyFlippedOrientation;
}

@end