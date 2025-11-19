@interface PKPaymentOfferPayInFullConfirmationRecord
- (PKPaymentOfferPayInFullConfirmationRecord)initWithTransaction:(id)a3 passUniqueID:(id)a4 context:(unint64_t)a5 criteriaIdentifier:(id)a6;
- (id)_init;
- (id)description;
@end

@implementation PKPaymentOfferPayInFullConfirmationRecord

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferPayInFullConfirmationRecord;
  return [(PKPaymentOfferConfirmationRecord *)&v3 _init];
}

- (PKPaymentOfferPayInFullConfirmationRecord)initWithTransaction:(id)a3 passUniqueID:(id)a4 context:(unint64_t)a5 criteriaIdentifier:(id)a6
{
  v7.receiver = self;
  v7.super_class = PKPaymentOfferPayInFullConfirmationRecord;
  return [(PKPaymentOfferConfirmationRecord *)&v7 initWithTransaction:a3 passUniqueID:a4 criteriaIdentifier:a6 context:a5 type:2];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = [(PKPaymentOfferConfirmationRecord *)self transaction];
  [v3 appendFormat:@"transaction: '%@'; ", v4];

  v5 = [(PKPaymentOfferConfirmationRecord *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", v5];

  v6 = [(PKPaymentOfferConfirmationRecord *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", v6];

  v7 = PKPaymentOffersSessionDetailsContextToString([(PKPaymentOfferConfirmationRecord *)self context]);
  [v3 appendFormat:@"context: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

@end