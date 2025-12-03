@interface ECCMSRecipient
- (ECCMSRecipient)initWithAddress:(id)address certificate:(__SecCertificate *)certificate capabilities:(id)capabilities;
- (void)dealloc;
@end

@implementation ECCMSRecipient

- (ECCMSRecipient)initWithAddress:(id)address certificate:(__SecCertificate *)certificate capabilities:(id)capabilities
{
  addressCopy = address;
  capabilitiesCopy = capabilities;
  v16.receiver = self;
  v16.super_class = ECCMSRecipient;
  v10 = [(ECCMSRecipient *)&v16 init];
  if (v10)
  {
    v11 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v11;

    v10->_certificate = certificate;
    CFRetain(certificate);
    v13 = [capabilitiesCopy copy];
    capabilities = v10->_capabilities;
    v10->_capabilities = v13;
  }

  return v10;
}

- (void)dealloc
{
  CFRelease(self->_certificate);
  v3.receiver = self;
  v3.super_class = ECCMSRecipient;
  [(ECCMSRecipient *)&v3 dealloc];
}

@end