@interface PKAppletSubcredential
- (BOOL)canShare;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSharedCredential;
- (NSString)manufacturerIdentifier;
- (PKAppletSubcredential)initWithCoder:(id)a3;
- (PKAppletSubcredential)initWithDictionary:(id)a3;
- (PKAppletSubcredential)initWithIdentifier:(id)a3;
- (PKAppletSubcredential)initWithKeyInformation:(id)a3 deviceSupportedRadioTechnologies:(unint64_t)a4;
- (id)asDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppletSubcredential

- (PKAppletSubcredential)initWithKeyInformation:(id)a3 deviceSupportedRadioTechnologies:(unint64_t)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKAppletSubcredential *)self init];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 publicKeyIdentifier];
  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [v6 keyType];
  v11 = v10;
  v12 = 1;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
LABEL_6:
      v7->_credentialState = 21;
      v13 = v10 == 3;
      v7->_supportedRadioTechnologies = v13;
      v7->_allSupportedRadioTechnologies = v13;
      v14 = [v6 publicKeyIdentifier];
      endpointIdentifier = v7->_endpointIdentifier;
      v7->_endpointIdentifier = v14;

      v16 = [v6 homeKeyInformation];
      v17 = [v16 publicKey];
      transactionKey = v7->_transactionKey;
      v7->_transactionKey = v17;

      v19 = [v16 appletIdentifier];
      v20 = [v19 hexEncoding];
      v21 = [v20 uppercaseString];
      appletIdentifier = v7->_appletIdentifier;
      v7->_appletIdentifier = v21;

      v23 = [v16 readerIdentifier];
      readerIdentifier = v7->_readerIdentifier;
      v7->_readerIdentifier = v23;

      v25 = [(NSData *)v7->_readerIdentifier hexEncoding];
      pairedReaderIdentifier = v7->_pairedReaderIdentifier;
      v7->_pairedReaderIdentifier = v25;

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

    if (v10 != 4)
    {
      if (v10 == 5)
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
    v28 = v10 == 2;
    v7->_supportedRadioTechnologies = v28;
    v7->_allSupportedRadioTechnologies = v28;
    v29 = [v6 publicKeyIdentifier];
    v30 = v7->_endpointIdentifier;
    v7->_endpointIdentifier = v29;

    v31 = [v6 hydraKeyInformation];
    v32 = [v31 certificateChain];
    transactionKeyCertificateChain = v7->_transactionKeyCertificateChain;
    v7->_transactionKeyCertificateChain = v32;

    v34 = [(NSArray *)v7->_transactionKeyCertificateChain lastObject];
    v35 = v7->_transactionKey;
    v7->_transactionKey = v34;

    v36 = [v31 appletIdentifier];
    v37 = [v36 hexEncoding];
    v38 = [v37 uppercaseString];
    v39 = v7->_appletIdentifier;
    v7->_appletIdentifier = v38;

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

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v43 = [v6 alishaKeyInformation];
  v44 = [v43 trackingRequest];
  if (v44)
  {
    v45 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v44];
    trackingRequest = v7->_trackingRequest;
    v7->_trackingRequest = v45;
  }

  v7->_credentialState = 21;
  v47 = [v43 revocationAttestation];

  if (v47)
  {
    v48 = 129;
  }

  else
  {
    v49 = [v43 trackingReceipt];

    if (!v49)
    {
      goto LABEL_24;
    }

    v48 = 15;
  }

  v7->_credentialState = v48;
LABEL_24:
  obj = 0;
  v80 = 0;
  v50 = [v43 invitationIdentifier];
  invitationIdentifier = v7->_invitationIdentifier;
  v7->_invitationIdentifier = v50;

  v52 = [v43 pairedEntityIdentifier];
  v53 = PKCredentialRoutingInformationFromPairedEntityIdentifer(v52, &v80, &obj);
  partnerIdentifier = v7->_partnerIdentifier;
  v7->_partnerIdentifier = v53;

  objc_storeStrong(&v7->_brandIdentifier, obj);
  objc_storeStrong(&v7->_pairedReaderIdentifier, v80);
  v55 = [v43 name];
  sharingFriendlyName = v7->_sharingFriendlyName;
  v7->_sharingFriendlyName = v55;

  v57 = [v43 localIdentifier];
  v58 = v7->_endpointIdentifier;
  v7->_endpointIdentifier = v57;

  v7->_isOnlineImmobilizerToken = [v43 onlineImmobilizerToken];
  v59 = [v43 supportedTransports];
  v7->_allSupportedRadioTechnologies = PKRadioTechnologyFromNumbers(v59);

  allSupportedRadioTechnologies = v7->_allSupportedRadioTechnologies;
  if (a4)
  {
    v61 = allSupportedRadioTechnologies & a4;
  }

  else
  {
    v61 = PKRadioTechnologyForConfigurationTechnology(allSupportedRadioTechnologies);
  }

  v7->_supportedRadioTechnologies = v61;
  if (v7->_partnerIdentifier && v7->_pairedReaderIdentifier && v7->_brandIdentifier)
  {
    v7->_credentialType = 301;
    v62 = [v43 ownerIDSIdentifier];
    originatorIDSHandle = v7->_originatorIDSHandle;
    v7->_originatorIDSHandle = v62;

    v64 = [v43 sharingSessionUUID];
    sharingSessionIdentifier = v7->_sharingSessionIdentifier;
    v7->_sharingSessionIdentifier = v64;

    if ([v43 vehicleSupportsSharingPassword])
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

    v72 = [v43 agreedFrameworkVersion];
    v12 = 1;
    if (v72 == 257)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    if (v72 == 768)
    {
      v73 = 3;
    }

    v7->_carKeyVehicleVersion = v73;
    if ([v43 agreedVehicleServerVersion] == 768)
    {
      v74 = 2;
    }

    else
    {
      v74 = 1;
    }

    v7->_carKeyServerVersion = v74;
    if ([v43 fleetVehicle])
    {
      v75 = 2;
    }

    else
    {
      v75 = 1;
    }

    v7->_keyClass = v75;
    if ([v43 serverIssued])
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
    v78 = [v43 pairedEntityIdentifier];
    *buf = 138412290;
    v83 = v78;
    _os_log_impl(&dword_1AD337000, v77, OS_LOG_TYPE_DEFAULT, "Unable to parse paired entity identifier: %@", buf, 0xCu);
  }

  v41 = 0;
LABEL_16:

  return v41;
}

- (PKAppletSubcredential)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(PKAppletSubcredential *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_isManagedByTSM = 1;
  }

  return v7;
}

- (PKAppletSubcredential)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAppletSubcredential *)self init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (v5->_identifier)
    {
      v8 = [v4 PKIntegerForKey:@"state"];
      v5->_state = v8;
      if (v8)
      {
        v9 = [v4 PKDictionaryForKey:@"entitlement"];
        if (!v9 || (v10 = [[PKPassEntitlement alloc] initWithSubcredentialDictionary:v9 active:1 subcredentialIdentifier:v5->_identifier], entitlement = v5->_entitlement, v5->_entitlement = v10, entitlement, v5->_entitlement))
        {
          v12 = [v4 PKDictionaryForKey:@"sharing"];
          if (v12)
          {
            v13 = [[PKAppletSubcredentialSharingConfiguration alloc] initWithDictionary:v12];
            sharingConfiguration = v5->_sharingConfiguration;
            v5->_sharingConfiguration = v13;
          }

          v15 = [v4 PKStringForKey:@"invitationIdentifier"];
          invitationIdentifier = v5->_invitationIdentifier;
          v5->_invitationIdentifier = v15;

          v17 = [v4 PKStringForKey:@"partnerIdentifier"];
          partnerIdentifier = v5->_partnerIdentifier;
          v5->_partnerIdentifier = v17;

          v19 = [v4 PKStringForKey:@"pairedReaderIdentifier"];
          pairedReaderIdentifier = v5->_pairedReaderIdentifier;
          v5->_pairedReaderIdentifier = v19;

          v21 = [v4 PKStringForKey:@"brandIdentifier"];
          brandIdentifier = v5->_brandIdentifier;
          v5->_brandIdentifier = v21;

          v23 = [v4 PKStringForKey:@"sharingFriendlyName"];
          sharingFriendlyName = v5->_sharingFriendlyName;
          v5->_sharingFriendlyName = v23;

          v25 = [v4 PKStringForKey:@"endpointIdentifier"];
          endpointIdentifier = v5->_endpointIdentifier;
          v5->_endpointIdentifier = v25;

          v5->_isOnlineImmobilizerToken = [v4 PKBoolForKey:@"onlineImmobilizerToken"];
          v27 = [v4 PKStringForKey:@"sharingSessionIdentifier"];
          if (v27)
          {
            v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];
            sharingSessionIdentifier = v5->_sharingSessionIdentifier;
            v5->_sharingSessionIdentifier = v28;
          }

          v30 = [v4 PKStringForKey:@"originatorIDSHandle"];
          originatorIDSHandle = v5->_originatorIDSHandle;
          v5->_originatorIDSHandle = v30;

          v5->_allSupportedRadioTechnologies = [v4 PKIntegerForKey:@"allSupportedRadioTechnologies"];
          v32 = [v4 PKIntegerForKey:@"supportedRadioTechnologies"];
          v5->_supportedRadioTechnologies = v32;
          if (!v32)
          {
            allSupportedRadioTechnologies = v5->_allSupportedRadioTechnologies;
            if (allSupportedRadioTechnologies)
            {
              v5->_supportedRadioTechnologies = PKRadioTechnologyForConfigurationTechnology(allSupportedRadioTechnologies);
            }
          }

          v34 = [v4 PKStringForKey:@"isoFormat"];
          isoFormat = v5->_isoFormat;
          v5->_isoFormat = v34;

          v5->_credentialType = [v4 PKIntegerForKey:@"paymentNetwork"];
          v36 = [v4 PKStringForKey:@"readerIdentifier"];
          v37 = [v36 pk_decodeHexadecimal];
          readerIdentifier = v5->_readerIdentifier;
          v5->_readerIdentifier = v37;

          v39 = [v4 PKSetContaining:objc_opt_class() forKey:@"aliroGroupResolvingKeys"];
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
    v9 = [(PKPassEntitlement *)entitlement subcredentialDictionaryRepresentation];
    [v4 setObject:v9 forKeyedSubscript:@"entitlement"];
  }

  sharingConfiguration = self->_sharingConfiguration;
  if (sharingConfiguration)
  {
    v11 = [(PKAppletSubcredentialSharingConfiguration *)sharingConfiguration asDictionary];
    [v4 setObject:v11 forKeyedSubscript:@"sharing"];
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

  v23 = [(NSData *)self->_readerIdentifier hexEncoding];
  [v4 setObject:v23 forKeyedSubscript:@"readerIdentifier"];

  v24 = [(NSSet *)self->_aliroGroupResolvingKeys pk_setByApplyingBlock:&__block_literal_global_124_0];
  [v4 setObject:v24 forKeyedSubscript:@"aliroGroupResolvingKeys"];

  v25 = [v4 copy];

  return v25;
}

- (BOOL)canShare
{
  v3 = [(PKAppletSubcredential *)self isShareable];
  if (v3)
  {
    LOBYTE(v3) = [(PKAppletSubcredentialSharingConfiguration *)self->_sharingConfiguration numberOfShareableCredentials]!= 0;
  }

  return v3;
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v13 = a3;
  [v13 encodeObject:identifier forKey:@"identifier"];
  [v13 encodeInteger:self->_state forKey:@"state"];
  [v13 encodeObject:self->_entitlement forKey:@"entitlement"];
  [v13 encodeObject:self->_sharingConfiguration forKey:@"sharing"];
  [v13 encodeObject:self->_invitationIdentifier forKey:@"invitationIdentifier"];
  [v13 encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [v13 encodeObject:self->_pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  [v13 encodeObject:self->_brandIdentifier forKey:@"brandIdentifier"];
  [v13 encodeObject:self->_sharingFriendlyName forKey:@"sharingFriendlyName"];
  [v13 encodeObject:self->_endpointIdentifier forKey:@"endpointIdentifier"];
  [v13 encodeBool:self->_isOnlineImmobilizerToken forKey:@"onlineImmobilizerToken"];
  [v13 encodeInteger:self->_credentialState forKey:@"credentialState"];
  [v13 encodeObject:self->_trackingRequest forKey:@"trackingRequest"];
  [v13 encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [v13 encodeObject:self->_originatorIDSHandle forKey:@"originatorIDSHandle"];
  [v13 encodeInteger:self->_allSupportedRadioTechnologies forKey:@"allSupportedRadioTechnologies"];
  [v13 encodeInteger:self->_supportedRadioTechnologies forKey:@"supportedRadioTechnologies"];
  [v13 encodeObject:self->_transactionKeyCertificateChain forKey:@"transactionKeyCertificateChain"];
  [v13 encodeObject:self->_transactionKey forKey:@"transactionKey"];
  [v13 encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
  [v13 encodeInteger:self->_credentialType forKey:@"paymentNetwork"];
  [v13 encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  v5 = PKAppletSubcredentialCarKeyVehicleVersionToString(self->_carKeyVehicleVersion);
  [v13 encodeObject:v5 forKey:@"vehicleVersion"];

  v6 = PKAppletSubcredentialCarKeyServerVersionToString(self->_carKeyServerVersion);
  [v13 encodeObject:v6 forKey:@"serverVersion"];

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

  [v13 encodeObject:v9 forKey:@"keyClass"];
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

  [v13 encodeObject:v12 forKey:@"credentialAuthority"];
  [v13 encodeBool:self->_isManagedByTSM forKey:@"isManagedbyTSM"];
  [v13 encodeObject:self->_isoFormat forKey:@"isoFormat"];
  [v13 encodeObject:self->_aliroGroupResolvingKeys forKey:@"aliroGroupResolvingKeys"];
}

- (PKAppletSubcredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredential *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlement"];
    entitlement = v5->_entitlement;
    v5->_entitlement = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharing"];
    sharingConfiguration = v5->_sharingConfiguration;
    v5->_sharingConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandIdentifier"];
    brandIdentifier = v5->_brandIdentifier;
    v5->_brandIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingFriendlyName"];
    sharingFriendlyName = v5->_sharingFriendlyName;
    v5->_sharingFriendlyName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedReaderIdentifier"];
    pairedReaderIdentifier = v5->_pairedReaderIdentifier;
    v5->_pairedReaderIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointIdentifier"];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v22;

    v5->_isOnlineImmobilizerToken = [v4 decodeBoolForKey:@"onlineImmobilizerToken"];
    v5->_credentialState = [v4 decodeIntegerForKey:@"credentialState"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v5->_trackingRequest;
    v5->_trackingRequest = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatorIDSHandle"];
    originatorIDSHandle = v5->_originatorIDSHandle;
    v5->_originatorIDSHandle = v28;

    v5->_allSupportedRadioTechnologies = [v4 decodeIntegerForKey:@"allSupportedRadioTechnologies"];
    v5->_supportedRadioTechnologies = [v4 decodeIntegerForKey:@"supportedRadioTechnologies"];
    v30 = objc_alloc(MEMORY[0x1E695DFD8]);
    v31 = objc_opt_class();
    v32 = [v30 initWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"transactionKeyCertificateChain"];
    transactionKeyCertificateChain = v5->_transactionKeyCertificateChain;
    v5->_transactionKeyCertificateChain = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKey"];
    transactionKey = v5->_transactionKey;
    v5->_transactionKey = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v37;

    v5->_credentialType = [v4 decodeIntegerForKey:@"paymentNetwork"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleVersion"];
    v5->_carKeyVehicleVersion = PKAppletSubcredentialCarKeyVehicleVersionFromString(v41);

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverVersion"];
    v5->_carKeyServerVersion = PKAppletSubcredentialCarKeyServerVersionFromString(v42);

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyClass"];
    v5->_keyClass = PKAppletSubcredentialKeyClassFromString(v43);

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthority"];
    v5->_credentialAuthorityType = PKAppletSubcredentialCredentialAuthorityTypeFromString(v44);

    if ([v4 containsValueForKey:@"isManagedbyTSM"])
    {
      v45 = [v4 decodeBoolForKey:@"isManagedbyTSM"];
    }

    else
    {
      v45 = 1;
    }

    v5->_isManagedByTSM = v45;
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isoFormat"];
    isoFormat = v5->_isoFormat;
    v5->_isoFormat = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"aliroGroupResolvingKeys"];
    aliroGroupResolvingKeys = v5->_aliroGroupResolvingKeys;
    v5->_aliroGroupResolvingKeys = v51;
  }

  return v5;
}

- (id)description
{
  v3 = [(NSSet *)self->_aliroGroupResolvingKeys allObjects];
  v4 = [v3 count];
  v39 = v3;
  if (v4 < 4)
  {
    v5 = [v3 pk_arrayByApplyingBlock:&__block_literal_global_137_0];
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
  v6 = [(NSData *)self->_readerIdentifier hexEncoding];
  isOnlineImmobilizerToken = self->_isOnlineImmobilizerToken;
  brandIdentifier = self->_brandIdentifier;
  v29 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = v4[3];
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