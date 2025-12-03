@interface IDSTemporaryPhoneUserAddTransaction
- (IDSTemporaryPhoneUserAddTransaction)initWithUser:(id)user credential:(id)credential;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserAddTransaction

- (IDSTemporaryPhoneUserAddTransaction)initWithUser:(id)user credential:(id)credential
{
  userCopy = user;
  credentialCopy = credential;
  v12.receiver = self;
  v12.super_class = IDSTemporaryPhoneUserAddTransaction;
  v9 = [(IDSTemporaryPhoneUserAddTransaction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, user);
    objc_storeStrong(&v10->_credential, credential);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  user = [(IDSTemporaryPhoneUserAddTransaction *)self user];
  credential = [(IDSTemporaryPhoneUserAddTransaction *)self credential];
  v6 = @"YES";
  if (!credential)
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@:%p user: %@, credential: %@>", v3, self, user, v6];

  return v7;
}

@end