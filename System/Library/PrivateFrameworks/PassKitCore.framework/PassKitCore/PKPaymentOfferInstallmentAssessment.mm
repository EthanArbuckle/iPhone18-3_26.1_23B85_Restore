@interface PKPaymentOfferInstallmentAssessment
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferInstallmentAssessment)initWithCoder:(id)coder;
- (PKPaymentOfferInstallmentAssessment)initWithDictionary:(id)dictionary sessionIdentifier:(id)identifier;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)ineligibleDynamicContent;
- (id)installmentOfferWithIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populatePreferredLanguage:(id)language;
@end

@implementation PKPaymentOfferInstallmentAssessment

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferInstallmentAssessment;
  return [(PKPaymentOfferInstallmentAssessment *)&v3 init];
}

- (PKPaymentOfferInstallmentAssessment)initWithDictionary:(id)dictionary sessionIdentifier:(id)identifier
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v65.receiver = self;
  v65.super_class = PKPaymentOfferInstallmentAssessment;
  v8 = [(PKPaymentOfferInstallmentAssessment *)&v65 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_48;
  }

  objc_storeStrong(&v8->_sessionIdentifier, identifier);
  v10 = [dictionaryCopy PKStringForKey:@"identifier"];
  identifier = v9->_identifier;
  v9->_identifier = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"offers"];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    do
    {
      v17 = 0;
      do
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[PKPaymentOfferInstallmentAssessmentOffer alloc] initWithDictionary:*(*(&v61 + 1) + 8 * v17)];
        [v12 safelyAddObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v15);
  }

  v19 = [dictionaryCopy PKStringForKey:@"offerEligibility"];
  v20 = v19;
  if (v19 == @"eligible")
  {
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_40:
    v22 = 0;
    goto LABEL_41;
  }

  v21 = [(__CFString *)v19 isEqualToString:@"eligible"];

  if ((v21 & 1) == 0)
  {
    v23 = v20;
    if (v23 == @"notEligible" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"notEligible"], v24, (v25 & 1) != 0))
    {
      v22 = 2;
      goto LABEL_41;
    }

    v26 = v24;
    if (v26 == @"insufficientCredit" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"insufficientCredit"], v27, (v28 & 1) != 0))
    {
      v22 = 3;
      goto LABEL_41;
    }

    v29 = v27;
    if (v29 == @"merchantNotSupported" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"merchantNotSupported"], v30, (v31 & 1) != 0))
    {
      v22 = 4;
      goto LABEL_41;
    }

    v32 = v30;
    if (v32 == @"purchaseAmountIneligible" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"purchaseAmountIneligible"], v33, (v34 & 1) != 0))
    {
      v22 = 5;
      goto LABEL_41;
    }

    v35 = v33;
    if (v35 == @"accountRestricted" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"accountRestricted"], v36, (v37 & 1) != 0))
    {
      v22 = 6;
      goto LABEL_41;
    }

    v38 = v36;
    if (v38 == @"userIneligible" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"userIneligible"], v39, (v40 & 1) != 0))
    {
      v22 = 7;
      goto LABEL_41;
    }

    v41 = v39;
    if (v41 == @"fraudSuspected" || (v42 = v41, v43 = [(__CFString *)v41 isEqualToString:@"fraudSuspected"], v42, (v43 & 1) != 0))
    {
      v22 = 8;
      goto LABEL_41;
    }

    v44 = v42;
    if (v44 == @"notSupportedForCard" || (v45 = v44, v46 = [(__CFString *)v44 isEqualToString:@"notSupportedForCard"], v45, (v46 & 1) != 0))
    {
      v22 = 9;
      goto LABEL_41;
    }

    v47 = v45;
    if (v47 == @"systemError" || (v48 = v47, v49 = [(__CFString *)v47 isEqualToString:@"systemError"], v48, v49))
    {
      v22 = 10;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_12:
  v22 = 1;
LABEL_41:

  v9->_offerEligibility = v22;
  v50 = [v12 count];
  if (v50)
  {
    v50 = [v12 copy];
  }

  offers = v9->_offers;
  v9->_offers = v50;

  v52 = [dictionaryCopy PKStringForKey:@"selectedOfferIdentifier"];
  selectedOfferIdentifier = v9->_selectedOfferIdentifier;
  v9->_selectedOfferIdentifier = v52;

  v54 = [dictionaryCopy PKDictionaryForKey:@"dynamicContent"];
  if ([v54 count])
  {
    v55 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v54];
    dynamicContent = v9->_dynamicContent;
    v9->_dynamicContent = v55;
  }

  v57 = [dictionaryCopy PKDictionaryForKey:@"action"];
  if ([v57 count])
  {
    v58 = [[PKPaymentOfferAction alloc] initWithDictionary:v57];
    action = v9->_action;
    v9->_action = v58;
  }

LABEL_48:
  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  v4 = PKPaymentOfferInstallmentAssessmentEligibilityToString(self->_offerEligibility);
  [v3 setObject:v4 forKeyedSubscript:@"offerEligibility"];

  v5 = [(NSArray *)self->_offers pk_arrayBySafelyApplyingBlock:&__block_literal_global_183];
  [v3 setObject:v5 forKeyedSubscript:@"offers"];

  dictionaryRepresentation = [(PKPaymentOfferAction *)self->_action dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"action"];

  [v3 setObject:self->_selectedOfferIdentifier forKeyedSubscript:@"selectedOfferIdentifier"];
  dictionaryRepresentation2 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"dynamicContent"];

  v8 = [v3 copy];

  return v8;
}

- (id)installmentOfferWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    offers = self->_offers;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PKPaymentOfferInstallmentAssessment_installmentOfferWithIdentifier___block_invoke;
    v9[3] = &unk_1E79DEAE8;
    v10 = identifierCopy;
    v7 = [(NSArray *)offers pk_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __70__PKPaymentOfferInstallmentAssessment_installmentOfferWithIdentifier___block_invoke(uint64_t a1, void *a2)
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

- (void)populatePreferredLanguage:(id)language
{
  v15 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_offers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setPreferredLanguage:{languageCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)ineligibleDynamicContent
{
  if ([(PKPaymentOfferInstallmentAssessment *)self isEligible])
  {
LABEL_2:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dynamicContentPageForPageType:5];
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "No payment offers dynamic content for key ineligibleOffers defined. Trying to use offersChanged dynamic content key.", buf, 2u);
    }

    v3 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dynamicContentPageForPageType:4];
    if (!v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "No payment offers dynamic content for key ineligibleOffers defined.", v6, 2u);
      }

      goto LABEL_2;
    }
  }

LABEL_7:

  return v3;
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
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_34;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_35;
          }
        }

        sessionIdentifier = v6->_sessionIdentifier;
        v8 = self->_sessionIdentifier;
        v14 = sessionIdentifier;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_34;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_35;
          }
        }

        if (self->_offerEligibility != v6->_offerEligibility)
        {
          goto LABEL_35;
        }

        offers = self->_offers;
        v17 = v6->_offers;
        if (offers && v17)
        {
          if (([(NSArray *)offers isEqual:?]& 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if (offers != v17)
        {
          goto LABEL_35;
        }

        action = self->_action;
        v19 = v6->_action;
        if (action && v19)
        {
          if (![(PKPaymentOfferAction *)action isEqual:?])
          {
            goto LABEL_35;
          }
        }

        else if (action != v19)
        {
          goto LABEL_35;
        }

        selectedOfferIdentifier = v6->_selectedOfferIdentifier;
        v8 = self->_selectedOfferIdentifier;
        v21 = selectedOfferIdentifier;
        v10 = v21;
        if (v8 == v21)
        {

LABEL_39:
          dynamicContent = self->_dynamicContent;
          v25 = v6->_dynamicContent;
          if (dynamicContent && v25)
          {
            v12 = [(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?];
          }

          else
          {
            v12 = dynamicContent == v25;
          }

          goto LABEL_36;
        }

        if (v8 && v21)
        {
          v22 = [(NSString *)v8 isEqualToString:v21];

          if (v22)
          {
            goto LABEL_39;
          }

LABEL_35:
          v12 = 0;
LABEL_36:

          goto LABEL_37;
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    v12 = 0;
  }

LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_sessionIdentifier];
  [v3 safelyAddObject:self->_offers];
  [v3 safelyAddObject:self->_action];
  [v3 safelyAddObject:self->_selectedOfferIdentifier];
  [v3 safelyAddObject:self->_dynamicContent];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_offerEligibility - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"sessionIdentifier: '%@'; ", self->_sessionIdentifier];
  v4 = PKPaymentOfferInstallmentAssessmentEligibilityToString(self->_offerEligibility);
  [v3 appendFormat:@"offerEligibility: '%@'; ", v4];

  if (self->_offers)
  {
    [v3 appendFormat:@"offers: '%@'; ", self->_offers];
  }

  if (self->_action)
  {
    [v3 appendFormat:@"action: '%@'; ", self->_action];
  }

  [v3 appendFormat:@"selectedOfferIdentifier: '%@'; ", self->_selectedOfferIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentAssessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKPaymentOfferInstallmentAssessment;
  v5 = [(PKPaymentOfferInstallmentAssessment *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v8;

    v5->_offerEligibility = [coderCopy decodeIntegerForKey:@"offerEligibility"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"offers"];
    offers = v5->_offers;
    v5->_offers = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOfferIdentifier"];
    selectedOfferIdentifier = v5->_selectedOfferIdentifier;
    v5->_selectedOfferIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeInteger:self->_offerEligibility forKey:@"offerEligibility"];
  [coderCopy encodeObject:self->_offers forKey:@"offers"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
  [coderCopy encodeObject:self->_selectedOfferIdentifier forKey:@"selectedOfferIdentifier"];
  [coderCopy encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferInstallmentAssessment allocWithZone:](PKPaymentOfferInstallmentAssessment init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  sessionIdentifier = v5->_sessionIdentifier;
  v5->_sessionIdentifier = v8;

  v5->_offerEligibility = self->_offerEligibility;
  v10 = [(NSArray *)self->_offers copyWithZone:zone];
  offers = v5->_offers;
  v5->_offers = v10;

  v12 = [(PKPaymentOfferAction *)self->_action copyWithZone:zone];
  action = v5->_action;
  v5->_action = v12;

  v14 = [(NSString *)self->_selectedOfferIdentifier copyWithZone:zone];
  selectedOfferIdentifier = v5->_selectedOfferIdentifier;
  v5->_selectedOfferIdentifier = v14;

  v16 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:zone];
  dynamicContent = v5->_dynamicContent;
  v5->_dynamicContent = v16;

  return v5;
}

@end