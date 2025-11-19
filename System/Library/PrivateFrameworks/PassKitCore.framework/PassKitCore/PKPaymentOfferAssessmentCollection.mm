@interface PKPaymentOfferAssessmentCollection
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferAssessmentCollection)initWithCoder:(id)a3;
- (PKPaymentOfferAssessmentCollection)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)selectedPaymentOfferWithCriteria:(id)a3 passDetails:(id)a4 sessionIdentifier:(id)a5 previousSelectedOfferIdentifier:(id)a6 preconfiguredOfferState:(unint64_t)a7 updateReason:(unint64_t)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)populateChallenge:(id)a3 verifier:(id)a4;
@end

@implementation PKPaymentOfferAssessmentCollection

- (PKPaymentOfferAssessmentCollection)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentOfferAssessmentCollection;
  v5 = [(PKPaymentOfferAssessmentCollection *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 PKDictionaryForKey:@"installmentAssessment"];
    if ([v8 count])
    {
      v9 = [[PKPaymentOfferInstallmentAssessment alloc] initWithDictionary:v8 sessionIdentifier:v5->_sessionIdentifier];
      installmentAssessment = v5->_installmentAssessment;
      v5->_installmentAssessment = v9;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  v4 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"installmentAssessment"];

  v5 = [v3 copy];

  return v5;
}

- (id)selectedPaymentOfferWithCriteria:(id)a3 passDetails:(id)a4 sessionIdentifier:(id)a5 previousSelectedOfferIdentifier:(id)a6 preconfiguredOfferState:(unint64_t)a7 updateReason:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = 0;
  if (v15)
  {
    installmentAssessment = self->_installmentAssessment;
    if (installmentAssessment)
    {
      v20 = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment selectedOfferIdentifier];
      v21 = v20;
      if (a8 != 4 && a7 == 9 && v20)
      {

        v21 = 0;
      }

      else if (v20)
      {
        v22 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment installmentOfferWithIdentifier:v20];
        if (!v17)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      v22 = 0;
      if (!v17)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (!v22)
      {
        v22 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment installmentOfferWithIdentifier:v17];
        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = v17;

        v21 = v23;
LABEL_15:
        if ([v14 type] == 1)
        {
          v18 = [PKSelectedPaymentOfferInstallment selectedOfferWithInstallmentAssessment:self->_installmentAssessment selectedOfferIdentifier:v21 criteria:v14 passDetails:v15 sessionIdentifier:v16];
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }

LABEL_14:
      if (!v22)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

LABEL_19:

  return v18;
}

- (void)populateChallenge:(id)a3 verifier:(id)a4
{
  installmentAssessment = self->_installmentAssessment;
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment action];
  [v8 populateChallenge:v7 verifier:v6];
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
        sessionIdentifier = v6->_sessionIdentifier;
        v8 = self->_sessionIdentifier;
        v9 = sessionIdentifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_16:
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        installmentAssessment = self->_installmentAssessment;
        v14 = v6->_installmentAssessment;
        if (installmentAssessment && v14)
        {
          v12 = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment isEqual:?];
        }

        else
        {
          v12 = installmentAssessment == v14;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_sessionIdentifier];
  [v3 safelyAddObject:self->_installmentAssessment];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", self->_sessionIdentifier];
  [v3 appendFormat:@"installmentAssessment: '%@'; ", self->_installmentAssessment];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (PKPaymentOfferAssessmentCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferAssessmentCollection;
  v5 = [(PKPaymentOfferAssessmentCollection *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentAssessment"];
    installmentAssessment = v5->_installmentAssessment;
    v5->_installmentAssessment = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeObject:self->_installmentAssessment forKey:@"installmentAssessment"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferAssessmentCollection allocWithZone:](PKPaymentOfferAssessmentCollection init];
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v6;

  v8 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment copyWithZone:a3];
  installmentAssessment = v5->_installmentAssessment;
  v5->_installmentAssessment = v8;

  return v5;
}

@end