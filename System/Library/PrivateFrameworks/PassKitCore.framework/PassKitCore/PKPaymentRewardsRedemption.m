@interface PKPaymentRewardsRedemption
- (BOOL)hasOriginalTransactionDetails;
- (BOOL)isEqual:(id)a3;
- (NSDate)createdAt;
- (PKPaymentRewardsRedemption)initWithCoder:(id)a3;
- (PKPaymentRewardsRedemption)initWithDictionary:(id)a3;
- (PKPaymentRewardsRedemption)initWithIdentifier:(id)a3 balanceIdentifier:(id)a4 status:(unint64_t)a5 statusLink:(id)a6 paymentHash:(id)a7;
- (PKPaymentRewardsRedemption)initWithIdentifier:(id)a3 balanceIdentifier:(id)a4 status:(unint64_t)a5 statusLink:(id)a6 paymentHash:(id)a7 createdAt:(id)a8 updatedAt:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOriginalTransactionDetails:(id)a3;
@end

@implementation PKPaymentRewardsRedemption

- (PKPaymentRewardsRedemption)initWithIdentifier:(id)a3 balanceIdentifier:(id)a4 status:(unint64_t)a5 statusLink:(id)a6 paymentHash:(id)a7
{
  v12 = MEMORY[0x1E695DF00];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v12 now];
  v18 = [(PKPaymentRewardsRedemption *)self initWithIdentifier:v16 balanceIdentifier:v15 status:a5 statusLink:v14 paymentHash:v13 createdAt:v17 updatedAt:v17];

  return v18;
}

- (PKPaymentRewardsRedemption)initWithIdentifier:(id)a3 balanceIdentifier:(id)a4 status:(unint64_t)a5 statusLink:(id)a6 paymentHash:(id)a7 createdAt:(id)a8 updatedAt:(id)a9
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v39.receiver = self;
  v39.super_class = PKPaymentRewardsRedemption;
  v21 = [(PKPaymentRewardsRedemption *)&v39 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    balanceIdentifier = v21->_balanceIdentifier;
    v21->_balanceIdentifier = v24;

    v21->_status = a5;
    v26 = [v17 copy];
    statusLink = v21->_statusLink;
    v21->_statusLink = v26;

    v28 = [v18 copy];
    paymentHash = v21->_paymentHash;
    v21->_paymentHash = v28;

    v30 = [v19 copy];
    createdAt = v21->_createdAt;
    v21->_createdAt = v30;

    v32 = [v20 copy];
    updatedAt = v21->_updatedAt;
    v21->_updatedAt = v32;
  }

  v34 = v21->_identifier;
  if (v34 && v21->_balanceIdentifier && v21->_statusLink)
  {
    v35 = v21;
  }

  else
  {
    v36 = PKLogFacilityTypeGetObject(0x33uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v21->_balanceIdentifier;
      *buf = 138412546;
      v41 = v34;
      v42 = 2112;
      v43 = v37;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Got Invalid Payment Rewards Redemption, with identifier: %@, balanceIdentifier: %@", buf, 0x16u);
    }

    v35 = 0;
  }

  return v35;
}

- (PKPaymentRewardsRedemption)initWithDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PKPaymentRewardsRedemption;
  v5 = [(PKPaymentRewardsRedemption *)&v39 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"balanceIdentifier"];
    balanceIdentifier = v5->_balanceIdentifier;
    v5->_balanceIdentifier = v8;

    v10 = [v4 PKStringForKey:@"status"];
    v5->_status = PKPaymentRewardsRedemptionStatusFromString(v10);

    v11 = [v4 PKURLForKey:@"statusLink"];
    statusLink = v5->_statusLink;
    v5->_statusLink = v11;

    v13 = [v4 PKStringForKey:@"paymentHash"];
    paymentHash = v5->_paymentHash;
    v5->_paymentHash = v13;

    v15 = [[PKPaymentRewardsRedemptionDetails alloc] initWithDictionary:v4];
    details = v5->_details;
    v5->_details = v15;

    v17 = [v4 PKDateForKey:@"lastUpdatedAt"];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v17;

    if (!v5->_updatedAt)
    {
      v19 = [v4 PKStringForKey:@"lastUpdatedAt"];
      v20 = PKISO8601DateFromDateStringContainingFractionalSeconds(v19);
      v21 = v5->_updatedAt;
      v5->_updatedAt = v20;

      if (!v5->_updatedAt)
      {
        v22 = [MEMORY[0x1E695DF00] now];
        v23 = v5->_updatedAt;
        v5->_updatedAt = v22;
      }
    }

    v24 = [v4 PKDateForKey:@"createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v24;

    if (!v5->_createdAt)
    {
      v26 = [v4 PKStringForKey:@"createdAt"];
      v27 = PKISO8601DateFromDateStringContainingFractionalSeconds(v26);
      v28 = v5->_createdAt;
      v5->_createdAt = v27;

      if (!v5->_createdAt)
      {
        v29 = [(PKPaymentRewardsRedemptionDetails *)v5->_details originalTransaction];
        v30 = [v29 timestamp];
        v31 = v5->_createdAt;
        v5->_createdAt = v30;

        if (!v5->_createdAt)
        {
          v32 = [MEMORY[0x1E695DF00] now];
          v33 = v5->_createdAt;
          v5->_createdAt = v32;
        }
      }
    }
  }

  v34 = v5->_identifier;
  if (v34 && v5->_balanceIdentifier && v5->_statusLink)
  {
    v35 = v5;
  }

  else
  {
    v36 = PKLogFacilityTypeGetObject(0x33uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v5->_balanceIdentifier;
      *buf = 138412546;
      v41 = v34;
      v42 = 2112;
      v43 = v37;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Got Invalid Payment Rewards Redemption, with identifier: %@, balanceIdentifier: %@", buf, 0x16u);
    }

    v35 = 0;
  }

  return v35;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_balanceIdentifier forKeyedSubscript:@"balanceIdentifier"];
  v4 = PKPaymentRewardsRedemptionStatusToString(self->_status);
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  v5 = [(NSURL *)self->_statusLink absoluteString];
  [v3 setObject:v5 forKeyedSubscript:@"statusLink"];

  [v3 setObject:self->_paymentHash forKeyedSubscript:@"paymentHash"];
  v6 = PKW3CDateStringFromDate(self->_createdAt);
  [v3 setObject:v6 forKeyedSubscript:@"createdAt"];

  v7 = PKW3CDateStringFromDate(self->_updatedAt);
  [v3 setObject:v7 forKeyedSubscript:@"lastUpdatedAt"];

  v8 = [(PKPaymentRewardsRedemptionDetails *)self->_details dictionaryRepresentation];
  [v3 addEntriesFromDictionary:v8];

  v9 = [v3 copy];

  return v9;
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
        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_41;
        }

        balanceIdentifier = self->_balanceIdentifier;
        v11 = v6->_balanceIdentifier;
        if (balanceIdentifier && v11)
        {
          if (([(NSString *)balanceIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (balanceIdentifier != v11)
        {
          goto LABEL_41;
        }

        statusLink = self->_statusLink;
        v13 = v6->_statusLink;
        if (statusLink && v13)
        {
          if (([(NSURL *)statusLink isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (statusLink != v13)
        {
          goto LABEL_41;
        }

        paymentHash = self->_paymentHash;
        v15 = v6->_paymentHash;
        if (paymentHash && v15)
        {
          if (([(NSString *)paymentHash isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (paymentHash != v15)
        {
          goto LABEL_41;
        }

        createdAt = self->_createdAt;
        v17 = v6->_createdAt;
        if (createdAt && v17)
        {
          if (([(NSDate *)createdAt isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (createdAt != v17)
        {
          goto LABEL_41;
        }

        updatedAt = self->_updatedAt;
        v19 = v6->_updatedAt;
        if (updatedAt && v19)
        {
          if (([(NSDate *)updatedAt isEqual:?]& 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (updatedAt != v19)
        {
          goto LABEL_41;
        }

        details = self->_details;
        v21 = v6->_details;
        if (details && v21)
        {
          if ([(PKPaymentRewardsRedemptionDetails *)details isEqual:?])
          {
LABEL_39:
            v9 = self->_status == v6->_status;
LABEL_42:

            goto LABEL_43;
          }
        }

        else if (details == v21)
        {
          goto LABEL_39;
        }

LABEL_41:
        v9 = 0;
        goto LABEL_42;
      }
    }

    v9 = 0;
  }

LABEL_43:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_balanceIdentifier];
  [v3 safelyAddObject:self->_statusLink];
  [v3 safelyAddObject:self->_paymentHash];
  [v3 safelyAddObject:self->_createdAt];
  [v3 safelyAddObject:self->_updatedAt];
  [v3 safelyAddObject:self->_details];
  v8.receiver = self;
  v8.super_class = PKPaymentRewardsRedemption;
  v4 = [(PKPaymentRewardsRedemption *)&v8 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_status - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"balanceIdentifier: '%@'; ", self->_balanceIdentifier];
  v4 = PKPaymentRewardsRedemptionStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v4];

  [v3 appendFormat:@"statusLink: '%@'; ", self->_statusLink];
  [v3 appendFormat:@"paymentHash: '%@'; ", self->_paymentHash];
  [v3 appendFormat:@"created at: '%@'; ", self->_createdAt];
  [v3 appendFormat:@"updated at: '%@'; ", self->_updatedAt];
  [v3 appendFormat:@"details: '%@'; ", self->_details];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v7 = PKPaymentRewardsRedemptionStatusToString(self->_status);
  [v6 appendFormat:@"status: '%@'; ", v7];

  [v6 appendFormat:@"created at: '%@'; ", self->_createdAt];
  [v6 appendFormat:@"updated at: '%@'; ", self->_updatedAt];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (PKPaymentRewardsRedemption)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentRewardsRedemption;
  v5 = [(PKPaymentRewardsRedemption *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceIdentifier"];
    balanceIdentifier = v5->_balanceIdentifier;
    v5->_balanceIdentifier = v8;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusLink"];
    statusLink = v5->_statusLink;
    v5->_statusLink = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentHash"];
    paymentHash = v5->_paymentHash;
    v5->_paymentHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedAt"];
    updatedAt = v5->_updatedAt;
    v5->_updatedAt = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"details"];
    details = v5->_details;
    v5->_details = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_balanceIdentifier forKey:@"balanceIdentifier"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeObject:self->_statusLink forKey:@"statusLink"];
  [v5 encodeObject:self->_paymentHash forKey:@"paymentHash"];
  [v5 encodeObject:self->_createdAt forKey:@"createdAt"];
  [v5 encodeObject:self->_updatedAt forKey:@"lastUpdatedAt"];
  [v5 encodeObject:self->_details forKey:@"details"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_balanceIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v5[3] = self->_status;
  v10 = [(NSURL *)self->_statusLink copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_paymentHash copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSDate *)self->_createdAt copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSDate *)self->_updatedAt copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(PKPaymentRewardsRedemptionDetails *)self->_details copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

- (NSDate)createdAt
{
  createdAt = self->_createdAt;
  if (!createdAt)
  {
    v4 = [(PKPaymentRewardsRedemptionDetails *)self->_details originalTransaction];
    v5 = [v4 timestamp];
    v6 = self->_createdAt;
    self->_createdAt = v5;

    createdAt = self->_createdAt;
  }

  return createdAt;
}

- (BOOL)hasOriginalTransactionDetails
{
  v2 = [(PKPaymentRewardsRedemption *)self details];
  v3 = [v2 originalTransaction];

  if (v3)
  {
    v4 = [v3 identifier];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setOriginalTransactionDetails:(id)a3
{
  details = self->_details;
  if (!a3 || details)
  {
    v8 = a3;
    [(PKPaymentRewardsRedemptionDetails *)details setOriginalTransaction:v8];
    v7 = v8;
  }

  else
  {
    v5 = a3;
    v6 = [[PKPaymentRewardsRedemptionDetails alloc] initWithIntended:0 redeemed:0 originalTransactionDetails:v5];

    v7 = self->_details;
    self->_details = v6;
  }
}

@end