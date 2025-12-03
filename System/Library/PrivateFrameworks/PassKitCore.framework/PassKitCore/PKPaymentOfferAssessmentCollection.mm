@interface PKPaymentOfferAssessmentCollection
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferAssessmentCollection)initWithCoder:(id)coder;
- (PKPaymentOfferAssessmentCollection)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)selectedPaymentOfferWithCriteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)identifier previousSelectedOfferIdentifier:(id)offerIdentifier preconfiguredOfferState:(unint64_t)state updateReason:(unint64_t)reason;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateChallenge:(id)challenge verifier:(id)verifier;
@end

@implementation PKPaymentOfferAssessmentCollection

- (PKPaymentOfferAssessmentCollection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPaymentOfferAssessmentCollection;
  v5 = [(PKPaymentOfferAssessmentCollection *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [dictionaryCopy PKDictionaryForKey:@"installmentAssessment"];
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
  dictionaryRepresentation = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"installmentAssessment"];

  v5 = [v3 copy];

  return v5;
}

- (id)selectedPaymentOfferWithCriteria:(id)criteria passDetails:(id)details sessionIdentifier:(id)identifier previousSelectedOfferIdentifier:(id)offerIdentifier preconfiguredOfferState:(unint64_t)state updateReason:(unint64_t)reason
{
  criteriaCopy = criteria;
  detailsCopy = details;
  identifierCopy = identifier;
  offerIdentifierCopy = offerIdentifier;
  v18 = 0;
  if (detailsCopy)
  {
    installmentAssessment = self->_installmentAssessment;
    if (installmentAssessment)
    {
      selectedOfferIdentifier = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment selectedOfferIdentifier];
      v21 = selectedOfferIdentifier;
      if (reason != 4 && state == 9 && selectedOfferIdentifier)
      {

        v21 = 0;
      }

      else if (selectedOfferIdentifier)
      {
        v22 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment installmentOfferWithIdentifier:selectedOfferIdentifier];
        if (!offerIdentifierCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      v22 = 0;
      if (!offerIdentifierCopy)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (!v22)
      {
        v22 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment installmentOfferWithIdentifier:offerIdentifierCopy];
        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = offerIdentifierCopy;

        v21 = v23;
LABEL_15:
        if ([criteriaCopy type] == 1)
        {
          v18 = [PKSelectedPaymentOfferInstallment selectedOfferWithInstallmentAssessment:self->_installmentAssessment selectedOfferIdentifier:v21 criteria:criteriaCopy passDetails:detailsCopy sessionIdentifier:identifierCopy];
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

- (void)populateChallenge:(id)challenge verifier:(id)verifier
{
  installmentAssessment = self->_installmentAssessment;
  verifierCopy = verifier;
  challengeCopy = challenge;
  action = [(PKPaymentOfferInstallmentAssessment *)installmentAssessment action];
  [action populateChallenge:challengeCopy verifier:verifierCopy];
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

- (PKPaymentOfferAssessmentCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferAssessmentCollection;
  v5 = [(PKPaymentOfferAssessmentCollection *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentAssessment"];
    installmentAssessment = v5->_installmentAssessment;
    v5->_installmentAssessment = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeObject:self->_installmentAssessment forKey:@"installmentAssessment"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferAssessmentCollection allocWithZone:](PKPaymentOfferAssessmentCollection init];
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v6;

  v8 = [(PKPaymentOfferInstallmentAssessment *)self->_installmentAssessment copyWithZone:zone];
  installmentAssessment = v5->_installmentAssessment;
  v5->_installmentAssessment = v8;

  return v5;
}

@end