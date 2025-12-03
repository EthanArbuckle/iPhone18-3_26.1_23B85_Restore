@interface PKPaymentOfferPayInFullConfirmationRecord
- (PKPaymentOfferPayInFullConfirmationRecord)initWithTransaction:(id)transaction passUniqueID:(id)d context:(unint64_t)context criteriaIdentifier:(id)identifier;
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

- (PKPaymentOfferPayInFullConfirmationRecord)initWithTransaction:(id)transaction passUniqueID:(id)d context:(unint64_t)context criteriaIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PKPaymentOfferPayInFullConfirmationRecord;
  return [(PKPaymentOfferConfirmationRecord *)&v7 initWithTransaction:transaction passUniqueID:d criteriaIdentifier:identifier context:context type:2];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  transaction = [(PKPaymentOfferConfirmationRecord *)self transaction];
  [v3 appendFormat:@"transaction: '%@'; ", transaction];

  passUniqueID = [(PKPaymentOfferConfirmationRecord *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", passUniqueID];

  criteriaIdentifier = [(PKPaymentOfferConfirmationRecord *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", criteriaIdentifier];

  v7 = PKPaymentOffersSessionDetailsContextToString([(PKPaymentOfferConfirmationRecord *)self context]);
  [v3 appendFormat:@"context: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

@end