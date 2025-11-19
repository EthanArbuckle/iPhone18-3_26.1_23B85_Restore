@interface IDSPhoneUserCredential
- (IDSPhoneUserCredential)initWithSMSSignature:(id)a3 mechanismUsed:(int64_t)a4;
@end

@implementation IDSPhoneUserCredential

- (IDSPhoneUserCredential)initWithSMSSignature:(id)a3 mechanismUsed:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = IDSPhoneUserCredential;
    v8 = [(IDSPhoneUserCredential *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_smsSignature, a3);
      v9->_mechanismUsed = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end