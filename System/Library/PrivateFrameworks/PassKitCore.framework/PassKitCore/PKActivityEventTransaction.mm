@interface PKActivityEventTransaction
- (BOOL)isEqualToActivityEvent:(id)a3;
- (PKActivityEventTransaction)initWithTransaction:(id)a3 unread:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation PKActivityEventTransaction

- (PKActivityEventTransaction)initWithTransaction:(id)a3 unread:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 identifier];
  v10 = [v8 stringWithFormat:@"transaction-%@", v9];

  v11 = [v7 transactionDate];
  v15.receiver = self;
  v15.super_class = PKActivityEventTransaction;
  v12 = [(PKActivityEvent *)&v15 initWithIdentifier:v10 date:v11 unread:v4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, a3);
  }

  return v13;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PKActivityEventTransaction;
  v3 = [(PKActivityEvent *)&v5 hash];
  return [(PKPaymentTransaction *)self->_transaction hash]- v3 + 32 * v3;
}

- (BOOL)isEqualToActivityEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v11.receiver = self;
    v11.super_class = PKActivityEventTransaction;
    if ([(PKActivityEvent *)&v11 isEqualToActivityEvent:v5])
    {
      transaction = self->_transaction;
      v7 = v5[5];
      if (transaction)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = transaction == v7;
      }

      else
      {
        v9 = [(PKPaymentTransaction *)transaction isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end