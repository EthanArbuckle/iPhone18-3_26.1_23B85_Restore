@interface EMListUnsubscribeMailtoValues
- (BOOL)isEqual:(id)equal;
- (EDReceivingAccount)account;
- (EMListUnsubscribeMailtoValues)initWithAddresss:(id)addresss subject:(id)subject body:(id)body account:(id)account;
- (EMListUnsubscribeMailtoValues)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMListUnsubscribeMailtoValues

- (EMListUnsubscribeMailtoValues)initWithAddresss:(id)addresss subject:(id)subject body:(id)body account:(id)account
{
  addresssCopy = addresss;
  subjectCopy = subject;
  bodyCopy = body;
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = EMListUnsubscribeMailtoValues;
  v14 = [(EMListUnsubscribeMailtoValues *)&v22 init];
  if (v14)
  {
    v15 = [addresssCopy copy];
    address = v14->_address;
    v14->_address = v15;

    v17 = [subjectCopy copy];
    subject = v14->_subject;
    v14->_subject = v17;

    v19 = [bodyCopy copy];
    body = v14->_body;
    v14->_body = v19;

    objc_storeStrong(&v14->_account, account);
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

- (EMListUnsubscribeMailtoValues)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = EMListUnsubscribeMailtoValues;
  v5 = [(EMListUnsubscribeMailtoValues *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_body"];
    body = v5->_body;
    v5->_body = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_account.identifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(EMListUnsubscribeMailtoValues *)self address];
  [coderCopy encodeObject:address forKey:@"EFPropertyKey_address"];

  subject = [(EMListUnsubscribeMailtoValues *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  body = [(EMListUnsubscribeMailtoValues *)self body];
  [coderCopy encodeObject:body forKey:@"EFPropertyKey_body"];

  account = [(EMListUnsubscribeMailtoValues *)self account];
  identifier = [account identifier];
  [coderCopy encodeObject:identifier forKey:@"EFPropertyKey_account.identifier"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [(NSString *)self->_subject hash];
  v5 = [(NSString *)self->_body hash];
  identifier = [(EDReceivingAccount *)self->_account identifier];
  v7 = (11 * v4) ^ (37 * v3);
  v8 = v5 ^ [identifier hash];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = self->_address;
    address = [v5 address];
    if (EFObjectsAreEqual())
    {
      subject = self->_subject;
      subject = [v5 subject];
      if (EFObjectsAreEqual())
      {
        body = self->_body;
        body = [v5 body];
        if (EFObjectsAreEqual())
        {
          account = [(EMListUnsubscribeMailtoValues *)self account];
          identifier = [account identifier];
          account2 = [v5 account];
          identifier2 = [account2 identifier];
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