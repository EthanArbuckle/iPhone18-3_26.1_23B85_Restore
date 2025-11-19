@interface PKAppleCardApplyExperiment
- (id)experimentDetails;
- (id)heroImagePath;
- (id)heroInstallmentImagePath;
@end

@implementation PKAppleCardApplyExperiment

- (id)heroImagePath
{
  if (PKScreenScale() <= 2.0)
  {
    v3 = @"image_hero_2x";
  }

  else
  {
    v3 = @"image_hero_3x";
  }

  return [(PKExperiment *)self filePathForFactor:v3];
}

- (id)heroInstallmentImagePath
{
  if (PKScreenScale() <= 2.0)
  {
    v3 = @"image_hero_installment_2x";
  }

  else
  {
    v3 = @"image_hero_installment_3x";
  }

  return [(PKExperiment *)self filePathForFactor:v3];
}

- (id)experimentDetails
{
  v8.receiver = self;
  v8.super_class = PKAppleCardApplyExperiment;
  v3 = [(PKExperiment *)&v8 experimentDetails];
  v4 = [v3 mutableCopy];

  v5 = [(PKAppleCardApplyExperiment *)self variant];
  [v4 safelySetObject:v5 forKey:@"variant"];

  v6 = [v4 copy];

  return v6;
}

@end