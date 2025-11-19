@interface CRKInMemoryCertificate
- (BOOL)isCertificateAuthority;
- (BOOL)isTemporallyValid;
- (CRKInMemoryCertificate)initWithCoder:(id)a3;
- (CRKInMemoryCertificate)initWithConfiguration:(id)a3 validityDateInterval:(id)a4;
- (NSArray)commonNames;
- (NSString)fingerprint;
- (__SecCertificate)underlyingCertificate;
- (int64_t)keySizeInBits;
- (unsigned)hashingAlgorithm;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKInMemoryCertificate

- (CRKInMemoryCertificate)initWithConfiguration:(id)a3 validityDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRKInMemoryCertificate;
  v8 = [(CRKInMemoryCertificate *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_validityDateInterval, a4);
  }

  return v8;
}

- (NSArray)commonNames
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(CRKInMemoryCertificate *)self configuration];
  v3 = [v2 commonName];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (NSString)fingerprint
{
  v2 = [(CRKInMemoryCertificate *)self configuration];
  v3 = [v2 commonName];

  return v3;
}

- (__SecCertificate)underlyingCertificate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CRKInMemoryCertificate.m" lineNumber:58 description:@"Reconsider what you are trying to test"];

  return 0;
}

- (BOOL)isTemporallyValid
{
  v2 = [(CRKInMemoryCertificate *)self validityDateInterval];
  v3 = [v2 crk_containsCurrentDate];

  return v3;
}

- (BOOL)isCertificateAuthority
{
  v2 = [(CRKInMemoryCertificate *)self configuration];
  v3 = [v2 createsCertificateAuthority];

  return v3;
}

- (unsigned)hashingAlgorithm
{
  v2 = [(CRKInMemoryCertificate *)self configuration];
  v3 = [v2 hashingAlgorithm];

  return v3;
}

- (int64_t)keySizeInBits
{
  v2 = [(CRKInMemoryCertificate *)self configuration];
  v3 = [v2 keySizeInBits];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKInMemoryCertificate *)self validityDateInterval];
  [v4 encodeObject:v5 forKey:@"validityDateInterval"];

  v6 = [(CRKInMemoryCertificate *)self configuration];
  [v4 encodeObject:v6 forKey:@"configuration"];
}

- (CRKInMemoryCertificate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKInMemoryCertificate;
  v5 = [(CRKInMemoryCertificate *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"validityDateInterval"];
    validityDateInterval = v5->_validityDateInterval;
    v5->_validityDateInterval = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v10;
  }

  return v5;
}

@end