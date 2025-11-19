@interface PKSelectedPaymentOffer
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (BOOL)isSticky;
- (PKSelectedPaymentOffer)initWithCoder:(id)a3;
- (PKSelectedPaymentOffer)initWithType:(unint64_t)a3 selectedOfferIdentifier:(id)a4 passDetails:(id)a5 criteriaIdentifier:(id)a6 sessionIdentifier:(id)a7 serviceProviderData:(id)a8 storageType:(unint64_t)a9;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)installmentSelectedPaymentOffer;
- (id)rewardsSelectedPaymentOffer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSelectedPaymentOffer

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOffer;
  return [(PKSelectedPaymentOffer *)&v3 init];
}

- (PKSelectedPaymentOffer)initWithType:(unint64_t)a3 selectedOfferIdentifier:(id)a4 passDetails:(id)a5 criteriaIdentifier:(id)a6 sessionIdentifier:(id)a7 serviceProviderData:(id)a8 storageType:(unint64_t)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25 = a8;
  v26.receiver = self;
  v26.super_class = PKSelectedPaymentOffer;
  v19 = [(PKSelectedPaymentOffer *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    objc_storeStrong(&v19->_selectedOfferIdentifier, a4);
    objc_storeStrong(&v20->_passDetails, a5);
    objc_storeStrong(&v20->_criteriaIdentifier, a6);
    objc_storeStrong(&v20->_sessionIdentifier, a7);
    objc_storeStrong(&v20->_serviceProviderData, a8);
    v20->_storageType = a9;
    v21 = [MEMORY[0x1E695DF00] date];
    createdDate = v20->_createdDate;
    v20->_createdDate = v21;
  }

  return v20;
}

- (BOOL)isExpired
{
  type = self->_type;
  if (type == 2)
  {
    v5 = self;
    [(PKSelectedPaymentOffer *)v5 activeDuration];
    if (v11 == 0.0 || !v5->_createdDate)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [(NSDate *)v5->_createdDate dateByAddingTimeInterval:v12];
    v15 = [v13 compare:v14];

    if (v15 == 1)
    {
      return 1;
    }
  }

  else if (type == 1)
  {
    v4 = [(PKSelectedPaymentOffer *)self installmentSelectedPaymentOffer];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v6 = [(PKSelectedPaymentOffer *)v4 selectionType];
    if (v6 == 2)
    {
LABEL_7:
      v7 = [(PKSelectedPaymentOffer *)v5 selectedInstallmentOffer];
      v8 = [v7 expirationDate];

      if (v8)
      {
        v9 = [MEMORY[0x1E695DF00] date];
        v10 = [v9 compare:v8] == 1;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_19;
    }

    if (v6 != 1)
    {
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    [(PKSelectedPaymentOffer *)v5 setupAfterPurchaseActiveDuration];
    if (v16 == 0.0 || !self->_createdDate)
    {
LABEL_16:
      v10 = 0;
LABEL_19:

      return v10;
    }

    v18 = v16;
    v19 = [MEMORY[0x1E695DF00] date];
    v20 = [(NSDate *)self->_createdDate dateByAddingTimeInterval:v18];
    v21 = [v19 compare:v20];

    if (v21 == 1)
    {
      v10 = 1;
      goto LABEL_19;
    }

LABEL_10:
  }

  return 0;
}

- (BOOL)isSticky
{
  type = self->_type;
  if (type != 2)
  {
    if (type != 1)
    {
      return 0;
    }

    v4 = [(PKSelectedPaymentOffer *)self installmentSelectedPaymentOffer];
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = [v4 selectedInstallmentOffer];
    v7 = [v5 selectionType];
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        [v5 setupAfterPurchaseStickyDuration];
        goto LABEL_10;
      }

      v8 = 0.0;
      if (v7)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [v6 stickyDuration];
LABEL_10:
    v8 = v9;
    goto LABEL_11;
  }

  [(PKSelectedPaymentOffer *)self stickyDuration];
  v8 = v10;
LABEL_12:
  if (v8 != 0.0 && self->_userSelectionDate)
  {
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [(NSDate *)self->_userSelectionDate dateByAddingTimeInterval:v8];
    v11 = [v13 compare:v14] == -1;

    return v11;
  }

  return 0;
}

- (id)installmentSelectedPaymentOffer
{
  if (self->_type == 1)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rewardsSelectedPaymentOffer
{
  if (self->_type == 2)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        selectedOfferIdentifier = v6->_selectedOfferIdentifier;
        v8 = self->_selectedOfferIdentifier;
        v9 = selectedOfferIdentifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_23;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_24;
          }
        }

        criteriaIdentifier = v6->_criteriaIdentifier;
        v8 = self->_criteriaIdentifier;
        v14 = criteriaIdentifier;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_23;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_24;
          }
        }

        sessionIdentifier = v6->_sessionIdentifier;
        v8 = self->_sessionIdentifier;
        v17 = sessionIdentifier;
        v10 = v17;
        if (v8 == v17)
        {

LABEL_28:
          serviceProviderData = self->_serviceProviderData;
          v21 = v6->_serviceProviderData;
          if (serviceProviderData && v21)
          {
            if (([(NSDictionary *)serviceProviderData isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (serviceProviderData != v21)
          {
            goto LABEL_24;
          }

          passDetails = self->_passDetails;
          v23 = v6->_passDetails;
          if (passDetails && v23)
          {
            if (![(PKSelectedPaymentOfferPaymentPassDetails *)passDetails isEqual:?])
            {
              goto LABEL_24;
            }
          }

          else if (passDetails != v23)
          {
            goto LABEL_24;
          }

          userSelectionDate = self->_userSelectionDate;
          v25 = v6->_userSelectionDate;
          if (userSelectionDate && v25)
          {
            if (([(NSDate *)userSelectionDate isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (userSelectionDate != v25)
          {
            goto LABEL_24;
          }

          createdDate = self->_createdDate;
          v27 = v6->_createdDate;
          if (createdDate && v27)
          {
            if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (createdDate != v27)
          {
            goto LABEL_24;
          }

          if (self->_type == v6->_type)
          {
            v12 = self->_storageType == v6->_storageType;
            goto LABEL_25;
          }

LABEL_24:
          v12 = 0;
LABEL_25:

          goto LABEL_26;
        }

        if (v8 && v17)
        {
          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_selectedOfferIdentifier];
  [v3 safelyAddObject:self->_criteriaIdentifier];
  [v3 safelyAddObject:self->_sessionIdentifier];
  [v3 safelyAddObject:self->_serviceProviderData];
  [v3 safelyAddObject:self->_passDetails];
  [v3 safelyAddObject:self->_userSelectionDate];
  [v3 safelyAddObject:self->_createdDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_storageType - v5 + 32 * v5;

  return v6;
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

  if (self->_storageType)
  {
    v12 = @"persistent";
  }

  else
  {
    v12 = @"default";
  }

  [v3 appendFormat:@"storageType: '%@'; ", v12];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSelectedPaymentOffer)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKSelectedPaymentOffer;
  v5 = [(PKSelectedPaymentOffer *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedOfferIdentifier"];
    selectedOfferIdentifier = v5->_selectedOfferIdentifier;
    v5->_selectedOfferIdentifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"criteriaIdentifier"];
    criteriaIdentifier = v5->_criteriaIdentifier;
    v5->_criteriaIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passDetails"];
    passDetails = v5->_passDetails;
    v5->_passDetails = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v19;

    v5->_storageType = [v4 decodeIntegerForKey:@"storageType"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userSelectionDate"];
    userSelectionDate = v5->_userSelectionDate;
    v5->_userSelectionDate = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  selectedOfferIdentifier = self->_selectedOfferIdentifier;
  v5 = a3;
  [v5 encodeObject:selectedOfferIdentifier forKey:@"selectedOfferIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_criteriaIdentifier forKey:@"criteriaIdentifier"];
  [v5 encodeObject:self->_passDetails forKey:@"passDetails"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [v5 encodeInteger:self->_storageType forKey:@"storageType"];
  [v5 encodeObject:self->_userSelectionDate forKey:@"userSelectionDate"];
  [v5 encodeObject:self->_createdDate forKey:@"createdDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_selectedOfferIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_type;
  v5[7] = self->_storageType;
  v8 = [(NSString *)self->_criteriaIdentifier copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PKSelectedPaymentOfferPaymentPassDetails *)self->_passDetails copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSDictionary *)self->_serviceProviderData copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSDate *)self->_userSelectionDate copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NSDate *)self->_createdDate copyWithZone:a3];
  v19 = v5[9];
  v5[9] = v18;

  return v5;
}

@end