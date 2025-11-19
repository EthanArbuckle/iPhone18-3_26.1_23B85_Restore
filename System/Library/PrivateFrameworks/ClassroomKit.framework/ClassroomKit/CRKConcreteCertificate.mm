@interface CRKConcreteCertificate
+ (id)certificateWithData:(id)a3;
- (BOOL)isCertificateAuthority;
- (BOOL)isTemporallyValid;
- (CRKConcreteCertificate)initWithCertificate:(__SecCertificate *)a3;
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

- (CRKConcreteCertificate)initWithCertificate:(__SecCertificate *)a3
{
  v6.receiver = self;
  v6.super_class = CRKConcreteCertificate;
  v4 = [(CRKConcreteCertificate *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_underlyingCertificate = a3;
  }

  return v4;
}

+ (id)certificateWithData:(id)a3
{
  v4 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], a3);
  if (v4)
  {
    v5 = v4;
    v6 = [[a1 alloc] initWithCertificate:v4];
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
  v3 = [v2 crk_hexString];

  return v3;
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
  v2 = [(CRKConcreteCertificate *)self validityDateInterval];
  v3 = [v2 crk_containsCurrentDate];

  return v3;
}

- (BOOL)isCertificateAuthority
{
  v2 = [(CRKConcreteCertificate *)self underlyingCertificate];

  return MEMORY[0x28212B280](v2);
}

- (unsigned)hashingAlgorithm
{
  v2 = [(CRKConcreteCertificate *)self underlyingCertificate];

  return MEMORY[0x28212B260](v2);
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