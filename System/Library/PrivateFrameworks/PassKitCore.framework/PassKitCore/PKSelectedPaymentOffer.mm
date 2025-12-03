@interface PKSelectedPaymentOffer
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isSticky;
- (PKSelectedPaymentOffer)initWithCoder:(id)coder;
- (PKSelectedPaymentOffer)initWithType:(unint64_t)type selectedOfferIdentifier:(id)identifier passDetails:(id)details criteriaIdentifier:(id)criteriaIdentifier sessionIdentifier:(id)sessionIdentifier serviceProviderData:(id)data storageType:(unint64_t)storageType;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)installmentSelectedPaymentOffer;
- (id)rewardsSelectedPaymentOffer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSelectedPaymentOffer

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOffer;
  return [(PKSelectedPaymentOffer *)&v3 init];
}

- (PKSelectedPaymentOffer)initWithType:(unint64_t)type selectedOfferIdentifier:(id)identifier passDetails:(id)details criteriaIdentifier:(id)criteriaIdentifier sessionIdentifier:(id)sessionIdentifier serviceProviderData:(id)data storageType:(unint64_t)storageType
{
  identifierCopy = identifier;
  detailsCopy = details;
  criteriaIdentifierCopy = criteriaIdentifier;
  sessionIdentifierCopy = sessionIdentifier;
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = PKSelectedPaymentOffer;
  v19 = [(PKSelectedPaymentOffer *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    objc_storeStrong(&v19->_selectedOfferIdentifier, identifier);
    objc_storeStrong(&v20->_passDetails, details);
    objc_storeStrong(&v20->_criteriaIdentifier, criteriaIdentifier);
    objc_storeStrong(&v20->_sessionIdentifier, sessionIdentifier);
    objc_storeStrong(&v20->_serviceProviderData, data);
    v20->_storageType = storageType;
    date = [MEMORY[0x1E695DF00] date];
    createdDate = v20->_createdDate;
    v20->_createdDate = date;
  }

  return v20;
}

- (BOOL)isExpired
{
  type = self->_type;
  if (type == 2)
  {
    selfCopy = self;
    [(PKSelectedPaymentOffer *)selfCopy activeDuration];
    if (v11 == 0.0 || !selfCopy->_createdDate)
    {
      goto LABEL_10;
    }

    v12 = v11;
    date = [MEMORY[0x1E695DF00] date];
    v14 = [(NSDate *)selfCopy->_createdDate dateByAddingTimeInterval:v12];
    v15 = [date compare:v14];

    if (v15 == 1)
    {
      return 1;
    }
  }

  else if (type == 1)
  {
    installmentSelectedPaymentOffer = [(PKSelectedPaymentOffer *)self installmentSelectedPaymentOffer];
    selfCopy = installmentSelectedPaymentOffer;
    if (!installmentSelectedPaymentOffer)
    {
      goto LABEL_16;
    }

    selectionType = [(PKSelectedPaymentOffer *)installmentSelectedPaymentOffer selectionType];
    if (selectionType == 2)
    {
LABEL_7:
      selectedInstallmentOffer = [(PKSelectedPaymentOffer *)selfCopy selectedInstallmentOffer];
      expirationDate = [selectedInstallmentOffer expirationDate];

      if (expirationDate)
      {
        date2 = [MEMORY[0x1E695DF00] date];
        v10 = [date2 compare:expirationDate] == 1;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_19;
    }

    if (selectionType != 1)
    {
      if (!selectionType)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    [(PKSelectedPaymentOffer *)selfCopy setupAfterPurchaseActiveDuration];
    if (v16 == 0.0 || !self->_createdDate)
    {
LABEL_16:
      v10 = 0;
LABEL_19:

      return v10;
    }

    v18 = v16;
    date3 = [MEMORY[0x1E695DF00] date];
    v20 = [(NSDate *)self->_createdDate dateByAddingTimeInterval:v18];
    v21 = [date3 compare:v20];

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

    installmentSelectedPaymentOffer = [(PKSelectedPaymentOffer *)self installmentSelectedPaymentOffer];
    if (!installmentSelectedPaymentOffer)
    {
      return 0;
    }

    v5 = installmentSelectedPaymentOffer;
    selectedInstallmentOffer = [installmentSelectedPaymentOffer selectedInstallmentOffer];
    selectionType = [v5 selectionType];
    if (selectionType != 2)
    {
      if (selectionType == 1)
      {
        [v5 setupAfterPurchaseStickyDuration];
        goto LABEL_10;
      }

      v8 = 0.0;
      if (selectionType)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [selectedInstallmentOffer stickyDuration];
LABEL_10:
    v8 = v9;
    goto LABEL_11;
  }

  [(PKSelectedPaymentOffer *)self stickyDuration];
  v8 = v10;
LABEL_12:
  if (v8 != 0.0 && self->_userSelectionDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v14 = [(NSDate *)self->_userSelectionDate dateByAddingTimeInterval:v8];
    v11 = [date compare:v14] == -1;

    return v11;
  }

  return 0;
}

- (id)installmentSelectedPaymentOffer
{
  if (self->_type == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)rewardsSelectedPaymentOffer
{
  if (self->_type == 2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
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

- (PKSelectedPaymentOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKSelectedPaymentOffer;
  v5 = [(PKSelectedPaymentOffer *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOfferIdentifier"];
    selectedOfferIdentifier = v5->_selectedOfferIdentifier;
    v5->_selectedOfferIdentifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteriaIdentifier"];
    criteriaIdentifier = v5->_criteriaIdentifier;
    v5->_criteriaIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passDetails"];
    passDetails = v5->_passDetails;
    v5->_passDetails = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v19;

    v5->_storageType = [coderCopy decodeIntegerForKey:@"storageType"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userSelectionDate"];
    userSelectionDate = v5->_userSelectionDate;
    v5->_userSelectionDate = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selectedOfferIdentifier = self->_selectedOfferIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:selectedOfferIdentifier forKey:@"selectedOfferIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_criteriaIdentifier forKey:@"criteriaIdentifier"];
  [coderCopy encodeObject:self->_passDetails forKey:@"passDetails"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [coderCopy encodeInteger:self->_storageType forKey:@"storageType"];
  [coderCopy encodeObject:self->_userSelectionDate forKey:@"userSelectionDate"];
  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_selectedOfferIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_type;
  v5[7] = self->_storageType;
  v8 = [(NSString *)self->_criteriaIdentifier copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PKSelectedPaymentOfferPaymentPassDetails *)self->_passDetails copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSDictionary *)self->_serviceProviderData copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSDate *)self->_userSelectionDate copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NSDate *)self->_createdDate copyWithZone:zone];
  v19 = v5[9];
  v5[9] = v18;

  return v5;
}

@end