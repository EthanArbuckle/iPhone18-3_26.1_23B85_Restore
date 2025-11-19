@interface HFUserHandle
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFUserHandle)init;
- (HFUserHandle)initWithType:(unint64_t)a3 userID:(id)a4;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFUserHandle

- (HFUserHandle)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithType_userID_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUserHandle.m" lineNumber:18 description:{@"%s is unavailable; use %@ instead", "-[HFUserHandle init]", v5}];

  return 0;
}

- (HFUserHandle)initWithType:(unint64_t)a3 userID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFUserHandle;
  v8 = [(HFUserHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_userID, a4);
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[HFUserHandle type](self withName:{"type"), @"type"}];
  v5 = [(HFUserHandle *)self userID];
  [v3 appendString:v5 withName:@"userID"];

  v6 = [v3 build];

  return v6;
}

+ (NAIdentity)na_identity
{
  if (qword_280E02CA8 != -1)
  {
    dispatch_once(&qword_280E02CA8, &__block_literal_global_35);
  }

  v3 = _MergedGlobals_225;

  return v3;
}

void __27__HFUserHandle_na_identity__block_invoke()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_17_0];
  v1 = [v4 appendCharacteristic:&__block_literal_global_20_1];
  v2 = [v4 build];
  v3 = _MergedGlobals_225;
  _MergedGlobals_225 = v2;
}

uint64_t __27__HFUserHandle_na_identity__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 type];

  return [v2 numberWithUnsignedInteger:v3];
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

@end