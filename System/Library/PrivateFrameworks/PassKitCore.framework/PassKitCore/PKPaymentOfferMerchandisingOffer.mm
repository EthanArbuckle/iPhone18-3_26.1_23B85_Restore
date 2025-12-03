@interface PKPaymentOfferMerchandisingOffer
+ (id)analyticsDictionaryForOffer:(id)offer;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferMerchandisingOffer)initWithCoder:(id)coder;
- (PKPaymentOfferMerchandisingOffer)initWithDictionary:(id)dictionary;
- (id)allIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)secondaryOfferItem;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferMerchandisingOffer

- (PKPaymentOfferMerchandisingOffer)initWithDictionary:(id)dictionary
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v62.receiver = self;
  v62.super_class = PKPaymentOfferMerchandisingOffer;
  v5 = [(PKPaymentOfferMerchandisingOffer *)&v62 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"primaryTitle"];
    primaryTitle = v5->_primaryTitle;
    v5->_primaryTitle = v8;

    v10 = [dictionaryCopy PKStringForKey:@"secondaryTitleIdentifier"];
    secondaryTitleIdentifier = v5->_secondaryTitleIdentifier;
    v5->_secondaryTitleIdentifier = v10;

    date = [MEMORY[0x1E695DF00] date];
    lastUpdated = v5->_lastUpdated;
    v49 = v5;
    v5->_lastUpdated = date;

    v14 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"installments"];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[PKPaymentOfferMerchandisingOfferItem alloc] initWithDictionary:*(*(&v58 + 1) + 8 * i)];
          [v15 safelyAddObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v18);
    }

    v48 = v16;

    v22 = [v15 count];
    if (v22)
    {
      v22 = [v15 copy];
    }

    installments = v49->_installments;
    v49->_installments = v22;

    v24 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"rewards"];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[PKPaymentOfferMerchandisingOfferItem alloc] initWithDictionary:*(*(&v54 + 1) + 8 * j)];
          [v25 safelyAddObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v28);
    }

    v32 = [v25 count];
    if (v32)
    {
      v32 = [v25 copy];
    }

    rewards = v49->_rewards;
    v49->_rewards = v32;

    v34 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"other"];
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v34;
    v37 = [v36 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v51;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [[PKPaymentOfferMerchandisingOfferItem alloc] initWithDictionary:*(*(&v50 + 1) + 8 * k)];
          [v35 safelyAddObject:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v38);
    }

    v42 = [v35 count];
    if (v42)
    {
      v42 = [v35 copy];
    }

    v5 = v49;
    other = v49->_other;
    v49->_other = v42;

    v44 = [dictionaryCopy PKDictionaryForKey:@"dynamicContent"];
    if ([v44 count])
    {
      v45 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v44];
      dynamicContent = v49->_dynamicContent;
      v49->_dynamicContent = v45;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v4 = PKISO8601DateStringFromDate(self->_lastUpdated);
  [v3 setObject:v4 forKeyedSubscript:@"lastUpdated"];

  [v3 setObject:self->_primaryTitle forKeyedSubscript:@"primaryTitle"];
  dictionaryRepresentation = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"dynamicContent"];

  [v3 setObject:self->_secondaryTitleIdentifier forKeyedSubscript:@"secondaryTitleIdentifier"];
  v6 = [(NSArray *)self->_installments pk_createArrayBySafelyApplyingBlock:&__block_literal_global_104];
  [v3 setObject:v6 forKeyedSubscript:@"installments"];

  v7 = [(NSArray *)self->_rewards pk_createArrayBySafelyApplyingBlock:&__block_literal_global_44_1];
  [v3 setObject:v7 forKeyedSubscript:@"rewards"];

  v8 = [(NSArray *)self->_other pk_createArrayBySafelyApplyingBlock:&__block_literal_global_46_1];
  [v3 setObject:v8 forKeyedSubscript:@"other"];

  v9 = [v3 copy];

  return v9;
}

- (id)secondaryOfferItem
{
  if (self->_secondaryTitleIdentifier)
  {
    installments = self->_installments;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke;
    v11[3] = &unk_1E79D47B8;
    v11[4] = self;
    v4 = [(NSArray *)installments pk_firstObjectPassingTest:v11];
    if (!v4)
    {
      rewards = self->_rewards;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke_2;
      v10[3] = &unk_1E79D47B8;
      v10[4] = self;
      v4 = [(NSArray *)rewards pk_firstObjectPassingTest:v10];
      if (!v4)
      {
        other = self->_other;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke_3;
        v9[3] = &unk_1E79D47B8;
        v9[4] = self;
        v4 = [(NSArray *)other pk_firstObjectPassingTest:v9];
      }
    }

    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(*(a1 + 32) + 24);
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

uint64_t __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(*(a1 + 32) + 24);
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

uint64_t __54__PKPaymentOfferMerchandisingOffer_secondaryOfferItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(*(a1 + 32) + 24);
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

- (id)allIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v3 pk_safelyAddObject:self->_identifier];
  v4 = [(NSArray *)self->_installments pk_createArrayBySafelyApplyingBlock:&__block_literal_global_50_0];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSArray *)self->_rewards pk_createArrayBySafelyApplyingBlock:&__block_literal_global_52_0];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSArray *)self->_other pk_createArrayBySafelyApplyingBlock:&__block_literal_global_54];
  [v3 addObjectsFromArray:v6];

  if ([v3 count])
  {
    v7 = [v3 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)analyticsDictionaryForOffer:(id)offer
{
  v3 = MEMORY[0x1E695DF90];
  offerCopy = offer;
  v5 = objc_alloc_init(v3);
  primaryTitle = [offerCopy primaryTitle];
  if (primaryTitle)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  [v5 setObject:v7 forKeyedSubscript:@"hasPrimaryMerchandisingOffer"];

  installments = [offerCopy installments];
  if ([installments count])
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  [v5 setObject:v9 forKeyedSubscript:@"hasInstallmentMerchandisingOffer"];

  rewards = [offerCopy rewards];
  if ([rewards count])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  [v5 setObject:v11 forKeyedSubscript:@"hasRewardsMerchandisingOffer"];

  other = [offerCopy other];

  if ([other count])
  {
    v13 = @"true";
  }

  else
  {
    v13 = @"false";
  }

  [v5 setObject:v13 forKeyedSubscript:@"hasSpecialMerchandisingOffer"];

  v14 = [v5 copy];

  return v14;
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
            goto LABEL_23;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_24;
          }
        }

        primaryTitle = v6->_primaryTitle;
        v8 = self->_primaryTitle;
        v14 = primaryTitle;
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

        secondaryTitleIdentifier = v6->_secondaryTitleIdentifier;
        v8 = self->_secondaryTitleIdentifier;
        v17 = secondaryTitleIdentifier;
        v10 = v17;
        if (v8 == v17)
        {

LABEL_28:
          installments = self->_installments;
          v21 = v6->_installments;
          if (installments && v21)
          {
            if (([(NSArray *)installments isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (installments != v21)
          {
            goto LABEL_24;
          }

          rewards = self->_rewards;
          v23 = v6->_rewards;
          if (rewards && v23)
          {
            if (([(NSArray *)rewards isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (rewards != v23)
          {
            goto LABEL_24;
          }

          other = self->_other;
          v25 = v6->_other;
          if (other && v25)
          {
            if (([(NSArray *)other isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (other != v25)
          {
            goto LABEL_24;
          }

          lastUpdated = self->_lastUpdated;
          v27 = v6->_lastUpdated;
          if (lastUpdated && v27)
          {
            if (([(NSDate *)lastUpdated isEqual:?]& 1) != 0)
            {
              goto LABEL_48;
            }
          }

          else if (lastUpdated == v27)
          {
LABEL_48:
            dynamicContent = self->_dynamicContent;
            v29 = v6->_dynamicContent;
            if (dynamicContent && v29)
            {
              v12 = [(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?];
            }

            else
            {
              v12 = dynamicContent == v29;
            }

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
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_primaryTitle];
  [v3 safelyAddObject:self->_secondaryTitleIdentifier];
  [v3 safelyAddObject:self->_installments];
  [v3 safelyAddObject:self->_rewards];
  [v3 safelyAddObject:self->_other];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_dynamicContent];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"primaryTitle: '%@'; ", self->_primaryTitle];
  [v3 appendFormat:@"secondaryTitleIdentifier: '%@'; ", self->_secondaryTitleIdentifier];
  [v3 appendFormat:@"installments: '%@'; ", self->_installments];
  [v3 appendFormat:@"rewards: '%@'; ", self->_rewards];
  [v3 appendFormat:@"other: '%@'; ", self->_other];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  if (self->_dynamicContent)
  {
    [v3 appendFormat:@"_dynamicContent: '%@'; ", self->_dynamicContent];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferMerchandisingOffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PKPaymentOfferMerchandisingOffer;
  v5 = [(PKPaymentOfferMerchandisingOffer *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryTitle"];
    primaryTitle = v5->_primaryTitle;
    v5->_primaryTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTitleIdentifier"];
    secondaryTitleIdentifier = v5->_secondaryTitleIdentifier;
    v5->_secondaryTitleIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"installments"];
    installments = v5->_installments;
    v5->_installments = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"rewards"];
    rewards = v5->_rewards;
    v5->_rewards = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"other"];
    other = v5->_other;
    v5->_other = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeObject:self->_primaryTitle forKey:@"primaryTitle"];
  [coderCopy encodeObject:self->_secondaryTitleIdentifier forKey:@"secondaryTitleIdentifier"];
  [coderCopy encodeObject:self->_installments forKey:@"installments"];
  [coderCopy encodeObject:self->_rewards forKey:@"rewards"];
  [coderCopy encodeObject:self->_other forKey:@"other"];
  [coderCopy encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferMerchandisingOffer allocWithZone:](PKPaymentOfferMerchandisingOffer init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_primaryTitle copyWithZone:zone];
  primaryTitle = v5->_primaryTitle;
  v5->_primaryTitle = v8;

  v10 = [(NSString *)self->_secondaryTitleIdentifier copyWithZone:zone];
  secondaryTitleIdentifier = v5->_secondaryTitleIdentifier;
  v5->_secondaryTitleIdentifier = v10;

  v12 = [(NSArray *)self->_installments copyWithZone:zone];
  installments = v5->_installments;
  v5->_installments = v12;

  v14 = [(NSArray *)self->_rewards copyWithZone:zone];
  rewards = v5->_rewards;
  v5->_rewards = v14;

  v16 = [(NSArray *)self->_other copyWithZone:zone];
  other = v5->_other;
  v5->_other = v16;

  v18 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v18;

  v20 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:zone];
  dynamicContent = v5->_dynamicContent;
  v5->_dynamicContent = v20;

  return v5;
}

@end