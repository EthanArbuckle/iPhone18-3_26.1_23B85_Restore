@interface PKPeerPaymentAccountFeatureDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerPaymentAccountFeatureDescriptor:(id)descriptor;
- (PKPeerPaymentAccountFeatureDescriptor)initWithCoder:(id)coder;
- (PKPeerPaymentAccountFeatureDescriptor)initWithDictionary:(id)dictionary;
- (id)_suggestionsFromStrings:(id)strings;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentAccountFeatureDescriptor

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v3 = [(PKAccountFeatureDescriptor *)&v11 hash];
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_feePercentage];
  [array safelyAddObject:self->_minimumFee];
  [array safelyAddObject:self->_maximumFee];
  [array safelyAddObject:self->_amountSuggestions];
  [array safelyAddObject:self->_thresholdSuggestions];
  [array safelyAddObject:self->_frequencyOptions];
  [array safelyAddObject:self->_productTimeZone];
  [array safelyAddObject:self->_supportedFundingSourceCountryCodes];
  v5 = PKCombinedHash(v3, array);
  v6 = self->_maximumPayments - v5 + 32 * v5;
  v7 = self->_endProcessingHour - v6 + 32 * v6;
  v8 = self->_proactiveFetchPeriod - v7 + 32 * v7;
  v9 = self->_supported - v8 + 32 * v8;

  return v9;
}

- (PKPeerPaymentAccountFeatureDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v29 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"feePercentage"];
    feePercentage = v5->_feePercentage;
    v5->_feePercentage = v6;

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumFee"];
    minimumFee = v5->_minimumFee;
    v5->_minimumFee = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"maximumFee"];
    maximumFee = v5->_maximumFee;
    v5->_maximumFee = v10;

    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"amountSuggestions"];
    v13 = [(PKPeerPaymentAccountFeatureDescriptor *)v5 _suggestionsFromStrings:v12];
    amountSuggestions = v5->_amountSuggestions;
    v5->_amountSuggestions = v13;

    v15 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"thresholdSuggestions"];

    v16 = [(PKPeerPaymentAccountFeatureDescriptor *)v5 _suggestionsFromStrings:v15];
    thresholdSuggestions = v5->_thresholdSuggestions;
    v5->_thresholdSuggestions = v16;

    v18 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"frequencyOptions"];
    frequencyOptions = v5->_frequencyOptions;
    v5->_frequencyOptions = v18;

    v20 = MEMORY[0x1E695DFE8];
    v21 = [dictionaryCopy PKStringForKey:@"productTimeZone"];
    v22 = [v20 timeZoneWithName:v21];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v22;

    v5->_maximumPayments = [dictionaryCopy PKIntegerForKey:@"maximumPayments"];
    v5->_endProcessingHour = [dictionaryCopy PKIntegerForKey:@"endProcessingHour"];
    [dictionaryCopy PKDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v24;
    osVersionRange = [(PKAccountFeatureDescriptor *)v5 osVersionRange];
    v5->_supported = PKDeviceVersionMeetsRequiredVersion(osVersionRange);

    v26 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v26;
  }

  return v5;
}

- (id)_suggestionsFromStrings:(id)strings
{
  v18 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AB90] decimalNumberWithString:{*(*(&v13 + 1) + 8 * i), v13}];
        [v4 safelyAddObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (PKPeerPaymentAccountFeatureDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feePercentage"];
    feePercentage = v5->_feePercentage;
    v5->_feePercentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumFee"];
    minimumFee = v5->_minimumFee;
    v5->_minimumFee = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumFee"];
    maximumFee = v5->_maximumFee;
    v5->_maximumFee = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"amountSuggestions"];
    amountSuggestions = v5->_amountSuggestions;
    v5->_amountSuggestions = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"thresholdSuggestions"];
    thresholdSuggestions = v5->_thresholdSuggestions;
    v5->_thresholdSuggestions = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"frequencyOptions"];
    frequencyOptions = v5->_frequencyOptions;
    v5->_frequencyOptions = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productTimeZone"];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v27;

    v5->_maximumPayments = [coderCopy decodeIntegerForKey:@"maximumPayments"];
    v5->_endProcessingHour = [coderCopy decodeIntegerForKey:@"endProcessingHour"];
    [coderCopy decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v29;
    v5->_supported = [coderCopy decodeBoolForKey:@"supported"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentAccountFeatureDescriptor;
  coderCopy = coder;
  [(PKAccountFeatureDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_feePercentage forKey:{@"feePercentage", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_minimumFee forKey:@"minimumFee"];
  [coderCopy encodeObject:self->_maximumFee forKey:@"maximumFee"];
  [coderCopy encodeObject:self->_amountSuggestions forKey:@"amountSuggestions"];
  [coderCopy encodeObject:self->_thresholdSuggestions forKey:@"thresholdSuggestions"];
  [coderCopy encodeObject:self->_frequencyOptions forKey:@"frequencyOptions"];
  [coderCopy encodeObject:self->_productTimeZone forKey:@"productTimeZone"];
  [coderCopy encodeInteger:self->_maximumPayments forKey:@"maximumPayments"];
  [coderCopy encodeInteger:self->_endProcessingHour forKey:@"endProcessingHour"];
  [coderCopy encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
  [coderCopy encodeBool:self->_supported forKey:@"supported"];
  [coderCopy encodeObject:self->_supportedFundingSourceCountryCodes forKey:@"supportedFundingSourceCountryCodes"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  identifier = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];
  minimumAmount = [(PKAccountFeatureDescriptor *)self minimumAmount];
  [v3 appendFormat:@"minimumAmount: '%@'; ", minimumAmount];

  maximumAmount = [(PKAccountFeatureDescriptor *)self maximumAmount];
  [v3 appendFormat:@"maximumAmount: '%@'; ", maximumAmount];

  if (([identifier isEqualToString:@"loadFromCard"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"sendToUser") & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"recurringPayments"))
  {
    merchantIdentifier = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
    [v3 appendFormat:@"merchantIdentifier: '%@'; ", merchantIdentifier];

    supportedNetworks = [(PKAccountFeatureDescriptor *)self supportedNetworks];
    [v3 appendFormat:@"supportedNetworks: '%@'; ", supportedNetworks];

    v9 = PKMerchantCapabilityToStrings([(PKAccountFeatureDescriptor *)self merchantCapabilities]);
    [v3 appendFormat:@"merchantCapabilities: '%@'; ", v9];
  }

  if ([identifier isEqualToString:@"instantWithdrawal"])
  {
    feePercentage = [(PKPeerPaymentAccountFeatureDescriptor *)self feePercentage];
    [v3 appendFormat:@"feePercentage: '%@'; ", feePercentage];

    minimumFee = [(PKPeerPaymentAccountFeatureDescriptor *)self minimumFee];
    [v3 appendFormat:@"minimumFee: '%@'; ", minimumFee];

    maximumFee = [(PKPeerPaymentAccountFeatureDescriptor *)self maximumFee];
    [v3 appendFormat:@"maximumFee: '%@'; ", maximumFee];
  }

  if ([identifier isEqualToString:@"thresholdTopUp"])
  {
    [v3 appendFormat:@"amountSuggestions: '%@'; ", self->_amountSuggestions];
    [v3 appendFormat:@"thresholdSuggestions: '%@'; ", self->_thresholdSuggestions];
  }

  if ([identifier isEqualToString:@"recurringPayments"])
  {
    [v3 appendFormat:@"frequencyOptions: '%@'; ", self->_frequencyOptions];
    [v3 appendFormat:@"productTimeZone: '%@'; ", self->_productTimeZone];
    [v3 appendFormat:@"maximumPayments: '%ld'; ", self->_maximumPayments];
    [v3 appendFormat:@"endProcessingHour: '%ld'; ", self->_endProcessingHour];
    [v3 appendFormat:@"proactiveFetchPeriod: '%lf'; ", *&self->_proactiveFetchPeriod];
  }

  osVersionRange = [(PKAccountFeatureDescriptor *)self osVersionRange];

  if (osVersionRange)
  {
    osVersionRange2 = [(PKAccountFeatureDescriptor *)self osVersionRange];
    asDictionary = [osVersionRange2 asDictionary];
    [v3 appendFormat:@"osVersionRange: '%@'; ", asDictionary];
  }

  if (self->_supportedFundingSourceCountryCodes)
  {
    [v3 appendFormat:@"supportedFundingSourceCountryCodes: '%@'; ", self->_supportedFundingSourceCountryCodes];
  }

  if (self->_supported)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendFormat:@"supported: '%@'; ", v16];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentAccountFeatureDescriptor *)self isEqualToPeerPaymentAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentAccountFeatureDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (![(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:descriptorCopy])
  {
    goto LABEL_55;
  }

  feePercentage = self->_feePercentage;
  v6 = *(descriptorCopy + 10);
  if (feePercentage)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (feePercentage != v6)
    {
      goto LABEL_55;
    }
  }

  else if (([(NSDecimalNumber *)feePercentage isEqual:?]& 1) == 0)
  {
    goto LABEL_55;
  }

  minimumFee = self->_minimumFee;
  v9 = *(descriptorCopy + 11);
  if (minimumFee)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (minimumFee != v9)
    {
      goto LABEL_55;
    }
  }

  else if (([(NSDecimalNumber *)minimumFee isEqual:?]& 1) == 0)
  {
    goto LABEL_55;
  }

  maximumFee = self->_maximumFee;
  v12 = *(descriptorCopy + 12);
  if (maximumFee)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (maximumFee != v12)
    {
      goto LABEL_55;
    }
  }

  else if (([(NSDecimalNumber *)maximumFee isEqual:?]& 1) == 0)
  {
    goto LABEL_55;
  }

  amountSuggestions = self->_amountSuggestions;
  v15 = *(descriptorCopy + 13);
  if (amountSuggestions && v15)
  {
    if (([(NSArray *)amountSuggestions isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (amountSuggestions != v15)
  {
    goto LABEL_55;
  }

  thresholdSuggestions = self->_thresholdSuggestions;
  v17 = *(descriptorCopy + 14);
  if (thresholdSuggestions && v17)
  {
    if (([(NSArray *)thresholdSuggestions isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (thresholdSuggestions != v17)
  {
    goto LABEL_55;
  }

  frequencyOptions = self->_frequencyOptions;
  v19 = *(descriptorCopy + 15);
  if (frequencyOptions && v19)
  {
    if (([(NSArray *)frequencyOptions isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (frequencyOptions != v19)
  {
    goto LABEL_55;
  }

  productTimeZone = self->_productTimeZone;
  v21 = *(descriptorCopy + 16);
  if (productTimeZone && v21)
  {
    if (([(NSTimeZone *)productTimeZone isEqual:?]& 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (productTimeZone != v21)
  {
    goto LABEL_55;
  }

  supportedFundingSourceCountryCodes = self->_supportedFundingSourceCountryCodes;
  v23 = *(descriptorCopy + 20);
  if (!supportedFundingSourceCountryCodes || !v23)
  {
    if (supportedFundingSourceCountryCodes == v23)
    {
      goto LABEL_51;
    }

LABEL_55:
    v24 = 0;
    goto LABEL_56;
  }

  if (([(NSSet *)supportedFundingSourceCountryCodes isEqual:?]& 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  if (self->_maximumPayments != *(descriptorCopy + 17) || self->_endProcessingHour != *(descriptorCopy + 18) || self->_proactiveFetchPeriod != descriptorCopy[19])
  {
    goto LABEL_55;
  }

  v24 = self->_supported == *(descriptorCopy + 72);
LABEL_56:

  return v24;
}

@end