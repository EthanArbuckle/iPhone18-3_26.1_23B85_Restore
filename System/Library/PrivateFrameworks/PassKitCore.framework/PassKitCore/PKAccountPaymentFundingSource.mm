@interface PKAccountPaymentFundingSource
+ (Class)fundingDetailsClassForFundingSourceType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (PKAccountPaymentFundingSource)initWithCoder:(id)coder;
- (PKAccountPaymentFundingSource)initWithDictionary:(id)dictionary;
- (PKAccountPaymentFundingSource)initWithType:(int64_t)type;
- (id)bankAccountRepresentation;
- (id)description;
- (id)displayDescription;
- (id)hashComponentWithCertificatesResponse:(id)response;
- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountPaymentFundingSource

+ (Class)fundingDetailsClassForFundingSourceType:(int64_t)type
{
  v4 = objc_opt_class();
  if ((type & 0xFFFFFFFFFFFFFFFBLL) == 1 || type == 2)
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PKAccountPaymentFundingSource)initWithType:(int64_t)type
{
  v5 = [objc_opt_class() fundingDetailsClassForFundingSourceType:type];
  if ([v5 isSubclassOfClass:objc_opt_class()] && (v6 = objc_alloc_init(v5)) != 0)
  {
    v7 = v6;
    v12.receiver = self;
    v12.super_class = PKAccountPaymentFundingSource;
    v8 = [(PKAccountPaymentFundingSource *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_type = type;
      objc_storeStrong(&v8->_fundingDetails, v7);
    }

    self = v9;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAccountPaymentFundingSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKAccountPaymentFundingSource;
  v5 = [(PKAccountPaymentFundingSource *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accountSuffix"];
    v7 = [dictionaryCopy PKStringForKey:@"type"];
    v8 = [dictionaryCopy PKDictionaryForKey:@"fundingDetails"];
    if (v6)
    {
      objc_storeStrong(&v5->_accountSuffix, v6);
    }

    if (v7)
    {
      v5->_type = PKAccountPaymentFundingSourceTypeFromString(v7);
    }

    if (v8)
    {
      v9 = [objc_opt_class() fundingDetailsClassForFundingSourceType:v5->_type];
      if ([(objc_class *)v9 isSubclassOfClass:objc_opt_class()])
      {
        v10 = [[v9 alloc] initWithDictionary:v8];
        fundingDetails = v5->_fundingDetails;
        v5->_fundingDetails = v10;
      }
    }

    v12 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (id)bankAccountRepresentation
{
  if ((self->_type | 4) == 5)
  {
    v3 = self->_fundingDetails;
    v4 = [[PKBankAccountInformation alloc] initWithType:1];
    [(PKBankAccountInformation *)v4 setAccountNumber:self->_accountSuffix];
    [(PKBankAccountInformation *)v4 setIdentifier:self->_identifier];
    name = [(PKAccountPaymentFundingDetails *)v3 name];
    [(PKBankAccountInformation *)v4 setBankName:name];

    status = [(PKAccountPaymentFundingDetails *)v3 status];
    [(PKBankAccountInformation *)v4 setStatus:status];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)displayDescription
{
  v8 = 0;
  type = self->_type;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_16;
      }

      v10 = @"ACCOUNT_SERVICE_PAYMENT_INFORMATION_DISPLAY_DESCRIPTION_TYPE_APC";
      goto LABEL_10;
    }

LABEL_7:
    v11 = self->_accountSuffix;
    fundingDetails = [(PKAccountPaymentFundingSource *)self fundingDetails];
    name = [fundingDetails name];
    v19 = name;
    if (name)
    {
      v20 = name;
    }

    else
    {
      v20 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BANK_ACCOUNT_DEFAULT_NAME", 2, 0, v14, v15, v16, v17, v18, v29);
    }

    v21 = v20;

    if (v11)
    {
      v27 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_BANK_ACCOUNT_DISPLAY_DESCRIPTION_FORMAT", 2, @"%1$@%2$@", v22, v23, v24, v25, v26, v21);
    }

    else
    {
      v27 = v21;
    }

    v8 = v27;

    goto LABEL_16;
  }

  if (type != 3)
  {
    if (type != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v10 = @"ACCOUNT_SERVICE_PAYMENT_INFORMATION_DISPLAY_DESCRIPTION_TYPE_OFFLINE";
LABEL_10:
  v8 = PKLocalizedFeatureString(v10, 2, 0, v2, v3, v4, v5, v6, v29);
LABEL_16:

  return v8;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionaryRepresentation = [(PKAccountPaymentFundingSource *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:jsonDictionaryRepresentation options:2 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error forming json dictionary for CloudKit with error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  return v7;
}

- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response
{
  responseCopy = response;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKeyedSubscript:@"identifier"];
  }

  else
  {
    v8 = [(PKAccountPaymentFundingDetails *)self->_fundingDetails jsonDictionaryRepresentationWithCertificatesResponse:responseCopy];
    if ([v8 count])
    {
      [v6 setObject:v8 forKeyedSubscript:@"fundingDetails"];
    }
  }

  [v6 setObject:self->_accountSuffix forKeyedSubscript:@"accountSuffix"];
  v9 = PKAccountPaymentFundingSourceTypeToString(self->_type);
  [v6 setObject:v9 forKeyedSubscript:@"type"];

  v10 = [v6 copy];

  return v10;
}

- (id)hashComponentWithCertificatesResponse:(id)response
{
  responseCopy = response;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  type = self->_type;
  if (type == 2)
  {
    identifier = @"APC";
LABEL_8:
    [v6 appendString:identifier];
    goto LABEL_9;
  }

  if (type != 1)
  {
    goto LABEL_9;
  }

  [string appendString:@"ACH"];
  identifier = self->_identifier;
  if (identifier)
  {
    goto LABEL_8;
  }

  v9 = [(PKAccountPaymentFundingDetails *)self->_fundingDetails hashComponentWithCertificatesResponse:responseCopy];
  if (v9)
  {
    [v6 appendString:v9];
  }

LABEL_9:
  v10 = [v6 copy];

  return v10;
}

- (PKAccountPaymentFundingSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKAccountPaymentFundingSource;
  v5 = [(PKAccountPaymentFundingSource *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountSuffix"];
    accountSuffix = v5->_accountSuffix;
    v5->_accountSuffix = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"fundingDetails"];
    fundingDetails = v5->_fundingDetails;
    v5->_fundingDetails = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_accountSuffix forKey:@"accountSuffix"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_fundingDetails forKey:@"fundingDetails"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_17;
  }

  accountSuffix = self->_accountSuffix;
  v8 = equalCopy[3];
  if (accountSuffix && v8)
  {
    if (([(NSString *)accountSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (accountSuffix != v8)
  {
    goto LABEL_17;
  }

  fundingDetails = self->_fundingDetails;
  v10 = equalCopy[4];
  if (!fundingDetails || !v10)
  {
    if (fundingDetails == v10)
    {
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (![(PKAccountPaymentFundingDetails *)fundingDetails isEqual:?])
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = self->_type == equalCopy[2];
LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_accountSuffix];
  [array safelyAddObject:self->_fundingDetails];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"accountSuffix: '%@'; ", self->_accountSuffix];
  v4 = PKAccountPaymentFundingSourceTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  [v3 appendFormat:@"fundingDetails: '%@'; ", self->_fundingDetails];
  [v3 appendFormat:@">"];

  return v3;
}

@end