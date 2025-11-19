@interface PKActivityEventPeerPaymentTransaction
- (BOOL)isEqualToActivityEvent:(id)a3;
- (PKActivityEventPeerPaymentTransaction)initWithTransaction:(id)a3 relatedTopUpWithdrawlTransaction:(id)a4 relatedTopUpDepositTransaction:(id)a5 unread:(BOOL)a6;
- (unint64_t)hash;
@end

@implementation PKActivityEventPeerPaymentTransaction

- (PKActivityEventPeerPaymentTransaction)initWithTransaction:(id)a3 relatedTopUpWithdrawlTransaction:(id)a4 relatedTopUpDepositTransaction:(id)a5 unread:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PKActivityEventPeerPaymentTransaction;
  v13 = [(PKActivityEventTransaction *)&v16 initWithTransaction:a3 unread:v6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_relatedTopUpPeerPaymentAccountDepositTransaction, a5);
    objc_storeStrong(&v14->_relatedTopUpFundingSourceWithdrawlTransaction, a4);
  }

  return v14;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PKActivityEventPeerPaymentTransaction;
  v3 = [(PKActivityEventTransaction *)&v6 hash];
  v4 = [(PKPaymentTransaction *)self->_relatedTopUpFundingSourceWithdrawlTransaction hash]- v3 + 32 * v3;
  return [(PKPaymentTransaction *)self->_relatedTopUpPeerPaymentAccountDepositTransaction hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToActivityEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v14.receiver = self;
  v14.super_class = PKActivityEventPeerPaymentTransaction;
  if ([(PKActivityEventTransaction *)&v14 isEqualToActivityEvent:v5])
  {
    relatedTopUpFundingSourceWithdrawlTransaction = self->_relatedTopUpFundingSourceWithdrawlTransaction;
    v7 = v5[6];
    if (relatedTopUpFundingSourceWithdrawlTransaction)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (relatedTopUpFundingSourceWithdrawlTransaction == v7)
      {
LABEL_14:
        relatedTopUpPeerPaymentAccountDepositTransaction = self->_relatedTopUpPeerPaymentAccountDepositTransaction;
        v12 = v5[7];
        if (relatedTopUpPeerPaymentAccountDepositTransaction)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v9 = relatedTopUpPeerPaymentAccountDepositTransaction == v12;
        }

        else
        {
          v9 = [(PKPaymentTransaction *)relatedTopUpPeerPaymentAccountDepositTransaction isEqual:?];
        }

        goto LABEL_10;
      }
    }

    else if ([(PKPaymentTransaction *)relatedTopUpFundingSourceWithdrawlTransaction isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_10:

LABEL_12:
  return v9;
}

@end