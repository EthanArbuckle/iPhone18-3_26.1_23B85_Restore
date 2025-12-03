@interface PKActivityEventTransaction
- (BOOL)isEqualToActivityEvent:(id)event;
- (PKActivityEventTransaction)initWithTransaction:(id)transaction unread:(BOOL)unread;
- (unint64_t)hash;
@end

@implementation PKActivityEventTransaction

- (PKActivityEventTransaction)initWithTransaction:(id)transaction unread:(BOOL)unread
{
  unreadCopy = unread;
  transactionCopy = transaction;
  v8 = MEMORY[0x1E696AEC0];
  identifier = [transactionCopy identifier];
  v10 = [v8 stringWithFormat:@"transaction-%@", identifier];

  transactionDate = [transactionCopy transactionDate];
  v15.receiver = self;
  v15.super_class = PKActivityEventTransaction;
  v12 = [(PKActivityEvent *)&v15 initWithIdentifier:v10 date:transactionDate unread:unreadCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, transaction);
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

- (BOOL)isEqualToActivityEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
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