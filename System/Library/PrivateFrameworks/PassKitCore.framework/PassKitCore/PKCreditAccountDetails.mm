@interface PKCreditAccountDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isInMonthOfMerge;
- (PKCreditAccountDetails)initWithCoder:(id)coder;
- (PKCreditAccountDetails)initWithDictionary:(id)dictionary;
- (PKCurrencyAmount)cardBalance;
- (PKCurrencyAmount)totalBalance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)installmentPlanWithIdentifier:(id)identifier;
- (id)virtualCardWithIdentifier:(id)identifier;
- (int64_t)numberOfActiveInstallments;
- (int64_t)numberOfActiveStatementedInstallments;
- (unint64_t)hash;
- (void)addOrUpdateVirtualCard:(id)card;
- (void)encodeWithCoder:(id)coder;
- (void)ingestExtendedAccountDetails:(id)details;
- (void)removeVirtualCard:(id)card;
@end

@implementation PKCreditAccountDetails

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_lastUpdatedDate];
  [array safelyAddObject:self->_createdDate];
  [array safelyAddObject:self->_mergeDate];
  [array safelyAddObject:self->_countryCode];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_productTimeZone];
  [array safelyAddObject:self->_termsURL];
  [array safelyAddObject:self->_termsIdentifier];
  [array safelyAddObject:self->_associatedPassURL];
  [array safelyAddObject:self->_associatedPassTypeIdentifier];
  [array safelyAddObject:self->_associatedPassSerialNumber];
  [array safelyAddObject:self->_accountSummary];
  [array safelyAddObject:self->_rates];
  [array safelyAddObject:self->_virtualCards];
  [array safelyAddObject:self->_installmentPlans];
  v4 = PKCombinedHash(17, array);
  v5 = self->_cardType - v4 + 32 * v4;
  v6 = self->_termsAcceptanceRequired - v5 + 32 * v5;
  v7 = self->_rewardsDestination - v6 + 32 * v6;

  return v7;
}

- (PKCreditAccountDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = PKCreditAccountDetails;
  v5 = [(PKCreditAccountDetails *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [dictionaryCopy PKDateForKey:@"mergeDate"];
    mergeDate = v5->_mergeDate;
    v5->_mergeDate = v10;

    v12 = [dictionaryCopy PKStringForKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [dictionaryCopy PKStringForKey:@"productTimeZone"];
    if (v16)
    {
      v17 = [MEMORY[0x1E695DFE8] timeZoneWithName:v16];
      productTimeZone = v5->_productTimeZone;
      v5->_productTimeZone = v17;
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"virtualCards"];
    v21 = [v20 pk_arrayByApplyingBlock:&__block_literal_global_84];
    v22 = [v19 setWithArray:v21];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v22;

    v5->_termsAcceptanceRequired = [dictionaryCopy PKBoolForKey:@"termsAcceptanceRequired"];
    v24 = [dictionaryCopy PKStringForKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v24;

    v26 = [dictionaryCopy PKURLForKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v26;

    v28 = [dictionaryCopy PKURLForKey:@"associatedPassURL"];
    associatedPassURL = v5->_associatedPassURL;
    v5->_associatedPassURL = v28;

    if (!v5->_associatedPassURL)
    {
      v30 = [dictionaryCopy PKURLForKey:@"associatedPassUrl"];
      v31 = v5->_associatedPassURL;
      v5->_associatedPassURL = v30;
    }

    v32 = [dictionaryCopy PKStringForKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v32;

    v34 = [dictionaryCopy PKStringForKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v34;

    v5->_cardType = [dictionaryCopy PKIntegerForKey:@"cardType"];
    v36 = [PKCreditAccountSummary alloc];
    v37 = [dictionaryCopy PKDictionaryForKey:@"accountSummary"];
    v38 = [(PKCreditAccountSummary *)v36 initWithDictionary:v37];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v38;

    v40 = [PKCreditAccountRates alloc];
    v41 = [dictionaryCopy PKDictionaryForKey:@"rates"];
    v42 = [(PKCreditAccountRates *)v40 initWithDictionary:v41];
    rates = v5->_rates;
    v5->_rates = v42;

    v44 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"installmentPlans"];
    if ([v44 count])
    {
      v45 = MEMORY[0x1E695DFD8];
      v46 = [v44 pk_arrayByApplyingBlock:&__block_literal_global_81_2];
      v47 = [v45 setWithArray:v46];
      installmentPlans = v5->_installmentPlans;
      v5->_installmentPlans = v47;
    }

    v49 = [dictionaryCopy PKStringForKey:@"rewardsDestination"];
    v5->_rewardsDestination = PKAccountRewardRedemptionTypeFromString(v49);
  }

  return v5;
}

PKVirtualCard *__45__PKCreditAccountDetails_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKVirtualCard alloc] initWithDictionary:v2];

  return v3;
}

PKCreditInstallmentPlan *__45__PKCreditAccountDetails_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditInstallmentPlan alloc] initWithDictionary:v2];

  return v3;
}

- (void)ingestExtendedAccountDetails:(id)details
{
  detailsCopy = details;
  v4 = MEMORY[0x1E695DFD8];
  v5 = [detailsCopy PKArrayContaining:objc_opt_class() forKey:@"virtualCards"];
  v6 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_84_0];
  v7 = [v4 setWithArray:v6];
  virtualCards = self->_virtualCards;
  self->_virtualCards = v7;

  v9 = [detailsCopy PKArrayContaining:objc_opt_class() forKey:@"installmentPlans"];
  if ([v9 count])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = [detailsCopy PKArrayContaining:objc_opt_class() forKey:@"installmentPlans"];
    v12 = [v11 pk_arrayByApplyingBlock:&__block_literal_global_86];
    v13 = [v10 setWithArray:v12];
    installmentPlans = self->_installmentPlans;
    self->_installmentPlans = v13;
  }

  [(PKCreditAccountSummary *)self->_accountSummary ingestExtendedAccountDetails:detailsCopy];
}

PKVirtualCard *__55__PKCreditAccountDetails_ingestExtendedAccountDetails___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKVirtualCard alloc] initWithDictionary:v2];

  return v3;
}

PKCreditInstallmentPlan *__55__PKCreditAccountDetails_ingestExtendedAccountDetails___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditInstallmentPlan alloc] initWithDictionary:v2];

  return v3;
}

- (id)installmentPlanWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_installmentPlans;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = identifierCopy;
        v12 = v11;
        if (identifier == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (identifierCopy && identifier)
        {
          v13 = [identifier isEqualToString:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (void)addOrUpdateVirtualCard:(id)card
{
  v27 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_virtualCards];
  if ([(NSSet *)self->_virtualCards count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_virtualCards;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = self;
      v21 = v5;
      v9 = 0;
      v10 = *v23;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          identifier = [v12 identifier];
          identifier2 = [cardCopy identifier];
          v15 = identifier2;
          if (identifier)
          {
            v16 = identifier2 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {

            if (identifier != v15)
            {
              continue;
            }
          }

          else
          {
            v17 = [identifier isEqual:identifier2];

            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          if ([cardCopy state] == 2)
          {
            [v21 removeObject:v12];
          }

          else
          {
            v18 = [v12 mergeVirtualCardWith:cardCopy];
            [v21 removeObject:v12];
            [v21 addObject:v18];
          }

          v9 = 1;
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (!v8)
        {

          self = selfCopy;
          v5 = v21;
          if (v9)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }
    }
  }

LABEL_24:
  [v5 addObject:cardCopy];
LABEL_25:
  v19 = [v5 copy];
  [(PKCreditAccountDetails *)self setVirtualCards:v19];
}

- (void)removeVirtualCard:(id)card
{
  v23 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_virtualCards];
  if ([(NSSet *)self->_virtualCards count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_virtualCards;
    v7 = [(NSSet *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      v17 = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = cardCopy;
          v14 = v13;
          if (identifier == v13)
          {

LABEL_17:
            v5 = v17;
            [v17 removeObject:v11];
            goto LABEL_18;
          }

          if (cardCopy && identifier)
          {
            v15 = [identifier isEqualToString:v13];

            if (v15)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v5 = v17;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  v16 = [v5 copy];
  [(PKCreditAccountDetails *)self setVirtualCards:v16];
}

- (id)virtualCardWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_virtualCards;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = identifierCopy;
        v12 = v11;
        if (identifier == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (identifierCopy && identifier)
        {
          v13 = [identifier isEqualToString:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (PKCreditAccountDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = PKCreditAccountDetails;
  v5 = [(PKCreditAccountDetails *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mergeDate"];
    mergeDate = v5->_mergeDate;
    v5->_mergeDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productTimeZone"];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"virtualCards"];
    virtualCards = v5->_virtualCards;
    v5->_virtualCards = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v25;

    v5->_termsAcceptanceRequired = [coderCopy decodeBoolForKey:@"termsAcceptanceRequired"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassURL"];
    associatedPassURL = v5->_associatedPassURL;
    v5->_associatedPassURL = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v31;

    v5->_cardType = [coderCopy decodeIntegerForKey:@"cardType"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountSummary"];
    accountSummary = v5->_accountSummary;
    v5->_accountSummary = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rates"];
    rates = v5->_rates;
    v5->_rates = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"installmentPlans"];
    installmentPlans = v5->_installmentPlans;
    v5->_installmentPlans = v40;

    v5->_rewardsDestination = [coderCopy decodeIntegerForKey:@"rewardsDestination"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lastUpdatedDate = self->_lastUpdatedDate;
  coderCopy = coder;
  [coderCopy encodeObject:lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
  [coderCopy encodeObject:self->_mergeDate forKey:@"mergeDate"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_productTimeZone forKey:@"productTimeZone"];
  [coderCopy encodeObject:self->_virtualCards forKey:@"virtualCards"];
  [coderCopy encodeObject:self->_termsURL forKey:@"termsURL"];
  [coderCopy encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [coderCopy encodeBool:self->_termsAcceptanceRequired forKey:@"termsAcceptanceRequired"];
  [coderCopy encodeObject:self->_associatedPassURL forKey:@"associatedPassURL"];
  [coderCopy encodeObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  [coderCopy encodeObject:self->_associatedPassSerialNumber forKey:@"associatedPassSerialNumber"];
  [coderCopy encodeInteger:self->_cardType forKey:@"cardType"];
  [coderCopy encodeObject:self->_accountSummary forKey:@"accountSummary"];
  [coderCopy encodeObject:self->_rates forKey:@"rates"];
  [coderCopy encodeObject:self->_installmentPlans forKey:@"installmentPlans"];
  [coderCopy encodeInteger:self->_rewardsDestination forKey:@"rewardsDestination"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_78;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v6 = equalCopy[2];
  if (lastUpdatedDate && v6)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (lastUpdatedDate != v6)
  {
    goto LABEL_78;
  }

  createdDate = self->_createdDate;
  v8 = equalCopy[3];
  if (createdDate && v8)
  {
    if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (createdDate != v8)
  {
    goto LABEL_78;
  }

  mergeDate = self->_mergeDate;
  v10 = equalCopy[4];
  if (mergeDate && v10)
  {
    if (([(NSDate *)mergeDate isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (mergeDate != v10)
  {
    goto LABEL_78;
  }

  countryCode = self->_countryCode;
  v12 = equalCopy[5];
  if (countryCode && v12)
  {
    if (([(NSString *)countryCode isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (countryCode != v12)
  {
    goto LABEL_78;
  }

  currencyCode = self->_currencyCode;
  v14 = equalCopy[6];
  if (currencyCode && v14)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (currencyCode != v14)
  {
    goto LABEL_78;
  }

  productTimeZone = self->_productTimeZone;
  v16 = equalCopy[7];
  if (productTimeZone && v16)
  {
    if (([(NSTimeZone *)productTimeZone isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (productTimeZone != v16)
  {
    goto LABEL_78;
  }

  termsURL = self->_termsURL;
  v18 = equalCopy[11];
  if (termsURL && v18)
  {
    if (([(NSURL *)termsURL isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (termsURL != v18)
  {
    goto LABEL_78;
  }

  termsIdentifier = self->_termsIdentifier;
  v20 = equalCopy[10];
  if (termsIdentifier && v20)
  {
    if (([(NSString *)termsIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (termsIdentifier != v20)
  {
    goto LABEL_78;
  }

  associatedPassURL = self->_associatedPassURL;
  v22 = equalCopy[12];
  if (associatedPassURL && v22)
  {
    if (([(NSURL *)associatedPassURL isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (associatedPassURL != v22)
  {
    goto LABEL_78;
  }

  associatedPassTypeIdentifier = self->_associatedPassTypeIdentifier;
  v24 = equalCopy[13];
  if (associatedPassTypeIdentifier && v24)
  {
    if (([(NSString *)associatedPassTypeIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (associatedPassTypeIdentifier != v24)
  {
    goto LABEL_78;
  }

  associatedPassSerialNumber = self->_associatedPassSerialNumber;
  v26 = equalCopy[14];
  if (associatedPassSerialNumber && v26)
  {
    if (([(NSString *)associatedPassSerialNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (associatedPassSerialNumber != v26)
  {
    goto LABEL_78;
  }

  accountSummary = self->_accountSummary;
  v28 = equalCopy[16];
  if (accountSummary && v28)
  {
    if (![(PKCreditAccountSummary *)accountSummary isEqual:?])
    {
      goto LABEL_78;
    }
  }

  else if (accountSummary != v28)
  {
    goto LABEL_78;
  }

  rates = self->_rates;
  v30 = equalCopy[17];
  if (rates && v30)
  {
    if (![(PKCreditAccountRates *)rates isEqual:?])
    {
      goto LABEL_78;
    }
  }

  else if (rates != v30)
  {
    goto LABEL_78;
  }

  virtualCards = self->_virtualCards;
  v32 = equalCopy[9];
  if (!virtualCards || !v32)
  {
    if (virtualCards == v32)
    {
      goto LABEL_72;
    }

LABEL_78:
    v35 = 0;
    goto LABEL_79;
  }

  if (([(NSSet *)virtualCards isEqual:?]& 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_72:
  if (self->_termsAcceptanceRequired != *(equalCopy + 8) || self->_cardType != equalCopy[15] || self->_rewardsDestination != equalCopy[19])
  {
    goto LABEL_78;
  }

  installmentPlans = self->_installmentPlans;
  v34 = equalCopy[18];
  if (installmentPlans && v34)
  {
    v35 = [(NSSet *)installmentPlans isEqual:?];
  }

  else
  {
    v35 = installmentPlans == v34;
  }

LABEL_79:

  return v35;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_lastUpdatedDate description];
  [v3 appendFormat:@"lastUpdateDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_createdDate description];
  [v3 appendFormat:@"createdDate: '%@'; ", v5];

  mergeDate = self->_mergeDate;
  if (mergeDate)
  {
    v7 = [(NSDate *)mergeDate description];
    [v3 appendFormat:@"mergeDate: '%@'; ", v7];
  }

  [v3 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  name = [(NSTimeZone *)self->_productTimeZone name];
  [v3 appendFormat:@"productTimeZone: '%@'; ", name];

  v9 = [(NSSet *)self->_virtualCards description];
  [v3 appendFormat:@"virtualCards: '%@'; ", v9];

  [v3 appendFormat:@"termsURL: '%@'; ", self->_termsURL];
  [v3 appendFormat:@"termsIdentifier: '%@'; ", self->_termsIdentifier];
  if (self->_termsAcceptanceRequired)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"termsAcceptanceRequired: '%@'; ", v10];
  [v3 appendFormat:@"passURL: '%@'; ", self->_associatedPassURL];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", self->_associatedPassSerialNumber];
  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", self->_associatedPassTypeIdentifier];
  v11 = PKPaymentNetworkNameForPaymentCredentialType(self->_cardType);
  [v3 appendFormat:@"cardType: '%@'; ", v11];

  v12 = [(PKCreditAccountSummary *)self->_accountSummary description];
  [v3 appendFormat:@"summary: '%@'; ", v12];

  v13 = [(PKCreditAccountRates *)self->_rates description];
  [v3 appendFormat:@"rates: '%@'; ", v13];

  v14 = [(NSSet *)self->_installmentPlans description];
  [v3 appendFormat:@"installmentPlans: '%@'; ", v14];

  v15 = PKAccountRewardRedemptionTypeToString(self->_rewardsDestination);
  [v3 appendFormat:@"rewardsDestination: '%@'; ", v15];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = [+[PKCreditAccountDetails allocWithZone:](PKCreditAccountDetails init];
  v6 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v6;

  v8 = [(NSDate *)self->_createdDate copyWithZone:zone];
  createdDate = v5->_createdDate;
  v5->_createdDate = v8;

  v10 = [(NSDate *)self->_mergeDate copyWithZone:zone];
  mergeDate = v5->_mergeDate;
  v5->_mergeDate = v10;

  v12 = [(NSString *)self->_countryCode copyWithZone:zone];
  countryCode = v5->_countryCode;
  v5->_countryCode = v12;

  v14 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v14;

  v16 = [(NSTimeZone *)self->_productTimeZone copyWithZone:zone];
  productTimeZone = v5->_productTimeZone;
  v5->_productTimeZone = v16;

  v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = self->_virtualCards;
  v20 = [(NSSet *)v19 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v56;
    do
    {
      v23 = 0;
      do
      {
        if (*v56 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v55 + 1) + 8 * v23) copy];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSSet *)v19 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v21);
  }

  v25 = [MEMORY[0x1E695DFD8] setWithSet:v18];
  virtualCards = v5->_virtualCards;
  v5->_virtualCards = v25;

  v27 = [(NSURL *)self->_termsURL copyWithZone:zone];
  termsURL = v5->_termsURL;
  v5->_termsURL = v27;

  v29 = [(NSString *)self->_termsIdentifier copyWithZone:zone];
  termsIdentifier = v5->_termsIdentifier;
  v5->_termsIdentifier = v29;

  v5->_termsAcceptanceRequired = self->_termsAcceptanceRequired;
  v31 = [(NSURL *)self->_associatedPassURL copyWithZone:zone];
  associatedPassURL = v5->_associatedPassURL;
  v5->_associatedPassURL = v31;

  v33 = [(NSString *)self->_associatedPassSerialNumber copyWithZone:zone];
  associatedPassSerialNumber = v5->_associatedPassSerialNumber;
  v5->_associatedPassSerialNumber = v33;

  v35 = [(NSString *)self->_associatedPassTypeIdentifier copyWithZone:zone];
  associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
  v5->_associatedPassTypeIdentifier = v35;

  v5->_cardType = self->_cardType;
  v37 = [(PKCreditAccountSummary *)self->_accountSummary copyWithZone:zone];
  accountSummary = v5->_accountSummary;
  v5->_accountSummary = v37;

  v39 = [(PKCreditAccountRates *)self->_rates copyWithZone:zone];
  rates = v5->_rates;
  v5->_rates = v39;

  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v42 = self->_installmentPlans;
  v43 = [(NSSet *)v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v52;
    do
    {
      v46 = 0;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v51 + 1) + 8 * v46) copy];
        [v41 addObject:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSSet *)v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v44);
  }

  v48 = [v41 count];
  if (v48)
  {
    v48 = [v41 copy];
  }

  installmentPlans = v5->_installmentPlans;
  v5->_installmentPlans = v48;

  v5->_rewardsDestination = self->_rewardsDestination;
  return v5;
}

- (PKCurrencyAmount)cardBalance
{
  if (!self->_currencyCode)
  {
    v7 = 0;
    goto LABEL_13;
  }

  adjustedBalance = [(PKCreditAccountSummary *)self->_accountSummary adjustedBalance];
  balanceSummary = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
  pendingPurchases = [balanceSummary pendingPurchases];

  if (adjustedBalance)
  {
    v6 = pendingPurchases == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    zero = [(NSDecimalNumber *)adjustedBalance decimalNumberByAdding:pendingPurchases];
LABEL_11:
    v9 = zero;
    v7 = PKCurrencyAmountCreate(zero, self->_currencyCode, 0);

    goto LABEL_12;
  }

  if (!adjustedBalance)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    goto LABEL_11;
  }

  v7 = PKCurrencyAmountCreate(adjustedBalance, self->_currencyCode, 0);
LABEL_12:

LABEL_13:

  return v7;
}

- (PKCurrencyAmount)totalBalance
{
  if (!self->_currencyCode)
  {
    v7 = 0;
    goto LABEL_13;
  }

  currentBalance = [(PKCreditAccountSummary *)self->_accountSummary currentBalance];
  balanceSummary = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
  pendingPurchases = [balanceSummary pendingPurchases];

  if (currentBalance)
  {
    v6 = pendingPurchases == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    zero = [(NSDecimalNumber *)currentBalance decimalNumberByAdding:pendingPurchases];
LABEL_11:
    v9 = zero;
    v7 = PKCurrencyAmountCreate(zero, self->_currencyCode, 0);

    goto LABEL_12;
  }

  if (!currentBalance)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    goto LABEL_11;
  }

  v7 = PKCurrencyAmountCreate(currentBalance, self->_currencyCode, 0);
LABEL_12:

LABEL_13:

  return v7;
}

- (int64_t)numberOfActiveInstallments
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_installmentPlans;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) state] == 2)
        {
          ++v5;
        }
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)numberOfActiveStatementedInstallments
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_installmentPlans;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        state = [v8 state];
        payments = [v8 payments];
        firstObject = [payments firstObject];
        statementIdentifier = [firstObject statementIdentifier];

        if (state == 2 && statementIdentifier != 0)
        {
          ++v5;
        }
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isInMonthOfMerge
{
  if (!self->_mergeDate)
  {
    return 0;
  }

  balanceSummary = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
  v4 = balanceSummary;
  if (balanceSummary)
  {
    openingDate = [balanceSummary openingDate];
    closingDate = [v4 closingDate];
    v7 = closingDate;
    if (openingDate)
    {
      v8 = closingDate == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8 && PKDateIsBetweenDates(self->_mergeDate, openingDate, closingDate, 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end