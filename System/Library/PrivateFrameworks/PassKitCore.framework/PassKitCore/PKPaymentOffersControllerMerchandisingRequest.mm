@interface PKPaymentOffersControllerMerchandisingRequest
- (BOOL)coalesceWithRequest:(id)a3;
- (PKPaymentOffersControllerMerchandisingRequest)initWithMerchandisingIdentifiers:(id)a3 amount:(id)a4;
- (id)description;
@end

@implementation PKPaymentOffersControllerMerchandisingRequest

- (PKPaymentOffersControllerMerchandisingRequest)initWithMerchandisingIdentifiers:(id)a3 amount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentOffersControllerMerchandisingRequest;
  v9 = [(PKPaymentOffersControllerMerchandisingRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_merchandisingIdentifiers, a3);
    objc_storeStrong(&v10->_amount, a4);
  }

  return v10;
}

- (BOOL)coalesceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 merchandisingIdentifiers];
  v6 = v5;
  merchandisingIdentifiers = self->_merchandisingIdentifiers;
  if (v5 && merchandisingIdentifiers)
  {
    v8 = [(NSSet *)v5 isEqual:self->_merchandisingIdentifiers];

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
  v9 = [v4 amount];
  v10 = v9;
  amount = self->_amount;
  if (v9 && amount)
  {
    v12 = [(NSDecimalNumber *)v9 isEqual:?];
  }

  else
  {
    v12 = v9 == amount;
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