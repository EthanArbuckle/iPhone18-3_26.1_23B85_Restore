@interface EMCertificateTrustInformation
+ (OS_os_log)log;
- (BOOL)isEqual:(id)a3;
- (ECEmailAddressConvertible)firstEmailAddress;
- (EMCertificateTrustInformation)initWithCoder:(id)a3;
- (EMCertificateTrustInformation)initWithTrust:(__SecTrust *)a3 certificateType:(unint64_t)a4 sender:(id)a5;
- (NSArray)emailAddresses;
- (NSString)commonName;
- (__SecCertificate)certificate;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)evaluateTrustWithOptions:(unint64_t)a3;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMCertificateTrustInformation

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EMCertificateTrustInformation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

void __36__EMCertificateTrustInformation_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

- (EMCertificateTrustInformation)initWithTrust:(__SecTrust *)a3 certificateType:(unint64_t)a4 sender:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = EMCertificateTrustInformation;
  v9 = [(EMCertificateTrustInformation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_trust = a3;
    CFRetain(a3);
    v10->_certificateType = a4;
    v11 = [v8 copy];
    sender = v10->_sender;
    v10->_sender = v11;
  }

  return v10;
}

- (void)dealloc
{
  CFRelease(self->_trust);
  v3.receiver = self;
  v3.super_class = EMCertificateTrustInformation;
  [(EMCertificateTrustInformation *)&v3 dealloc];
}

- (EMCertificateTrustInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sender"];
  v6 = [v4 decodeIntegerForKey:@"EFPropertyKey_certificateType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trust"];
  if (v7 && (v8 = SecTrustDeserialize()) != 0)
  {
    self = [(EMCertificateTrustInformation *)self initWithTrust:v8 certificateType:v6 sender:v5];
    CFRelease(v8);
    v9 = self;
  }

  else
  {
    v10 = +[EMCertificateTrustInformation log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EMCertificateTrustInformation initWithCoder:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EMCertificateTrustInformation *)self sender];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_sender"];

  [v4 encodeInteger:-[EMCertificateTrustInformation certificateType](self forKey:{"certificateType"), @"EFPropertyKey_certificateType"}];
  trust = self->_trust;
  v7 = SecTrustSerialize();
  if (v7)
  {
    [v4 encodeObject:v7 forKey:@"trust"];
  }

  else
  {
    v8 = +[EMCertificateTrustInformation log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EMCertificateTrustInformation encodeWithCoder:v8];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = CFEqual([(EMCertificateTrustInformation *)self certificate], [(EMCertificateTrustInformation *)v6 certificate]) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMCertificateTrustInformation *)self certificate];

  return CFHash(v2);
}

- (__SecCertificate)certificate
{
  v2 = SecTrustCopyCertificateChain([(EMCertificateTrustInformation *)self trust]);
  v3 = [(__CFArray *)v2 firstObject];

  return v3;
}

- (NSString)commonName
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyCommonNames();
  v3 = [v2 firstObject];
  v4 = [v3 copy];

  return v4;
}

- (ECEmailAddressConvertible)firstEmailAddress
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  v3 = [v2 firstObject];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)emailAddresses
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  v3 = [v2 copy];

  return v3;
}

- (void)evaluateTrustWithOptions:(unint64_t)a3
{
  v5 = [(EMCertificateTrustInformation *)self sender];
  v6 = [v5 emailAddressValue];
  v7 = [v6 simpleAddress];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 stringValue];
  }

  v12 = v9;

  v10 = [MEMORY[0x1E699B318] evaluateTrust:self->_trust withOptions:a3 signerEmailAddress:v12];
  trustEvaluation = self->_trustEvaluation;
  self->_trustEvaluation = v10;
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  v3 = MEMORY[0x1E699B318];
  v6 = [(EMCertificateTrustInformation *)self trustEvaluation];
  v4 = [v3 reevaluateWithNetworkAccessAllowed:?];
  trustEvaluation = self->_trustEvaluation;
  self->_trustEvaluation = v4;
}

@end