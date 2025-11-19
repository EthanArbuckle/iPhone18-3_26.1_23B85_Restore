@interface HAPMetadataTuple
- (BOOL)isEqual:(id)a3;
- (HAPMetadataTuple)initWithCharacteristicType:(id)a3 serviceType:(id)a4;
- (NSString)index;
- (unint64_t)hash;
@end

@implementation HAPMetadataTuple

- (unint64_t)hash
{
  v3 = [(HAPMetadataTuple *)self characteristicType];
  v4 = [v3 hash];
  v5 = [(HAPMetadataTuple *)self serviceType];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HAPMetadataTuple *)self characteristicType];
      v8 = [(HAPMetadataTuple *)v6 characteristicType];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HAPMetadataTuple *)self serviceType];
        v10 = [(HAPMetadataTuple *)v6 serviceType];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSString)index
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetadataTuple *)self serviceType];
  v5 = [(HAPMetadataTuple *)self characteristicType];
  v6 = [v3 stringWithFormat:@"%@+%@", v4, v5];

  return v6;
}

- (HAPMetadataTuple)initWithCharacteristicType:(id)a3 serviceType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = HAPMetadataTuple;
    v11 = [(HAPMetadataTuple *)&v14 init];
    p_isa = &v11->super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_characteristicType, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

@end