@interface PKTransactionSource
- (BOOL)isEqual:(id)a3;
- (NSSet)transactionSourceIdentifiers;
- (PKTransactionSource)initWithAccount:(id)a3;
- (PKTransactionSource)initWithAccountUser:(id)a3;
- (PKTransactionSource)initWithCoder:(id)a3;
- (PKTransactionSource)initWithPaymentPass:(id)a3;
- (PKTransactionSource)initWithPeerPaymentAccount:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionSource

- (PKTransactionSource)initWithPaymentPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentPass, a3);
    v7->_type = 0;
  }

  return v7;
}

- (PKTransactionSource)initWithPeerPaymentAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentAccount, a3);
    v7->_type = 1;
  }

  return v7;
}

- (PKTransactionSource)initWithAccountUser:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountUser, a3);
    v7->_type = 2;
  }

  return v7;
}

- (PKTransactionSource)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionSource;
  v6 = [(PKTransactionSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
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
        v5 = [peerPaymentAccount transactionSourceIdentifier];
        if (v5)
        {
          v2 = [MEMORY[0x1E695DFD8] setWithObject:v5];
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v6 = [(PKSecureElementPass *)self->_paymentPass deviceTransactionSourceIdentifiers];
LABEL_12:
    v2 = v6;
    goto LABEL_15;
  }

  if (type == 2)
  {
    v6 = [(PKAccountUser *)self->_accountUser transactionSourceIdentifiers];
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

- (PKTransactionSource)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKTransactionSource;
  v5 = [(PKTransactionSource *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentPass"];
    paymentPass = v5->_paymentPass;
    v5->_paymentPass = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentAccount"];
    peerPaymentAccount = v5->_peerPaymentAccount;
    v5->_peerPaymentAccount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUser"];
    accountUser = v5->_accountUser;
    v5->_accountUser = v10;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  paymentPass = self->_paymentPass;
  v5 = a3;
  [v5 encodeObject:paymentPass forKey:@"paymentPass"];
  [v5 encodeObject:self->_peerPaymentAccount forKey:@"peerPaymentAccount"];
  [v5 encodeObject:self->_accountUser forKey:@"accountUser"];
  [v5 encodeInteger:self->_type forKey:@"type"];
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
      v8 = [(PKAccountUser *)self->_accountUser altDSID];
      [v4 appendFormat:@"accountUser altDSID: '%@'; ", v8];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_14;
      }

      v8 = [(PKAccount *)self->_account accountIdentifier];
      [v4 appendFormat:@"account identifier: '%@'; ", v8];
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }

    v8 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    [v4 appendFormat:@"peerPaymentAccount identifier: '%@'; ", v8];
  }

  else
  {
    v8 = [(PKObject *)self->_paymentPass uniqueID];
    [v4 appendFormat:@"paymentPass uniqueID: '%@'; ", v8];
  }

LABEL_14:
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4[1])
  {
    v5 = [(PKTransactionSource *)self transactionSourceIdentifiers];
    v6 = [v4 transactionSourceIdentifiers];
    v7 = v6;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }

    else
    {
      v8 = v5 == v6;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKTransactionSource *)self transactionSourceIdentifiers];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash(17, v3);
  v6 = self->_type - v5 + 32 * v5;

  return v6;
}

@end