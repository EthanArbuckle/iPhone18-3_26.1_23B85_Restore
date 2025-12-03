@interface DSContactIdentity
- (DSContactIdentity)initWithEmail:(id)email withPhone:(id)phone;
@end

@implementation DSContactIdentity

- (DSContactIdentity)initWithEmail:(id)email withPhone:(id)phone
{
  emailCopy = email;
  phoneCopy = phone;
  v12.receiver = self;
  v12.super_class = DSContactIdentity;
  v9 = [(DSContactIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_email, email);
    objc_storeStrong(&v10->_phone, phone);
  }

  return v10;
}

@end