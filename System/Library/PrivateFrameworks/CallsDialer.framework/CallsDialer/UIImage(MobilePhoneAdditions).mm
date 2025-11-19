@interface UIImage(MobilePhoneAdditions)
+ (id)phCarPlayImageNamed:()MobilePhoneAdditions;
+ (id)phImageNamed:()MobilePhoneAdditions;
+ (id)phPathForImageNamed:()MobilePhoneAdditions;
@end

@implementation UIImage(MobilePhoneAdditions)

+ (id)phImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277D759A0] _carScreen];
  v8 = [v7 traitCollection];
  v9 = [v6 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:v8];

  return v9;
}

+ (id)phCarPlayImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277D759A0] _carScreen];
  v8 = [v7 traitCollection];
  v9 = [v6 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:v8];

  return v9;
}

+ (id)phPathForImageNamed:()MobilePhoneAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  if (v7 > 1.0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v11 = [v8 stringWithFormat:@"@%dx", v10];

    if ([v3 hasSuffix:v11])
    {
    }

    else
    {
      v12 = [v3 stringByAppendingString:v11];
      v13 = [v4 pathForResource:v12 ofType:@"png"];

      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = [v4 pathForResource:v3 ofType:@"png"];
LABEL_6:

  return v13;
}

@end