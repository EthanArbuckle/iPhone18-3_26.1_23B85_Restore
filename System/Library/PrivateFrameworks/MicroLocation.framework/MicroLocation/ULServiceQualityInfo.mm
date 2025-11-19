@interface ULServiceQualityInfo
- (BOOL)isEqual:(id)a3;
- (ULServiceQualityInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initServiceWithQuality:(unint64_t)a3 andReasons:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULServiceQualityInfo

- (id)initServiceWithQuality:(unint64_t)a3 andReasons:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ULServiceQualityInfo;
  v7 = [(ULServiceQualityInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ULServiceQualityInfo *)v7 setServiceQuality:a3];
    [(ULServiceQualityInfo *)v8 setServiceQualityReasons:v6];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  serviceQuality = self->_serviceQuality;
  v7 = [(NSArray *)self->_serviceQualityReasons copyWithZone:a3];
  v8 = [v5 initServiceWithQuality:serviceQuality andReasons:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  serviceQuality = self->_serviceQuality;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:serviceQuality];
  [v7 encodeObject:v6 forKey:@"serviceQuality"];

  [v7 encodeObject:self->_serviceQualityReasons forKey:@"serviceQualityReasons"];
}

- (ULServiceQualityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ULServiceQualityInfo;
  v5 = [(ULServiceQualityInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceQuality"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULServiceQualityInfo *)v6 unsignedIntegerValue];

      v5->_serviceQuality = v8;
      v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"serviceQualityReasons"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULServiceQualityInfo *)self serviceQuality];
    if (v6 == [v5 serviceQuality])
    {
      v7 = [(ULServiceQualityInfo *)self serviceQualityReasons];
      v8 = [v5 serviceQualityReasons];
      if ([v7 isEqual:v8])
      {

        v9 = 1;
      }

      else
      {
        v10 = [(ULServiceQualityInfo *)self serviceQualityReasons];
        v11 = [v5 serviceQualityReasons];
        v9 = v10 == v11;
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