@interface PKSelectedPaymentOfferInstallment
+ (id)confirmationRecordFollowUpWithInstallmentAssessment:(id)a3 passDetails:(id)a4 criteria:(id)a5 sessionIdentifier:(id)a6;
+ (id)postPurchaseFollowupWithCriteria:(id)a3 passDetails:(id)a4;
+ (id)selectedOfferWithInstallmentAssessment:(id)a3 selectedOfferIdentifier:(id)a4 criteria:(id)a5 passDetails:(id)a6 sessionIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresUserAction;
- (PKSelectedPaymentOfferInstallment)initWithCoder:(id)a3;
- (PKSelectedPaymentOfferInstallment)initWithSelectionType:(int64_t)a3 installmentAssessment:(id)a4 selectedOfferIdentifier:(id)a5 criteria:(id)a6 passDetails:(id)a7 sessionIdentifier:(id)a8;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)selectedInstallmentOffer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateSelectedOfferIdentifier:(id)a3;
@end

@implementation PKSelectedPaymentOfferInstallment

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSelectedPaymentOfferInstallment;
  return [(PKSelectedPaymentOffer *)&v3 _init];
}

- (PKSelectedPaymentOfferInstallment)initWithSelectionType:(int64_t)a3 installmentAssessment:(id)a4 selectedOfferIdentifier:(id)a5 criteria:(id)a6 passDetails:(id)a7 sessionIdentifier:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v28 = v14;
  v19 = [v14 installmentOfferWithIdentifier:v18];
  v20 = [v19 serviceProviderData];
  v21 = [v19 type] == 1;
  v22 = [v15 identifier];
  v29.receiver = self;
  v29.super_class = PKSelectedPaymentOfferInstallment;
  v23 = [(PKSelectedPaymentOffer *)&v29 initWithType:1 selectedOfferIdentifier:v18 passDetails:v17 criteriaIdentifier:v22 sessionIdentifier:v16 serviceProviderData:v20 storageType:v21];

  if (v23)
  {
    v23->_selectionType = a3;
    objc_storeStrong(&v23->_installmentAssessment, a4);
    [v15 setupAfterPurchaseActiveDuration];
    v23->_setupAfterPurchaseActiveDuration = v24;
    [v15 setupAfterPurchaseStickyDuration];
    v23->_setupAfterPurchaseStickyDuration = v25;
  }

  return v23;
}

+ (id)selectedOfferWithInstallmentAssessment:(id)a3 selectedOfferIdentifier:(id)a4 criteria:(id)a5 passDetails:(id)a6 sessionIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithSelectionType:0 installmentAssessment:v16 selectedOfferIdentifier:v15 criteria:v14 passDetails:v13 sessionIdentifier:v12];

  return v17;
}

+ (id)postPurchaseFollowupWithCriteria:(id)a3 passDetails:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSelectionType:1 installmentAssessment:0 selectedOfferIdentifier:0 criteria:v7 passDetails:v6 sessionIdentifier:0];

  return v8;
}

+ (id)confirmationRecordFollowUpWithInstallmentAssessment:(id)a3 passDetails:(id)a4 criteria:(id)a5 sessionIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 alloc];
  v15 = [v13 selectedOfferIdentifier];
  v16 = [v14 initWithSelectionType:2 installmentAssessment:v13 selectedOfferIdentifier:v15 criteria:v11 passDetails:v12 sessionIdentifier:v10];

  return v16;
}

- (id)selectedInstallmentOffer
{
  installmentAssessment = self->_installmentAssessment;
  v3 = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
  v4 = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment installmentOfferWithIdentifier:v3];

  return v4;
}

- (BOOL)requiresUserAction
{
  if (self->_selectionType != 2 || ![(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment isEligible])
  {
    return 0;
  }

  v3 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment action];

  if (v3)
  {
    return 1;
  }

  v6 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment offers];
  if ([v6 count])
  {
    v7 = [(PKSelectedPaymentOffer *)self selectedOfferIdentifier];
    v4 = v7 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateSelectedOfferIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment offers];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PKSelectedPaymentOfferInstallment_updateSelectedOfferIdentifier___block_invoke;
    v10[3] = &unk_1E79DEAE8;
    v6 = v4;
    v11 = v6;
    v7 = [v5 pk_containsObjectPassingTest:v10];

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
        v15 = self;
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
        v15 = self;
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

  [v3 appendFormat:@"installmentAssessment: '%@'; ", self->_installmentAssessment];
  v7 = [(PKSelectedPaymentOffer *)self criteriaIdentifier];
  [v3 appendFormat:@"criteriaIdentifier: '%@'; ", v7];

  v8 = [(PKSelectedPaymentOffer *)self passUniqueID];
  [v3 appendFormat:@"passUniqueID: '%@'; ", v8];

  v9 = [(PKSelectedPaymentOffer *)self sessionIdentifier];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", v9];

  v10 = [(PKSelectedPaymentOffer *)self storageType];
  v11 = @"persistent";
  if (!v10)
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

  v12 = [(PKSelectedPaymentOffer *)self userSelectionDate];
  [v3 appendFormat:@"userSelectionDate: '%@'; ", v12];

  v13 = [(PKSelectedPaymentOffer *)self createdDate];
  [v3 appendFormat:@"createdDate: '%@'; ", v13];

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

- (PKSelectedPaymentOfferInstallment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKSelectedPaymentOfferInstallment;
  v5 = [(PKSelectedPaymentOffer *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentAssessment"];
    installmentAssessment = v5->_installmentAssessment;
    v5->_installmentAssessment = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userEnteredAmount"];
    userEnteredAmount = v5->_userEnteredAmount;
    v5->_userEnteredAmount = v8;

    v5->_isPreconfiguredOffer = [v4 decodeBoolForKey:@"isPreconfiguredOffer"];
    v5->_selectionType = [v4 decodeIntegerForKey:@"installmentSelectionType"];
    v5->_setupAfterPurchaseActiveDuration = [v4 decodeIntegerForKey:@"setupAfterPurchaseActiveDuration"];
    v5->_setupAfterPurchaseStickyDuration = [v4 decodeIntegerForKey:@"setupAfterPurchaseStickyDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSelectedPaymentOfferInstallment;
  v4 = a3;
  [(PKSelectedPaymentOffer *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_installmentAssessment forKey:{@"installmentAssessment", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_userEnteredAmount forKey:@"userEnteredAmount"];
  [v4 encodeBool:self->_isPreconfiguredOffer forKey:@"isPreconfiguredOffer"];
  [v4 encodeInteger:self->_selectionType forKey:@"installmentSelectionType"];
  [v4 encodeInteger:self->_setupAfterPurchaseActiveDuration forKey:@"setupAfterPurchaseActiveDuration"];
  [v4 encodeInteger:self->_setupAfterPurchaseStickyDuration forKey:@"setupAfterPurchaseStickyDuration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  v8 = [(PKCurrencyAmount *)self->_userEnteredAmount copyWithZone:a3];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  *(v5 + 80) = self->_isPreconfiguredOffer;
  *(v5 + 88) = self->_selectionType;
  *(v5 + 120) = self->_setupAfterPurchaseActiveDuration;
  *(v5 + 112) = self->_setupAfterPurchaseStickyDuration;
  return v5;
}

@end