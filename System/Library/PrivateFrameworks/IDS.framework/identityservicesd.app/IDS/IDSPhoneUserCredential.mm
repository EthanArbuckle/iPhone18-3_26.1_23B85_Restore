@interface IDSPhoneUserCredential
- (IDSPhoneUserCredential)initWithSMSSignature:(id)signature mechanismUsed:(int64_t)used;
@end

@implementation IDSPhoneUserCredential

- (IDSPhoneUserCredential)initWithSMSSignature:(id)signature mechanismUsed:(int64_t)used
{
  signatureCopy = signature;
  if (signatureCopy)
  {
    v12.receiver = self;
    v12.super_class = IDSPhoneUserCredential;
    v8 = [(IDSPhoneUserCredential *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_smsSignature, signature);
      v9->_mechanismUsed = used;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end