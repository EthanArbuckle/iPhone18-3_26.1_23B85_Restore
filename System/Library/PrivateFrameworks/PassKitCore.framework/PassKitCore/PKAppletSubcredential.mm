@interface PKAppletSubcredential
- (BOOL)canShare;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSharedCredential;
- (NSString)manufacturerIdentifier;
- (PKAppletSubcredential)initWithCoder:(id)coder;
- (PKAppletSubcredential)initWithDictionary:(id)dictionary;
- (PKAppletSubcredential)initWithIdentifier:(id)identifier;
- (PKAppletSubcredential)initWithKeyInformation:(id)information deviceSupportedRadioTechnologies:(unint64_t)technologies;
- (id)asDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppletSubcredential

- (PKAppletSubcredential)initWithKeyInformation:(id)information deviceSupportedRadioTechnologies:(unint64_t)technologies
{
  v84 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v7 = [(PKAppletSubcredential *)self init];
  if (!v7)
  {
    goto LABEL_15;
  }

  publicKeyIdentifier = [informationCopy publicKeyIdentifier];
  identifier = v7->_identifier;
  v7->_identifier = publicKeyIdentifier;

  keyType = [informationCopy keyType];
  v11 = keyType;
  v12 = 1;
  if (keyType > 2)
  {
    if (keyType == 3)
    {
LABEL_6:
      v7->_credentialState = 21;
      v13 = keyType == 3;
      v7->_supportedRadioTechnologies = v13;
      v7->_allSupportedRadioTechnologies = v13;
      publicKeyIdentifier2 = [informationCopy publicKeyIdentifier];
      endpointIdentifier = v7->_endpointIdentifier;
      v7->_endpointIdentifier = publicKeyIdentifier2;

      homeKeyInformation = [informationCopy homeKeyInformation];
      publicKey = [homeKeyInformation publicKey];
      transactionKey = v7->_transactionKey;
      v7->_transactionKey = publicKey;

      appletIdentifier = [homeKeyInformation appletIdentifier];
      hexEncoding = [appletIdentifier hexEncoding];
      uppercaseString = [hexEncoding uppercaseString];
      appletIdentifier = v7->_appletIdentifier;
      v7->_appletIdentifier = uppercaseString;

      readerIdentifier = [homeKeyInformation readerIdentifier];
      readerIdentifier = v7->_readerIdentifier;
      v7->_readerIdentifier = readerIdentifier;

      hexEncoding2 = [(NSData *)v7->_readerIdentifier hexEncoding];
      pairedReaderIdentifier = v7->_pairedReaderIdentifier;
      v7->_pairedReaderIdentifier = hexEncoding2;

      v27 = 133;
      if (v11 == 5)
      {
        v27 = 139;
      }

      v7->_credentialType = v27;
      *&v7->_keyClass = vdupq_n_s64(1uLL);

      v12 = 0;
      goto LABEL_14;
    }

    if (keyType != 4)
    {
      if (keyType == 5)
      {
        goto LABEL_6;
      }

LABEL_14:
      v7->_isManagedByTSM = v12;
LABEL_15:
      v41 = v7;
      goto LABEL_16;
    }

LABEL_11:
    v7->_credentialState = 21;
    v28 = keyType == 2;
    v7->_supportedRadioTechnologies = v28;
    v7->_allSupportedRadioTechnologies = v28;
    publicKeyIdentifier3 = [informationCopy publicKeyIdentifier];
    v30 = v7->_endpointIdentifier;
    v7->_endpointIdentifier = publicKeyIdentifier3;

    hydraKeyInformation = [informationCopy hydraKeyInformation];
    certificateChain = [hydraKeyInformation certificateChain];
    transactionKeyCertificateChain = v7->_transactionKeyCertificateChain;
    v7->_transactionKeyCertificateChain = certificateChain;

    lastObject = [(NSArray *)v7->_transactionKeyCertificateChain lastObject];
    v35 = v7->_transactionKey;
    v7->_transactionKey = lastObject;

    appletIdentifier2 = [hydraKeyInformation appletIdentifier];
    hexEncoding3 = [appletIdentifier2 hexEncoding];
    uppercaseString2 = [hexEncoding3 uppercaseString];
    v39 = v7->_appletIdentifier;
    v7->_appletIdentifier = uppercaseString2;

    v40 = 130;
    if (v11 == 4)
    {
      v40 = 139;
    }

    v7->_credentialType = v40;
    *&v7->_keyClass = vdupq_n_s64(2uLL);

    v12 = 1;
    goto LABEL_14;
  }

  if (keyType != 1)
  {
    if (keyType != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  alishaKeyInformation = [informationCopy alishaKeyInformation];
  trackingRequest = [alishaKeyInformation trackingRequest];
  if (trackingRequest)
  {
    v45 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:trackingRequest];
    trackingRequest = v7->_trackingRequest;
    v7->_trackingRequest = v45;
  }

  v7->_credentialState = 21;
  revocationAttestation = [alishaKeyInformation revocationAttestation];

  if (revocationAttestation)
  {
    v48 = 129;
  }

  else
  {
    trackingReceipt = [alishaKeyInformation trackingReceipt];

    if (!trackingReceipt)
    {
      goto LABEL_24;
    }

    v48 = 15;
  }

  v7->_credentialState = v48;
LABEL_24:
  obj = 0;
  v80 = 0;
  invitationIdentifier = [alishaKeyInformation invitationIdentifier];
  invitationIdentifier = v7->_invitationIdentifier;
  v7->_invitationIdentifier = invitationIdentifier;

  pairedEntityIdentifier = [alishaKeyInformation pairedEntityIdentifier];
  v53 = PKCredentialRoutingInformationFromPairedEntityIdentifer(pairedEntityIdentifier, &v80, &obj);
  partnerIdentifier = v7->_partnerIdentifier;
  v7->_partnerIdentifier = v53;

  objc_storeStrong(&v7->_brandIdentifier, obj);
  objc_storeStrong(&v7->_pairedReaderIdentifier, v80);
  name = [alishaKeyInformation name];
  sharingFriendlyName = v7->_sharingFriendlyName;
  v7->_sharingFriendlyName = name;

  localIdentifier = [alishaKeyInformation localIdentifier];
  v58 = v7->_endpointIdentifier;
  v7->_endpointIdentifier = localIdentifier;

  v7->_isOnlineImmobilizerToken = [alishaKeyInformation onlineImmobilizerToken];
  supportedTransports = [alishaKeyInformation supportedTransports];
  v7->_allSupportedRadioTechnologies = PKRadioTechnologyFromNumbers(supportedTransports);

  allSupportedRadioTechnologies = v7->_allSupportedRadioTechnologies;
  if (technologies)
  {
    v61 = allSupportedRadioTechnologies & technologies;
  }

  else
  {
    v61 = PKRadioTechnologyForConfigurationTechnology(allSupportedRadioTechnologies);
  }

  v7->_supportedRadioTechnologies = v61;
  if (v7->_partnerIdentifier && v7->_pairedReaderIdentifier && v7->_brandIdentifier)
  {
    v7->_credentialType = 301;
    ownerIDSIdentifier = [alishaKeyInformation ownerIDSIdentifier];
    originatorIDSHandle = v7->_originatorIDSHandle;
    v7->_originatorIDSHandle = ownerIDSIdentifier;

    sharingSessionUUID = [alishaKeyInformation sharingSessionUUID];
    sharingSessionIdentifier = v7->_sharingSessionIdentifier;
    v7->_sharingSessionIdentifier = sharingSessionUUID;

    if ([alishaKeyInformation vehicleSupportsSharingPassword])
    {
      v66 = objc_alloc_init(PKAppletSubcredentialSharingConfiguration);
      sharingConfiguration = v7->_sharingConfiguration;
      v7->_sharingConfiguration = v66;

      v68 = [PKPassShareActivationOptions alloc];
      v69 = +[PKPassShareActivationOption vehicleEnteredPin];
      v81 = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      v71 = [(PKPassShareActivationOptions *)v68 initWithOptions:v70];

      [(PKAppletSubcredentialSharingConfiguration *)v7->_sharingConfiguration setActivationOptions:v71];
    }

    agreedFrameworkVersion = [alishaKeyInformation agreedFrameworkVersion];
    v12 = 1;
    if (agreedFrameworkVersion == 257)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    if (agreedFrameworkVersion == 768)
    {
      v73 = 3;
    }

    v7->_carKeyVehicleVersion = v73;
    if ([alishaKeyInformation agreedVehicleServerVersion] == 768)
    {
      v74 = 2;
    }

    else
    {
      v74 = 1;
    }

    v7->_carKeyServerVersion = v74;
    if ([alishaKeyInformation fleetVehicle])
    {
      v75 = 2;
    }

    else
    {
      v75 = 1;
    }

    v7->_keyClass = v75;
    if ([alishaKeyInformation serverIssued])
    {
      v76 = 2;
    }

    else
    {
      v76 = 1;
    }

    v7->_credentialAuthorityType = v76;

    goto LABEL_14;
  }

  v77 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    pairedEntityIdentifier2 = [alishaKeyInformation pairedEntityIdentifier];
    *buf = 138412290;
    v83 = pairedEntityIdentifier2;
    _os_log_impl(&dword_1AD337000, v77, OS_LOG_TYPE_DEFAULT, "Unable to parse paired entity identifier: %@", buf, 0xCu);
  }

  v41 = 0;
LABEL_16:

  return v41;
}

- (PKAppletSubcredential)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(PKAppletSubcredential *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_isManagedByTSM = 1;
  }

  return v7;
}

- (PKAppletSubcredential)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(PKAppletSubcredential *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (v5->_identifier)
    {
      v8 = [dictionaryCopy PKIntegerForKey:@"state"];
      v5->_state = v8;
      if (v8)
      {
        v9 = [dictionaryCopy PKDictionaryForKey:@"entitlement"];
        if (!v9 || (v10 = [[PKPassEntitlement alloc] initWithSubcredentialDictionary:v9 active:1 subcredentialIdentifier:v5->_identifier], entitlement = v5->_entitlement, v5->_entitlement = v10, entitlement, v5->_entitlement))
        {
          v12 = [dictionaryCopy PKDictionaryForKey:@"sharing"];
          if (v12)
          {
            v13 = [[PKAppletSubcredentialSharingConfiguration alloc] initWithDictionary:v12];
            sharingConfiguration = v5->_sharingConfiguration;
            v5->_sharingConfiguration = v13;
          }

          v15 = [dictionaryCopy PKStringForKey:@"invitationIdentifier"];
          invitationIdentifier = v5->_invitationIdentifier;
          v5->_invitationIdentifier = v15;

          v17 = [dictionaryCopy PKStringForKey:@"partnerIdentifier"];
          partnerIdentifier = v5->_partnerIdentifier;
          v5->_partnerIdentifier = v17;

          v19 = [dictionaryCopy PKStringForKey:@"pairedReaderIdentifier"];
          pairedReaderIdentifier = v5->_pairedReaderIdentifier;
          v5->_pairedReaderIdentifier = v19;

          v21 = [dictionaryCopy PKStringForKey:@"brandIdentifier"];
          brandIdentifier = v5->_brandIdentifier;
          v5->_brandIdentifier = v21;

          v23 = [dictionaryCopy PKStringForKey:@"sharingFriendlyName"];
          sharingFriendlyName = v5->_sharingFriendlyName;
          v5->_sharingFriendlyName = v23;

          v25 = [dictionaryCopy PKStringForKey:@"endpointIdentifier"];
          endpointIdentifier = v5->_endpointIdentifier;
          v5->_endpointIdentifier = v25;

          v5->_isOnlineImmobilizerToken = [dictionaryCopy PKBoolForKey:@"onlineImmobilizerToken"];
          v27 = [dictionaryCopy PKStringForKey:@"sharingSessionIdentifier"];
          if (v27)
          {
            v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];
            sharingSessionIdentifier = v5->_sharingSessionIdentifier;
            v5->_sharingSessionIdentifier = v28;
          }

          v30 = [dictionaryCopy PKStringForKey:@"originatorIDSHandle"];
          originatorIDSHandle = v5->_originatorIDSHandle;
          v5->_originatorIDSHandle = v30;

          v5->_allSupportedRadioTechnologies = [dictionaryCopy PKIntegerForKey:@"allSupportedRadioTechnologies"];
          v32 = [dictionaryCopy PKIntegerForKey:@"supportedRadioTechnologies"];
          v5->_supportedRadioTechnologies = v32;
          if (!v32)
          {
            allSupportedRadioTechnologies = v5->_allSupportedRadioTechnologies;
            if (allSupportedRadioTechnologies)
            {
              v5->_supportedRadioTechnologies = PKRadioTechnologyForConfigurationTechnology(allSupportedRadioTechnologies);
            }
          }

          v34 = [dictionaryCopy PKStringForKey:@"isoFormat"];
          isoFormat = v5->_isoFormat;
          v5->_isoFormat = v34;

          v5->_credentialType = [dictionaryCopy PKIntegerForKey:@"paymentNetwork"];
          v36 = [dictionaryCopy PKStringForKey:@"readerIdentifier"];
          pk_decodeHexadecimal = [v36 pk_decodeHexadecimal];
          readerIdentifier = v5->_readerIdentifier;
          v5->_readerIdentifier = pk_decodeHexadecimal;

          v39 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"aliroGroupResolvingKeys"];
          v40 = [v39 pk_setBySafelyApplyingBlock:&__block_literal_global_159];
          aliroGroupResolvingKeys = v5->_aliroGroupResolvingKeys;
          v5->_aliroGroupResolvingKeys = v40;

          v5->_isManagedByTSM = 1;
          goto LABEL_14;
        }

        v44 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = v9;
          _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Invalid credential, invalid dict: %@", &v46, 0xCu);
        }
      }

      else
      {
        v9 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = @"state";
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Invalid credential, missing key: %@", &v46, 0xCu);
        }
      }
    }

    else
    {
      v43 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 138412290;
        v47 = @"identifier";
        _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Invalid credential, missing key: %@", &v46, 0xCu);
      }
    }

    v42 = 0;
    goto LABEL_25;
  }

LABEL_14:
  v42 = v5;
LABEL_25:

  return v42;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  [v4 setObject:v6 forKeyedSubscript:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isOnlineImmobilizerToken];
  [v4 setObject:v7 forKeyedSubscript:@"onlineImmobilizerToken"];

  entitlement = self->_entitlement;
  if (entitlement)
  {
    subcredentialDictionaryRepresentation = [(PKPassEntitlement *)entitlement subcredentialDictionaryRepresentation];
    [v4 setObject:subcredentialDictionaryRepresentation forKeyedSubscript:@"entitlement"];
  }

  sharingConfiguration = self->_sharingConfiguration;
  if (sharingConfiguration)
  {
    asDictionary = [(PKAppletSubcredentialSharingConfiguration *)sharingConfiguration asDictionary];
    [v4 setObject:asDictionary forKeyedSubscript:@"sharing"];
  }

  invitationIdentifier = self->_invitationIdentifier;
  if (invitationIdentifier)
  {
    [v4 setObject:invitationIdentifier forKeyedSubscript:@"invitationIdentifier"];
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier)
  {
    [v4 setObject:partnerIdentifier forKeyedSubscript:@"partnerIdentifier"];
  }

  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  if (pairedReaderIdentifier)
  {
    [v4 setObject:pairedReaderIdentifier forKeyedSubscript:@"pairedReaderIdentifier"];
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier)
  {
    [v4 setObject:brandIdentifier forKeyedSubscript:@"brandIdentifier"];
  }

  sharingFriendlyName = self->_sharingFriendlyName;
  if (sharingFriendlyName)
  {
    [v4 setObject:sharingFriendlyName forKeyedSubscript:@"sharingFriendlyName"];
  }

  endpointIdentifier = self->_endpointIdentifier;
  if (endpointIdentifier)
  {
    [v4 setObject:endpointIdentifier forKeyedSubscript:@"endpointIdentifier"];
  }

  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier)
  {
    [v4 setObject:sharingSessionIdentifier forKeyedSubscript:@"sharingSessionIdentifier"];
  }

  originatorIDSHandle = self->_originatorIDSHandle;
  if (originatorIDSHandle)
  {
    [v4 setObject:originatorIDSHandle forKeyedSubscript:@"originatorIDSHandle"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allSupportedRadioTechnologies];
  [v4 setObject:v20 forKeyedSubscript:@"allSupportedRadioTechnologies"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_supportedRadioTechnologies];
  [v4 setObject:v21 forKeyedSubscript:@"supportedRadioTechnologies"];

  [v4 setObject:self->_isoFormat forKeyedSubscript:@"isoFormat"];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_credentialType];
  [v4 setObject:v22 forKeyedSubscript:@"paymentNetwork"];

  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  [v4 setObject:hexEncoding forKeyedSubscript:@"readerIdentifier"];

  v24 = [(NSSet *)self->_aliroGroupResolvingKeys pk_setByApplyingBlock:&__block_literal_global_124_0];
  [v4 setObject:v24 forKeyedSubscript:@"aliroGroupResolvingKeys"];

  v25 = [v4 copy];

  return v25;
}

- (BOOL)canShare
{
  isShareable = [(PKAppletSubcredential *)self isShareable];
  if (isShareable)
  {
    LOBYTE(isShareable) = [(PKAppletSubcredentialSharingConfiguration *)self->_sharingConfiguration numberOfShareableCredentials]!= 0;
  }

  return isShareable;
}

- (BOOL)isSharedCredential
{
  v8 = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_endpointIdentifier hasPrefix:@"DIGK.OWNR"])
  {
    if ([(NSString *)self->_endpointIdentifier hasPrefix:@"DIGK.FRND"])
    {
      return 1;
    }

    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      endpointIdentifier = self->_endpointIdentifier;
      v6 = 138412290;
      v7 = endpointIdentifier;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unexpected endpoint ID (%@), assuming key is not shared", &v6, 0xCu);
    }
  }

  return 0;
}

- (NSString)manufacturerIdentifier
{
  v2 = [(NSString *)self->_partnerIdentifier componentsSeparatedByString:@"."];
  if ([v2 count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_entitlement forKey:@"entitlement"];
  [coderCopy encodeObject:self->_sharingConfiguration forKey:@"sharing"];
  [coderCopy encodeObject:self->_invitationIdentifier forKey:@"invitationIdentifier"];
  [coderCopy encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [coderCopy encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [coderCopy encodeObject:self->_brandIdentifier forKey:@"brandIdentifier"];
  [coderCopy encodeObject:self->_sharingFriendlyName forKey:@"sharingFriendlyName"];
  [coderCopy encodeObject:self->_endpointIdentifier forKey:@"endpointIdentifier"];
  [coderCopy encodeBool:self->_isOnlineImmobilizerToken forKey:@"onlineImmobilizerToken"];
  [coderCopy encodeInteger:self->_credentialState forKey:@"credentialState"];
  [coderCopy encodeObject:self->_trackingRequest forKey:@"trackingRequest"];
  [coderCopy encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [coderCopy encodeObject:self->_originatorIDSHandle forKey:@"originatorIDSHandle"];
  [coderCopy encodeInteger:self->_allSupportedRadioTechnologies forKey:@"allSupportedRadioTechnologies"];
  [coderCopy encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [coderCopy encodeObject:self->_transactionKeyCertificateChain forKey:@"transactionKeyCertificateChain"];
  [coderCopy encodeObject:self->_transactionKey forKey:@"transactionKey"];
  [coderCopy encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeInteger:self->_credentialType forKey:@"paymentNetwork"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  v5 = PKAppletSubcredentialCarKeyVehicleVersionToString(self->_carKeyVehicleVersion);
  [coderCopy encodeObject:v5 forKey:@"vehicleVersion"];

  v6 = PKAppletSubcredentialCarKeyServerVersionToString(self->_carKeyServerVersion);
  [coderCopy encodeObject:v6 forKey:@"serverVersion"];

  keyClass = self->_keyClass;
  v8 = @"private";
  if (keyClass != 1)
  {
    v8 = 0;
  }

  if (keyClass == 2)
  {
    v9 = @"fleet";
  }

  else
  {
    v9 = v8;
  }

  [coderCopy encodeObject:v9 forKey:@"keyClass"];
  credentialAuthorityType = self->_credentialAuthorityType;
  v11 = @"secure-element";
  if (credentialAuthorityType != 1)
  {
    v11 = 0;
  }

  if (credentialAuthorityType == 2)
  {
    v12 = @"server";
  }

  else
  {
    v12 = v11;
  }

  [coderCopy encodeObject:v12 forKey:@"credentialAuthority"];
  [coderCopy encodeBool:self->_isManagedByTSM forKey:@"isManagedbyTSM"];
  [coderCopy encodeObject:self->_isoFormat forKey:@"isoFormat"];
  [coderCopy encodeObject:self->_aliroGroupResolvingKeys forKey:@"aliroGroupResolvingKeys"];
}

- (PKAppletSubcredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredential *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlement"];
    entitlement = v5->_entitlement;
    v5->_entitlement = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharing"];
    sharingConfiguration = v5->_sharingConfiguration;
    v5->_sharingConfiguration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brandIdentifier"];
    brandIdentifier = v5->_brandIdentifier;
    v5->_brandIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingFriendlyName"];
    sharingFriendlyName = v5->_sharingFriendlyName;
    v5->_sharingFriendlyName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointIdentifier"];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v22;

    v5->_isOnlineImmobilizerToken = [coderCopy decodeBoolForKey:@"onlineImmobilizerToken"];
    v5->_credentialState = [coderCopy decodeIntegerForKey:@"credentialState"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v5->_trackingRequest;
    v5->_trackingRequest = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatorIDSHandle"];
    originatorIDSHandle = v5->_originatorIDSHandle;
    v5->_originatorIDSHandle = v28;

    v5->_allSupportedRadioTechnologies = [coderCopy decodeIntegerForKey:@"allSupportedRadioTechnologies"];
    v5->_supportedRadioTechnologies = [coderCopy decodeIntegerForKey:@"supportedRadioTechnologies"];
    v30 = objc_alloc(MEMORY[0x1E695DFD8]);
    v31 = objc_opt_class();
    v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"transactionKeyCertificateChain"];
    transactionKeyCertificateChain = v5->_transactionKeyCertificateChain;
    v5->_transactionKeyCertificateChain = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionKey"];
    transactionKey = v5->_transactionKey;
    v5->_transactionKey = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v37;

    v5->_credentialType = [coderCopy decodeIntegerForKey:@"paymentNetwork"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleVersion"];
    v5->_carKeyVehicleVersion = PKAppletSubcredentialCarKeyVehicleVersionFromString(v41);

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverVersion"];
    v5->_carKeyServerVersion = PKAppletSubcredentialCarKeyServerVersionFromString(v42);

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyClass"];
    v5->_keyClass = PKAppletSubcredentialKeyClassFromString(v43);

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthority"];
    v5->_credentialAuthorityType = PKAppletSubcredentialCredentialAuthorityTypeFromString(v44);

    if ([coderCopy containsValueForKey:@"isManagedbyTSM"])
    {
      v45 = [coderCopy decodeBoolForKey:@"isManagedbyTSM"];
    }

    else
    {
      v45 = 1;
    }

    v5->_isManagedByTSM = v45;
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isoFormat"];
    isoFormat = v5->_isoFormat;
    v5->_isoFormat = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"aliroGroupResolvingKeys"];
    aliroGroupResolvingKeys = v5->_aliroGroupResolvingKeys;
    v5->_aliroGroupResolvingKeys = v51;
  }

  return v5;
}

- (id)description
{
  allObjects = [(NSSet *)self->_aliroGroupResolvingKeys allObjects];
  v4 = [allObjects count];
  v39 = allObjects;
  if (v4 < 4)
  {
    v5 = [allObjects pk_arrayByApplyingBlock:&__block_literal_global_137_0];
    v38 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"..%lu keys..", v4];
  }

  v37 = MEMORY[0x1E696AEC0];
  v36 = objc_opt_class();
  v35 = *&self->_identifier;
  entitlement = self->_entitlement;
  credentialState = self->_credentialState;
  partnerIdentifier = self->_partnerIdentifier;
  invitationIdentifier = self->_invitationIdentifier;
  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  isOnlineImmobilizerToken = self->_isOnlineImmobilizerToken;
  brandIdentifier = self->_brandIdentifier;
  v29 = hexEncoding;
  sharingFriendlyName = self->_sharingFriendlyName;
  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  originatorIDSHandle = self->_originatorIDSHandle;
  endpointIdentifier = self->_endpointIdentifier;
  appletIdentifier = self->_appletIdentifier;
  credentialType = self->_credentialType;
  sharingConfiguration = self->_sharingConfiguration;
  readerIdentifier = self->_readerIdentifier;
  v11 = PKRadioTechnologiesToString(self->_supportedRadioTechnologies);
  v12 = PKRadioTechnologiesToString(self->_allSupportedRadioTechnologies);
  v13 = PKAppletSubcredentialCarKeyVehicleVersionToString(self->_carKeyVehicleVersion);
  v14 = PKAppletSubcredentialCarKeyServerVersionToString(self->_carKeyServerVersion);
  v15 = v14;
  v16 = @"private";
  keyClass = self->_keyClass;
  credentialAuthorityType = self->_credentialAuthorityType;
  if (keyClass != 1)
  {
    v16 = 0;
  }

  if (keyClass == 2)
  {
    v16 = @"fleet";
  }

  v19 = @"secure-element";
  if (credentialAuthorityType != 1)
  {
    v19 = 0;
  }

  if (credentialAuthorityType == 2)
  {
    v19 = @"server";
  }

  if (self->_isManagedByTSM)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [v37 stringWithFormat:@"<%@: %p identifier: %@; state %ld (%ld); entitlement: %@; invitationIdentifier: %@; partnerIdentifier: %@; pairedReaderIdentifier: %@; readerIdentifier: %@; brandIdentifier: %@; endpointIdentifier: %@; isOnlineImmobilizerToken: %d; sharing name: %@; sharing config: %@; shared info: %@ (%@); appletIdentifier: %@; paymentNetwork: %lu; readerIdentifier: %@; key supports: %@; vehicle supports: %@; vehicle version: %@; server version: %@; key class: %@; CA type: %@; isManagedByTSM: %@; aliroGroupResolvingKeys: [%@]; >", v36, self, v35, credentialState, entitlement, invitationIdentifier, partnerIdentifier, pairedReaderIdentifier, v29, brandIdentifier, endpointIdentifier, isOnlineImmobilizerToken, sharingFriendlyName, sharingConfiguration, originatorIDSHandle, sharingSessionIdentifier, appletIdentifier, credentialType, readerIdentifier, v11, v12, v13, v14, v16, v19, v20, v38];;

  return v21;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = equalCopy[3];
    if (identifier && v6)
    {
      v7 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v7 = identifier == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end