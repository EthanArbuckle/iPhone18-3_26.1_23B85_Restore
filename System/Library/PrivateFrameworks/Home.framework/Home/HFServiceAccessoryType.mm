@interface HFServiceAccessoryType
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFServiceAccessoryType)initWithServiceType:(id)type subtype:(id)subtype;
- (id)debugDescription;
- (id)description;
@end

@implementation HFServiceAccessoryType

- (HFServiceAccessoryType)initWithServiceType:(id)type subtype:(id)subtype
{
  typeCopy = type;
  subtypeCopy = subtype;
  v12.receiver = self;
  v12.super_class = HFServiceAccessoryType;
  _init = [(HFAccessoryType *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, type);
    objc_storeStrong(&v10->_subtype, subtype);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = HFServiceAccessoryType;
  if ([(HFAccessoryType *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [equalCopy isEqual:self];
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
  serviceType = [(HFServiceAccessoryType *)self serviceType];
  v6 = [v4 localizedDescriptionForServiceType:serviceType];
  serviceType2 = [(HFServiceAccessoryType *)self serviceType];
  v8 = [v3 stringWithFormat:@"serviceType: %@ (%@)", v6, serviceType2];

  return v8;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = MEMORY[0x277CD1D90];
  serviceType = [(HFServiceAccessoryType *)self serviceType];
  v6 = [v4 localizedDescriptionForServiceType:serviceType];
  serviceType2 = [(HFServiceAccessoryType *)self serviceType];
  v8 = [v6 stringByAppendingFormat:@" (%@)", serviceType2];
  [v3 appendString:v8 withName:@"serviceType"];

  subtype = [(HFServiceAccessoryType *)self subtype];

  if (subtype)
  {
    subtype2 = [(HFServiceAccessoryType *)self subtype];
    [v3 appendString:subtype2 withName:@"subtype"];
  }

  build = [v3 build];

  return build;
}

@end