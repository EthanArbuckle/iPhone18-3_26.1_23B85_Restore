@interface PKServiceProviderPurchase
+ (PKServiceProviderPurchase)purchaseWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServiceProviderPurchase:(id)purchase;
- (PKServiceProviderPurchase)initWithCoder:(id)coder;
- (PKServiceProviderPurchase)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKServiceProviderPurchase

+ (PKServiceProviderPurchase)purchaseWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKServiceProviderPurchase)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = PKServiceProviderPurchase;
  v5 = [(PKServiceProviderPurchase *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [dictionaryCopy PKStringForKey:@"visibleTransactionIdentifier"];
    v10 = [v9 copy];
    visibleTransactionIdentifier = v5->_visibleTransactionIdentifier;
    v5->_visibleTransactionIdentifier = v10;

    v12 = [dictionaryCopy PKStringForKey:@"state"];
    v5->_state = PKServiceProviderPurchaseStateFromString(v12);

    v13 = [dictionaryCopy PKStringForKey:@"deviceIdentifier"];
    v14 = [v13 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v14;

    v16 = [dictionaryCopy PKStringForKey:@"serviceProviderIdentifier"];
    v17 = [v16 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v17;

    v19 = [dictionaryCopy PKDictionaryForKey:@"serviceProviderData"];
    v20 = [v19 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v20;

    v22 = [dictionaryCopy PKStringForKey:@"signature"];
    v23 = [v22 copy];
    signature = v5->_signature;
    v5->_signature = v23;

    v25 = [dictionaryCopy PKDateForKey:@"datePurchased"];
    v26 = [v25 copy];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v26;

    v28 = [dictionaryCopy PKStringForKey:@"partnerMetadata"];
    v29 = [v28 copy];
    partnerMetadata = v5->_partnerMetadata;
    v5->_partnerMetadata = v29;

    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:{@"actions", 0}];
    v33 = [v32 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      do
      {
        v36 = 0;
        do
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [PKServiceProviderPurchaseAction actionWithDictionary:*(*(&v41 + 1) + 8 * v36)];
          if (v37)
          {
            [array addObject:v37];
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    v38 = [array copy];
    actions = v5->_actions;
    v5->_actions = v38;
  }

  return v5;
}

- (PKServiceProviderPurchase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = PKServiceProviderPurchase;
  v5 = [(PKServiceProviderPurchase *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibleTransactionIdentifier"];
    v10 = [v9 copy];
    visibleTransactionIdentifier = v5->_visibleTransactionIdentifier;
    v5->_visibleTransactionIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = PKServiceProviderPurchaseStateFromString(v12);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v14 = [v13 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionIdentifier"];
    v17 = [v16 copy];
    regionIdentifier = v5->_regionIdentifier;
    v5->_regionIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    v20 = [v19 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderData"];
    v23 = [v22 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    v26 = [v25 copy];
    signature = v5->_signature;
    v5->_signature = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datePurchased"];
    v29 = [v28 copy];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"actions"];
    v35 = [v34 copy];
    actions = v5->_actions;
    v5->_actions = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerMetadata"];
    v38 = [v37 copy];
    partnerMetadata = v5->_partnerMetadata;
    v5->_partnerMetadata = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_visibleTransactionIdentifier forKey:@"visibleTransactionIdentifier"];
  v4 = self->_state - 1;
  if (v4 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D23F0[v4];
  }

  [coderCopy encodeObject:v5 forKey:@"identifier"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_regionIdentifier forKey:@"regionIdentifier"];
  [coderCopy encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [coderCopy encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_purchaseDate forKey:@"datePurchased"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_partnerMetadata forKey:@"partnerMetadata"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_visibleTransactionIdentifier];
  [array safelyAddObject:self->_deviceIdentifier];
  [array safelyAddObject:self->_regionIdentifier];
  [array safelyAddObject:self->_serviceProviderIdentifier];
  [array safelyAddObject:self->_serviceProviderData];
  [array safelyAddObject:self->_purchaseDate];
  [array safelyAddObject:self->_signature];
  [array safelyAddObject:self->_actions];
  [array safelyAddObject:self->_partnerMetadata];
  v4 = PKCombinedHash(17, array);
  v5 = self->_state - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKServiceProviderPurchase *)self isEqualToServiceProviderPurchase:equalCopy];

  return v5;
}

- (BOOL)isEqualToServiceProviderPurchase:(id)purchase
{
  purchaseCopy = purchase;
  if (self != purchaseCopy)
  {
    identifier = self->_identifier;
    v6 = purchaseCopy->_identifier;
    if (identifier)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (identifier != v6)
      {
        goto LABEL_56;
      }
    }

    else if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_56;
    }

    visibleTransactionIdentifier = self->_visibleTransactionIdentifier;
    v10 = purchaseCopy->_visibleTransactionIdentifier;
    if (visibleTransactionIdentifier && v10)
    {
      if (([(NSString *)visibleTransactionIdentifier isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (visibleTransactionIdentifier != v10)
    {
      goto LABEL_56;
    }

    deviceIdentifier = self->_deviceIdentifier;
    v12 = purchaseCopy->_deviceIdentifier;
    if (deviceIdentifier && v12)
    {
      if (([(NSString *)deviceIdentifier isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (deviceIdentifier != v12)
    {
      goto LABEL_56;
    }

    regionIdentifier = self->_regionIdentifier;
    v14 = purchaseCopy->_regionIdentifier;
    if (regionIdentifier && v14)
    {
      if (([(NSString *)regionIdentifier isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (regionIdentifier != v14)
    {
      goto LABEL_56;
    }

    serviceProviderIdentifier = self->_serviceProviderIdentifier;
    v16 = purchaseCopy->_serviceProviderIdentifier;
    if (serviceProviderIdentifier && v16)
    {
      if (([(NSString *)serviceProviderIdentifier isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (serviceProviderIdentifier != v16)
    {
      goto LABEL_56;
    }

    serviceProviderData = self->_serviceProviderData;
    v18 = purchaseCopy->_serviceProviderData;
    if (serviceProviderData && v18)
    {
      if (![(PKServiceProviderPurchaseData *)serviceProviderData isEqual:?])
      {
        goto LABEL_56;
      }
    }

    else if (serviceProviderData != v18)
    {
      goto LABEL_56;
    }

    purchaseDate = self->_purchaseDate;
    v20 = purchaseCopy->_purchaseDate;
    if (purchaseDate && v20)
    {
      if (([(NSDate *)purchaseDate isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (purchaseDate != v20)
    {
      goto LABEL_56;
    }

    signature = self->_signature;
    v22 = purchaseCopy->_signature;
    if (signature && v22)
    {
      if (([(NSString *)signature isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (signature != v22)
    {
      goto LABEL_56;
    }

    actions = self->_actions;
    v24 = purchaseCopy->_actions;
    if (actions && v24)
    {
      if (([(NSArray *)actions isEqual:?]& 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (actions != v24)
    {
      goto LABEL_56;
    }

    partnerMetadata = self->_partnerMetadata;
    v26 = purchaseCopy->_partnerMetadata;
    if (partnerMetadata && v26)
    {
      if (([(NSString *)partnerMetadata isEqual:?]& 1) != 0)
      {
LABEL_54:
        v8 = self->_state == purchaseCopy->_state;
        goto LABEL_57;
      }
    }

    else if (partnerMetadata == v26)
    {
      goto LABEL_54;
    }

LABEL_56:
    v8 = 0;
    goto LABEL_57;
  }

  v8 = 1;
LABEL_57:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_identifier)
  {
    [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  }

  if (self->_visibleTransactionIdentifier)
  {
    [v4 appendFormat:@"visibleOrderIdentifier: '%@'; ", self->_visibleTransactionIdentifier];
  }

  if (self->_deviceIdentifier)
  {
    [v4 appendFormat:@"deviceIdentifier: '%@'; ", self->_deviceIdentifier];
  }

  if (self->_regionIdentifier)
  {
    [v4 appendFormat:@"regionIdentifier: '%@'; ", self->_regionIdentifier];
  }

  if (self->_serviceProviderIdentifier)
  {
    [v4 appendFormat:@"serviceProviderIdentifier: '%@'; ", self->_serviceProviderIdentifier];
  }

  if (self->_serviceProviderData)
  {
    [v4 appendFormat:@"serviceProviderData: '%@'; ", self->_serviceProviderData];
  }

  purchaseDate = self->_purchaseDate;
  if (purchaseDate)
  {
    v6 = PKShortDateString(purchaseDate, 0);
    [v4 appendFormat:@"purchaseDate: %@;", v6];
  }

  if (self->_signature)
  {
    [v4 appendFormat:@"signature: '%@'; ", self->_signature];
  }

  if (self->_actions)
  {
    [v4 appendFormat:@"_actions: '%@'; ", self->_actions];
  }

  if (self->_partnerMetadata)
  {
    [v4 appendFormat:@"partnerMetadata: '%@'; ", self->_partnerMetadata];
  }

  [v4 appendFormat:@">"];

  return v4;
}

@end