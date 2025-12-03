@interface UIImage(HFAdditions)
+ (id)hf_fetchImageFromURL:()HFAdditions;
+ (id)hf_safetyAndSecurityImage;
- (double)hf_sizeInScreenScale;
- (id)imageWithNormalizedOrientation;
@end

@implementation UIImage(HFAdditions)

- (double)hf_sizeInScreenScale
{
  [self size];
  v3 = v2;
  [self scale];
  v5 = v3 * v4;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v5 / v7;
  [self size];
  [self scale];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];

  return v8;
}

- (id)imageWithNormalizedOrientation
{
  selfCopy = self;
  if ([selfCopy imageOrientation])
  {
    [selfCopy size];
    v3 = v2;
    v5 = v4;
    [selfCopy scale];
    v7 = v6;
    v14.width = v3;
    v14.height = v5;
    UIGraphicsBeginImageContextWithOptions(v14, 0, v7);
    [selfCopy size];
    v9 = v8;
    [selfCopy size];
    [selfCopy drawInRect:{0.0, 0.0, v9, v10}];
    v11 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    selfCopy = v11;
  }

  return selfCopy;
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
  globalAsyncScheduler = [v5 globalAsyncScheduler];
  v8 = [v4 futureWithBlock:v12 scheduler:globalAsyncScheduler];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [v8 reschedule:mainThreadScheduler];

  return v10;
}

+ (id)hf_safetyAndSecurityImage
{
  configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v1 = MEMORY[0x277D755D0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v3 = [v1 configurationWithHierarchicalColor:hf_keyColor];

  v4 = [configurationPreferringMulticolor configurationByApplyingConfiguration:v3];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"house.badge.shield.half.filled.fill"];
  v6 = [v5 imageWithConfiguration:v4];

  return v6;
}

@end