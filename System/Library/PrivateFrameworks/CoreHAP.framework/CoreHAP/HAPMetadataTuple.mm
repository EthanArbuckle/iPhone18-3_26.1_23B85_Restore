@interface HAPMetadataTuple
- (BOOL)isEqual:(id)equal;
- (HAPMetadataTuple)initWithCharacteristicType:(id)type serviceType:(id)serviceType;
- (NSString)index;
- (unint64_t)hash;
@end

@implementation HAPMetadataTuple

- (unint64_t)hash
{
  characteristicType = [(HAPMetadataTuple *)self characteristicType];
  v4 = [characteristicType hash];
  serviceType = [(HAPMetadataTuple *)self serviceType];
  v6 = [serviceType hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      characteristicType = [(HAPMetadataTuple *)self characteristicType];
      characteristicType2 = [(HAPMetadataTuple *)v6 characteristicType];
      if ([characteristicType isEqualToString:characteristicType2])
      {
        serviceType = [(HAPMetadataTuple *)self serviceType];
        serviceType2 = [(HAPMetadataTuple *)v6 serviceType];
        v11 = [serviceType isEqualToString:serviceType2];
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
  serviceType = [(HAPMetadataTuple *)self serviceType];
  characteristicType = [(HAPMetadataTuple *)self characteristicType];
  v6 = [v3 stringWithFormat:@"%@+%@", serviceType, characteristicType];

  return v6;
}

- (HAPMetadataTuple)initWithCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v9 = serviceTypeCopy;
  selfCopy = 0;
  if (typeCopy && serviceTypeCopy)
  {
    v14.receiver = self;
    v14.super_class = HAPMetadataTuple;
    v11 = [(HAPMetadataTuple *)&v14 init];
    p_isa = &v11->super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_characteristicType, type);
      objc_storeStrong(p_isa + 2, serviceType);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

@end