@interface PKSelectedPaymentOfferRewards
- (BOOL)isEqual:(id)equal;
- (PKSelectedPaymentOfferRewards)initWithCoder:(id)coder;
- (PKSelectedPaymentOfferRewards)initWithRewardsRedemptionIntent:(id)intent criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)identifier;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSelectedPaymentOfferRewards

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferRewards;
  return [(PKSelectedPaymentOffer *)&v3 _init];
}

- (PKSelectedPaymentOfferRewards)initWithRewardsRedemptionIntent:(id)intent criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)identifier
{
  intentCopy = intent;
  criteriaCopy = criteria;
  identifierCopy = identifier;
  detailsCopy = details;
  balanceIdentifier = [intentCopy balanceIdentifier];
  identifier = [criteriaCopy identifier];
  v21.receiver = self;
  v21.super_class = PKSelectedPaymentOfferRewards;
  v17 = [(PKSelectedPaymentOffer *)&v21 initWithType:2 selectedOfferIdentifier:balanceIdentifier passDetails:detailsCopy criteriaIdentifier:identifier sessionIdentifier:identifierCopy serviceProviderData:MEMORY[0x1E695E0F8] storageType:0];

  if (v17)
  {
    objc_storeStrong(&v17->_rewardsRedemptionIntent, intent);
    [criteriaCopy selectedOfferStickyDuration];
    v17->_stickyDuration = v18;
    [criteriaCopy selectedOfferActiveDuration];
    v17->_activeDuration = v19;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v12.receiver = self;
        v12.super_class = PKSelectedPaymentOfferRewards;
        if ([(PKSelectedPaymentOffer *)&v12 isEqual:v6])
        {
          rewardsRedemptionIntent = self->_rewardsRedemptionIntent;
          v8 = v6->_rewardsRedemptionIntent;
          if (rewardsRedemptionIntent)
          {
            v9 = v8 == 0;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            if (rewardsRedemptionIntent != v8)
            {
              goto LABEL_17;
            }
          }

          else if (![(PKPaymentOfferRewardsRedemptionIntent *)rewardsRedemptionIntent isEqual:?])
          {
            goto LABEL_17;
          }

          if (self->_stickyDuration == v6->_stickyDuration)
          {
            v10 = self->_activeDuration == v6->_activeDuration;
LABEL_18:

            goto LABEL_19;
          }
        }

LABEL_17:
        v10 = 0;
        goto LABEL_18;
      }
    }

    v10 = 0;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_rewardsRedemptionIntent];
  v9.receiver = self;
  v9.super_class = PKSelectedPaymentOfferRewards;
  v4 = [(PKSelectedPaymentOffer *)&v9 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_stickyDuration - v5 + 32 * v5;
  v7 = self->_activeDuration - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  type = [(PKSelectedPaymentOffer *)self type];
  v5 = @"unknown";
  if (type == 1)
  {
    v5 = @"installment";
  }

  if (type == 2)
  {
    v5 = @"rewards";
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  selectedOfferIdentifier = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
  [v3 appendFormat:@"selectedOfferIdentifier: '%@'; ", selectedOfferIdentifier];

  [v3 appendFormat:@"rewardsRedemptionIntent: '%@'; ", self->_rewardsRedemptionIntent];
  criteriaIdentifier = [(PKSelectedPaymentOffer *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", criteriaIdentifier];

  passUniqueID = [(PKSelectedPaymentOffer *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", passUniqueID];

  sessionIdentifier = [(PKSelectedPaymentOffer *)self sessionIdentifier];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", sessionIdentifier];

  userSelectionDate = [(PKSelectedPaymentOffer *)self userSelectionDate];
  [v3 appendFormat:@"userSelectionDate: '%@'; ", userSelectionDate];

  createdDate = [(PKSelectedPaymentOffer *)self createdDate];
  [v3 appendFormat:@"createdDate: '%@'; ", createdDate];

  [v3 appendFormat:@"stickyDuration: %ld; ", self->_stickyDuration];
  [v3 appendFormat:@"activeDuration: %ld; ", self->_activeDuration];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSelectedPaymentOfferRewards)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSelectedPaymentOfferRewards;
  v5 = [(PKSelectedPaymentOffer *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedemptionIntent"];
    rewardsRedemptionIntent = v5->_rewardsRedemptionIntent;
    v5->_rewardsRedemptionIntent = v6;

    v5->_stickyDuration = [coderCopy decodeIntegerForKey:@"stickyDuration"];
    v5->_activeDuration = [coderCopy decodeIntegerForKey:@"activeDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSelectedPaymentOfferRewards;
  coderCopy = coder;
  [(PKSelectedPaymentOffer *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_rewardsRedemptionIntent forKey:{@"rewardsRedemptionIntent", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_stickyDuration forKey:@"stickyDuration"];
  [coderCopy encodeInteger:self->_activeDuration forKey:@"activeDuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKPaymentOfferRewardsRedemptionIntent *)self->_rewardsRedemptionIntent copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  *(v5 + 88) = self->_stickyDuration;
  *(v5 + 96) = self->_activeDuration;
  return v5;
}

@end