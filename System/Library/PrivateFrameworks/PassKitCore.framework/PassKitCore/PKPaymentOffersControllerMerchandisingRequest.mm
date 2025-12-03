@interface PKPaymentOffersControllerMerchandisingRequest
- (BOOL)coalesceWithRequest:(id)request;
- (PKPaymentOffersControllerMerchandisingRequest)initWithMerchandisingIdentifiers:(id)identifiers amount:(id)amount;
- (id)description;
@end

@implementation PKPaymentOffersControllerMerchandisingRequest

- (PKPaymentOffersControllerMerchandisingRequest)initWithMerchandisingIdentifiers:(id)identifiers amount:(id)amount
{
  identifiersCopy = identifiers;
  amountCopy = amount;
  v12.receiver = self;
  v12.super_class = PKPaymentOffersControllerMerchandisingRequest;
  v9 = [(PKPaymentOffersControllerMerchandisingRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_merchandisingIdentifiers, identifiers);
    objc_storeStrong(&v10->_amount, amount);
  }

  return v10;
}

- (BOOL)coalesceWithRequest:(id)request
{
  requestCopy = request;
  merchandisingIdentifiers = [requestCopy merchandisingIdentifiers];
  v6 = merchandisingIdentifiers;
  merchandisingIdentifiers = self->_merchandisingIdentifiers;
  if (merchandisingIdentifiers && merchandisingIdentifiers)
  {
    v8 = [(NSSet *)merchandisingIdentifiers isEqual:self->_merchandisingIdentifiers];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_11;
  }

  if (v6 != merchandisingIdentifiers)
  {
    goto LABEL_8;
  }

LABEL_4:
  amount = [requestCopy amount];
  v10 = amount;
  amount = self->_amount;
  if (amount && amount)
  {
    v12 = [(NSDecimalNumber *)amount isEqual:?];
  }

  else
  {
    v12 = amount == amount;
  }

LABEL_11:
  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"merchandisingIdentifiers: '%@'; ", self->_merchandisingIdentifiers];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@">"];

  return v3;
}

@end