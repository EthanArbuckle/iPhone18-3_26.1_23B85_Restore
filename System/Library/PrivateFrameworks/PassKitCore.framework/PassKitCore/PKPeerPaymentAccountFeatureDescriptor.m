@interface PKPeerPaymentAccountFeatureDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeerPaymentAccountFeatureDescriptor:(id)a3;
- (PKPeerPaymentAccountFeatureDescriptor)initWithCoder:(id)a3;
- (PKPeerPaymentAccountFeatureDescriptor)initWithDictionary:(id)a3;
- (id)_suggestionsFromStrings:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentAccountFeatureDescriptor

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v3 = [(PKAccountFeatureDescriptor *)&v11 hash];
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 safelyAddObject:self->_feePercentage];
  [v4 safelyAddObject:self->_minimumFee];
  [v4 safelyAddObject:self->_maximumFee];
  [v4 safelyAddObject:self->_amountSuggestions];
  [v4 safelyAddObject:self->_thresholdSuggestions];
  [v4 safelyAddObject:self->_frequencyOptions];
  [v4 safelyAddObject:self->_productTimeZone];
  [v4 safelyAddObject:self->_supportedFundingSourceCountryCodes];
  v5 = PKCombinedHash(v3, v4);
  v6 = self->_maximumPayments - v5 + 32 * v5;
  v7 = self->_endProcessingHour - v6 + 32 * v6;
  v8 = self->_proactiveFetchPeriod - v7 + 32 * v7;
  v9 = self->_supported - v8 + 32 * v8;

  return v9;
}

- (PKPeerPaymentAccountFeatureDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v29 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberFromStringForKey:@"feePercentage"];
    feePercentage = v5->_feePercentage;
    v5->_feePercentage = v6;

    v8 = [v4 PKDecimalNumberFromStringForKey:@"minimumFee"];
    minimumFee = v5->_minimumFee;
    v5->_minimumFee = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"maximumFee"];
    maximumFee = v5->_maximumFee;
    v5->_maximumFee = v10;

    v12 = [v4 PKArrayContaining:objc_opt_class() forKey:@"amountSuggestions"];
    v13 = [(PKPeerPaymentAccountFeatureDescriptor *)v5 _suggestionsFromStrings:v12];
    amountSuggestions = v5->_amountSuggestions;
    v5->_amountSuggestions = v13;

    v15 = [v4 PKArrayContaining:objc_opt_class() forKey:@"thresholdSuggestions"];

    v16 = [(PKPeerPaymentAccountFeatureDescriptor *)v5 _suggestionsFromStrings:v15];
    thresholdSuggestions = v5->_thresholdSuggestions;
    v5->_thresholdSuggestions = v16;

    v18 = [v4 PKArrayContaining:objc_opt_class() forKey:@"frequencyOptions"];
    frequencyOptions = v5->_frequencyOptions;
    v5->_frequencyOptions = v18;

    v20 = MEMORY[0x1E695DFE8];
    v21 = [v4 PKStringForKey:@"productTimeZone"];
    v22 = [v20 timeZoneWithName:v21];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v22;

    v5->_maximumPayments = [v4 PKIntegerForKey:@"maximumPayments"];
    v5->_endProcessingHour = [v4 PKIntegerForKey:@"endProcessingHour"];
    [v4 PKDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v24;
    v25 = [(PKAccountFeatureDescriptor *)v5 osVersionRange];
    v5->_supported = PKDeviceVersionMeetsRequiredVersion(v25);

    v26 = [v4 PKSetContaining:objc_opt_class() forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v26;
  }

  return v5;
}

- (id)_suggestionsFromStrings:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (PKPeerPaymentAccountFeatureDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feePercentage"];
    feePercentage = v5->_feePercentage;
    v5->_feePercentage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumFee"];
    minimumFee = v5->_minimumFee;
    v5->_minimumFee = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumFee"];
    maximumFee = v5->_maximumFee;
    v5->_maximumFee = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"amountSuggestions"];
    amountSuggestions = v5->_amountSuggestions;
    v5->_amountSuggestions = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"thresholdSuggestions"];
    thresholdSuggestions = v5->_thresholdSuggestions;
    v5->_thresholdSuggestions = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"frequencyOptions"];
    frequencyOptions = v5->_frequencyOptions;
    v5->_frequencyOptions = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productTimeZone"];
    productTimeZone = v5->_productTimeZone;
    v5->_productTimeZone = v27;

    v5->_maximumPayments = [v4 decodeIntegerForKey:@"maximumPayments"];
    v5->_endProcessingHour = [v4 decodeIntegerForKey:@"endProcessingHour"];
    [v4 decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v29;
    v5->_supported = [v4 decodeBoolForKey:@"supported"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"supportedFundingSourceCountryCodes"];
    supportedFundingSourceCountryCodes = v5->_supportedFundingSourceCountryCodes;
    v5->_supportedFundingSourceCountryCodes = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentAccountFeatureDescriptor;
  v4 = a3;
  [(PKAccountFeatureDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_feePercentage forKey:{@"feePercentage", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_minimumFee forKey:@"minimumFee"];
  [v4 encodeObject:self->_maximumFee forKey:@"maximumFee"];
  [v4 encodeObject:self->_amountSuggestions forKey:@"amountSuggestions"];
  [v4 encodeObject:self->_thresholdSuggestions forKey:@"thresholdSuggestions"];
  [v4 encodeObject:self->_frequencyOptions forKey:@"frequencyOptions"];
  [v4 encodeObject:self->_productTimeZone forKey:@"productTimeZone"];
  [v4 encodeInteger:self->_maximumPayments forKey:@"maximumPayments"];
  [v4 encodeInteger:self->_endProcessingHour forKey:@"endProcessingHour"];
  [v4 encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
  [v4 encodeBool:self->_supported forKey:@"supported"];
  [v4 encodeObject:self->_supportedFundingSourceCountryCodes forKey:@"supportedFundingSourceCountryCodes"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];
  v5 = [(PKAccountFeatureDescriptor *)self minimumAmount];
  [v3 appendFormat:@"minimumAmount: '%@'; ", v5];

  v6 = [(PKAccountFeatureDescriptor *)self maximumAmount];
  [v3 appendFormat:@"maximumAmount: '%@'; ", v6];

  if (([v4 isEqualToString:@"loadFromCard"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"sendToUser") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"recurringPayments"))
  {
    v7 = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
    [v3 appendFormat:@"merchantIdentifier: '%@'; ", v7];

    v8 = [(PKAccountFeatureDescriptor *)self supportedNetworks];
    [v3 appendFormat:@"supportedNetworks: '%@'; ", v8];

    v9 = PKMerchantCapabilityToStrings([(PKAccountFeatureDescriptor *)self merchantCapabilities]);
    [v3 appendFormat:@"merchantCapabilities: '%@'; ", v9];
  }

  if ([v4 isEqualToString:@"instantWithdrawal"])
  {
    v10 = [(PKPeerPaymentAccountFeatureDescriptor *)self feePercentage];
    [v3 appendFormat:@"feePercentage: '%@'; ", v10];

    v11 = [(PKPeerPaymentAccountFeatureDescriptor *)self minimumFee];
    [v3 appendFormat:@"minimumFee: '%@'; ", v11];

    v12 = [(PKPeerPaymentAccountFeatureDescriptor *)self maximumFee];
    [v3 appendFormat:@"maximumFee: '%@'; ", v12];
  }

  if ([v4 isEqualToString:@"thresholdTopUp"])
  {
    [v3 appendFormat:@"amountSuggestions: '%@'; ", self->_amountSuggestions];
    [v3 appendFormat:@"thresholdSuggestions: '%@'; ", self->_thresholdSuggestions];
  }

  if ([v4 isEqualToString:@"recurringPayments"])
  {
    [v3 appendFormat:@"frequencyOptions: '%@'; ", self->_frequencyOptions];
    [v3 appendFormat:@"productTimeZone: '%@'; ", self->_productTimeZone];
    [v3 appendFormat:@"maximumPayments: '%ld'; ", self->_maximumPayments];
    [v3 appendFormat:@"endProcessingHour: '%ld'; ", self->_endProcessingHour];
    [v3 appendFormat:@"proactiveFetchPeriod: '%lf'; ", *&self->_proactiveFetchPeriod];
  }

  v13 = [(PKAccountFeatureDescriptor *)self osVersionRange];

  if (v13)
  {
    v14 = [(PKAccountFeatureDescriptor *)self osVersionRange];
    v15 = [v14 asDictionary];
    [v3 appendFormat:@"osVersionRange: '%@'; ", v15];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentAccountFeatureDescriptor *)self isEqualToPeerPaymentAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentAccountFeatureDescriptor:(id)a3
{
  v4 = a3;
  if (![(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v4])
  {
    goto LABEL_55;
  }

  feePercentage = self->_feePercentage;
  v6 = *(v4 + 10);
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
  v9 = *(v4 + 11);
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
  v12 = *(v4 + 12);
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
  v15 = *(v4 + 13);
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
  v17 = *(v4 + 14);
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
  v19 = *(v4 + 15);
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
  v21 = *(v4 + 16);
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
  v23 = *(v4 + 20);
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
  if (self->_maximumPayments != *(v4 + 17) || self->_endProcessingHour != *(v4 + 18) || self->_proactiveFetchPeriod != v4[19])
  {
    goto LABEL_55;
  }

  v24 = self->_supported == *(v4 + 72);
LABEL_56:

  return v24;
}

@end