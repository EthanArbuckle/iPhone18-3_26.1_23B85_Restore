@interface PKAccountPaymentFundingSource
+ (Class)fundingDetailsClassForFundingSourceType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountPaymentFundingSource)initWithCoder:(id)a3;
- (PKAccountPaymentFundingSource)initWithDictionary:(id)a3;
- (PKAccountPaymentFundingSource)initWithType:(int64_t)a3;
- (id)bankAccountRepresentation;
- (id)description;
- (id)displayDescription;
- (id)hashComponentWithCertificatesResponse:(id)a3;
- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)a3;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPaymentFundingSource

+ (Class)fundingDetailsClassForFundingSourceType:(int64_t)a3
{
  v4 = objc_opt_class();
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 1 || a3 == 2)
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PKAccountPaymentFundingSource)initWithType:(int64_t)a3
{
  v5 = [objc_opt_class() fundingDetailsClassForFundingSourceType:a3];
  if ([v5 isSubclassOfClass:objc_opt_class()] && (v6 = objc_alloc_init(v5)) != 0)
  {
    v7 = v6;
    v12.receiver = self;
    v12.super_class = PKAccountPaymentFundingSource;
    v8 = [(PKAccountPaymentFundingSource *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_type = a3;
      objc_storeStrong(&v8->_fundingDetails, v7);
    }

    self = v9;

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKAccountPaymentFundingSource)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountPaymentFundingSource;
  v5 = [(PKAccountPaymentFundingSource *)&v15 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"accountSuffix"];
    v7 = [v4 PKStringForKey:@"type"];
    v8 = [v4 PKDictionaryForKey:@"fundingDetails"];
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

    v12 = [v4 PKStringForKey:@"identifier"];
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
    v5 = [(PKAccountPaymentFundingDetails *)v3 name];
    [(PKBankAccountInformation *)v4 setBankName:v5];

    v6 = [(PKAccountPaymentFundingDetails *)v3 status];
    [(PKBankAccountInformation *)v4 setStatus:v6];
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
    v12 = [(PKAccountPaymentFundingSource *)self fundingDetails];
    v13 = [v12 name];
    v19 = v13;
    if (v13)
    {
      v20 = v13;
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
  v3 = [(PKAccountPaymentFundingSource *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:2 error:&v9];
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

- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  identifier = self->_identifier;
  if (identifier)
  {
    [v5 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  else
  {
    v8 = [(PKAccountPaymentFundingDetails *)self->_fundingDetails jsonDictionaryRepresentationWithCertificatesResponse:v4];
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

- (id)hashComponentWithCertificatesResponse:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = v5;
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

  [v5 appendString:@"ACH"];
  identifier = self->_identifier;
  if (identifier)
  {
    goto LABEL_8;
  }

  v9 = [(PKAccountPaymentFundingDetails *)self->_fundingDetails hashComponentWithCertificatesResponse:v4];
  if (v9)
  {
    [v6 appendString:v9];
  }

LABEL_9:
  v10 = [v6 copy];

  return v10;
}

- (PKAccountPaymentFundingSource)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKAccountPaymentFundingSource;
  v5 = [(PKAccountPaymentFundingSource *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountSuffix"];
    accountSuffix = v5->_accountSuffix;
    v5->_accountSuffix = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"fundingDetails"];
    fundingDetails = v5->_fundingDetails;
    v5->_fundingDetails = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_accountSuffix forKey:@"accountSuffix"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_fundingDetails forKey:@"fundingDetails"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  identifier = self->_identifier;
  v6 = v4[1];
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
  v8 = v4[3];
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
  v10 = v4[4];
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
  v11 = self->_type == v4[2];
LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_accountSuffix];
  [v3 safelyAddObject:self->_fundingDetails];
  v4 = PKCombinedHash(17, v3);
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