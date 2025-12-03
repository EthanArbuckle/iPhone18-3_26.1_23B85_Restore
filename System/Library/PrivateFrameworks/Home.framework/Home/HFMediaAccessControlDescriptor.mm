@interface HFMediaAccessControlDescriptor
+ (NAIdentity)na_identity;
+ (id)defaultAccessControl;
- (BOOL)accessSupportsPassword;
- (BOOL)isEqual:(id)equal;
- (HFMediaAccessControlDescriptor)init;
- (HFMediaAccessControlDescriptor)initWithAccess:(unint64_t)access requiresPassword:(BOOL)password password:(id)a5;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFMediaAccessControlDescriptor

+ (id)defaultAccessControl
{
  v2 = [objc_alloc(objc_opt_class()) initWithAccess:0 requiresPassword:0 password:0];

  return v2;
}

- (HFMediaAccessControlDescriptor)initWithAccess:(unint64_t)access requiresPassword:(BOOL)password password:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = HFMediaAccessControlDescriptor;
  v9 = [(HFMediaAccessControlDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_access = access;
    v9->_accessRequiresPassword = password;
    v11 = [v8 copy];
    accessPassword = v10->_accessPassword;
    v10->_accessPassword = v11;
  }

  return v10;
}

- (HFMediaAccessControlDescriptor)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccess_requiresPassword_password_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessControlDescriptor.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessControlDescriptor init]", v5}];

  return 0;
}

- (BOOL)accessSupportsPassword
{
  v3 = objc_opt_class();
  access = [(HFMediaAccessControlDescriptor *)self access];

  return [v3 accessClassificationSupportsPassword:access];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = NSLocalizedStringFromHFMediaAccessControlClassification([(HFMediaAccessControlDescriptor *)self access], 0);
  [v3 appendString:v4 withName:@"access"];

  v5 = [v3 appendBool:-[HFMediaAccessControlDescriptor accessRequiresPassword](self withName:{"accessRequiresPassword"), @"accessRequiresPassword"}];
  accessPassword = [(HFMediaAccessControlDescriptor *)self accessPassword];
  [v3 appendString:accessPassword withName:@"accessPassword"];

  build = [v3 build];

  return build;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_249 != -1)
  {
    dispatch_once(&_MergedGlobals_249, &__block_literal_global_38_0);
  }

  v3 = qword_280E02F18;

  return v3;
}

void __45__HFMediaAccessControlDescriptor_na_identity__block_invoke_2()
{
  v5 = [MEMORY[0x277D2C908] builder];
  v0 = [v5 appendCharacteristic:&__block_literal_global_42_0];
  v1 = [v0 appendCharacteristic:&__block_literal_global_45];
  v2 = [v1 appendCharacteristic:&__block_literal_global_47_0];
  v3 = [v2 build];
  v4 = qword_280E02F18;
  qword_280E02F18 = v3;
}

uint64_t __45__HFMediaAccessControlDescriptor_na_identity__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 access];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __45__HFMediaAccessControlDescriptor_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 accessRequiresPassword];

  return [v2 numberWithBool:v3];
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

@end