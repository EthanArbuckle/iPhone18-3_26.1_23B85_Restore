@interface PKPaymentProvisioningMethodMetadata
- (PKPaymentProvisioningMethodMetadata)initWithDictionary:(id)a3;
@end

@implementation PKPaymentProvisioningMethodMetadata

- (PKPaymentProvisioningMethodMetadata)initWithDictionary:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = PKPaymentProvisioningMethodMetadata;
  v5 = [(PKPaymentProvisioningMethodMetadata *)&v57 init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [v4 PKStringForKey:@"productIdentifier"];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v6;

  v8 = [v4 PKStringForKey:@"currency"];
  currency = v5->_currency;
  v5->_currency = v8;

  v10 = [v4 PKStringForKey:@"depositType"];
  v11 = v5->_productIdentifier;
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      v15 = [(NSString *)v13 isEqualToString:@"59F12F58E2D04C9180CFD6C2096C125F-caprieightball-DC5AC19A6D2D477D8765687C3C2D4CA5"];
      goto LABEL_14;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  if (([v12 isEqualToString:@"RefundableDeposit"] & 1) == 0)
  {
    if (([v12 isEqualToString:@"RefundableServiceFee"] & 1) == 0)
    {
      if ([v12 isEqualToString:@"ServiceFee"])
      {
        v15 = 2;
        goto LABEL_14;
      }

      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v60 = v12;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Unknown depositType %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  v15 = 1;
LABEL_14:

  v5->_depositType = v15;
  v17 = [v4 PKDecimalNumberFromStringForKey:@"depositAmount"];
  depositAmount = v5->_depositAmount;
  v5->_depositAmount = v17;

  v19 = [v4 PKDecimalNumberFromStringForKey:@"minLoadedBalance"];
  v20 = [MEMORY[0x1E696AB90] notANumber];
  v21 = [v19 isEqual:v20];

  if ((v21 & 1) == 0)
  {
    objc_storeStrong(&v5->_minLoadedBalance, v19);
  }

  v22 = [v4 PKDecimalNumberFromStringForKey:@"maxLoadedBalance"];
  v23 = [MEMORY[0x1E696AB90] notANumber];
  v24 = [v22 isEqual:v23];

  if ((v24 & 1) == 0)
  {
    objc_storeStrong(&v5->_maxLoadedBalance, v22);
  }

  v25 = [v4 PKArrayForKey:@"requiredFields"];
  v26 = [v25 count];

  if (v26)
  {
    v50 = v22;
    v51 = v19;
    v27 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [v4 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    v28 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v54;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v54 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v53 + 1) + 8 * i);
          [v4 PKDictionaryForKey:@"requiredFieldOptions"];
          v34 = v33 = v4;
          v35 = [v34 PKDictionaryForKey:v32];

          v4 = v33;
          v36 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v32 configuration:v35];
          [v27 safelyAddObject:v36];
        }

        v29 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v29);
    }

    v37 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v27];
    requiredFields = v5->_requiredFields;
    v5->_requiredFields = v37;

    v22 = v50;
    v19 = v51;
  }

  v39 = [v4 PKDictionaryForKey:@"readerModeMetadata"];
  readerModeMetadata = v5->_readerModeMetadata;
  v5->_readerModeMetadata = v39;

  v41 = [v4 PKDictionaryForKey:@"readerModeResources"];
  readerModeResources = v5->_readerModeResources;
  v5->_readerModeResources = v41;

  v43 = [v4 PKDictionaryForKey:@"digitalIssuanceMetadata"];
  v44 = [[PKPaymentDigitalIssuanceMetadata alloc] initWithDictionary:v43];
  digitalIssuanceMetadata = v5->_digitalIssuanceMetadata;
  v5->_digitalIssuanceMetadata = v44;

  v46 = [v4 PKDecimalNumberFromStringForKey:@"minimumReaderModeBalance"];
  v47 = [MEMORY[0x1E696AB90] notANumber];
  v48 = [v46 isEqual:v47];

  if ((v48 & 1) == 0)
  {
    objc_storeStrong(&v5->_minimumReaderModeBalance, v46);
  }

LABEL_30:
  return v5;
}

@end