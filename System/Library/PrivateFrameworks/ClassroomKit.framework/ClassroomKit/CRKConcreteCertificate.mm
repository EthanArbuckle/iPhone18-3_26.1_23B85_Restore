@interface CRKConcreteCertificate
+ (id)certificateWithData:(id)data;
- (BOOL)isCertificateAuthority;
- (BOOL)isTemporallyValid;
- (CRKConcreteCertificate)initWithCertificate:(__SecCertificate *)certificate;
- (NSArray)commonNames;
- (NSData)dataRepresentation;
- (NSDateInterval)validityDateInterval;
- (NSString)fingerprint;
- (int64_t)keySizeInBits;
- (unsigned)hashingAlgorithm;
- (void)dealloc;
@end

@implementation CRKConcreteCertificate

- (void)dealloc
{
  CFRelease(self->_underlyingCertificate);
  v3.receiver = self;
  v3.super_class = CRKConcreteCertificate;
  [(CRKConcreteCertificate *)&v3 dealloc];
}

- (CRKConcreteCertificate)initWithCertificate:(__SecCertificate *)certificate
{
  v6.receiver = self;
  v6.super_class = CRKConcreteCertificate;
  v4 = [(CRKConcreteCertificate *)&v6 init];
  if (v4)
  {
    CFRetain(certificate);
    v4->_underlyingCertificate = certificate;
  }

  return v4;
}

+ (id)certificateWithData:(id)data
{
  v4 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], data);
  if (v4)
  {
    v5 = v4;
    v6 = [[self alloc] initWithCertificate:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)commonNames
{
  [(CRKConcreteCertificate *)self underlyingCertificate];
  v2 = SecCertificateCopyCommonNames();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (NSString)fingerprint
{
  [(CRKConcreteCertificate *)self underlyingCertificate];
  v2 = SecCertificateGetSHA1Digest();
  crk_hexString = [v2 crk_hexString];

  return crk_hexString;
}

- (NSDateInterval)validityDateInterval
{
  v3 = *MEMORY[0x277CBECE8];
  [(CRKConcreteCertificate *)self underlyingCertificate];
  SecCertificateNotValidBefore();
  v5 = CFDateCreate(v3, v4);
  [(CRKConcreteCertificate *)self underlyingCertificate];
  SecCertificateNotValidAfter();
  v7 = CFDateCreate(v3, v6);
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
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
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
  }

  return v10;
}

- (NSData)dataRepresentation
{
  v2 = SecCertificateCopyData([(CRKConcreteCertificate *)self underlyingCertificate]);

  return v2;
}

- (BOOL)isTemporallyValid
{
  validityDateInterval = [(CRKConcreteCertificate *)self validityDateInterval];
  crk_containsCurrentDate = [validityDateInterval crk_containsCurrentDate];

  return crk_containsCurrentDate;
}

- (BOOL)isCertificateAuthority
{
  underlyingCertificate = [(CRKConcreteCertificate *)self underlyingCertificate];

  return MEMORY[0x28212B280](underlyingCertificate);
}

- (unsigned)hashingAlgorithm
{
  underlyingCertificate = [(CRKConcreteCertificate *)self underlyingCertificate];

  return MEMORY[0x28212B260](underlyingCertificate);
}

- (int64_t)keySizeInBits
{
  v2 = SecCertificateCopyKey([(CRKConcreteCertificate *)self underlyingCertificate]);
  if (v2)
  {
    v3 = v2;
    BlockSize = SecKeyGetBlockSize(v2);
    CFRelease(v3);
    return 8 * BlockSize;
  }

  else
  {
    if (_CRKLogGeneral_onceToken_43 != -1)
    {
      [CRKConcreteCertificate keySizeInBits];
    }

    v6 = _CRKLogGeneral_logObj_43;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_43, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcreteCertificate *)v6 keySizeInBits];
    }

    return 0;
  }
}

@end