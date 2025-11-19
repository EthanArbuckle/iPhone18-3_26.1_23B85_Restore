@interface DADeliveryAccount
- (DADeliveryAccount)initWithDAMailAccount:(id)a3;
- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6;
- (id)newDeliveryWithMessage:(id)a3;
@end

@implementation DADeliveryAccount

- (DADeliveryAccount)initWithDAMailAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DADeliveryAccount;
  v6 = [(MFAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DAMailAccount, a3);
  }

  return v7;
}

- (id)newDeliveryWithMessage:(id)a3
{
  v6.receiver = self;
  v6.super_class = DADeliveryAccount;
  v4 = [(DeliveryAccount *)&v6 newDeliveryWithMessage:a3];
  [v4 setDAMailAccount:self->_DAMailAccount];
  return v4;
}

- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6
{
  v9.receiver = self;
  v9.super_class = DADeliveryAccount;
  v7 = [(DeliveryAccount *)&v9 newDeliveryWithHeaders:a3 HTML:a4 plainTextAlternative:a5 other:a6];
  [v7 setDAMailAccount:self->_DAMailAccount];
  return v7;
}

@end