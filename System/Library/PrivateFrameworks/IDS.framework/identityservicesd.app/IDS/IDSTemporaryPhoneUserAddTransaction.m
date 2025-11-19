@interface IDSTemporaryPhoneUserAddTransaction
- (IDSTemporaryPhoneUserAddTransaction)initWithUser:(id)a3 credential:(id)a4;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserAddTransaction

- (IDSTemporaryPhoneUserAddTransaction)initWithUser:(id)a3 credential:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSTemporaryPhoneUserAddTransaction;
  v9 = [(IDSTemporaryPhoneUserAddTransaction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, a3);
    objc_storeStrong(&v10->_credential, a4);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(IDSTemporaryPhoneUserAddTransaction *)self user];
  v5 = [(IDSTemporaryPhoneUserAddTransaction *)self credential];
  v6 = @"YES";
  if (!v5)
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@:%p user: %@, credential: %@>", v3, self, v4, v6];

  return v7;
}

@end