@interface CCSControlCenterDefaults
+ (id)standardDefaults;
- (unint64_t)_defaultPresentationGesture;
- (void)_bindAndRegisterDefaults;
@end

@implementation CCSControlCenterDefaults

+ (id)standardDefaults
{
  if (standardDefaults___once != -1)
  {
    +[CCSControlCenterDefaults standardDefaults];
  }

  v3 = standardDefaults___instance;

  return v3;
}

uint64_t __44__CCSControlCenterDefaults_standardDefaults__block_invoke()
{
  standardDefaults___instance = objc_alloc_init(CCSControlCenterDefaults);

  return MEMORY[0x2821F96F8]();
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"presentationGesture"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CCSControlCenterDefaults _defaultPresentationGesture](self, "_defaultPresentationGesture")}];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"CCSPresentationGesture" toDefaultValue:v4 options:4];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"userInvocationCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"CCUIUserInvocationCount" toDefaultValue:&unk_2857A4588 options:1];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldEnablePrototypeFeatures"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBEnableControlCenterPrototypeFeatures" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldEnableInternalModules"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"CCUIEnableInternalControlCenterModules" toDefaultValue:MEMORY[0x277CBEC38] options:1];
}

- (unint64_t)_defaultPresentationGesture
{
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [mEMORY[0x277CF0CA8] homeButtonType] == 2 || objc_msgSend(mEMORY[0x277CF0CA8], "deviceClass") == 2;

  return v3;
}

@end