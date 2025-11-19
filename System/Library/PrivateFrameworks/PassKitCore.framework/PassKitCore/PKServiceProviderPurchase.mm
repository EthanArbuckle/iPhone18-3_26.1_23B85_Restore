@interface PKServiceProviderPurchase
+ (PKServiceProviderPurchase)purchaseWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServiceProviderPurchase:(id)a3;
- (PKServiceProviderPurchase)initWithCoder:(id)a3;
- (PKServiceProviderPurchase)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKServiceProviderPurchase

+ (PKServiceProviderPurchase)purchaseWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKServiceProviderPurchase)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = PKServiceProviderPurchase;
  v5 = [(PKServiceProviderPurchase *)&v45 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 PKStringForKey:@"visibleTransactionIdentifier"];
    v10 = [v9 copy];
    visibleTransactionIdentifier = v5->_visibleTransactionIdentifier;
    v5->_visibleTransactionIdentifier = v10;

    v12 = [v4 PKStringForKey:@"state"];
    v5->_state = PKServiceProviderPurchaseStateFromString(v12);

    v13 = [v4 PKStringForKey:@"deviceIdentifier"];
    v14 = [v13 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v14;

    v16 = [v4 PKStringForKey:@"serviceProviderIdentifier"];
    v17 = [v16 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v17;

    v19 = [v4 PKDictionaryForKey:@"serviceProviderData"];
    v20 = [v19 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v20;

    v22 = [v4 PKStringForKey:@"signature"];
    v23 = [v22 copy];
    signature = v5->_signature;
    v5->_signature = v23;

    v25 = [v4 PKDateForKey:@"datePurchased"];
    v26 = [v25 copy];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v26;

    v28 = [v4 PKStringForKey:@"partnerMetadata"];
    v29 = [v28 copy];
    partnerMetadata = v5->_partnerMetadata;
    v5->_partnerMetadata = v29;

    v31 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [v4 PKArrayContaining:objc_opt_class() forKey:{@"actions", 0}];
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
            [v31 addObject:v37];
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    v38 = [v31 copy];
    actions = v5->_actions;
    v5->_actions = v38;
  }

  return v5;
}

- (PKServiceProviderPurchase)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PKServiceProviderPurchase;
  v5 = [(PKServiceProviderPurchase *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visibleTransactionIdentifier"];
    v10 = [v9 copy];
    visibleTransactionIdentifier = v5->_visibleTransactionIdentifier;
    v5->_visibleTransactionIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = PKServiceProviderPurchaseStateFromString(v12);

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v14 = [v13 copy];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionIdentifier"];
    v17 = [v16 copy];
    regionIdentifier = v5->_regionIdentifier;
    v5->_regionIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderIdentifier"];
    v20 = [v19 copy];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderData"];
    v23 = [v22 copy];
    serviceProviderData = v5->_serviceProviderData;
    v5->_serviceProviderData = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    v26 = [v25 copy];
    signature = v5->_signature;
    v5->_signature = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datePurchased"];
    v29 = [v28 copy];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"actions"];
    v35 = [v34 copy];
    actions = v5->_actions;
    v5->_actions = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerMetadata"];
    v38 = [v37 copy];
    partnerMetadata = v5->_partnerMetadata;
    v5->_partnerMetadata = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_visibleTransactionIdentifier forKey:@"visibleTransactionIdentifier"];
  v4 = self->_state - 1;
  if (v4 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D23F0[v4];
  }

  [v6 encodeObject:v5 forKey:@"identifier"];
  [v6 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v6 encodeObject:self->_regionIdentifier forKey:@"regionIdentifier"];
  [v6 encodeObject:self->_serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  [v6 encodeObject:self->_serviceProviderData forKey:@"serviceProviderData"];
  [v6 encodeObject:self->_signature forKey:@"signature"];
  [v6 encodeObject:self->_purchaseDate forKey:@"datePurchased"];
  [v6 encodeObject:self->_actions forKey:@"actions"];
  [v6 encodeObject:self->_partnerMetadata forKey:@"partnerMetadata"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_visibleTransactionIdentifier];
  [v3 safelyAddObject:self->_deviceIdentifier];
  [v3 safelyAddObject:self->_regionIdentifier];
  [v3 safelyAddObject:self->_serviceProviderIdentifier];
  [v3 safelyAddObject:self->_serviceProviderData];
  [v3 safelyAddObject:self->_purchaseDate];
  [v3 safelyAddObject:self->_signature];
  [v3 safelyAddObject:self->_actions];
  [v3 safelyAddObject:self->_partnerMetadata];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_state - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKServiceProviderPurchase *)self isEqualToServiceProviderPurchase:v4];

  return v5;
}

- (BOOL)isEqualToServiceProviderPurchase:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    identifier = self->_identifier;
    v6 = v4->_identifier;
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
    v10 = v4->_visibleTransactionIdentifier;
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
    v12 = v4->_deviceIdentifier;
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
    v14 = v4->_regionIdentifier;
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
    v16 = v4->_serviceProviderIdentifier;
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
    v18 = v4->_serviceProviderData;
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
    v20 = v4->_purchaseDate;
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
    v22 = v4->_signature;
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
    v24 = v4->_actions;
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
    v26 = v4->_partnerMetadata;
    if (partnerMetadata && v26)
    {
      if (([(NSString *)partnerMetadata isEqual:?]& 1) != 0)
      {
LABEL_54:
        v8 = self->_state == v4->_state;
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