@interface UIImage(HFAdditions)
+ (id)hf_fetchImageFromURL:()HFAdditions;
+ (id)hf_safetyAndSecurityImage;
- (double)hf_sizeInScreenScale;
- (id)imageWithNormalizedOrientation;
@end

@implementation UIImage(HFAdditions)

- (double)hf_sizeInScreenScale
{
  [a1 size];
  v3 = v2;
  [a1 scale];
  v5 = v3 * v4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v5 / v7;
  [a1 size];
  [a1 scale];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];

  return v8;
}

- (id)imageWithNormalizedOrientation
{
  v1 = a1;
  if ([v1 imageOrientation])
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
    [v1 scale];
    v7 = v6;
    v14.width = v3;
    v14.height = v5;
    UIGraphicsBeginImageContextWithOptions(v14, 0, v7);
    [v1 size];
    v9 = v8;
    [v1 size];
    [v1 drawInRect:{0.0, 0.0, v9, v10}];
    v11 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v1 = v11;
  }

  return v1;
}

+ (id)hf_fetchImageFromURL:()HFAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__UIImage_HFAdditions__hf_fetchImageFromURL___block_invoke;
  v12[3] = &unk_277DF29A0;
  v13 = v3;
  v5 = MEMORY[0x277D2C938];
  v6 = v3;
  v7 = [v5 globalAsyncScheduler];
  v8 = [v4 futureWithBlock:v12 scheduler:v7];
  v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [v8 reschedule:v9];

  return v10;
}

+ (id)hf_safetyAndSecurityImage
{
  v0 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v1 = MEMORY[0x277D755D0];
  v2 = [MEMORY[0x277D75348] hf_keyColor];
  v3 = [v1 configurationWithHierarchicalColor:v2];

  v4 = [v0 configurationByApplyingConfiguration:v3];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"house.badge.shield.half.filled.fill"];
  v6 = [v5 imageWithConfiguration:v4];

  return v6;
}

@end