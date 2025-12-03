@interface ULServiceQualityInfo
- (BOOL)isEqual:(id)equal;
- (ULServiceQualityInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initServiceWithQuality:(unint64_t)quality andReasons:(id)reasons;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULServiceQualityInfo

- (id)initServiceWithQuality:(unint64_t)quality andReasons:(id)reasons
{
  reasonsCopy = reasons;
  v10.receiver = self;
  v10.super_class = ULServiceQualityInfo;
  v7 = [(ULServiceQualityInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULServiceQualityInfo *)v7 setServiceQuality:quality];
    [(ULServiceQualityInfo *)v8 setServiceQualityReasons:reasonsCopy];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  serviceQuality = self->_serviceQuality;
  v7 = [(NSArray *)self->_serviceQualityReasons copyWithZone:zone];
  v8 = [v5 initServiceWithQuality:serviceQuality andReasons:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  serviceQuality = self->_serviceQuality;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:serviceQuality];
  [coderCopy encodeObject:v6 forKey:@"serviceQuality"];

  [coderCopy encodeObject:self->_serviceQualityReasons forKey:@"serviceQualityReasons"];
}

- (ULServiceQualityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ULServiceQualityInfo;
  v5 = [(ULServiceQualityInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceQuality"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [(ULServiceQualityInfo *)v6 unsignedIntegerValue];

      v5->_serviceQuality = unsignedIntegerValue;
      v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"serviceQualityReasons"];
      if (v7)
      {
        v9 = objc_opt_self();

        serviceQualityReasons = v5->_serviceQualityReasons;
        v5->_serviceQualityReasons = v9;

        v7 = v5;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  v7 = ULServiceQualityToString(self->_serviceQuality);
  [v6 appendFormat:@", serviceQuality: %@", v7];

  [v6 appendFormat:@", serviceQualityReasons: %@", self->_serviceQualityReasons];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    serviceQuality = [(ULServiceQualityInfo *)self serviceQuality];
    if (serviceQuality == [v5 serviceQuality])
    {
      serviceQualityReasons = [(ULServiceQualityInfo *)self serviceQualityReasons];
      serviceQualityReasons2 = [v5 serviceQualityReasons];
      if ([serviceQualityReasons isEqual:serviceQualityReasons2])
      {

        v9 = 1;
      }

      else
      {
        serviceQualityReasons3 = [(ULServiceQualityInfo *)self serviceQualityReasons];
        serviceQualityReasons4 = [v5 serviceQualityReasons];
        v9 = serviceQualityReasons3 == serviceQualityReasons4;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end