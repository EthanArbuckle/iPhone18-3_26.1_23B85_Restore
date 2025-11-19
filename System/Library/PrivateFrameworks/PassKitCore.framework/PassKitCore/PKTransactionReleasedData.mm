@interface PKTransactionReleasedData
- (BOOL)isAgeVerificationElement:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReleasedData:(id)a3;
- (BOOL)isPortraitElement:(id)a3;
- (PKTransactionReleasedData)initWithCoder:(id)a3;
- (PKTransactionReleasedData)initWithDocumentType:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)verificationType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionReleasedData

- (PKTransactionReleasedData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentType"];
  if (v5)
  {
    v6 = [(PKTransactionReleasedData *)self initWithDocumentType:v5];
    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"elements"];
      elements = v6->_elements;
      v6->_elements = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
      application = v6->_application;
      v6->_application = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
      privacyPolicyURL = v6->_privacyPolicyURL;
      v6->_privacyPolicyURL = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificateData"];
      certificateData = v6->_certificateData;
      v6->_certificateData = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantNameOverride"];
      merchantNameOverride = v6->_merchantNameOverride;
      v6->_merchantNameOverride = v18;
    }

    self = v6;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  documentType = self->_documentType;
  v5 = a3;
  [v5 encodeObject:documentType forKey:@"documentType"];
  [v5 encodeObject:self->_elements forKey:@"elements"];
  [v5 encodeObject:self->_application forKey:@"application"];
  [v5 encodeObject:self->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [v5 encodeObject:self->_certificateData forKey:@"certificateData"];
  [v5 encodeObject:self->_merchantNameOverride forKey:@"merchantNameOverride"];
}

- (PKTransactionReleasedData)initWithDocumentType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTransactionReleasedData;
  v6 = [(PKTransactionReleasedData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentType, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_documentType];
  [v3 safelyAddObject:self->_elements];
  [v3 safelyAddObject:self->_application];
  [v3 safelyAddObject:self->_privacyPolicyURL];
  [v3 safelyAddObject:self->_certificateData];
  [v3 safelyAddObject:self->_merchantNameOverride];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReleasedData *)self isEqualToReleasedData:v5];
  }

  return v6;
}

- (BOOL)isEqualToReleasedData:(id)a3
{
  v4 = a3;
  documentType = self->_documentType;
  v6 = v4[1];
  if (documentType)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (documentType != v6)
    {
      goto LABEL_31;
    }
  }

  else if (([(NSString *)documentType isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

  elements = self->_elements;
  v9 = v4[2];
  if (elements && v9)
  {
    if (([(NSSet *)elements isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (elements != v9)
  {
    goto LABEL_31;
  }

  application = self->_application;
  v11 = v4[3];
  if (application && v11)
  {
    if (![(PKTransactionReleasedDataApplication *)application isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (application != v11)
  {
    goto LABEL_31;
  }

  privacyPolicyURL = self->_privacyPolicyURL;
  v13 = v4[4];
  if (privacyPolicyURL && v13)
  {
    if (([(NSURL *)privacyPolicyURL isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (privacyPolicyURL != v13)
  {
    goto LABEL_31;
  }

  certificateData = self->_certificateData;
  v15 = v4[5];
  if (!certificateData || !v15)
  {
    if (certificateData == v15)
    {
      goto LABEL_27;
    }

LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  if (([(NSData *)certificateData isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  merchantNameOverride = self->_merchantNameOverride;
  v17 = v4[6];
  if (merchantNameOverride && v17)
  {
    v18 = [(NSString *)merchantNameOverride isEqual:?];
  }

  else
  {
    v18 = merchantNameOverride == v17;
  }

LABEL_32:

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_documentType forKey:@"documentType"];
  elements = self->_elements;
  if (elements)
  {
    v5 = [(NSSet *)elements pk_setByApplyingBlock:&__block_literal_global_137];
    v6 = [v5 allObjects];
    [v3 setObject:v6 forKey:@"elements"];
  }

  application = self->_application;
  if (application)
  {
    [v3 setObject:application forKey:@"application"];
  }

  privacyPolicyURL = self->_privacyPolicyURL;
  if (privacyPolicyURL)
  {
    [v3 setObject:privacyPolicyURL forKey:@"privacyPolicyURL"];
  }

  certificateData = self->_certificateData;
  if (certificateData)
  {
    [v3 setObject:certificateData forKey:@"certificateData"];
  }

  merchantNameOverride = self->_merchantNameOverride;
  if (merchantNameOverride)
  {
    [v3 setObject:merchantNameOverride forKey:@"merchantNameOverride"];
  }

  v11 = [v3 copy];

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"documentType: '%@'; ", self->_documentType];
  v4 = [(NSSet *)self->_elements description];
  [v3 appendFormat:@"elements: '%@'; ", v4];

  v5 = [(PKTransactionReleasedDataApplication *)self->_application description];
  [v3 appendFormat:@"application: '%@'; ", v5];

  v6 = [(NSURL *)self->_privacyPolicyURL description];
  [v3 appendFormat:@"privacyPolicyURL: '%@'; ", v6];

  [v3 appendFormat:@"certificateData: %ld bytes; ", -[NSData length](self->_certificateData, "length")];
  [v3 appendFormat:@"merchantNameOverride: '%@'; ", self->_merchantNameOverride];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isAgeVerificationElement:(id)a3
{
  v3 = a3;
  v4 = [v3 elementNamespace];
  v5 = v4;
  if (v4 == @"org.iso.18013.5.1")
  {
  }

  else
  {
    if (!v4 || !@"org.iso.18013.5.1")
    {

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }

    v6 = [(__CFString *)v4 isEqualToString:@"org.iso.18013.5.1"];

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  v7 = [v3 identifier];
  v5 = v7;
  if (v7 == @"age_in_years")
  {
  }

  else
  {
    if (!v7 || !@"age_in_years")
    {

LABEL_16:
      LOBYTE(v6) = [(__CFString *)v5 containsString:@"age_over_"];
      goto LABEL_17;
    }

    v8 = [(__CFString *)v7 isEqualToString:@"age_in_years"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  LOBYTE(v6) = 1;
LABEL_17:

LABEL_18:
  return v6;
}

- (BOOL)isPortraitElement:(id)a3
{
  v3 = a3;
  v4 = [v3 elementNamespace];
  v5 = v4;
  if (v4 == @"org.iso.18013.5.1")
  {

LABEL_7:
    v5 = [v3 identifier];
    v7 = @"portrait";
    v8 = v7;
    if (v5 == v7)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = 0;
      if (v5 && v7)
      {
        LOBYTE(v6) = [(__CFString *)v5 isEqualToString:v7];
      }
    }

    goto LABEL_13;
  }

  LOBYTE(v6) = 0;
  if (v4 && @"org.iso.18013.5.1")
  {
    v6 = [(__CFString *)v4 isEqualToString:@"org.iso.18013.5.1"];

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

LABEL_13:

LABEL_14:
  return v6;
}

- (unint64_t)verificationType
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PKTransactionReleasedData *)self elements];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(PKTransactionReleasedData *)self isAgeVerificationElement:v9])
        {
          v6 = 1;
        }

        else if (![(PKTransactionReleasedData *)self isPortraitElement:v9])
        {
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);

    return v6 & 1;
  }

  else
  {
LABEL_12:

    return 0;
  }
}

@end