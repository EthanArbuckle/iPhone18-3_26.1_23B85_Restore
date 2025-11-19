@interface PKPaymentOfferInstallmentAssessmentOffer
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferInstallmentAssessmentOffer)initWithCoder:(id)a3;
- (PKPaymentOfferInstallmentAssessmentOffer)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferInstallmentAssessmentOffer

- (PKPaymentOfferInstallmentAssessmentOffer)initWithDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PKPaymentOfferInstallmentAssessmentOffer;
  v5 = [(PKPaymentOfferInstallmentAssessmentOffer *)&v40 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKURLForKey:@"serviceProviderURL"];
    serviceProviderURL = v5->_serviceProviderURL;
    v5->_serviceProviderURL = v8;

    v10 = [v4 PKStringForKey:@"type"];
    v5->_type = PKPaymentOfferInstallmentAssessmentOfferTypeFromString(v10);

    v11 = [v4 PKDateForKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v11;

    v13 = [v4 PKDateForKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;

    v5->_stickyDuration = [v4 PKIntegerForKey:@"stickyDuration"];
    v15 = [v4 PKCurrencyAmountForKey:@"totalCost"];
    totalCost = v5->_totalCost;
    v5->_totalCost = v15;

    v5->_installmentCount = [v4 PKIntegerForKey:@"installmentCount"];
    v17 = [v4 PKStringForKey:@"installmentPeriod"];
    v5->_installmentPeriod = PKPaymentOfferPeriodFromString(v17);

    v5->_installmentInterval = [v4 PKIntegerForKey:@"installmentInterval"];
    v18 = [v4 PKCurrencyAmountForKey:@"installmentAmount"];
    installmentAmount = v5->_installmentAmount;
    v5->_installmentAmount = v18;

    v20 = [v4 PKCurrencyAmountForKey:@"totalInterestAndFeesAmount"];
    totalInterestAndFeesAmount = v5->_totalInterestAndFeesAmount;
    v5->_totalInterestAndFeesAmount = v20;

    v22 = [v4 PKDictionaryForKey:@"feeDetails"];
    if ([v22 count])
    {
      v23 = [[PKPaymentOfferInstallmentFeeDetails alloc] initWithDictionary:v22];
      feeDetails = v5->_feeDetails;
      v5->_feeDetails = v23;
    }

    v25 = [v4 PKDictionaryForKey:@"interestDetails"];
    if ([v25 count])
    {
      v26 = [[PKPaymentOfferInstallmentInterestDetails alloc] initWithDictionary:v25];
      interestDetails = v5->_interestDetails;
      v5->_interestDetails = v26;
    }

    v28 = [v4 PKDictionaryForKey:@"downpaymentDetails"];
    if ([v28 count])
    {
      v29 = [[PKPaymentOfferInstallmentDownpaymentDetails alloc] initWithDictionary:v28];
      downpaymentDetails = v5->_downpaymentDetails;
      v5->_downpaymentDetails = v29;
    }

    v31 = [v4 PKDictionaryForKey:@"merchantDetails"];
    if ([v31 count])
    {
      v32 = [[PKPaymentOfferInstallmentMerchantDetails alloc] initWithDictionary:v31];
      merchantDetails = v5->_merchantDetails;
      v5->_merchantDetails = v32;
    }

    v34 = [v4 PKDictionaryForKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v34;

    v36 = [v4 PKDictionaryForKey:@"dynamicContent"];
    if ([v36 count])
    {
      v37 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v36];
      dynamicContent = v5->_dynamicContent;
      v5->_dynamicContent = v37;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v4 = [(NSURL *)self->_serviceProviderURL absoluteString];
  [v3 setObject:v4 forKeyedSubscript:@"serviceProviderURL"];

  type = self->_type;
  v6 = @"noAmount";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"standard";
  }

  [v3 setObject:v7 forKeyedSubscript:@"type"];
  v8 = PKISO8601DateStringFromDate(self->_dueDate);
  [v3 setObject:v8 forKeyedSubscript:@"dueDate"];

  v9 = PKISO8601DateStringFromDate(self->_expirationDate);
  [v3 setObject:v9 forKeyedSubscript:@"expirationDate"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stickyDuration];
  [v3 setObject:v10 forKeyedSubscript:@"stickyDuration"];

  v11 = [(PKCurrencyAmount *)self->_totalCost dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"totalCost"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_installmentCount];
  [v3 setObject:v12 forKeyedSubscript:@"installmentCount"];

  v13 = PKPaymentOfferPeriodToString(self->_installmentPeriod);
  [v3 setObject:v13 forKeyedSubscript:@"installmentPeriod"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_installmentInterval];
  [v3 setObject:v14 forKeyedSubscript:@"installmentInterval"];

  v15 = [(PKCurrencyAmount *)self->_installmentAmount dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"installmentAmount"];

  v16 = [(PKCurrencyAmount *)self->_totalInterestAndFeesAmount dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"totalInterestAndFeesAmount"];

  v17 = [(PKPaymentOfferInstallmentFeeDetails *)self->_feeDetails dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"feeDetails"];

  v18 = [(PKPaymentOfferInstallmentInterestDetails *)self->_interestDetails dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"interestDetails"];

  v19 = [(PKPaymentOfferInstallmentDownpaymentDetails *)self->_downpaymentDetails dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"downpaymentDetails"];

  v20 = [(PKPaymentOfferInstallmentMerchantDetails *)self->_merchantDetails dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"merchantDetails"];

  [v3 setObject:self->_serviceProviderData forKeyedSubscript:@"serviceProviderData"];
  v21 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"dynamicContent"];

  [v3 setObject:self->_preferredLanguage forKeyedSubscript:@"preferredLanguage"];
  v22 = [v3 copy];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
LABEL_82:

            goto LABEL_83;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_83;
          }
        }

        serviceProviderURL = self->_serviceProviderURL;
        v13 = v6->_serviceProviderURL;
        if (serviceProviderURL && v13)
        {
          if (([(NSURL *)serviceProviderURL isEqual:?]& 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else if (serviceProviderURL != v13)
        {
          goto LABEL_80;
        }

        if (self->_type == v6->_type)
        {
          dueDate = self->_dueDate;
          v15 = v6->_dueDate;
          if (dueDate && v15)
          {
            if (([(NSDate *)dueDate isEqual:?]& 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else if (dueDate != v15)
          {
            goto LABEL_80;
          }

          expirationDate = self->_expirationDate;
          v17 = v6->_expirationDate;
          if (expirationDate && v17)
          {
            if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else if (expirationDate != v17)
          {
            goto LABEL_80;
          }

          totalCost = self->_totalCost;
          v19 = v6->_totalCost;
          if (totalCost && v19)
          {
            if (![(PKCurrencyAmount *)totalCost isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (totalCost != v19)
          {
            goto LABEL_80;
          }

          if (self->_installmentCount != v6->_installmentCount || self->_installmentPeriod != v6->_installmentPeriod || self->_installmentInterval != v6->_installmentInterval || self->_stickyDuration != v6->_stickyDuration)
          {
            goto LABEL_80;
          }

          installmentAmount = self->_installmentAmount;
          v21 = v6->_installmentAmount;
          if (installmentAmount && v21)
          {
            if (![(PKCurrencyAmount *)installmentAmount isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (installmentAmount != v21)
          {
            goto LABEL_80;
          }

          totalInterestAndFeesAmount = self->_totalInterestAndFeesAmount;
          v23 = v6->_totalInterestAndFeesAmount;
          if (totalInterestAndFeesAmount && v23)
          {
            if (![(PKCurrencyAmount *)totalInterestAndFeesAmount isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (totalInterestAndFeesAmount != v23)
          {
            goto LABEL_80;
          }

          feeDetails = self->_feeDetails;
          v25 = v6->_feeDetails;
          if (feeDetails && v25)
          {
            if (![(PKPaymentOfferInstallmentFeeDetails *)feeDetails isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (feeDetails != v25)
          {
            goto LABEL_80;
          }

          interestDetails = self->_interestDetails;
          v27 = v6->_interestDetails;
          if (interestDetails && v27)
          {
            if (![(PKPaymentOfferInstallmentInterestDetails *)interestDetails isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (interestDetails != v27)
          {
            goto LABEL_80;
          }

          downpaymentDetails = self->_downpaymentDetails;
          v29 = v6->_downpaymentDetails;
          if (downpaymentDetails && v29)
          {
            if (![(PKPaymentOfferInstallmentDownpaymentDetails *)downpaymentDetails isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (downpaymentDetails != v29)
          {
            goto LABEL_80;
          }

          merchantDetails = self->_merchantDetails;
          v31 = v6->_merchantDetails;
          if (merchantDetails && v31)
          {
            if (![(PKPaymentOfferInstallmentMerchantDetails *)merchantDetails isEqual:?])
            {
              goto LABEL_80;
            }
          }

          else if (merchantDetails != v31)
          {
            goto LABEL_80;
          }

          serviceProviderData = self->_serviceProviderData;
          v33 = v6->_serviceProviderData;
          if (serviceProviderData && v33)
          {
            if (([(NSDictionary *)serviceProviderData isEqual:?]& 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else if (serviceProviderData != v33)
          {
            goto LABEL_80;
          }

          dynamicContent = self->_dynamicContent;
          v35 = v6->_dynamicContent;
          if (dynamicContent && v35)
          {
            if ([(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?])
            {
              goto LABEL_75;
            }
          }

          else if (dynamicContent == v35)
          {
LABEL_75:
            preferredLanguage = self->_preferredLanguage;
            v37 = v6->_preferredLanguage;
            v8 = preferredLanguage;
            v38 = v37;
            v10 = v38;
            if (v8 == v38)
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              LOBYTE(v11) = 0;
              if (v8 && v38)
              {
                LOBYTE(v11) = [(NSString *)v8 isEqualToString:v38];
              }
            }

            goto LABEL_82;
          }
        }

LABEL_80:
        LOBYTE(v11) = 0;
LABEL_83:

        goto LABEL_84;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_84:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_serviceProviderURL];
  [v3 safelyAddObject:self->_dueDate];
  [v3 safelyAddObject:self->_expirationDate];
  [v3 safelyAddObject:self->_totalCost];
  [v3 safelyAddObject:self->_installmentAmount];
  [v3 safelyAddObject:self->_totalInterestAndFeesAmount];
  [v3 safelyAddObject:self->_feeDetails];
  [v3 safelyAddObject:self->_interestDetails];
  [v3 safelyAddObject:self->_downpaymentDetails];
  [v3 safelyAddObject:self->_merchantDetails];
  [v3 safelyAddObject:self->_serviceProviderData];
  [v3 safelyAddObject:self->_dynamicContent];
  [v3 safelyAddObject:self->_preferredLanguage];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_installmentCount - v4 + 32 * v4;
  v6 = self->_installmentPeriod - v5 + 32 * v5;
  v7 = self->_installmentInterval - v6 + 32 * v6;
  v8 = self->_type - v7 + 32 * v7;
  v9 = self->_stickyDuration - v8 + 32 * v8;

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  type = self->_type;
  v5 = @"noAmount";
  if (type != 1)
  {
    v5 = 0;
  }

  if (type)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"standard";
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v3 appendFormat:@"expiration: %@; ", self->_expirationDate];
  [v3 appendFormat:@"stickyDuration: %ld; ", self->_stickyDuration];
  v7 = [(PKCurrencyAmount *)self->_installmentAmount formattedStringValue];
  v8 = [(PKCurrencyAmount *)self->_totalCost formattedStringValue];
  [v3 appendFormat:@"IA: %@, TC: %@, C: %ld; ", v7, v8, self->_installmentCount];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentAssessmentOffer)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PKPaymentOfferInstallmentAssessmentOffer;
  v5 = [(PKPaymentOfferInstallmentAssessmentOffer *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderURL"];
    serviceProviderURL = v5->_serviceProviderURL;
    v5->_serviceProviderURL = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalCost"];
    totalCost = v5->_totalCost;
    v5->_totalCost = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentAmount"];
    installmentAmount = v5->_installmentAmount;
    v5->_installmentAmount = v16;

    v5->_installmentCount = [v4 decodeIntegerForKey:@"installmentCount"];
    v5->_installmentPeriod = [v4 decodeIntegerForKey:@"installmentPeriod"];
    v5->_installmentInterval = [v4 decodeIntegerForKey:@"installmentInterval"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feeDetails"];
    feeDetails = v5->_feeDetails;
    v5->_feeDetails = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downpaymentDetails"];
    downpaymentDetails = v5->_downpaymentDetails;
    v5->_downpaymentDetails = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantDetails"];
    merchantDetails = v5->_merchantDetails;
    v5->_merchantDetails = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalInterestAndFeesAmount"];
    totalInterestAndFeesAmount = v5->_totalInterestAndFeesAmount;
    v5->_totalInterestAndFeesAmount = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestDetails"];
    interestDetails = v5->_interestDetails;
    v5->_interestDetails = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v28 setWithObjects:{v29, v30, v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"serviceProviderData"];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredLanguage"];
    preferredLanguage = v5->_preferredLanguage;
    v5->_preferredLanguage = v37;

    v5->_stickyDuration = [v4 decodeIntegerForKey:@"stickyDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_serviceProviderURL forKey:@"serviceProviderURL"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_dueDate forKey:@"dueDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_totalCost forKey:@"totalCost"];
  [v5 encodeObject:self->_installmentAmount forKey:@"installmentAmount"];
  [v5 encodeInteger:self->_installmentCount forKey:@"installmentCount"];
  [v5 encodeInteger:self->_installmentPeriod forKey:@"installmentPeriod"];
  [v5 encodeInteger:self->_installmentInterval forKey:@"installmentInterval"];
  [v5 encodeInteger:self->_stickyDuration forKey:@"stickyDuration"];
  [v5 encodeObject:self->_feeDetails forKey:@"feeDetails"];
  [v5 encodeObject:self->_downpaymentDetails forKey:@"downpaymentDetails"];
  [v5 encodeObject:self->_merchantDetails forKey:@"merchantDetails"];
  [v5 encodeObject:self->_totalInterestAndFeesAmount forKey:@"totalInterestAndFeesAmount"];
  [v5 encodeObject:self->_interestDetails forKey:@"interestDetails"];
  [v5 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [v5 encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
  [v5 encodeObject:self->_preferredLanguage forKey:@"preferredLanguage"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferInstallmentAssessmentOffer allocWithZone:](PKPaymentOfferInstallmentAssessmentOffer init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSURL *)self->_serviceProviderURL copyWithZone:a3];
  serviceProviderURL = v5->_serviceProviderURL;
  v5->_serviceProviderURL = v8;

  v5->_type = self->_type;
  v5->_stickyDuration = self->_stickyDuration;
  v10 = [(NSDate *)self->_dueDate copyWithZone:a3];
  dueDate = v5->_dueDate;
  v5->_dueDate = v10;

  v12 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v12;

  v14 = [(PKCurrencyAmount *)self->_totalCost copyWithZone:a3];
  totalCost = v5->_totalCost;
  v5->_totalCost = v14;

  v16 = [(PKCurrencyAmount *)self->_installmentAmount copyWithZone:a3];
  installmentAmount = v5->_installmentAmount;
  v5->_installmentAmount = v16;

  v5->_installmentCount = self->_installmentCount;
  v5->_installmentPeriod = self->_installmentPeriod;
  v5->_installmentInterval = self->_installmentInterval;
  v18 = [(PKPaymentOfferInstallmentFeeDetails *)self->_feeDetails copyWithZone:a3];
  feeDetails = v5->_feeDetails;
  v5->_feeDetails = v18;

  v20 = [(PKPaymentOfferInstallmentDownpaymentDetails *)self->_downpaymentDetails copyWithZone:a3];
  downpaymentDetails = v5->_downpaymentDetails;
  v5->_downpaymentDetails = v20;

  v22 = [(PKPaymentOfferInstallmentMerchantDetails *)self->_merchantDetails copyWithZone:a3];
  merchantDetails = v5->_merchantDetails;
  v5->_merchantDetails = v22;

  v24 = [(PKCurrencyAmount *)self->_totalInterestAndFeesAmount copyWithZone:a3];
  totalInterestAndFeesAmount = v5->_totalInterestAndFeesAmount;
  v5->_totalInterestAndFeesAmount = v24;

  v26 = [(PKPaymentOfferInstallmentInterestDetails *)self->_interestDetails copyWithZone:a3];
  interestDetails = v5->_interestDetails;
  v5->_interestDetails = v26;

  v28 = [(NSDictionary *)self->_serviceProviderData copyWithZone:a3];
  serviceProviderData = v5->_serviceProviderData;
  v5->_serviceProviderData = v28;

  v30 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:a3];
  dynamicContent = v5->_dynamicContent;
  v5->_dynamicContent = v30;

  v32 = [(NSString *)self->_preferredLanguage copyWithZone:a3];
  preferredLanguage = v5->_preferredLanguage;
  v5->_preferredLanguage = v32;

  return v5;
}

@end