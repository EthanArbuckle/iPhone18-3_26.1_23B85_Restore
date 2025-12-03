@interface HKSignedClinicalDataParsingResultMux
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataParsingResultMux)init;
- (HKSignedClinicalDataParsingResultMux)initWithCoder:(id)coder;
- (HKSignedClinicalDataParsingResultMux)initWithSignedClinicalData:(id)data;
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

- (HKSignedClinicalDataParsingResultMux)initWithSignedClinicalData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [(HKSignedClinicalDataParsingResultMux *)a2 initWithSignedClinicalData:?];
  }

  v10.receiver = self;
  v10.super_class = HKSignedClinicalDataParsingResultMux;
  v7 = [(HKSignedClinicalDataParsingResultMux *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_signedClinicalData, data);
  }

  return v8;
}

- (HKSignedClinicalDataParsingResultMux)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SignedClinicalData"];
  if (v5)
  {
    self = [(HKSignedClinicalDataParsingResultMux *)self initWithSignedClinicalData:v5];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(signedClinicalData) = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      signedClinicalData = self->_signedClinicalData;
      if (signedClinicalData)
      {
        signedClinicalData = [(HKSignedClinicalDataParsingResultMux *)v6 signedClinicalData];
        LOBYTE(signedClinicalData) = [(HKSignedClinicalDataParsingResult *)signedClinicalData isEqual:signedClinicalData];
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