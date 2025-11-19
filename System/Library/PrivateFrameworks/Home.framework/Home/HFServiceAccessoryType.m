@interface HFServiceAccessoryType
+ (id)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFServiceAccessoryType)initWithServiceType:(id)a3 subtype:(id)a4;
- (id)debugDescription;
- (id)description;
@end

@implementation HFServiceAccessoryType

- (HFServiceAccessoryType)initWithServiceType:(id)a3 subtype:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFServiceAccessoryType;
  v9 = [(HFAccessoryType *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(&v10->_subtype, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HFServiceAccessoryType;
  if ([(HFAccessoryType *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 isEqual:self];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)na_identity
{
  if (qword_280E02570 != -1)
  {
    dispatch_once(&qword_280E02570, &__block_literal_global_304);
  }

  v3 = qword_280E02578;

  return v3;
}

void __37__HFServiceAccessoryType_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_311];
  v2 = [v0 appendCharacteristic:&__block_literal_global_313];
  v3 = [v0 build];

  v4 = qword_280E02578;
  qword_280E02578 = v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CD1D90];
  v5 = [(HFServiceAccessoryType *)self serviceType];
  v6 = [v4 localizedDescriptionForServiceType:v5];
  v7 = [(HFServiceAccessoryType *)self serviceType];
  v8 = [v3 stringWithFormat:@"serviceType: %@ (%@)", v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = MEMORY[0x277CD1D90];
  v5 = [(HFServiceAccessoryType *)self serviceType];
  v6 = [v4 localizedDescriptionForServiceType:v5];
  v7 = [(HFServiceAccessoryType *)self serviceType];
  v8 = [v6 stringByAppendingFormat:@" (%@)", v7];
  [v3 appendString:v8 withName:@"serviceType"];

  v9 = [(HFServiceAccessoryType *)self subtype];

  if (v9)
  {
    v10 = [(HFServiceAccessoryType *)self subtype];
    [v3 appendString:v10 withName:@"subtype"];
  }

  v11 = [v3 build];

  return v11;
}

@end