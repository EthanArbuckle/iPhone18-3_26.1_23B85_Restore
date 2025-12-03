@interface PKTransactionSource
- (BOOL)isEqual:(id)equal;
- (NSSet)transactionSourceIdentifiers;
- (PKTransactionSource)initWithAccount:(id)account;
- (PKTransactionSource)initWithAccountUser:(id)user;
- (PKTransactionSource)initWithCoder:(id)coder;
- (PKTransactionSource)initWithPaymentPass:(id)pass;
- (PKTransactionSource)initWithPeerPaymentAccount:(id)account;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionSource

- (PKTransactionSource)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentPass, pass);
    v7->_type = 0;
  }

  return v7;
}

- (PKTransactionSource)initWithPeerPaymentAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentAccount, account);
    v7->_type = 1;
  }

  return v7;
}

- (PKTransactionSource)initWithAccountUser:(id)user
{
  userCopy = user;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountUser, user);
    v7->_type = 2;
  }

  return v7;
}

- (PKTransactionSource)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v7->_type = 3;
  }

  return v7;
}

- (NSSet)transactionSourceIdentifiers
{
  v2 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        peerPaymentAccount = self->_peerPaymentAccount;
LABEL_8:
        transactionSourceIdentifier = [peerPaymentAccount transactionSourceIdentifier];
        if (transactionSourceIdentifier)
        {
          v2 = [MEMORY[0x1E695DFD8] setWithObject:transactionSourceIdentifier];
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    deviceTransactionSourceIdentifiers = [(PKSecureElementPass *)self->_paymentPass deviceTransactionSourceIdentifiers];
LABEL_12:
    v2 = deviceTransactionSourceIdentifiers;
    goto LABEL_15;
  }

  if (type == 2)
  {
    deviceTransactionSourceIdentifiers = [(PKAccountUser *)self->_accountUser transactionSourceIdentifiers];
    goto LABEL_12;
  }

  if (type == 3)
  {
    peerPaymentAccount = self->_account;
    goto LABEL_8;
  }

LABEL_15:

  return v2;
}

- (PKTransactionSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionSource;
  v5 = [(PKTransactionSource *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentPass"];
    paymentPass = v5->_paymentPass;
    v5->_paymentPass = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentAccount"];
    peerPaymentAccount = v5->_peerPaymentAccount;
    v5->_peerPaymentAccount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUser"];
    accountUser = v5->_accountUser;
    v5->_accountUser = v10;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentPass = self->_paymentPass;
  coderCopy = coder;
  [coderCopy encodeObject:paymentPass forKey:@"paymentPass"];
  [coderCopy encodeObject:self->_peerPaymentAccount forKey:@"peerPaymentAccount"];
  [coderCopy encodeObject:self->_accountUser forKey:@"accountUser"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  type = self->_type;
  if (type > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79E0F38[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  v7 = self->_type;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      altDSID = [(PKAccountUser *)self->_accountUser altDSID];
      [v4 appendFormat:@"accountUser altDSID: '%@'; ", altDSID];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_14;
      }

      altDSID = [(PKAccount *)self->_account accountIdentifier];
      [v4 appendFormat:@"account identifier: '%@'; ", altDSID];
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }

    altDSID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    [v4 appendFormat:@"peerPaymentAccount identifier: '%@'; ", altDSID];
  }

  else
  {
    altDSID = [(PKObject *)self->_paymentPass uniqueID];
    [v4 appendFormat:@"paymentPass uniqueID: '%@'; ", altDSID];
  }

LABEL_14:
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[1])
  {
    transactionSourceIdentifiers = [(PKTransactionSource *)self transactionSourceIdentifiers];
    transactionSourceIdentifiers2 = [equalCopy transactionSourceIdentifiers];
    v7 = transactionSourceIdentifiers2;
    if (transactionSourceIdentifiers && transactionSourceIdentifiers2)
    {
      v8 = [transactionSourceIdentifiers isEqual:transactionSourceIdentifiers2];
    }

    else
    {
      v8 = transactionSourceIdentifiers == transactionSourceIdentifiers2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  transactionSourceIdentifiers = [(PKTransactionSource *)self transactionSourceIdentifiers];
  [array safelyAddObject:transactionSourceIdentifiers];

  v5 = PKCombinedHash(17, array);
  v6 = self->_type - v5 + 32 * v5;

  return v6;
}

@end