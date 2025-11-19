@interface HKSignedClinicalDataParsingResultMux
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataParsingResultMux)init;
- (HKSignedClinicalDataParsingResultMux)initWithCoder:(id)a3;
- (HKSignedClinicalDataParsingResultMux)initWithSignedClinicalData:(id)a3;
@end

@implementation HKSignedClinicalDataParsingResultMux

- (HKSignedClinicalDataParsingResultMux)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataParsingResultMux)initWithSignedClinicalData:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(HKSignedClinicalDataParsingResultMux *)a2 initWithSignedClinicalData:?];
  }

  v10.receiver = self;
  v10.super_class = HKSignedClinicalDataParsingResultMux;
  v7 = [(HKSignedClinicalDataParsingResultMux *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_signedClinicalData, a3);
  }

  return v8;
}

- (HKSignedClinicalDataParsingResultMux)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SignedClinicalData"];
  if (v5)
  {
    self = [(HKSignedClinicalDataParsingResultMux *)self initWithSignedClinicalData:v5];
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(signedClinicalData) = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      signedClinicalData = self->_signedClinicalData;
      if (signedClinicalData)
      {
        v8 = [(HKSignedClinicalDataParsingResultMux *)v6 signedClinicalData];
        LOBYTE(signedClinicalData) = [(HKSignedClinicalDataParsingResult *)signedClinicalData isEqual:v8];
      }
    }

    else
    {
      LOBYTE(signedClinicalData) = 0;
    }
  }

  return signedClinicalData;
}

- (void)initWithSignedClinicalData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSignedClinicalDataParsingResultMux.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
}

@end