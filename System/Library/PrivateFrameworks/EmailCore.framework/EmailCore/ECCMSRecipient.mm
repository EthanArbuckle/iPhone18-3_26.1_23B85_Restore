@interface ECCMSRecipient
- (ECCMSRecipient)initWithAddress:(id)a3 certificate:(__SecCertificate *)a4 capabilities:(id)a5;
- (void)dealloc;
@end

@implementation ECCMSRecipient

- (ECCMSRecipient)initWithAddress:(id)a3 certificate:(__SecCertificate *)a4 capabilities:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ECCMSRecipient;
  v10 = [(ECCMSRecipient *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    address = v10->_address;
    v10->_address = v11;

    v10->_certificate = a4;
    CFRetain(a4);
    v13 = [v9 copy];
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