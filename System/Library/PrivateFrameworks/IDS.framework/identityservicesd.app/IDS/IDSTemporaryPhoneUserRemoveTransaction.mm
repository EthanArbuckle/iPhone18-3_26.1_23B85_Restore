@interface IDSTemporaryPhoneUserRemoveTransaction
- (IDSTemporaryPhoneUserRemoveTransaction)initWithUser:(id)user alertType:(int64_t)type;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserRemoveTransaction

- (IDSTemporaryPhoneUserRemoveTransaction)initWithUser:(id)user alertType:(int64_t)type
{
  userCopy = user;
  v11.receiver = self;
  v11.super_class = IDSTemporaryPhoneUserRemoveTransaction;
  v8 = [(IDSTemporaryPhoneUserRemoveTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, user);
    v9->_alertType = type;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  user = [(IDSTemporaryPhoneUserRemoveTransaction *)self user];
  v5 = [NSString stringWithFormat:@"<%@:%p user: %@>", v3, self, user];

  return v5;
}

@end