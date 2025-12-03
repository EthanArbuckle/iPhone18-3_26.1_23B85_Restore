@interface PKPaymentProvisioningMethodMetadata
- (PKPaymentProvisioningMethodMetadata)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentProvisioningMethodMetadata

- (PKPaymentProvisioningMethodMetadata)initWithDictionary:(id)dictionary
{
  v61 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v57.receiver = self;
  v57.super_class = PKPaymentProvisioningMethodMetadata;
  v5 = [(PKPaymentProvisioningMethodMetadata *)&v57 init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [dictionaryCopy PKStringForKey:@"productIdentifier"];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v6;

  v8 = [dictionaryCopy PKStringForKey:@"currency"];
  currency = v5->_currency;
  v5->_currency = v8;

  v10 = [dictionaryCopy PKStringForKey:@"depositType"];
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
  v17 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"depositAmount"];
  depositAmount = v5->_depositAmount;
  v5->_depositAmount = v17;

  v19 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minLoadedBalance"];
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v21 = [v19 isEqual:notANumber];

  if ((v21 & 1) == 0)
  {
    objc_storeStrong(&v5->_minLoadedBalance, v19);
  }

  v22 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"maxLoadedBalance"];
  notANumber2 = [MEMORY[0x1E696AB90] notANumber];
  v24 = [v22 isEqual:notANumber2];

  if ((v24 & 1) == 0)
  {
    objc_storeStrong(&v5->_maxLoadedBalance, v22);
  }

  v25 = [dictionaryCopy PKArrayForKey:@"requiredFields"];
  v26 = [v25 count];

  if (v26)
  {
    v50 = v22;
    v51 = v19;
    array = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
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
          [dictionaryCopy PKDictionaryForKey:@"requiredFieldOptions"];
          v34 = v33 = dictionaryCopy;
          v35 = [v34 PKDictionaryForKey:v32];

          dictionaryCopy = v33;
          v36 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v32 configuration:v35];
          [array safelyAddObject:v36];
        }

        v29 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v29);
    }

    v37 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
    requiredFields = v5->_requiredFields;
    v5->_requiredFields = v37;

    v22 = v50;
    v19 = v51;
  }

  v39 = [dictionaryCopy PKDictionaryForKey:@"readerModeMetadata"];
  readerModeMetadata = v5->_readerModeMetadata;
  v5->_readerModeMetadata = v39;

  v41 = [dictionaryCopy PKDictionaryForKey:@"readerModeResources"];
  readerModeResources = v5->_readerModeResources;
  v5->_readerModeResources = v41;

  v43 = [dictionaryCopy PKDictionaryForKey:@"digitalIssuanceMetadata"];
  v44 = [[PKPaymentDigitalIssuanceMetadata alloc] initWithDictionary:v43];
  digitalIssuanceMetadata = v5->_digitalIssuanceMetadata;
  v5->_digitalIssuanceMetadata = v44;

  v46 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumReaderModeBalance"];
  notANumber3 = [MEMORY[0x1E696AB90] notANumber];
  v48 = [v46 isEqual:notANumber3];

  if ((v48 & 1) == 0)
  {
    objc_storeStrong(&v5->_minimumReaderModeBalance, v46);
  }

LABEL_30:
  return v5;
}

@end