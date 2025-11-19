@interface EMListUnsubscribeMailtoValues
- (BOOL)isEqual:(id)a3;
- (EDReceivingAccount)account;
- (EMListUnsubscribeMailtoValues)initWithAddresss:(id)a3 subject:(id)a4 body:(id)a5 account:(id)a6;
- (EMListUnsubscribeMailtoValues)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMListUnsubscribeMailtoValues

- (EMListUnsubscribeMailtoValues)initWithAddresss:(id)a3 subject:(id)a4 body:(id)a5 account:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = EMListUnsubscribeMailtoValues;
  v14 = [(EMListUnsubscribeMailtoValues *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    address = v14->_address;
    v14->_address = v15;

    v17 = [v11 copy];
    subject = v14->_subject;
    v14->_subject = v17;

    v19 = [v12 copy];
    body = v14->_body;
    v14->_body = v19;

    objc_storeStrong(&v14->_account, a6);
  }

  return v14;
}

- (EDReceivingAccount)account
{
  if (self->_accountIdentifier)
  {
    v3 = [EMListUnsubscribeCommand _accountWithIdentifier:?];
    account = self->_account;
    self->_account = v3;

    accountIdentifier = self->_accountIdentifier;
    self->_accountIdentifier = 0;
  }

  v6 = self->_account;

  return v6;
}

- (EMListUnsubscribeMailtoValues)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EMListUnsubscribeMailtoValues;
  v5 = [(EMListUnsubscribeMailtoValues *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_body"];
    body = v5->_body;
    v5->_body = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_account.identifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(EMListUnsubscribeMailtoValues *)self address];
  [v9 encodeObject:v4 forKey:@"EFPropertyKey_address"];

  v5 = [(EMListUnsubscribeMailtoValues *)self subject];
  [v9 encodeObject:v5 forKey:@"EFPropertyKey_subject"];

  v6 = [(EMListUnsubscribeMailtoValues *)self body];
  [v9 encodeObject:v6 forKey:@"EFPropertyKey_body"];

  v7 = [(EMListUnsubscribeMailtoValues *)self account];
  v8 = [v7 identifier];
  [v9 encodeObject:v8 forKey:@"EFPropertyKey_account.identifier"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [(NSString *)self->_subject hash];
  v5 = [(NSString *)self->_body hash];
  v6 = [(EDReceivingAccount *)self->_account identifier];
  v7 = (11 * v4) ^ (37 * v3);
  v8 = v5 ^ [v6 hash];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    address = self->_address;
    v7 = [v5 address];
    if (EFObjectsAreEqual())
    {
      subject = self->_subject;
      v9 = [v5 subject];
      if (EFObjectsAreEqual())
      {
        body = self->_body;
        v11 = [v5 body];
        if (EFObjectsAreEqual())
        {
          v12 = [(EMListUnsubscribeMailtoValues *)self account];
          v13 = [v12 identifier];
          v14 = [v5 account];
          v15 = [v14 identifier];
          v16 = EFObjectsAreEqual();
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end