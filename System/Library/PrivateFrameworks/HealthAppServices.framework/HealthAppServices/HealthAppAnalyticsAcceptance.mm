@interface HealthAppAnalyticsAcceptance
- (BOOL)isEqual:(id)a3;
- (HealthAppAnalyticsAcceptance)init;
- (HealthAppAnalyticsAcceptance)initWithCoder:(id)a3;
- (id)initForAgreement:(id)a3 version:(int64_t)a4 accepted:(BOOL)a5 modificationDate:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HealthAppAnalyticsAcceptance

- (HealthAppAnalyticsAcceptance)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)initForAgreement:(id)a3 version:(int64_t)a4 accepted:(BOOL)a5 modificationDate:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = HealthAppAnalyticsAcceptance;
  v12 = [(HealthAppAnalyticsAcceptance *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    agreement = v12->_agreement;
    v12->_agreement = v13;

    v12->_version = a4;
    v12->_accepted = a5;
    objc_storeStrong(&v12->_modificationDate, a6);
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_agreement hash];
  modificationDate = self->_modificationDate;
  v5 = self->_version ^ self->_accepted ^ v3;
  return v5 ^ [(NSDate *)modificationDate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    agreement = self->_agreement;
    v6 = [v4 agreement];
    if (-[NSString isEqualToString:](agreement, "isEqualToString:", v6) && (version = self->_version, version == [v4 version]) && (accepted = self->_accepted, accepted == objc_msgSend(v4, "accepted")))
    {
      modificationDate = self->_modificationDate;
      v10 = [v4 modificationDate];
      v11 = [(NSDate *)modificationDate isEqualToDate:v10];
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

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  agreement = self->_agreement;
  v5 = a3;
  [v5 encodeObject:agreement forKey:@"agreement"];
  [v5 encodeInteger:self->_version forKey:@"version"];
  [v5 encodeBool:self->_accepted forKey:@"accepted"];
  [v5 encodeObject:self->_modificationDate forKey:@"modificationDate"];
}

- (HealthAppAnalyticsAcceptance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agreement"];
  v6 = [v4 decodeIntegerForKey:@"version"];
  v7 = [v4 decodeBoolForKey:@"accepted"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];

  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    self = [(HealthAppAnalyticsAcceptance *)self initForAgreement:v5 version:v6 accepted:v7 modificationDate:v8];
    v10 = self;
  }

  return v10;
}

@end