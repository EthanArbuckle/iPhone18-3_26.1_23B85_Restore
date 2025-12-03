@interface HealthAppAnalyticsAcceptance
- (BOOL)isEqual:(id)equal;
- (HealthAppAnalyticsAcceptance)init;
- (HealthAppAnalyticsAcceptance)initWithCoder:(id)coder;
- (id)initForAgreement:(id)agreement version:(int64_t)version accepted:(BOOL)accepted modificationDate:(id)date;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)initForAgreement:(id)agreement version:(int64_t)version accepted:(BOOL)accepted modificationDate:(id)date
{
  agreementCopy = agreement;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HealthAppAnalyticsAcceptance;
  v12 = [(HealthAppAnalyticsAcceptance *)&v16 init];
  if (v12)
  {
    v13 = [agreementCopy copy];
    agreement = v12->_agreement;
    v12->_agreement = v13;

    v12->_version = version;
    v12->_accepted = accepted;
    objc_storeStrong(&v12->_modificationDate, date);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    agreement = self->_agreement;
    agreement = [equalCopy agreement];
    if (-[NSString isEqualToString:](agreement, "isEqualToString:", agreement) && (version = self->_version, version == [equalCopy version]) && (accepted = self->_accepted, accepted == objc_msgSend(equalCopy, "accepted")))
    {
      modificationDate = self->_modificationDate;
      modificationDate = [equalCopy modificationDate];
      v11 = [(NSDate *)modificationDate isEqualToDate:modificationDate];
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

- (void)encodeWithCoder:(id)coder
{
  agreement = self->_agreement;
  coderCopy = coder;
  [coderCopy encodeObject:agreement forKey:@"agreement"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeBool:self->_accepted forKey:@"accepted"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"modificationDate"];
}

- (HealthAppAnalyticsAcceptance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agreement"];
  v6 = [coderCopy decodeIntegerForKey:@"version"];
  v7 = [coderCopy decodeBoolForKey:@"accepted"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(HealthAppAnalyticsAcceptance *)self initForAgreement:v5 version:v6 accepted:v7 modificationDate:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end