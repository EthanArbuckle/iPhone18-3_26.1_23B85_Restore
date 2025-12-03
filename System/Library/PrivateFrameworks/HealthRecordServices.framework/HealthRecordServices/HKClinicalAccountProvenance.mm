@interface HKClinicalAccountProvenance
- (BOOL)isEqual:(id)equal;
- (HKClinicalAccountProvenance)init;
- (HKClinicalAccountProvenance)initWithCoder:(id)coder;
- (HKClinicalAccountProvenance)initWithGateway:(id)gateway;
- (HKClinicalAccountProvenance)initWithSignedClinicalDataIssuer:(id)issuer;
- (HKClinicalBrand)brand;
- (NSString)subtitle;
- (NSString)title;
- (id)description;
- (int64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)type;
@end

@implementation HKClinicalAccountProvenance

- (HKClinicalAccountProvenance)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAccountProvenance)initWithGateway:(id)gateway
{
  gatewayCopy = gateway;
  v9.receiver = self;
  v9.super_class = HKClinicalAccountProvenance;
  v6 = [(HKClinicalAccountProvenance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gateway, gateway);
  }

  return v7;
}

- (HKClinicalAccountProvenance)initWithSignedClinicalDataIssuer:(id)issuer
{
  issuerCopy = issuer;
  v9.receiver = self;
  v9.super_class = HKClinicalAccountProvenance;
  v6 = [(HKClinicalAccountProvenance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signedClinicalDataIssuer, issuer);
  }

  return v7;
}

- (int64_t)type
{
  if (self->_gateway)
  {
    return 0;
  }

  if (self->_signedClinicalDataIssuer)
  {
    return 1;
  }

  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    [(HKClinicalAccountProvenance *)v4 type];
  }

  return 0;
}

- (NSString)title
{
  type = [(HKClinicalAccountProvenance *)self type];
  v4 = 8;
  if (type == 1)
  {
    v4 = 16;
  }

  title = [*(&self->super.isa + v4) title];

  return title;
}

- (NSString)subtitle
{
  type = [(HKClinicalAccountProvenance *)self type];
  v4 = 8;
  if (type == 1)
  {
    v4 = 16;
  }

  subtitle = [*(&self->super.isa + v4) subtitle];

  return subtitle;
}

- (HKClinicalBrand)brand
{
  if ([(HKClinicalAccountProvenance *)self type]== 1)
  {
    brand = 0;
  }

  else
  {
    brand = [(HKClinicalGateway *)self->_gateway brand];
  }

  return brand;
}

- (id)description
{
  type = [(HKClinicalAccountProvenance *)self type];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  v8 = 8;
  if (type == 1)
  {
    v8 = 16;
  }

  v9 = [v4 stringWithFormat:@"<%@ %p: %@>", v6, self, *(&self->super.isa + v8)];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    gateway = self->_gateway;
    gateway = [(HKClinicalAccountProvenance *)v8 gateway];
    if (gateway == gateway)
    {
      goto LABEL_9;
    }

    gateway2 = [(HKClinicalAccountProvenance *)v8 gateway];
    if (!gateway2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = gateway2;
    v12 = self->_gateway;
    gateway3 = [(HKClinicalAccountProvenance *)v8 gateway];
    if ([(HKClinicalGateway *)v12 isEqual:gateway3])
    {
LABEL_9:
      signedClinicalDataIssuer = self->_signedClinicalDataIssuer;
      signedClinicalDataIssuer = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
      v16 = signedClinicalDataIssuer;
      if (signedClinicalDataIssuer == signedClinicalDataIssuer)
      {

        v13 = 1;
      }

      else
      {
        signedClinicalDataIssuer2 = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
        if (signedClinicalDataIssuer2)
        {
          v18 = signedClinicalDataIssuer2;
          v19 = self->_signedClinicalDataIssuer;
          signedClinicalDataIssuer3 = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
          v13 = [(HKSignedClinicalDataIssuer *)v19 isEqual:signedClinicalDataIssuer3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (gateway == gateway)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  gateway = self->_gateway;
  coderCopy = coder;
  [coderCopy encodeObject:gateway forKey:@"Gateway"];
  [coderCopy encodeObject:self->_signedClinicalDataIssuer forKey:@"SignedClinicalDataIssuer"];
}

- (HKClinicalAccountProvenance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Gateway"];
  if (v5)
  {
    self = [(HKClinicalAccountProvenance *)self initWithGateway:v5];
    selfCopy2 = self;
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SignedClinicalDataIssuer"];
    if (v7)
    {
      self = [(HKClinicalAccountProvenance *)self initWithSignedClinicalDataIssuer:v7];
      selfCopy2 = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaInvalidValueError];
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (void)type
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2519FE000, selfCopy, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ has no valid provenance type assigned", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end