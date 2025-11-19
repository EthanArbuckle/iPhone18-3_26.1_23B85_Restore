@interface HKClinicalAccountProvenance
- (BOOL)isEqual:(id)a3;
- (HKClinicalAccountProvenance)init;
- (HKClinicalAccountProvenance)initWithCoder:(id)a3;
- (HKClinicalAccountProvenance)initWithGateway:(id)a3;
- (HKClinicalAccountProvenance)initWithSignedClinicalDataIssuer:(id)a3;
- (HKClinicalBrand)brand;
- (NSString)subtitle;
- (NSString)title;
- (id)description;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalAccountProvenance)initWithGateway:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalAccountProvenance;
  v6 = [(HKClinicalAccountProvenance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gateway, a3);
  }

  return v7;
}

- (HKClinicalAccountProvenance)initWithSignedClinicalDataIssuer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalAccountProvenance;
  v6 = [(HKClinicalAccountProvenance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signedClinicalDataIssuer, a3);
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
  v3 = [(HKClinicalAccountProvenance *)self type];
  v4 = 8;
  if (v3 == 1)
  {
    v4 = 16;
  }

  v5 = [*(&self->super.isa + v4) title];

  return v5;
}

- (NSString)subtitle
{
  v3 = [(HKClinicalAccountProvenance *)self type];
  v4 = 8;
  if (v3 == 1)
  {
    v4 = 16;
  }

  v5 = [*(&self->super.isa + v4) subtitle];

  return v5;
}

- (HKClinicalBrand)brand
{
  if ([(HKClinicalAccountProvenance *)self type]== 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HKClinicalGateway *)self->_gateway brand];
  }

  return v3;
}

- (id)description
{
  v3 = [(HKClinicalAccountProvenance *)self type];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  v8 = 8;
  if (v3 == 1)
  {
    v8 = 16;
  }

  v9 = [v4 stringWithFormat:@"<%@ %p: %@>", v6, self, *(&self->super.isa + v8)];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    gateway = self->_gateway;
    v10 = [(HKClinicalAccountProvenance *)v8 gateway];
    if (gateway == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HKClinicalAccountProvenance *)v8 gateway];
    if (!v11)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = v11;
    v12 = self->_gateway;
    v4 = [(HKClinicalAccountProvenance *)v8 gateway];
    if ([(HKClinicalGateway *)v12 isEqual:v4])
    {
LABEL_9:
      signedClinicalDataIssuer = self->_signedClinicalDataIssuer;
      v15 = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
      v16 = v15;
      if (signedClinicalDataIssuer == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
        if (v17)
        {
          v18 = v17;
          v19 = self->_signedClinicalDataIssuer;
          v20 = [(HKClinicalAccountProvenance *)v8 signedClinicalDataIssuer];
          v13 = [(HKSignedClinicalDataIssuer *)v19 isEqual:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (gateway == v10)
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

- (void)encodeWithCoder:(id)a3
{
  gateway = self->_gateway;
  v5 = a3;
  [v5 encodeObject:gateway forKey:@"Gateway"];
  [v5 encodeObject:self->_signedClinicalDataIssuer forKey:@"SignedClinicalDataIssuer"];
}

- (HKClinicalAccountProvenance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Gateway"];
  if (v5)
  {
    self = [(HKClinicalAccountProvenance *)self initWithGateway:v5];
    v6 = self;
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SignedClinicalDataIssuer"];
    if (v7)
    {
      self = [(HKClinicalAccountProvenance *)self initWithSignedClinicalDataIssuer:v7];
      v6 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaInvalidValueError];
      v6 = 0;
    }
  }

  return v6;
}

- (void)type
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2519FE000, v3, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ has no valid provenance type assigned", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end