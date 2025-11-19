@interface PKPaymentEligibilityResponse
- (BOOL)hasEnableRequirements;
- (BOOL)shouldGenerateFidoKey;
- (BOOL)shouldGenerateISO18013EncryptionKey;
- (BOOL)shouldGenerateLongTermPrivacyKey;
- (BOOL)shouldGenerateTransactionKey;
- (BOOL)shouldSignFidoChallenge;
- (PKPaymentEligibilityResponse)initWithData:(id)a3;
@end

@implementation PKPaymentEligibilityResponse

- (PKPaymentEligibilityResponse)initWithData:(id)a3
{
  v114 = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = PKPaymentEligibilityResponse;
  v3 = [(PKWebServiceResponse *)&v108 initWithData:a3];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 objectForKeyedSubscript:@"eligibilityStatus"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"identifier"];
    v8 = [v7 copy];
    identifier = v4->_identifier;
    v4->_identifier = v8;

    v10 = [v5 objectForKeyedSubscript:@"eligibilityStatus"];
    v4->_eligibilityStatus = [v10 integerValue];

    v11 = [v5 PKStringForKey:@"nonce"];
    v12 = [v11 copy];
    nonce = v4->_nonce;
    v4->_nonce = v12;

    v14 = [v5 objectForKeyedSubscript:@"cardType"];
    v4->_cardType = [v14 integerValue];

    v15 = MEMORY[0x1E695DFF8];
    v16 = [v5 objectForKeyedSubscript:@"termsURL"];
    v17 = [v15 URLWithString:v16];
    termsURL = v4->_termsURL;
    v4->_termsURL = v17;

    v19 = [v5 objectForKeyedSubscript:@"termsID"];
    v20 = [v19 copy];
    termsID = v4->_termsID;
    v4->_termsID = v20;

    v22 = [v5 objectForKeyedSubscript:@"applicationIdentifier"];
    v23 = [v22 copy];
    applicationIdentifier = v4->_applicationIdentifier;
    v4->_applicationIdentifier = v23;

    v25 = [v5 objectForKeyedSubscript:@"region"];
    v26 = [v25 copy];
    region = v4->_region;
    v4->_region = v26;

    v28 = MEMORY[0x1E695DFF8];
    v29 = [v5 objectForKeyedSubscript:@"learnMoreURL"];
    v30 = [v28 URLWithString:v29];
    learnMoreURL = v4->_learnMoreURL;
    v4->_learnMoreURL = v30;

    v32 = [v5 PKStringForKey:@"credentialAuthorityIdentifier"];
    v33 = [v32 copy];
    credentialAuthorityIdentifier = v4->_credentialAuthorityIdentifier;
    v4->_credentialAuthorityIdentifier = v33;

    v35 = [v5 objectForKeyedSubscript:@"supplementaryData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [[PKPaymentEligibilitySupplementaryData alloc] initWithDictionary:v35 accountFeatureIdentifier:4 * (v4->_cardType == 135)];
      supplementaryData = v4->_supplementaryData;
      v4->_supplementaryData = v36;
    }

    v102 = v35;
    v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v38 = [v5 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
    v39 = [v38 countByEnumeratingWithState:&v104 objects:v113 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v105;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v105 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v104 + 1) + 8 * i);
          v44 = [v5 PKDictionaryForKey:@"requiredFieldOptions"];
          [v44 PKDictionaryForKey:v43];
          v46 = v45 = v5;

          v47 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v43 configuration:v46];
          [v103 safelyAddObject:v47];

          v5 = v45;
        }

        v40 = [v38 countByEnumeratingWithState:&v104 objects:v113 count:16];
      }

      while (v40);
    }

    v48 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v103];
    v49 = v4;
    requiredPaymentSetupFields = v4->_requiredPaymentSetupFields;
    v4->_requiredPaymentSetupFields = v48;

    v51 = [v5 PKDictionaryForKey:@"auxiliaryCapabilities"];
    if (v51)
    {
      v52 = [v51 PKArrayContaining:objc_opt_class() forKey:@"deviceDecryptions"];
      v53 = [v52 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_234];
      auxiliaryCapabilityDecryptions = v4->_auxiliaryCapabilityDecryptions;
      v4->_auxiliaryCapabilityDecryptions = v53;

      v55 = [v51 PKArrayContaining:objc_opt_class() forKey:@"deviceSignatures"];
      v56 = [v55 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_419_0];
      auxiliaryCapabilitySignatures = v4->_auxiliaryCapabilitySignatures;
      v4->_auxiliaryCapabilitySignatures = v56;
    }

    v58 = [v5 objectForKeyedSubscript:@"fidoProfile"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v60 = [PKPaymentEligibilityFIDOProfile alloc];
      v61 = [v5 objectForKeyedSubscript:@"fidoProfile"];
      v62 = [(PKPaymentEligibilityFIDOProfile *)v60 initWithDictionary:v61];
      fidoProfile = v4->_fidoProfile;
      v4->_fidoProfile = v62;
    }

    v64 = [v5 PKStringForKey:@"fidoChallenge"];
    if (v64)
    {
      v65 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v64 options:1];
      fidoChallenge = v4->_fidoChallenge;
      v4->_fidoChallenge = v65;
    }

    v67 = [v5 objectForKeyedSubscript:@"transactionKeyInformation"];
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    v69 = v102;
    if (v68)
    {
      v70 = [v5 objectForKeyedSubscript:@"transactionKeyInformation"];
      v71 = [v70 copy];
      transactionKeyInformation = v4->_transactionKeyInformation;
      v4->_transactionKeyInformation = v71;
    }

    v73 = [v5 objectForKeyedSubscript:@"enableRequirements"];
    objc_opt_class();
    v74 = objc_opt_isKindOfClass();

    if (v74)
    {
      v75 = objc_alloc(MEMORY[0x1E695DFD8]);
      v76 = [v5 objectForKeyedSubscript:@"enableRequirements"];
      v77 = [v75 initWithArray:v76];
      enableRequirements = v4->_enableRequirements;
      v4->_enableRequirements = v77;
    }

    v79 = [v5 objectForKeyedSubscript:@"deviceProvisioningDataExpected"];
    v80 = v79;
    if (v79)
    {
      v81 = [v79 BOOLValue];
      v82 = 1;
      if (!v81)
      {
        v82 = 2;
      }
    }

    else
    {
      v82 = 0;
    }

    v4->_deviceProvisioningDataExpected = v82;
    v88 = [v5 objectForKeyedSubscript:@"supportsVirtualCardNumber"];
    v4->_supportsVirtualCardNumber = [v88 BOOLValue];

    v89 = [v5 PKArrayContaining:objc_opt_class() forKey:@"FPANIdentifiers"];
    fpanIdentifiers = v4->_fpanIdentifiers;
    v4->_fpanIdentifiers = v89;

    v91 = [v5 objectForKeyedSubscript:@"sanitizedPrimaryAccountNumber"];
    v92 = [v91 copy];
    sanitizedPrimaryAccountNumber = v4->_sanitizedPrimaryAccountNumber;
    v4->_sanitizedPrimaryAccountNumber = v92;

    v94 = [v5 objectForKeyedSubscript:@"isCardOnFile"];
    v95 = [v94 BOOLValue];

    if (v95)
    {
      v4->_supersededBy = 1;
    }

    v96 = [v5 PKStringForKey:@"DPANIdentifier"];
    dpanIdentifier = v4->_dpanIdentifier;
    v4->_dpanIdentifier = v96;

    v98 = [v5 PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
    v99 = [v98 pk_arrayBySafelyApplyingBlock:&__block_literal_global_458];

    if ([v99 count])
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }

    objc_storeStrong(&v4->_paymentApplications, v100);

    v83 = v103;
  }

  else
  {
    v83 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v86 = objc_opt_class();
      *buf = 138543618;
      v110 = v85;
      v111 = 2112;
      v112 = v86;
      v87 = v86;
      _os_log_impl(&dword_1AD337000, v83, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
    }

    v69 = v4;
    v49 = 0;
  }

  return v49;
}

PKPassAuxiliaryRegistrationDecryptionRequirement *__45__PKPaymentEligibilityResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassAuxiliaryRegistrationDecryptionRequirement alloc] initWithDictionary:v2];

  return v3;
}

PKPassAuxiliaryRegistrationSignatureRequirement *__45__PKPaymentEligibilityResponse_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassAuxiliaryRegistrationSignatureRequirement alloc] initWithDictionary:v2];

  return v3;
}

PKProvisioningPaymentApplication *__45__PKPaymentEligibilityResponse_initWithData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKProvisioningPaymentApplication alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)shouldGenerateFidoKey
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements containsObject:@"GENERATE_FIDO_KEYS"];
  }

  return enableRequirements;
}

- (BOOL)shouldSignFidoChallenge
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements containsObject:@"SIGN_FIDO_CHALLENGE"];
  }

  return enableRequirements;
}

- (BOOL)shouldGenerateISO18013EncryptionKey
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements containsObject:@"GENERATE_ISO180135_ENCRYPTION_KEY"];
  }

  return enableRequirements;
}

- (BOOL)shouldGenerateTransactionKey
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements containsObject:@"GENERATE_TRANSACTION_KEY"];
  }

  return enableRequirements;
}

- (BOOL)shouldGenerateLongTermPrivacyKey
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements containsObject:@"GENERATE_LONG_TERM_PRIVACY_KEY"];
  }

  return enableRequirements;
}

- (BOOL)hasEnableRequirements
{
  enableRequirements = self->_enableRequirements;
  if (enableRequirements)
  {
    LOBYTE(enableRequirements) = [(NSSet *)enableRequirements count]!= 0;
  }

  return enableRequirements;
}

@end