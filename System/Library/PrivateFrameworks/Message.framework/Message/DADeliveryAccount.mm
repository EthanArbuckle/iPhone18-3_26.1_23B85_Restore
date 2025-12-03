@interface DADeliveryAccount
- (DADeliveryAccount)initWithDAMailAccount:(id)account;
- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
- (id)newDeliveryWithMessage:(id)message;
@end

@implementation DADeliveryAccount

- (DADeliveryAccount)initWithDAMailAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = DADeliveryAccount;
  v6 = [(MFAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DAMailAccount, account);
  }

  return v7;
}

- (id)newDeliveryWithMessage:(id)message
{
  v6.receiver = self;
  v6.super_class = DADeliveryAccount;
  v4 = [(DeliveryAccount *)&v6 newDeliveryWithMessage:message];
  [v4 setDAMailAccount:self->_DAMailAccount];
  return v4;
}

- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  v9.receiver = self;
  v9.super_class = DADeliveryAccount;
  v7 = [(DeliveryAccount *)&v9 newDeliveryWithHeaders:headers HTML:l plainTextAlternative:alternative other:other];
  [v7 setDAMailAccount:self->_DAMailAccount];
  return v7;
}

@end