@interface HFNaturalLightColor
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFNaturalLightColor)init;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFNaturalLightColor

- (HFNaturalLightColor)init
{
  v3.receiver = self;
  v3.super_class = HFNaturalLightColor;
  return [(HFNaturalLightColor *)&v3 init];
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_302 != -1)
  {
    dispatch_once(&_MergedGlobals_302, &__block_literal_global_3_28);
  }

  v3 = qword_280E03AA0;

  return v3;
}

void __34__HFNaturalLightColor_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 build];

  v2 = qword_280E03AA0;
  qword_280E03AA0 = v1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = HFNaturalLightColor;
  v3 = [(HFNaturalLightColor *)&v6 description];
  v4 = [v2 stringWithFormat:@"%@ Natural Light Color", v3];

  return v4;
}

@end