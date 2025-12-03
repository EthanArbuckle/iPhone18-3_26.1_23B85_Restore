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
  experimentDetails = [(PKExperiment *)&v8 experimentDetails];
  v4 = [experimentDetails mutableCopy];

  variant = [(PKAppleCardApplyExperiment *)self variant];
  [v4 safelySetObject:variant forKey:@"variant"];

  v6 = [v4 copy];

  return v6;
}

@end