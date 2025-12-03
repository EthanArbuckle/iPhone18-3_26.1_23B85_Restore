@interface PKPaymentOfferSelectedConfirmationRecord
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferSelectedConfirmationRecord)initWithCoder:(id)coder;
- (PKPaymentOfferSelectedConfirmationRecord)initWithTransaction:(id)transaction context:(unint64_t)context selectedOffer:(id)offer;
- (id)_init;
- (id)description;
- (id)rewardsRedemptionIntent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferSelectedConfirmationRecord

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferSelectedConfirmationRecord;
  return [(PKPaymentOfferConfirmationRecord *)&v3 _init];
}

- (PKPaymentOfferSelectedConfirmationRecord)initWithTransaction:(id)transaction context:(unint64_t)context selectedOffer:(id)offer
{
  offerCopy = offer;
  transactionCopy = transaction;
  passUniqueID = [offerCopy passUniqueID];
  criteriaIdentifier = [offerCopy criteriaIdentifier];
  v15.receiver = self;
  v15.super_class = PKPaymentOfferSelectedConfirmationRecord;
  v13 = [(PKPaymentOfferConfirmationRecord *)&v15 initWithTransaction:transactionCopy passUniqueID:passUniqueID criteriaIdentifier:criteriaIdentifier context:context type:1];

  if (v13)
  {
    objc_storeStrong(&v13->_selectedOffer, offer);
  }

  return v13;
}

- (id)rewardsRedemptionIntent
{
  if ([(PKSelectedPaymentOffer *)self->_selectedOffer type]== 2)
  {
    rewardsRedemptionIntent = [(PKSelectedPaymentOffer *)self->_selectedOffer rewardsRedemptionIntent];
  }

  else
  {
    rewardsRedemptionIntent = 0;
  }

  return rewardsRedemptionIntent;
}

- (PKPaymentOfferSelectedConfirmationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentOfferSelectedConfirmationRecord;
  v5 = [(PKPaymentOfferConfirmationRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOffer"];
    selectedOffer = v5->_selectedOffer;
    v5->_selectedOffer = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentOfferSelectedConfirmationRecord;
  coderCopy = coder;
  [(PKPaymentOfferConfirmationRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_selectedOffer forKey:{@"selectedOffer", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = PKPaymentOfferSelectedConfirmationRecord;
    if ([(PKPaymentOfferConfirmationRecord *)&v12 isEqual:v6])
    {
      selectedOffer = self->_selectedOffer;
      v8 = v6->_selectedOffer;
      if (selectedOffer)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = selectedOffer == v8;
      }

      else
      {
        v10 = [(PKSelectedPaymentOffer *)selectedOffer isEqual:?];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_selectedOffer];
  v7.receiver = self;
  v7.super_class = PKPaymentOfferSelectedConfirmationRecord;
  v4 = [(PKPaymentOfferConfirmationRecord *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  transaction = [(PKPaymentOfferConfirmationRecord *)self transaction];
  [v3 appendFormat:@"transaction: '%@'; ", transaction];

  passUniqueID = [(PKPaymentOfferConfirmationRecord *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", passUniqueID];

  v6 = PKPaymentOffersSessionDetailsContextToString([(PKPaymentOfferConfirmationRecord *)self context]);
  [v3 appendFormat:@"context: '%@'; ", v6];

  [v3 appendFormat:@"selectedOffer: '%@'; ", self->_selectedOffer];
  [v3 appendFormat:@">"];

  return v3;
}

@end