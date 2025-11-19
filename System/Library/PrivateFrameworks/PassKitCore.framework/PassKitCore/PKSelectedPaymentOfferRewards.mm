@interface PKSelectedPaymentOfferRewards
- (BOOL)isEqual:(id)a3;
- (PKSelectedPaymentOfferRewards)initWithCoder:(id)a3;
- (PKSelectedPaymentOfferRewards)initWithRewardsRedemptionIntent:(id)a3 criteria:(id)a4 passDetails:(id)a5 sessionIdentifier:(id)a6;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSelectedPaymentOfferRewards

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferRewards;
  return [(PKSelectedPaymentOffer *)&v3 _init];
}

- (PKSelectedPaymentOfferRewards)initWithRewardsRedemptionIntent:(id)a3 criteria:(id)a4 passDetails:(id)a5 sessionIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = [v11 balanceIdentifier];
  v16 = [v12 identifier];
  v21.receiver = self;
  v21.super_class = PKSelectedPaymentOfferRewards;
  v17 = [(PKSelectedPaymentOffer *)&v21 initWithType:2 selectedOfferIdentifier:v15 passDetails:v14 criteriaIdentifier:v16 sessionIdentifier:v13 serviceProviderData:MEMORY[0x1E695E0F8] storageType:0];

  if (v17)
  {
    objc_storeStrong(&v17->_rewardsRedemptionIntent, a3);
    [v12 selectedOfferStickyDuration];
    v17->_stickyDuration = v18;
    [v12 selectedOfferActiveDuration];
    v17->_activeDuration = v19;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if (v4)
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
  v4 = [(PKSelectedPaymentOffer *)self type];
  v5 = @"unknown";
  if (v4 == 1)
  {
    v5 = @"installment";
  }

  if (v4 == 2)
  {
    v5 = @"rewards";
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  v6 = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
  [v3 appendFormat:@"selectedOfferIdentifier: '%@'; ", v6];

  [v3 appendFormat:@"rewardsRedemptionIntent: '%@'; ", self->_rewardsRedemptionIntent];
  v7 = [(PKSelectedPaymentOffer *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", v7];

  v8 = [(PKSelectedPaymentOffer *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", v8];

  v9 = [(PKSelectedPaymentOffer *)self sessionIdentifier];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", v9];

  v10 = [(PKSelectedPaymentOffer *)self userSelectionDate];
  [v3 appendFormat:@"userSelectionDate: '%@'; ", v10];

  v11 = [(PKSelectedPaymentOffer *)self createdDate];
  [v3 appendFormat:@"createdDate: '%@'; ", v11];

  [v3 appendFormat:@"stickyDuration: %ld; ", self->_stickyDuration];
  [v3 appendFormat:@"activeDuration: %ld; ", self->_activeDuration];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSelectedPaymentOfferRewards)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSelectedPaymentOfferRewards;
  v5 = [(PKSelectedPaymentOffer *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedemptionIntent"];
    rewardsRedemptionIntent = v5->_rewardsRedemptionIntent;
    v5->_rewardsRedemptionIntent = v6;

    v5->_stickyDuration = [v4 decodeIntegerForKey:@"stickyDuration"];
    v5->_activeDuration = [v4 decodeIntegerForKey:@"activeDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSelectedPaymentOfferRewards;
  v4 = a3;
  [(PKSelectedPaymentOffer *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_rewardsRedemptionIntent forKey:{@"rewardsRedemptionIntent", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_stickyDuration forKey:@"stickyDuration"];
  [v4 encodeInteger:self->_activeDuration forKey:@"activeDuration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKPaymentOfferRewardsRedemptionIntent *)self->_rewardsRedemptionIntent copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  *(v5 + 88) = self->_stickyDuration;
  *(v5 + 96) = self->_activeDuration;
  return v5;
}

@end