@interface CRKInMemoryCertificate
- (BOOL)isCertificateAuthority;
- (BOOL)isTemporallyValid;
- (CRKInMemoryCertificate)initWithCoder:(id)coder;
- (CRKInMemoryCertificate)initWithConfiguration:(id)configuration validityDateInterval:(id)interval;
- (NSArray)commonNames;
- (NSString)fingerprint;
- (__SecCertificate)underlyingCertificate;
- (int64_t)keySizeInBits;
- (unsigned)hashingAlgorithm;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKInMemoryCertificate

- (CRKInMemoryCertificate)initWithConfiguration:(id)configuration validityDateInterval:(id)interval
{
  configurationCopy = configuration;
  intervalCopy = interval;
  v12.receiver = self;
  v12.super_class = CRKInMemoryCertificate;
  v8 = [(CRKInMemoryCertificate *)&v12 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_validityDateInterval, interval);
  }

  return v8;
}

- (NSArray)commonNames
{
  v6[1] = *MEMORY[0x277D85DE8];
  configuration = [(CRKInMemoryCertificate *)self configuration];
  commonName = [configuration commonName];
  v6[0] = commonName;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (NSString)fingerprint
{
  configuration = [(CRKInMemoryCertificate *)self configuration];
  commonName = [configuration commonName];

  return commonName;
}

- (__SecCertificate)underlyingCertificate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKInMemoryCertificate.m" lineNumber:58 description:@"Reconsider what you are trying to test"];

  return 0;
}

- (BOOL)isTemporallyValid
{
  validityDateInterval = [(CRKInMemoryCertificate *)self validityDateInterval];
  crk_containsCurrentDate = [validityDateInterval crk_containsCurrentDate];

  return crk_containsCurrentDate;
}

- (BOOL)isCertificateAuthority
{
  configuration = [(CRKInMemoryCertificate *)self configuration];
  createsCertificateAuthority = [configuration createsCertificateAuthority];

  return createsCertificateAuthority;
}

- (unsigned)hashingAlgorithm
{
  configuration = [(CRKInMemoryCertificate *)self configuration];
  hashingAlgorithm = [configuration hashingAlgorithm];

  return hashingAlgorithm;
}

- (int64_t)keySizeInBits
{
  configuration = [(CRKInMemoryCertificate *)self configuration];
  keySizeInBits = [configuration keySizeInBits];

  return keySizeInBits;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  validityDateInterval = [(CRKInMemoryCertificate *)self validityDateInterval];
  [coderCopy encodeObject:validityDateInterval forKey:@"validityDateInterval"];

  configuration = [(CRKInMemoryCertificate *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];
}

- (CRKInMemoryCertificate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKInMemoryCertificate;
  v5 = [(CRKInMemoryCertificate *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"validityDateInterval"];
    validityDateInterval = v5->_validityDateInterval;
    v5->_validityDateInterval = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v10;
  }

  return v5;
}

@end