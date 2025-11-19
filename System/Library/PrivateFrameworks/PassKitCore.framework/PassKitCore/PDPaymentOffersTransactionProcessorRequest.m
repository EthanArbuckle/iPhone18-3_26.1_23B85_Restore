@interface PDPaymentOffersTransactionProcessorRequest
- (BOOL)coalesceWithRequest:(id)a3;
- (PDPaymentOffersTransactionProcessorRequest)initWithPaymentHash:(id)a3 confirmEventType:(unint64_t)a4;
- (id)description;
@end

@implementation PDPaymentOffersTransactionProcessorRequest

- (PDPaymentOffersTransactionProcessorRequest)initWithPaymentHash:(id)a3 confirmEventType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PDPaymentOffersTransactionProcessorRequest;
  v8 = [(PDPaymentOffersTransactionProcessorRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_paymentHash, a3);
    v9->_confirmEventType = a4;
  }

  return v9;
}

- (BOOL)coalesceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 paymentHash];
  paymentHash = self->_paymentHash;
  v7 = v5;
  v8 = paymentHash;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v11 = [v4 confirmEventType] == self->_confirmEventType;
LABEL_10:

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"paymentHash: '%@'; ", self->_paymentHash];
  v4 = PKPaymentOfferWebServiceConfirmOfferEventTypeToString();
  [v3 appendFormat:@"confirmEventType: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end