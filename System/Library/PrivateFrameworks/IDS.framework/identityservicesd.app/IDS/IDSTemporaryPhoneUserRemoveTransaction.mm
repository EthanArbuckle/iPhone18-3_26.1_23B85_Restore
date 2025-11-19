@interface IDSTemporaryPhoneUserRemoveTransaction
- (IDSTemporaryPhoneUserRemoveTransaction)initWithUser:(id)a3 alertType:(int64_t)a4;
- (NSString)description;
@end

@implementation IDSTemporaryPhoneUserRemoveTransaction

- (IDSTemporaryPhoneUserRemoveTransaction)initWithUser:(id)a3 alertType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSTemporaryPhoneUserRemoveTransaction;
  v8 = [(IDSTemporaryPhoneUserRemoveTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, a3);
    v9->_alertType = a4;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(IDSTemporaryPhoneUserRemoveTransaction *)self user];
  v5 = [NSString stringWithFormat:@"<%@:%p user: %@>", v3, self, v4];

  return v5;
}

@end