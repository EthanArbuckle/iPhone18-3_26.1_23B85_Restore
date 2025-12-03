@interface PKPaymentInstallmentConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstallmentConfiguration:(id)configuration;
- (PKPaymentInstallmentConfiguration)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeToBodyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentInstallmentConfiguration

- (void)encodeToBodyDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [dictionaryCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isInstallment"];
  openToBuyThresholdAmount = [(PKPaymentInstallmentConfiguration *)self openToBuyThresholdAmount];
  stringValue = [openToBuyThresholdAmount stringValue];
  [dictionaryCopy setObject:stringValue forKeyedSubscript:@"installmentAmount"];

  currencyCode = [(PKPaymentInstallmentConfiguration *)self currencyCode];
  [dictionaryCopy setObject:currencyCode forKeyedSubscript:@"installmentCurrencyCode"];

  v8 = PKInstallmentRetailChannelToString([(PKPaymentInstallmentConfiguration *)self retailChannel]);
  [dictionaryCopy setObject:v8 forKeyedSubscript:@"installmentChannel"];

  installmentItems = [(PKPaymentInstallmentConfiguration *)self installmentItems];
  if ([installmentItems count])
  {
    v10 = [installmentItems pk_arrayByApplyingBlock:&__block_literal_global_0];
    [dictionaryCopy setObject:v10 forKeyedSubscript:@"installmentItems"];
  }

  applicationMetadata = [(PKPaymentInstallmentConfiguration *)self applicationMetadata];
  if (applicationMetadata)
  {
    v15 = 0;
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:applicationMetadata options:0 error:&v15];
    v13 = v15;
    if (v12)
    {
      [dictionaryCopy setObject:applicationMetadata forKeyedSubscript:@"installmentMetadata"];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(0xEuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Invalid JSON data with PKPaymentInstallmentConfiguration: %@", buf, 0xCu);
      }
    }
  }
}

id __86__PKPaymentInstallmentConfiguration_PKApplyWebServiceRequest__encodeToBodyDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "installmentItemType")}];
  v6 = [v5 stringValue];
  [v4 setObject:v6 forKeyedSubscript:@"installmentItemType"];

  v7 = [v3 amount];
  v8 = [v7 stringValue];
  [v4 setObject:v8 forKeyedSubscript:@"amount"];

  v9 = [v3 currencyCode];
  [v4 setObject:v9 forKeyedSubscript:@"currencyCode"];

  v10 = [v3 programIdentifier];
  [v4 setObject:v10 forKeyedSubscript:@"programIdentifier"];

  v11 = [v3 apr];
  v12 = [v11 stringValue];
  [v4 setObject:v12 forKeyedSubscript:@"apr"];

  v13 = [v3 programTerms];

  [v4 setObject:v13 forKeyedSubscript:@"terms"];
  v14 = [v4 copy];

  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_merchandisingImageData];
  [v3 safelyAddObject:self->_openToBuyThresholdAmount];
  [v3 safelyAddObject:self->_bindingTotalAmount];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_installmentMerchantIdentifier];
  [v3 safelyAddObject:self->_referrerIdentifier];
  [v3 safelyAddObject:self->_applicationMetadata];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_inStorePurchase - v4 + 32 * v4;
  v6 = self->_feature - v5 + 32 * v5;
  v7 = self->_retailChannel - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentInstallmentConfiguration *)self isEqualToInstallmentConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    goto LABEL_47;
  }

  merchandisingImageData = self->_merchandisingImageData;
  v6 = configurationCopy[3];
  if (merchandisingImageData)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (merchandisingImageData != v6)
    {
      goto LABEL_47;
    }
  }

  else if (([(NSData *)merchandisingImageData isEqual:?]& 1) == 0)
  {
    goto LABEL_47;
  }

  if (self->_feature != configurationCopy[2])
  {
    goto LABEL_47;
  }

  openToBuyThresholdAmount = self->_openToBuyThresholdAmount;
  v9 = configurationCopy[4];
  if (openToBuyThresholdAmount && v9)
  {
    if (([(NSDecimalNumber *)openToBuyThresholdAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (openToBuyThresholdAmount != v9)
  {
    goto LABEL_47;
  }

  bindingTotalAmount = self->_bindingTotalAmount;
  v11 = configurationCopy[5];
  if (bindingTotalAmount && v11)
  {
    if (([(NSDecimalNumber *)bindingTotalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (bindingTotalAmount != v11)
  {
    goto LABEL_47;
  }

  currencyCode = self->_currencyCode;
  v13 = configurationCopy[6];
  if (currencyCode && v13)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (currencyCode != v13)
  {
    goto LABEL_47;
  }

  if (self->_inStorePurchase != *(configurationCopy + 8))
  {
    goto LABEL_47;
  }

  installmentMerchantIdentifier = self->_installmentMerchantIdentifier;
  v15 = configurationCopy[7];
  if (installmentMerchantIdentifier && v15)
  {
    if (([(NSString *)installmentMerchantIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (installmentMerchantIdentifier != v15)
  {
    goto LABEL_47;
  }

  referrerIdentifier = self->_referrerIdentifier;
  v17 = configurationCopy[8];
  if (referrerIdentifier && v17)
  {
    if (([(NSString *)referrerIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (referrerIdentifier != v17)
  {
    goto LABEL_47;
  }

  installmentItems = self->_installmentItems;
  v19 = configurationCopy[9];
  if (installmentItems && v19)
  {
    if (([(NSArray *)installmentItems isEqual:?]& 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (installmentItems != v19)
  {
    goto LABEL_47;
  }

  applicationMetadata = self->_applicationMetadata;
  v21 = configurationCopy[10];
  if (!applicationMetadata || !v21)
  {
    if (applicationMetadata == v21)
    {
      goto LABEL_45;
    }

LABEL_47:
    v22 = 0;
    goto LABEL_48;
  }

  if (([(NSDictionary *)applicationMetadata isEqual:?]& 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v22 = self->_retailChannel == configurationCopy[11];
LABEL_48:

  return v22;
}

- (PKPaymentInstallmentConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKPaymentInstallmentConfiguration;
  v5 = [(PKPaymentInstallmentConfiguration *)&v27 init];
  if (v5)
  {
    v5->_feature = [coderCopy decodeIntegerForKey:@"feature"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchandisingImageData"];
    merchandisingImageData = v5->_merchandisingImageData;
    v5->_merchandisingImageData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openToBuyThresholdAmount"];
    openToBuyThresholdAmount = v5->_openToBuyThresholdAmount;
    v5->_openToBuyThresholdAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bindingTotalAmount"];
    bindingTotalAmount = v5->_bindingTotalAmount;
    v5->_bindingTotalAmount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v5->_inStorePurchase = [coderCopy decodeBoolForKey:@"inStorePurchase"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentMerchantIdentifier"];
    installmentMerchantIdentifier = v5->_installmentMerchantIdentifier;
    v5->_installmentMerchantIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"installmentItems"];
    installmentItems = v5->_installmentItems;
    v5->_installmentItems = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationMetadata"];
    if (v23)
    {
      v24 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v23 options:0 error:0];
      applicationMetadata = v5->_applicationMetadata;
      v5->_applicationMetadata = v24;
    }

    v5->_retailChannel = [coderCopy decodeIntegerForKey:@"retailChannel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_feature forKey:@"feature"];
  [coderCopy encodeObject:self->_merchandisingImageData forKey:@"merchandisingImageData"];
  [coderCopy encodeObject:self->_openToBuyThresholdAmount forKey:@"openToBuyThresholdAmount"];
  [coderCopy encodeObject:self->_bindingTotalAmount forKey:@"bindingTotalAmount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeBool:self->_inStorePurchase forKey:@"inStorePurchase"];
  [coderCopy encodeObject:self->_installmentMerchantIdentifier forKey:@"installmentMerchantIdentifier"];
  [coderCopy encodeObject:self->_referrerIdentifier forKey:@"referrerIdentifier"];
  [coderCopy encodeObject:self->_installmentItems forKey:@"installmentItems"];
  applicationMetadata = self->_applicationMetadata;
  if (applicationMetadata)
  {
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:applicationMetadata options:0 error:0];
    [coderCopy encodeObject:v5 forKey:@"applicationMetadata"];
  }

  [coderCopy encodeInteger:self->_retailChannel forKey:@"retailChannel"];
}

@end