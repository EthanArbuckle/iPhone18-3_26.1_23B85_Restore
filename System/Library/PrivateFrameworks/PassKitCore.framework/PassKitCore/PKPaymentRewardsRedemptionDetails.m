@interface PKPaymentRewardsRedemptionDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentRewardsRedemptionDetails)initWithCoder:(id)a3;
- (PKPaymentRewardsRedemptionDetails)initWithDictionary:(id)a3;
- (PKPaymentRewardsRedemptionDetails)initWithIntended:(id)a3 redeemed:(id)a4 originalTransactionDetails:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentRewardsRedemptionDetails

- (PKPaymentRewardsRedemptionDetails)initWithIntended:(id)a3 redeemed:(id)a4 originalTransactionDetails:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PKPaymentRewardsRedemptionDetails;
  v11 = [(PKPaymentRewardsRedemptionDetails *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    intended = v11->_intended;
    v11->_intended = v12;

    v14 = [v9 copy];
    redeemed = v11->_redeemed;
    v11->_redeemed = v14;

    v16 = [v10 copy];
    originalTransaction = v11->_originalTransaction;
    v11->_originalTransaction = v16;
  }

  return v11;
}

- (PKPaymentRewardsRedemptionDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPaymentRewardsRedemptionDetails;
  v5 = [(PKPaymentRewardsRedemptionDetails *)&v20 init];
  if (!v5 || (v6 = [PKPaymentRewardsRedemptionUnit alloc], [v4 PKDictionaryForKey:@"redemptionRequest"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[PKPaymentRewardsRedemptionUnit initWithDictionary:](v6, "initWithDictionary:", v7), intended = v5->_intended, v5->_intended = v8, intended, v7, v10 = [PKPaymentRewardsRedemptionUnit alloc], objc_msgSend(v4, "PKDictionaryForKey:", @"redemptionDetails"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[PKPaymentRewardsRedemptionUnit initWithDictionary:](v10, "initWithDictionary:", v11), redeemed = v5->_redeemed, v5->_redeemed = v12, redeemed, v11, v14 = [PKPaymentRewardsRedemptionTransactionDetails alloc], objc_msgSend(v4, "PKDictionaryForKey:", @"originalTransaction"), v15 = objc_claimAutoreleasedReturnValue(), v16 = -[PKPaymentRewardsRedemptionTransactionDetails initWithDictionary:](v14, "initWithDictionary:", v15), originalTransaction = v5->_originalTransaction, v5->_originalTransaction = v16, originalTransaction, v15, v5->_intended) || v5->_redeemed || v5->_originalTransaction)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKPaymentRewardsRedemptionUnit *)self->_intended dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"redemptionRequest"];

  v5 = [(PKPaymentRewardsRedemptionUnit *)self->_redeemed dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"redemptionDetails"];

  v6 = [(PKPaymentRewardsRedemptionTransactionDetails *)self->_originalTransaction dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"originalTransaction"];

  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        intended = self->_intended;
        v8 = v6->_intended;
        if (intended && v8)
        {
          if (![(PKPaymentRewardsRedemptionUnit *)intended isEqual:?])
          {
            goto LABEL_18;
          }
        }

        else if (intended != v8)
        {
          goto LABEL_18;
        }

        redeemed = self->_redeemed;
        v11 = v6->_redeemed;
        if (redeemed && v11)
        {
          if ([(PKPaymentRewardsRedemptionUnit *)redeemed isEqual:?])
          {
LABEL_14:
            originalTransaction = self->_originalTransaction;
            v13 = v6->_originalTransaction;
            if (originalTransaction && v13)
            {
              v9 = [(PKPaymentRewardsRedemptionTransactionDetails *)originalTransaction isEqual:?];
            }

            else
            {
              v9 = originalTransaction == v13;
            }

            goto LABEL_19;
          }
        }

        else if (redeemed == v11)
        {
          goto LABEL_14;
        }

LABEL_18:
        v9 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_intended];
  [v3 safelyAddObject:self->_redeemed];
  [v3 safelyAddObject:self->_originalTransaction];
  v7.receiver = self;
  v7.super_class = PKPaymentRewardsRedemptionDetails;
  v4 = [(PKPaymentRewardsRedemptionDetails *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"intendedDetails: '%@'; ", self->_intended];
  [v3 appendFormat:@"redeemedDetails: '%@'; ", self->_redeemed];
  [v3 appendFormat:@"originalTransaction: '%@'; ", self->_originalTransaction];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentRewardsRedemptionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentRewardsRedemptionDetails;
  v5 = [(PKPaymentRewardsRedemptionDetails *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redemptionRequest"];
    intended = v5->_intended;
    v5->_intended = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redemptionDetails"];
    redeemed = v5->_redeemed;
    v5->_redeemed = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalTransaction"];
    originalTransaction = v5->_originalTransaction;
    v5->_originalTransaction = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  intended = self->_intended;
  v5 = a3;
  [v5 encodeObject:intended forKey:@"redemptionRequest"];
  [v5 encodeObject:self->_redeemed forKey:@"redemptionDetails"];
  [v5 encodeObject:self->_originalTransaction forKey:@"originalTransaction"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKPaymentRewardsRedemptionUnit *)self->_intended copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKPaymentRewardsRedemptionUnit *)self->_redeemed copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKPaymentRewardsRedemptionTransactionDetails *)self->_originalTransaction copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end