@interface CCUIControlCenterDefaults
+ (id)standardDefaults;
- (void)_bindAndRegisterDefaults;
@end

@implementation CCUIControlCenterDefaults

+ (id)standardDefaults
{
  if (standardDefaults___once != -1)
  {
    +[CCUIControlCenterDefaults standardDefaults];
  }

  v3 = standardDefaults___instance;

  return v3;
}

void __45__CCUIControlCenterDefaults_standardDefaults__block_invoke()
{
  v0 = objc_alloc_init(CCUIControlCenterDefaults);
  v1 = standardDefaults___instance;
  standardDefaults___instance = v0;
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldAlwaysBeEnabled"];
  v4 = MEMORY[0x277CBEC28];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBControlCenterShouldAlwaysBeEnabled" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldExcludeControlCenterFromStatusBarOverrides"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBExcludeControlCenterFromStatusBarOverrides" toDefaultValue:v4 options:4];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hasForceTouchedToExpandModule"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"CCUIHasForceTouchedToExpandControlCenterModule" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hasLongPressedToExpandModule"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"CCUIHasLongPressedToExpandControlCenterModule" toDefaultValue:v4 options:1];
}

@end