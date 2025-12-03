@interface PKPaymentOfferMerchandisingOfferDetails
+ (id)combineOfferDetails:(id)details withOtherDetails:(id)otherDetails;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferMerchandisingOfferDetails)initWithCoder:(id)coder;
- (PKPaymentOfferMerchandisingOfferDetails)initWithDictionary:(id)dictionary;
- (PKPaymentOfferMerchandisingOfferDetails)initWithOffersByMerchandisingIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)offerForMerchandisingIdentifier:(id)identifier;
- (unint64_t)hash;
@end

@implementation PKPaymentOfferMerchandisingOfferDetails

- (PKPaymentOfferMerchandisingOfferDetails)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  v5 = [dictionaryCopy PKDictionaryOfKeyClass:v4 valueClass:objc_opt_class() ForKey:@"merchandisingOffers"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [[PKPaymentOfferMerchandisingOffer alloc] initWithDictionary:v13];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [(PKPaymentOfferMerchandisingOfferDetails *)self initWithOffersByMerchandisingIdentifier:v6];
  return v15;
}

- (PKPaymentOfferMerchandisingOfferDetails)initWithOffersByMerchandisingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPaymentOfferMerchandisingOfferDetails;
  v5 = [(PKPaymentOfferMerchandisingOfferDetails *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy count];
    if (v6)
    {
      v6 = [identifierCopy copy];
    }

    offersByMerchandisingIdentifier = v5->_offersByMerchandisingIdentifier;
    v5->_offersByMerchandisingIdentifier = v6;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_offersByMerchandisingIdentifier;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_offersByMerchandisingIdentifier objectForKeyedSubscript:v10, v15];
        dictionaryRepresentation = [v11 dictionaryRepresentation];
        [v4 setObject:dictionaryRepresentation forKeyedSubscript:v10];
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"merchandisingOffers"];
  v13 = [v3 copy];

  return v13;
}

- (id)offerForMerchandisingIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSDictionary *)self->_offersByMerchandisingIdentifier objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)combineOfferDetails:(id)details withOtherDetails:(id)otherDetails
{
  v48 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  otherDetailsCopy = otherDetails;
  v7 = otherDetailsCopy;
  if (!detailsCopy)
  {
    goto LABEL_5;
  }

  if (!otherDetailsCopy || [detailsCopy isEqual:otherDetailsCopy])
  {
    otherDetailsCopy = detailsCopy;
LABEL_5:
    v8 = [otherDetailsCopy copy];
    goto LABEL_6;
  }

  offersByMerchandisingIdentifier = [detailsCopy offersByMerchandisingIdentifier];
  offersByMerchandisingIdentifier2 = [v7 offersByMerchandisingIdentifier];
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = MEMORY[0x1E695DFD8];
  allKeys = [offersByMerchandisingIdentifier allKeys];
  v15 = [v13 setWithArray:allKeys];
  [v12 unionSet:v15];

  v16 = MEMORY[0x1E695DFD8];
  v17 = offersByMerchandisingIdentifier2;
  allKeys2 = [offersByMerchandisingIdentifier2 allKeys];
  v19 = [v16 setWithArray:allKeys2];
  [v12 unionSet:v19];

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v12 count])
  {
    v38 = v7;
    v39 = detailsCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = v12;
    obj = v12;
    v21 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    v23 = *v44;
    v40 = *v44;
    while (1)
    {
      v24 = 0;
      v41 = v22;
      do
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v43 + 1) + 8 * v24);
        v26 = [offersByMerchandisingIdentifier objectForKeyedSubscript:{v25, v37, v38, v39}];
        v27 = [v17 objectForKeyedSubscript:v25];
        v28 = v27;
        if (v26)
        {
          v29 = v27 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          lastUpdated = [v26 lastUpdated];
          [v28 lastUpdated];
          v33 = v32 = v17;
          v34 = v20;
          v35 = offersByMerchandisingIdentifier;
          v36 = [lastUpdated compare:v33];

          v17 = v32;
          v22 = v41;

          v23 = v40;
          v29 = v36 == -1;
          offersByMerchandisingIdentifier = v35;
          v20 = v34;
          if (v29)
          {
            v30 = v28;
          }

          else
          {
            v30 = v26;
          }

LABEL_28:
          [v20 setObject:v30 forKeyedSubscript:v25];
          goto LABEL_29;
        }

        if (v26)
        {
          v30 = v26;
        }

        else
        {
          v30 = v27;
        }

        if (v26 | v27)
        {
          goto LABEL_28;
        }

LABEL_29:

        ++v24;
      }

      while (v22 != v24);
      v22 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (!v22)
      {
LABEL_31:

        v8 = [[PKPaymentOfferMerchandisingOfferDetails alloc] initWithOffersByMerchandisingIdentifier:v20];
        v7 = v38;
        detailsCopy = v39;
        v12 = v37;
        goto LABEL_33;
      }
    }
  }

  v8 = 0;
LABEL_33:

LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    offersByMerchandisingIdentifier = self->_offersByMerchandisingIdentifier;
    v7 = v5->_offersByMerchandisingIdentifier;
    if (offersByMerchandisingIdentifier && v7)
    {
      v8 = [(NSDictionary *)offersByMerchandisingIdentifier isEqual:?];
    }

    else
    {
      v8 = offersByMerchandisingIdentifier == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_offersByMerchandisingIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"offersByMerchandisingIdentifier: '%@'; ", self->_offersByMerchandisingIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferMerchandisingOfferDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferMerchandisingOfferDetails;
  v5 = [(PKPaymentOfferMerchandisingOfferDetails *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"merchandisingOffers"];
    offersByMerchandisingIdentifier = v5->_offersByMerchandisingIdentifier;
    v5->_offersByMerchandisingIdentifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferMerchandisingOfferDetails allocWithZone:](PKPaymentOfferMerchandisingOfferDetails init];
  v6 = [(NSDictionary *)self->_offersByMerchandisingIdentifier copyWithZone:zone];
  offersByMerchandisingIdentifier = v5->_offersByMerchandisingIdentifier;
  v5->_offersByMerchandisingIdentifier = v6;

  return v5;
}

@end