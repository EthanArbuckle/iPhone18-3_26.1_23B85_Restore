@interface PKDisbursementRequest
+ (NSError)disbursementCardUnsupportedError;
+ (NSError)disbursementContactInvalidErrorWithContactField:(PKContactField)field localizedDescription:(NSString *)localizedDescription;
- (BOOL)isEqualToDisbursementRequest:(id)a3;
- (PKDisbursementRequest)initWithCoder:(id)a3;
- (PKDisbursementRequest)initWithMerchantIdentifier:(NSString *)merchantIdentifier currencyCode:(NSString *)currencyCode regionCode:(NSString *)regionCode supportedNetworks:(NSArray *)supportedNetworks merchantCapabilities:(PKMerchantCapability)merchantCapabilities summaryItems:(NSArray *)summaryItems;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDisbursementRequest

- (PKDisbursementRequest)initWithMerchantIdentifier:(NSString *)merchantIdentifier currencyCode:(NSString *)currencyCode regionCode:(NSString *)regionCode supportedNetworks:(NSArray *)supportedNetworks merchantCapabilities:(PKMerchantCapability)merchantCapabilities summaryItems:(NSArray *)summaryItems
{
  v14 = merchantIdentifier;
  v15 = currencyCode;
  v16 = regionCode;
  v17 = supportedNetworks;
  v18 = summaryItems;
  v31.receiver = self;
  v31.super_class = PKDisbursementRequest;
  v19 = [(PKDisbursementRequest *)&v31 init];
  if (v19)
  {
    v20 = [(NSString *)v14 copy];
    v21 = v19->_merchantIdentifier;
    v19->_merchantIdentifier = v20;

    v22 = [(NSString *)v15 copy];
    v23 = v19->_currencyCode;
    v19->_currencyCode = v22;

    v24 = [(NSString *)v16 copy];
    v25 = v19->_regionCode;
    v19->_regionCode = v24;

    v26 = [(NSArray *)v17 copy];
    v27 = v19->_supportedNetworks;
    v19->_supportedNetworks = v26;

    v19->_merchantCapabilities = merchantCapabilities;
    v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v18 copyItems:1];
    v29 = v19->_summaryItems;
    v19->_summaryItems = v28;
  }

  return v19;
}

- (BOOL)isEqualToDisbursementRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v5 = v4[1];
  v6 = self->_merchantIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_31;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_32;
    }
  }

  v10 = v4[2];
  v6 = self->_regionCode;
  v11 = v10;
  v8 = v11;
  if (v6 == v11)
  {
  }

  else
  {
    if (!v6 || !v11)
    {
      goto LABEL_31;
    }

    v12 = [(NSString *)v6 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_32;
    }
  }

  supportedNetworks = self->_supportedNetworks;
  v14 = v4[3];
  if (supportedNetworks && v14)
  {
    if (([(NSArray *)supportedNetworks isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (supportedNetworks != v14)
  {
    goto LABEL_32;
  }

  if (self->_merchantCapabilities != v4[4])
  {
    goto LABEL_32;
  }

  summaryItems = self->_summaryItems;
  v16 = v4[5];
  if (summaryItems && v16)
  {
    if (([(NSArray *)summaryItems isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (summaryItems != v16)
  {
    goto LABEL_32;
  }

  v17 = v4[6];
  v6 = self->_currencyCode;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {

    goto LABEL_35;
  }

  if (!v6 || !v18)
  {
LABEL_31:

    goto LABEL_32;
  }

  v19 = [(NSString *)v6 isEqualToString:v18];

  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_35:
  requiredRecipientContactFields = self->_requiredRecipientContactFields;
  v23 = v4[7];
  if (requiredRecipientContactFields && v23)
  {
    if (([(NSArray *)requiredRecipientContactFields isEqual:?]& 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (requiredRecipientContactFields != v23)
  {
    goto LABEL_32;
  }

  recipientContact = self->_recipientContact;
  v25 = v4[8];
  if (recipientContact && v25)
  {
    if (![(PKContact *)recipientContact isEqual:?])
    {
      goto LABEL_32;
    }
  }

  else if (recipientContact != v25)
  {
    goto LABEL_32;
  }

  supportedRegions = self->_supportedRegions;
  v27 = v4[9];
  if (supportedRegions && v27)
  {
    if (([(NSArray *)supportedRegions isEqual:?]& 1) != 0)
    {
      goto LABEL_50;
    }

LABEL_32:
    v20 = 0;
    goto LABEL_33;
  }

  if (supportedRegions != v27)
  {
    goto LABEL_32;
  }

LABEL_50:
  applicationData = self->_applicationData;
  v29 = v4[10];
  if (applicationData && v29)
  {
    v20 = [(NSData *)applicationData isEqual:?];
  }

  else
  {
    v20 = applicationData == v29;
  }

LABEL_33:

  return v20;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_merchantIdentifier];
  [v3 safelyAddObject:self->_regionCode];
  [v3 safelyAddObject:self->_supportedNetworks];
  [v3 safelyAddObject:self->_summaryItems];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_requiredRecipientContactFields];
  [v3 safelyAddObject:self->_recipientContact];
  [v3 safelyAddObject:self->_supportedRegions];
  [v3 safelyAddObject:self->_applicationData];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_merchantCapabilities - v4 + 32 * v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKDisbursementRequest allocWithZone:](PKDisbursementRequest init];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  merchantIdentifier = v5->_merchantIdentifier;
  v5->_merchantIdentifier = v6;

  v8 = [(NSString *)self->_regionCode copyWithZone:a3];
  regionCode = v5->_regionCode;
  v5->_regionCode = v8;

  v10 = [(NSArray *)self->_supportedNetworks copyWithZone:a3];
  supportedNetworks = v5->_supportedNetworks;
  v5->_supportedNetworks = v10;

  v5->_merchantCapabilities = self->_merchantCapabilities;
  v12 = [(NSArray *)self->_summaryItems copyWithZone:a3];
  summaryItems = v5->_summaryItems;
  v5->_summaryItems = v12;

  v14 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v14;

  v16 = [(NSArray *)self->_requiredRecipientContactFields copyWithZone:a3];
  requiredRecipientContactFields = v5->_requiredRecipientContactFields;
  v5->_requiredRecipientContactFields = v16;

  v18 = [(PKContact *)self->_recipientContact copyWithZone:a3];
  recipientContact = v5->_recipientContact;
  v5->_recipientContact = v18;

  v20 = [(NSArray *)self->_supportedRegions copyWithZone:a3];
  supportedRegions = v5->_supportedRegions;
  v5->_supportedRegions = v20;

  v22 = [(NSData *)self->_applicationData copyWithZone:a3];
  applicationData = v5->_applicationData;
  v5->_applicationData = v22;

  return v5;
}

- (PKDisbursementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKDisbursementRequest;
  v5 = [(PKDisbursementRequest *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v5->_regionCode;
    v5->_regionCode = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"supportedNetworks"];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v13;

    v5->_merchantCapabilities = [v4 decodeIntegerForKey:@"merchantCapabilities"];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"summaryItems"];
    summaryItems = v5->_summaryItems;
    v5->_summaryItems = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"requiredRecipientContactFields"];
    requiredRecipientContactFields = v5->_requiredRecipientContactFields;
    v5->_requiredRecipientContactFields = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientContact"];
    recipientContact = v5->_recipientContact;
    v5->_recipientContact = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"supportedRegions"];
    supportedRegions = v5->_supportedRegions;
    v5->_supportedRegions = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationData"];
    applicationData = v5->_applicationData;
    v5->_applicationData = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  merchantIdentifier = self->_merchantIdentifier;
  v5 = a3;
  [v5 encodeObject:merchantIdentifier forKey:@"merchantIdentifier"];
  [v5 encodeObject:self->_regionCode forKey:@"regionCode"];
  [v5 encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [v5 encodeInteger:self->_merchantCapabilities forKey:@"merchantCapabilities"];
  [v5 encodeObject:self->_summaryItems forKey:@"summaryItems"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_requiredRecipientContactFields forKey:@"requiredRecipientContactFields"];
  [v5 encodeObject:self->_recipientContact forKey:@"recipientContact"];
  [v5 encodeObject:self->_supportedRegions forKey:@"supportedRegions"];
  [v5 encodeObject:self->_applicationData forKey:@"applicationData"];
}

+ (NSError)disbursementContactInvalidErrorWithContactField:(PKContactField)field localizedDescription:(NSString *)localizedDescription
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = localizedDescription;
  v7 = field;
  v8 = [v5 alloc];
  v13[0] = *MEMORY[0x1E696A578];
  v13[1] = @"PKDisbursementErrorContactField";
  v9 = &stru_1F227FD28;
  if (v6)
  {
    v9 = v6;
  }

  v14[0] = v9;
  v14[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v8 initWithDomain:@"PKDisbursementErrorDomain" code:2 userInfo:v10];

  return v11;
}

+ (NSError)disbursementCardUnsupportedError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = &stru_1F227FD28;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"PKDisbursementErrorDomain" code:1 userInfo:v3];

  return v4;
}

@end