@interface EMCertificateTrustInformation
+ (OS_os_log)log;
- (BOOL)isEqual:(id)equal;
- (ECEmailAddressConvertible)firstEmailAddress;
- (EMCertificateTrustInformation)initWithCoder:(id)coder;
- (EMCertificateTrustInformation)initWithTrust:(__SecTrust *)trust certificateType:(unint64_t)type sender:(id)sender;
- (NSArray)emailAddresses;
- (NSString)commonName;
- (__SecCertificate)certificate;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)evaluateTrustWithOptions:(unint64_t)options;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMCertificateTrustInformation

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EMCertificateTrustInformation_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EMCertificateTrustInformation)initWithTrust:(__SecTrust *)trust certificateType:(unint64_t)type sender:(id)sender
{
  senderCopy = sender;
  v14.receiver = self;
  v14.super_class = EMCertificateTrustInformation;
  v9 = [(EMCertificateTrustInformation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_trust = trust;
    CFRetain(trust);
    v10->_certificateType = type;
    v11 = [senderCopy copy];
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

- (EMCertificateTrustInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sender"];
  v6 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_certificateType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trust"];
  if (v7 && (v8 = SecTrustDeserialize()) != 0)
  {
    self = [(EMCertificateTrustInformation *)self initWithTrust:v8 certificateType:v6 sender:v5];
    CFRelease(v8);
    selfCopy = self;
  }

  else
  {
    v10 = +[EMCertificateTrustInformation log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [EMCertificateTrustInformation initWithCoder:v10];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sender = [(EMCertificateTrustInformation *)self sender];
  [coderCopy encodeObject:sender forKey:@"EFPropertyKey_sender"];

  [coderCopy encodeInteger:-[EMCertificateTrustInformation certificateType](self forKey:{"certificateType"), @"EFPropertyKey_certificateType"}];
  trust = self->_trust;
  v7 = SecTrustSerialize();
  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"trust"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  certificate = [(EMCertificateTrustInformation *)self certificate];

  return CFHash(certificate);
}

- (__SecCertificate)certificate
{
  v2 = SecTrustCopyCertificateChain([(EMCertificateTrustInformation *)self trust]);
  firstObject = [(__CFArray *)v2 firstObject];

  return firstObject;
}

- (NSString)commonName
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyCommonNames();
  firstObject = [v2 firstObject];
  v4 = [firstObject copy];

  return v4;
}

- (ECEmailAddressConvertible)firstEmailAddress
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  firstObject = [v2 firstObject];
  v4 = [firstObject copy];

  return v4;
}

- (NSArray)emailAddresses
{
  [(EMCertificateTrustInformation *)self certificate];
  v2 = SecCertificateCopyRFC822Names();
  v3 = [v2 copy];

  return v3;
}

- (void)evaluateTrustWithOptions:(unint64_t)options
{
  sender = [(EMCertificateTrustInformation *)self sender];
  emailAddressValue = [sender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v8 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [sender stringValue];
  }

  v12 = stringValue;

  v10 = [MEMORY[0x1E699B318] evaluateTrust:self->_trust withOptions:options signerEmailAddress:v12];
  trustEvaluation = self->_trustEvaluation;
  self->_trustEvaluation = v10;
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  v3 = MEMORY[0x1E699B318];
  trustEvaluation = [(EMCertificateTrustInformation *)self trustEvaluation];
  v4 = [v3 reevaluateWithNetworkAccessAllowed:?];
  trustEvaluation = self->_trustEvaluation;
  self->_trustEvaluation = v4;
}

@end