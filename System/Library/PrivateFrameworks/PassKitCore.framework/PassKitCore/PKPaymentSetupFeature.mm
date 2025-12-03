@interface PKPaymentSetupFeature
+ (id)paymentSetupFeatureWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (PKPaymentSetupFeature)initWithCoder:(id)coder;
- (PKPaymentSetupFeature)initWithIdentifiers:(id)identifiers localizedDisplayName:(id)name;
- (id)_initWithWebKitPropertyListData:(id)data;
- (id)_webKitPropertyListData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitizePaymentSetupFeature;
@end

@implementation PKPaymentSetupFeature

+ (id)paymentSetupFeatureWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPaymentSetupFeature);
  -[PKPaymentSetupFeature setState:](v4, "setState:", [protobufCopy state]);
  type = [protobufCopy type];

  [(PKPaymentSetupFeature *)v4 setType:type];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentSetupFeature);
  [(PKProtobufPaymentSetupFeature *)v3 setState:[(PKPaymentSetupFeature *)self state]];
  [(PKProtobufPaymentSetupFeature *)v3 setType:[(PKPaymentSetupFeature *)self state]];

  return v3;
}

- (PKPaymentSetupFeature)initWithIdentifiers:(id)identifiers localizedDisplayName:(id)name
{
  identifiersCopy = identifiers;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFeature;
  v9 = [(PKPaymentSetupFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifiers, identifiers);
    objc_storeStrong(&v10->_localizedDisplayName, name);
  }

  return v10;
}

- (void)sanitizePaymentSetupFeature
{
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = 0;

  partnerIdentifier = self->_partnerIdentifier;
  self->_partnerIdentifier = 0;

  dirtyStateIdentifier = self->_dirtyStateIdentifier;
  self->_featureIdentifier = 0;
  self->_dirtyStateIdentifier = 0;

  self->_productType = 0;
  self->_productState = 0;
  notificationTitle = self->_notificationTitle;
  self->_notificationTitle = 0;

  notificationMessage = self->_notificationMessage;
  self->_notificationMessage = 0;

  discoveryCardIdentifier = self->_discoveryCardIdentifier;
  self->_discoveryCardIdentifier = 0;
}

- (PKPaymentSetupFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PKPaymentSetupFeature;
  v5 = [(PKPaymentSetupFeature *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v11;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_supportedOptions = [coderCopy decodeIntegerForKey:@"supportedOptions"];
    v5->_supportedDevices = [coderCopy decodeIntegerForKey:@"supportedDevices"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v15;

    v5->_featureIdentifier = [coderCopy decodeIntegerForKey:@"featureIdentifier"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiry"];
    expiry = v5->_expiry;
    v5->_expiry = v19;

    v5->_productType = [coderCopy decodeIntegerForKey:@"productType"];
    v5->_productState = [coderCopy decodeIntegerForKey:@"productState"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationTitle"];
    notificationTitle = v5->_notificationTitle;
    v5->_notificationTitle = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationMessage"];
    notificationMessage = v5->_notificationMessage;
    v5->_notificationMessage = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveryCardIdentifier"];
    discoveryCardIdentifier = v5->_discoveryCardIdentifier;
    v5->_discoveryCardIdentifier = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifiers = self->_identifiers;
  coderCopy = coder;
  [coderCopy encodeObject:identifiers forKey:@"identifiers"];
  [coderCopy encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_supportedOptions forKey:@"supportedOptions"];
  [coderCopy encodeInteger:self->_supportedDevices forKey:@"supportedDevices"];
  [coderCopy encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [coderCopy encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [coderCopy encodeInteger:self->_featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeObject:self->_expiry forKey:@"expiry"];
  [coderCopy encodeInteger:self->_productType forKey:@"productType"];
  [coderCopy encodeInteger:self->_productState forKey:@"productState"];
  [coderCopy encodeObject:self->_notificationTitle forKey:@"notificationTitle"];
  [coderCopy encodeObject:self->_notificationMessage forKey:@"notificationMessage"];
  [coderCopy encodeObject:self->_discoveryCardIdentifier forKey:@"discoveryCardIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifiers: %@ ", self->_identifiers];
  [v3 appendFormat:@"productIdentifier: %@ ", self->_productIdentifier];
  [v3 appendFormat:@"localizedDisplayName: %@ ", self->_localizedDisplayName];
  type = self->_type;
  if (type > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79E0B30[type];
  }

  [v3 appendFormat:@"type: %@ ", v5];
  state = self->_state;
  if (state > 3)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_1E79E0B50[state];
  }

  [v3 appendFormat:@"state: %@ ", v7];
  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentSetupFeature allocWithZone:](PKPaymentSetupFeature init];
  v6 = [(NSSet *)self->_identifiers copyWithZone:zone];
  identifiers = v5->_identifiers;
  v5->_identifiers = v6;

  v8 = [(NSString *)self->_localizedDisplayName copyWithZone:zone];
  localizedDisplayName = v5->_localizedDisplayName;
  v5->_localizedDisplayName = v8;

  v5->_type = self->_type;
  v5->_state = self->_state;
  v5->_supportedOptions = self->_supportedOptions;
  v5->_supportedDevices = self->_supportedDevices;
  v10 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v10;

  v12 = [(NSString *)self->_partnerIdentifier copyWithZone:zone];
  partnerIdentifier = v5->_partnerIdentifier;
  v5->_partnerIdentifier = v12;

  v5->_featureIdentifier = self->_featureIdentifier;
  v14 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v14;

  v16 = [(NSDate *)self->_expiry copyWithZone:zone];
  expiry = v5->_expiry;
  v5->_expiry = v16;

  v5->_productType = self->_productType;
  v5->_productState = self->_productState;
  v18 = [(NSString *)self->_notificationTitle copyWithZone:zone];
  notificationTitle = v5->_notificationTitle;
  v5->_notificationTitle = v18;

  v20 = [(NSString *)self->_notificationMessage copyWithZone:zone];
  notificationMessage = v5->_notificationMessage;
  v5->_notificationMessage = v20;

  v22 = [(NSString *)self->_discoveryCardIdentifier copyWithZone:zone];
  discoveryCardIdentifier = v5->_discoveryCardIdentifier;
  v5->_discoveryCardIdentifier = v22;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_53;
  }

  v5 = *(equalCopy + 1);
  identifiers = self->_identifiers;
  if (v5)
  {
    v7 = identifiers == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5 != identifiers)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v8 = [(NSSet *)v5 isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  localizedDisplayName = self->_localizedDisplayName;
  v10 = *(equalCopy + 2);
  v11 = localizedDisplayName;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if (!v10 || !v11)
    {
      goto LABEL_52;
    }

    v13 = [(NSString *)v10 isEqualToString:v11];

    if (!v13)
    {
      goto LABEL_53;
    }
  }

  if (*(equalCopy + 4) != self->_state || *(equalCopy + 3) != self->_type || *(equalCopy + 5) != self->_supportedOptions || *(equalCopy + 6) != self->_supportedDevices)
  {
    goto LABEL_53;
  }

  productIdentifier = self->_productIdentifier;
  v10 = *(equalCopy + 7);
  v15 = productIdentifier;
  v12 = v15;
  if (v10 == v15)
  {
  }

  else
  {
    if (!v10 || !v15)
    {
      goto LABEL_52;
    }

    v16 = [(NSString *)v10 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_53;
    }
  }

  partnerIdentifier = self->_partnerIdentifier;
  v10 = *(equalCopy + 8);
  v18 = partnerIdentifier;
  v12 = v18;
  if (v10 == v18)
  {
  }

  else
  {
    if (!v10 || !v18)
    {
      goto LABEL_52;
    }

    v19 = [(NSString *)v10 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_53;
    }
  }

  if (*(equalCopy + 9) != self->_featureIdentifier || *(equalCopy + 13) != self->_productType || *(equalCopy + 14) != self->_productState)
  {
    goto LABEL_53;
  }

  notificationTitle = self->_notificationTitle;
  v10 = *(equalCopy + 15);
  v21 = notificationTitle;
  v12 = v21;
  if (v10 == v21)
  {
  }

  else
  {
    if (!v10 || !v21)
    {
      goto LABEL_52;
    }

    v22 = [(NSString *)v10 isEqualToString:v21];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  notificationMessage = self->_notificationMessage;
  v10 = *(equalCopy + 16);
  v24 = notificationMessage;
  v12 = v24;
  if (v10 == v24)
  {
  }

  else
  {
    if (!v10 || !v24)
    {
      goto LABEL_52;
    }

    v25 = [(NSString *)v10 isEqualToString:v24];

    if (!v25)
    {
      goto LABEL_53;
    }
  }

  discoveryCardIdentifier = self->_discoveryCardIdentifier;
  v10 = *(equalCopy + 17);
  v27 = discoveryCardIdentifier;
  v12 = v27;
  if (v10 != v27)
  {
    if (v10 && v27)
    {
      v28 = [(NSString *)v10 isEqualToString:v27];

      if (!v28)
      {
        goto LABEL_53;
      }

      goto LABEL_56;
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_56:
  if (*(equalCopy + 11) == self->_lastUpdated)
  {
    v29 = *(equalCopy + 12) == self->_expiry;
    goto LABEL_54;
  }

LABEL_53:
  v29 = 0;
LABEL_54:

  return v29;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifiers];
  [v3 safelyAddObject:self->_localizedDisplayName];
  [v3 safelyAddObject:self->_productIdentifier];
  [v3 safelyAddObject:self->_partnerIdentifier];
  [v3 safelyAddObject:self->_notificationTitle];
  [v3 safelyAddObject:self->_notificationMessage];
  [v3 safelyAddObject:self->_discoveryCardIdentifier];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_expiry];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_state - v5 + 32 * v5;
  v7 = self->_supportedOptions - v6 + 32 * v6;
  v8 = self->_supportedDevices - v7 + 32 * v7;
  v9 = self->_featureIdentifier - v8 + 32 * v8;
  v10 = self->_productType - v9 + 32 * v9;
  v11 = self->_productState - v10 + 32 * v10;

  return v11;
}

- (id)_webKitPropertyListData
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:16];
  v4 = v3;
  identifiers = self->_identifiers;
  if (identifiers)
  {
    [v3 setObject:identifiers forKeyedSubscript:@"identifiers"];
  }

  localizedDisplayName = self->_localizedDisplayName;
  if (localizedDisplayName)
  {
    [v4 setObject:localizedDisplayName forKeyedSubscript:@"localizedDisplayName"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v4 setObject:v7 forKeyedSubscript:@"type"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  [v4 setObject:v8 forKeyedSubscript:@"state"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_supportedOptions];
  [v4 setObject:v9 forKeyedSubscript:@"supportedOptions"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_supportedDevices];
  [v4 setObject:v10 forKeyedSubscript:@"supportedDevices"];

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [v4 setObject:productIdentifier forKeyedSubscript:@"productIdentifier"];
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier)
  {
    [v4 setObject:partnerIdentifier forKeyedSubscript:@"partnerIdentifier"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_featureIdentifier];
  [v4 setObject:v13 forKeyedSubscript:@"featureIdentifier"];

  lastUpdated = self->_lastUpdated;
  if (lastUpdated)
  {
    [v4 setObject:lastUpdated forKeyedSubscript:@"lastUpdated"];
  }

  expiry = self->_expiry;
  if (expiry)
  {
    [v4 setObject:expiry forKeyedSubscript:@"expiry"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_productType];
  [v4 setObject:v16 forKeyedSubscript:@"productType"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_productState];
  [v4 setObject:v17 forKeyedSubscript:@"productState"];

  notificationTitle = self->_notificationTitle;
  if (notificationTitle)
  {
    [v4 setObject:notificationTitle forKeyedSubscript:@"notificationTitle"];
  }

  notificationMessage = self->_notificationMessage;
  if (notificationMessage)
  {
    [v4 setObject:notificationMessage forKeyedSubscript:@"notificationMessage"];
  }

  discoveryCardIdentifier = self->_discoveryCardIdentifier;
  if (discoveryCardIdentifier)
  {
    [v4 setObject:discoveryCardIdentifier forKeyedSubscript:@"discoveryCardIdentifier"];
  }

  v21 = [v4 copy];

  return v21;
}

- (id)_initWithWebKitPropertyListData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(PKPaymentSetupFeature);

  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v6;

    v8 = [dataCopy objectForKeyedSubscript:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [dataCopy objectForKeyedSubscript:@"type"];
    v5->_type = [v10 integerValue];

    v11 = [dataCopy objectForKeyedSubscript:@"state"];
    v5->_state = [v11 integerValue];

    v12 = [dataCopy objectForKeyedSubscript:@"supportedOptions"];
    v5->_supportedOptions = [v12 integerValue];

    v13 = [dataCopy objectForKeyedSubscript:@"supportedDevices"];
    v5->_supportedDevices = [v13 integerValue];

    v14 = [dataCopy objectForKeyedSubscript:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v14;

    v16 = [dataCopy objectForKeyedSubscript:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v16;

    v18 = [dataCopy objectForKeyedSubscript:@"featureIdentifier"];
    v5->_featureIdentifier = [v18 integerValue];

    v19 = [dataCopy objectForKeyedSubscript:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v19;

    v21 = [dataCopy objectForKeyedSubscript:@"expiry"];
    expiry = v5->_expiry;
    v5->_expiry = v21;

    v23 = [dataCopy objectForKeyedSubscript:@"productType"];
    v5->_productType = [v23 integerValue];

    v24 = [dataCopy objectForKeyedSubscript:@"productState"];
    v5->_productState = [v24 integerValue];

    v25 = [dataCopy objectForKeyedSubscript:@"notificationTitle"];
    notificationTitle = v5->_notificationTitle;
    v5->_notificationTitle = v25;

    v27 = [dataCopy objectForKeyedSubscript:@"notificationMessage"];
    notificationMessage = v5->_notificationMessage;
    v5->_notificationMessage = v27;

    v29 = [dataCopy objectForKeyedSubscript:@"discoveryCardIdentifier"];
    discoveryCardIdentifier = v5->_discoveryCardIdentifier;
    v5->_discoveryCardIdentifier = v29;
  }

  return v5;
}

@end