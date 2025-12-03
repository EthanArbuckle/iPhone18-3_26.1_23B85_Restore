@interface PKSelectedPaymentOfferInstallment
+ (id)confirmationRecordFollowUpWithInstallmentAssessment:(id)assessment passDetails:(id)details criteria:(id)criteria sessionIdentifier:(id)identifier;
+ (id)postPurchaseFollowupWithCriteria:(id)criteria passDetails:(id)details;
+ (id)selectedOfferWithInstallmentAssessment:(id)assessment selectedOfferIdentifier:(id)identifier criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)sessionIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresUserAction;
- (PKSelectedPaymentOfferInstallment)initWithCoder:(id)coder;
- (PKSelectedPaymentOfferInstallment)initWithSelectionType:(int64_t)type installmentAssessment:(id)assessment selectedOfferIdentifier:(id)identifier criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)sessionIdentifier;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)selectedInstallmentOffer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateSelectedOfferIdentifier:(id)identifier;
@end

@implementation PKSelectedPaymentOfferInstallment

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferInstallment;
  return [(PKSelectedPaymentOffer *)&v3 _init];
}

- (PKSelectedPaymentOfferInstallment)initWithSelectionType:(int64_t)type installmentAssessment:(id)assessment selectedOfferIdentifier:(id)identifier criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)sessionIdentifier
{
  assessmentCopy = assessment;
  criteriaCopy = criteria;
  sessionIdentifierCopy = sessionIdentifier;
  detailsCopy = details;
  identifierCopy = identifier;
  v28 = assessmentCopy;
  v19 = [assessmentCopy installmentOfferWithIdentifier:identifierCopy];
  serviceProviderData = [v19 serviceProviderData];
  v21 = [v19 type] == 1;
  identifier = [criteriaCopy identifier];
  v29.receiver = self;
  v29.super_class = PKSelectedPaymentOfferInstallment;
  v23 = [(PKSelectedPaymentOffer *)&v29 initWithType:1 selectedOfferIdentifier:identifierCopy passDetails:detailsCopy criteriaIdentifier:identifier sessionIdentifier:sessionIdentifierCopy serviceProviderData:serviceProviderData storageType:v21];

  if (v23)
  {
    v23->_selectionType = type;
    objc_storeStrong(&v23->_installmentAssessment, assessment);
    [criteriaCopy setupAfterPurchaseActiveDuration];
    v23->_setupAfterPurchaseActiveDuration = v24;
    [criteriaCopy setupAfterPurchaseStickyDuration];
    v23->_setupAfterPurchaseStickyDuration = v25;
  }

  return v23;
}

+ (id)selectedOfferWithInstallmentAssessment:(id)assessment selectedOfferIdentifier:(id)identifier criteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)sessionIdentifier
{
  sessionIdentifierCopy = sessionIdentifier;
  detailsCopy = details;
  criteriaCopy = criteria;
  identifierCopy = identifier;
  assessmentCopy = assessment;
  v17 = [[self alloc] initWithSelectionType:0 installmentAssessment:assessmentCopy selectedOfferIdentifier:identifierCopy criteria:criteriaCopy passDetails:detailsCopy sessionIdentifier:sessionIdentifierCopy];

  return v17;
}

+ (id)postPurchaseFollowupWithCriteria:(id)criteria passDetails:(id)details
{
  detailsCopy = details;
  criteriaCopy = criteria;
  v8 = [[self alloc] initWithSelectionType:1 installmentAssessment:0 selectedOfferIdentifier:0 criteria:criteriaCopy passDetails:detailsCopy sessionIdentifier:0];

  return v8;
}

+ (id)confirmationRecordFollowUpWithInstallmentAssessment:(id)assessment passDetails:(id)details criteria:(id)criteria sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  detailsCopy = details;
  assessmentCopy = assessment;
  v14 = [self alloc];
  selectedOfferIdentifier = [assessmentCopy selectedOfferIdentifier];
  v16 = [v14 initWithSelectionType:2 installmentAssessment:assessmentCopy selectedOfferIdentifier:selectedOfferIdentifier criteria:criteriaCopy passDetails:detailsCopy sessionIdentifier:identifierCopy];

  return v16;
}

- (id)selectedInstallmentOffer
{
  installmentAssessment = self->_installmentAssessment;
  selectedOfferIdentifier = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
  v4 = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment installmentOfferWithIdentifier:selectedOfferIdentifier];

  return v4;
}

- (BOOL)requiresUserAction
{
  if (self->_selectionType != 2 || ![(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment isEligible])
  {
    return 0;
  }

  action = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment action];

  if (action)
  {
    return 1;
  }

  offers = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment offers];
  if ([offers count])
  {
    selectedOfferIdentifier = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
    v4 = selectedOfferIdentifier == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateSelectedOfferIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    offers = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment offers];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PKSelectedPaymentOfferInstallment_updateSelectedOfferIdentifier___block_invoke;
    v10[3] = &unk_1E79DEAE8;
    v6 = identifierCopy;
    v11 = v6;
    v7 = [offers pk_containsObjectPassingTest:v10];

    if (v7)
    {
      [(PKSelectedPaymentOffer *)self setSelectedOfferIdentifier:v6];
      [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment updateSelectedOfferIdentifier:v6];
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        selfCopy2 = self;
        v9 = "Updating selected payment offer identifier to %@ for assessment %@";
LABEL_7:
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        selfCopy2 = self;
        v9 = "Cannot select offer identifier %@ on the installment assessment since the offer identifier doesnt exist %@";
        goto LABEL_7;
      }
    }
  }
}

uint64_t __67__PKSelectedPaymentOfferInstallment_updateSelectedOfferIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
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
        v14.receiver = self;
        v14.super_class = PKSelectedPaymentOfferInstallment;
        if ([(PKSelectedPaymentOffer *)&v14 isEqual:v6])
        {
          installmentAssessment = self->_installmentAssessment;
          v8 = v6->_installmentAssessment;
          if (installmentAssessment)
          {
            v9 = v8 == 0;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            if (installmentAssessment != v8)
            {
              goto LABEL_24;
            }
          }

          else if (![(PKPaymentOfferInstallmentAssessment *)installmentAssessment isEqual:?])
          {
            goto LABEL_24;
          }

          userEnteredAmount = self->_userEnteredAmount;
          v12 = v6->_userEnteredAmount;
          if (userEnteredAmount && v12)
          {
            if (![(PKCurrencyAmount *)userEnteredAmount isEqual:?])
            {
              goto LABEL_24;
            }
          }

          else if (userEnteredAmount != v12)
          {
            goto LABEL_24;
          }

          if (self->_isPreconfiguredOffer == v6->_isPreconfiguredOffer && self->_selectionType == v6->_selectionType && self->_setupAfterPurchaseActiveDuration == v6->_setupAfterPurchaseActiveDuration)
          {
            v10 = self->_setupAfterPurchaseStickyDuration == v6->_setupAfterPurchaseStickyDuration;
LABEL_25:

            goto LABEL_26;
          }
        }

LABEL_24:
        v10 = 0;
        goto LABEL_25;
      }
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_installmentAssessment];
  [v3 safelyAddObject:self->_userEnteredAmount];
  v11.receiver = self;
  v11.super_class = PKSelectedPaymentOfferInstallment;
  v4 = [(PKSelectedPaymentOffer *)&v11 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_isPreconfiguredOffer - v5 + 32 * v5;
  v7 = self->_selectionType - v6 + 32 * v6;
  v8 = self->_setupAfterPurchaseActiveDuration - v7 + 32 * v7;
  v9 = self->_setupAfterPurchaseStickyDuration - v8 + 32 * v8;

  return v9;
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

  [v3 appendFormat:@"installmentAssessment: '%@'; ", self->_installmentAssessment];
  criteriaIdentifier = [(PKSelectedPaymentOffer *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", criteriaIdentifier];

  passUniqueID = [(PKSelectedPaymentOffer *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", passUniqueID];

  sessionIdentifier = [(PKSelectedPaymentOffer *)self sessionIdentifier];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", sessionIdentifier];

  storageType = [(PKSelectedPaymentOffer *)self storageType];
  v11 = @"persistent";
  if (!storageType)
  {
    v11 = @"default";
  }

  [v3 appendFormat:@"storageType: '%@'; ", v11];
  if (self->_isPreconfiguredOffer)
  {
    [v3 appendFormat:@"isPreconfiguredOffer: '%@'; ", @"YES"];
  }

  if (self->_userEnteredAmount)
  {
    [v3 appendFormat:@"userEnteredAmount: '%@'; ", self->_userEnteredAmount];
  }

  userSelectionDate = [(PKSelectedPaymentOffer *)self userSelectionDate];
  [v3 appendFormat:@"userSelectionDate: '%@'; ", userSelectionDate];

  createdDate = [(PKSelectedPaymentOffer *)self createdDate];
  [v3 appendFormat:@"createdDate: '%@'; ", createdDate];

  selectionType = self->_selectionType;
  v15 = @"selectedOffer";
  if (selectionType == 1)
  {
    v15 = @"postPurchaseFollowup";
  }

  if (selectionType == 2)
  {
    v16 = @"confirmationRecordFollowUp";
  }

  else
  {
    v16 = v15;
  }

  [v3 appendFormat:@"selectionType: '%@'; ", v16];
  [v3 appendFormat:@"setupAfterPurchaseActiveDuration: %ld; ", self->_setupAfterPurchaseActiveDuration];
  [v3 appendFormat:@"setupAfterPurchaseStickyDuration: %ld; ", self->_setupAfterPurchaseStickyDuration];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKSelectedPaymentOfferInstallment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKSelectedPaymentOfferInstallment;
  v5 = [(PKSelectedPaymentOffer *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentAssessment"];
    installmentAssessment = v5->_installmentAssessment;
    v5->_installmentAssessment = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userEnteredAmount"];
    userEnteredAmount = v5->_userEnteredAmount;
    v5->_userEnteredAmount = v8;

    v5->_isPreconfiguredOffer = [coderCopy decodeBoolForKey:@"isPreconfiguredOffer"];
    v5->_selectionType = [coderCopy decodeIntegerForKey:@"installmentSelectionType"];
    v5->_setupAfterPurchaseActiveDuration = [coderCopy decodeIntegerForKey:@"setupAfterPurchaseActiveDuration"];
    v5->_setupAfterPurchaseStickyDuration = [coderCopy decodeIntegerForKey:@"setupAfterPurchaseStickyDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSelectedPaymentOfferInstallment;
  coderCopy = coder;
  [(PKSelectedPaymentOffer *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_installmentAssessment forKey:{@"installmentAssessment", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_userEnteredAmount forKey:@"userEnteredAmount"];
  [coderCopy encodeBool:self->_isPreconfiguredOffer forKey:@"isPreconfiguredOffer"];
  [coderCopy encodeInteger:self->_selectionType forKey:@"installmentSelectionType"];
  [coderCopy encodeInteger:self->_setupAfterPurchaseActiveDuration forKey:@"setupAfterPurchaseActiveDuration"];
  [coderCopy encodeInteger:self->_setupAfterPurchaseStickyDuration forKey:@"setupAfterPurchaseStickyDuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment copyWithZone:zone];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  v8 = [(PKCurrencyAmount *)self->_userEnteredAmount copyWithZone:zone];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  *(v5 + 80) = self->_isPreconfiguredOffer;
  *(v5 + 88) = self->_selectionType;
  *(v5 + 120) = self->_setupAfterPurchaseActiveDuration;
  *(v5 + 112) = self->_setupAfterPurchaseStickyDuration;
  return v5;
}

@end