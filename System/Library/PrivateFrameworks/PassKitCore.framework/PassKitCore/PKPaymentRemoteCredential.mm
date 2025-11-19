@interface PKPaymentRemoteCredential
- (BOOL)isEqual:(id)a3;
- (NSString)summaryMetadataDescription;
- (PKPaymentRemoteCredential)initWithDictionary:(id)a3;
- (PKPaymentRemoteCredential)initWithIdentifier:(id)a3 status:(int64_t)a4 credentialType:(int64_t)a5 passURL:(id)a6;
- (id)description;
- (id)detailDescriptionWithEnvironment:(unint64_t)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)updateWithDictionary:(id)a3;
@end

@implementation PKPaymentRemoteCredential

- (PKPaymentRemoteCredential)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = PKPaymentRemoteCredential;
    v5 = [(PKPaymentCredential *)&v8 init];
    v6 = v5;
    if (v5)
    {
      [(PKPaymentRemoteCredential *)v5 updateWithDictionary:v4];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (PKPaymentRemoteCredential)initWithIdentifier:(id)a3 status:(int64_t)a4 credentialType:(int64_t)a5 passURL:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = PKPaymentRemoteCredential;
  v12 = [(PKPaymentCredential *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(PKPaymentCredential *)v12 setCredentialType:a5];
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_status = a4;
    v16 = [v11 copy];
    passURL = v13->_passURL;
    v13->_passURL = v16;
  }

  return v13;
}

- (void)updateWithDictionary:(id)a3
{
  v120 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 PKStringForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 PKStringForKey:@"passTypeIdentifier"];
  passTypeIdentifier = self->_passTypeIdentifier;
  self->_passTypeIdentifier = v7;

  v9 = [v4 PKNumberForKey:@"status"];
  v10 = v9;
  v11 = &unk_1F23B4E68;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v97 = [v12 integerValue];
  [(PKPaymentRemoteCredential *)self setStatus:?];
  v13 = [v4 PKURLForKey:@"passURL"];
  [(PKPaymentRemoteCredential *)self setPassURL:v13];

  v14 = [v4 PKStringForKey:@"serialNumber"];
  if (v14)
  {
    [(PKPaymentRemoteCredential *)self setSerialNumber:v14];
  }

  else
  {
    passURL = self->_passURL;
    if (passURL)
    {
      v16 = [(NSURL *)passURL lastPathComponent];
      [(PKPaymentRemoteCredential *)self setSerialNumber:v16];
    }
  }

  -[PKPaymentCredential setDeletable:](self, "setDeletable:", [v4 PKBoolForKey:@"isDeletable"]);
  v17 = [v4 objectForKey:@"cardType"];
  v103 = v14;
  v104 = v12;
  v102 = v17;
  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 integerValue];
  }

  else
  {
    v18 = 0;
  }

  [(PKPaymentCredential *)self setCredentialType:v18];
  v19 = [v4 PKStringForKey:@"sanitizedPrimaryAccountNumber"];
  [(PKPaymentCredential *)self setSanitizedPrimaryAccountNumber:v19];

  v20 = [v4 PKStringForKey:@"sanitizedPrimaryAccountName"];
  [(PKPaymentCredential *)self setSanitizedPrimaryAccountName:v20];

  v21 = [v4 PKStringForKey:@"expiration"];
  [(PKPaymentCredential *)self setExpiration:v21];

  v22 = [v4 PKStringForKey:@"nonce"];
  v23 = [(PKPaymentCredential *)self state];
  [v23 setNonce:v22];

  v24 = [v4 PKStringForKey:@"longDescription"];
  v106 = self;
  v101 = v24;
  if (v24)
  {
    [(PKPaymentCredential *)self setLongDescription:v24];
  }

  else
  {
    v25 = PKDisplayablePaymentNetworkNameForPaymentCredentialType(v18);
    [(PKPaymentCredential *)self setLongDescription:v25];
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [v4 PKArrayForKey:@"metadata"];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v112 objects:v119 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v113;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v113 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:*(*(&v112 + 1) + 8 * i)];
        if (v32)
        {
          [v26 addObject:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v112 objects:v119 count:16];
    }

    while (v29);
  }

  v33 = [v4 PKStringForKey:@"paymentCardType"];
  v34 = v33;
  if (v33)
  {
    v35 = PKWebServicesPaymentCardTypeFromString(v33);
    v36 = 4;
    if (v35 != 5)
    {
      v36 = v35;
    }

    if (v35 == 4)
    {
      v37 = 3;
    }

    else
    {
      v37 = v36;
    }

    [(PKPaymentCredential *)v106 setCardType:v37];
  }

  v100 = v34;
  v38 = [v4 PKStringForKey:@"productIdentifier"];
  if (v38)
  {
    objc_storeStrong(&v106->_productIdentifier, v38);
  }

  v99 = v38;
  v39 = [v26 copy];
  [(PKPaymentCredential *)v106 setMetadata:v39];

  v107 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v105 = v4;
  v41 = [v4 PKArrayForKey:@"summaryMetadata"];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v42 = [v41 countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v109;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v109 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:*(*(&v108 + 1) + 8 * j)];
        if (v46)
        {
          [v40 addObject:v46];
          v47 = [v46 displayString];
          if (v47)
          {
            [v107 addObject:v47];
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v108 objects:v118 count:16];
    }

    while (v43);
  }

  v48 = [v40 copy];
  v49 = v106;
  summaryMetadata = v106->_summaryMetadata;
  v106->_summaryMetadata = v48;

  if (![v107 count])
  {
    v51 = PKSanitizedPrimaryAccountRepresentationForPaymentCredential(v106);
    if ([v51 length])
    {
      if (v97 == 2)
      {
        v52 = PKLocalizedPaymentString(&cfstr_IdmsCardOnFile.isa, &stru_1F2281668.isa, v51);

        v51 = v52;
      }

      [v107 addObject:v51];
    }
  }

  v53 = MEMORY[0x1E696AEC0];
  v54 = [MEMORY[0x1E695DF58] currentLocale];
  v55 = [v54 objectForKey:*MEMORY[0x1E695D9A0]];
  v56 = [v53 stringWithFormat:@"%@ ", v55];

  v98 = v56;
  v57 = [v107 componentsJoinedByString:v56];
  summaryMetadataDescription = v106->_summaryMetadataDescription;
  v106->_summaryMetadataDescription = v57;

  v59 = [v105 PKStringForKey:@"statusDescription"];
  statusDescription = v106->_statusDescription;
  v106->_statusDescription = v59;

  v61 = [v105 PKStringForKey:@"ownershipTokenIdentifier"];
  ownershipTokenIdentifier = v106->_ownershipTokenIdentifier;
  v106->_ownershipTokenIdentifier = v61;

  v63 = [PKPaymentRemoteCredentialFIDOProfile alloc];
  v64 = [v105 PKDictionaryForKey:@"fidoProfile"];
  v65 = [(PKPaymentRemoteCredentialFIDOProfile *)v63 initWithDictionary:v64];
  fidoProfile = v106->_fidoProfile;
  v106->_fidoProfile = v65;

  v67 = v105;
  v68 = [v105 PKArrayContaining:objc_opt_class() forKey:@"transferableFromDevices"];
  v69 = v68;
  if (v68)
  {
    v70 = [v68 pk_arrayBySafelyApplyingBlock:&__block_literal_global_336];
    transferableFromDevices = v106->_transferableFromDevices;
    v106->_transferableFromDevices = v70;
  }

  v96 = v69;
  v72 = [v105 PKStringForKey:@"transferType"];
  v106->_transferType = PKRemoteCredentialTransferTypeFromString(v72);

  if (!v106->_transferType && [(NSArray *)v106->_transferableFromDevices count])
  {
    v106->_transferType = 1;
  }

  v95 = [v105 PKArrayContaining:objc_opt_class() forKey:@"authorizationOptions"];
  v73 = [v95 pk_arrayBySafelyApplyingBlock:&__block_literal_global_343];
  activationMethods = v106->_activationMethods;
  v106->_activationMethods = v73;

  v75 = v106->_activationMethods;
  if (!v75 || ![(NSArray *)v75 count])
  {
    v94 = [PKPaymentCredentialProvisioningMethod alloc];
    v76 = [v105 PKBoolForKey:@"supportsFrictionlessProvisioning"];
    v77 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:v22 != 0];
    v116 = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    v79 = [(PKPaymentCredentialProvisioningMethod *)v94 initWithSupportsFrictionlessProvisioning:v76 actions:v78];
    v117 = v79;
    v49 = v106;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    v81 = v106->_activationMethods;
    v106->_activationMethods = v80;

    v67 = v105;
  }

  v82 = [v67 PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
  [v82 pk_arrayBySafelyApplyingBlock:&__block_literal_global_349];
  v84 = v83 = v67;

  if ([v84 count])
  {
    v85 = v84;
  }

  else
  {
    v85 = 0;
  }

  [(PKPaymentCredential *)v49 setPaymentApplications:v85];
  v86 = [v83 PKDateForKey:@"originalProvisioningDate"];
  originalProvisioningDate = v49->_originalProvisioningDate;
  v49->_originalProvisioningDate = v86;

  v88 = [v83 PKStringForKey:@"identityAccountKeyIdentifier"];
  identityAccountKeyIdentifier = v49->_identityAccountKeyIdentifier;
  v49->_identityAccountKeyIdentifier = v88;

  v90 = [v83 PKStringForKey:@"primaryAccountIdentifier"];
  primaryAccountIdentifier = v49->_primaryAccountIdentifier;
  v49->_primaryAccountIdentifier = v90;

  v92 = [v83 PKStringForKey:@"personalizedVehicleIdentifier"];
  personalizedVehicleIdentifier = v49->_personalizedVehicleIdentifier;
  v49->_personalizedVehicleIdentifier = v92;
}

PKExternalDestinationDevice *__50__PKPaymentRemoteCredential_updateWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKExternalDestinationDevice alloc] initWithDictionary:v2];

  return v3;
}

PKPaymentCredentialProvisioningMethod *__50__PKPaymentRemoteCredential_updateWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaymentCredentialProvisioningMethod alloc] initWithDictionary:v2];

  return v3;
}

PKProvisioningPaymentApplication *__50__PKPaymentRemoteCredential_updateWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKProvisioningPaymentApplication alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v19.receiver = self;
      v19.super_class = PKPaymentRemoteCredential;
      if (![(PKPaymentCredential *)&v19 isEqual:v5])
      {
        goto LABEL_20;
      }

      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = identifier;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          goto LABEL_10;
        }

        v12 = [(NSString *)v7 isEqualToString:v8];

        if (!v12)
        {
          goto LABEL_20;
        }
      }

      summaryMetadata = self->_summaryMetadata;
      v14 = v5->_summaryMetadata;
      if (summaryMetadata && v14)
      {
        if (([(NSArray *)summaryMetadata isEqual:?]& 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (summaryMetadata != v14)
      {
        goto LABEL_20;
      }

      summaryMetadataDescription = v5->_summaryMetadataDescription;
      v7 = self->_summaryMetadataDescription;
      v17 = summaryMetadataDescription;
      v9 = v17;
      if (v7 == v17)
      {

LABEL_29:
        v11 = self->_requiresMetadata == v5->_requiresMetadata;
        goto LABEL_21;
      }

      if (v7 && v17)
      {
        v18 = [(NSString *)v7 isEqualToString:v17];

        if (v18)
        {
          goto LABEL_29;
        }

LABEL_20:
        v11 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_10:

      goto LABEL_20;
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_summaryMetadata];
  [v3 safelyAddObject:self->_summaryMetadataDescription];
  v8.receiver = self;
  v8.super_class = PKPaymentRemoteCredential;
  v4 = [(PKPaymentCredential *)&v8 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_requiresMetadata - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  identifier = self->_identifier;
  if (!identifier)
  {
    identifier = @"n/a";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = identifier;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"<%@ %p>: Identifier: %@", v7, self, v5];

  return v8;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)a3
{
  if (self->_transferType == 2)
  {
    v4 = 0;
  }

  else
  {
    if ([(PKPaymentCredential *)self cardType]== 4)
    {
      if (a3 == 1)
      {
        v4 = PKLocalizedIdentityString(&cfstr_PrecursorPassS.isa, 0);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = [(PKPaymentRemoteCredential *)self summaryMetadataDescription];
    }
  }

  return v4;
}

- (NSString)summaryMetadataDescription
{
  if (self->_requiresMetadata && ![(NSArray *)self->_summaryMetadata count])
  {
    v3 = PKLocalizedPaymentString(&cfstr_LoadingMetadat.isa, 0);
  }

  else
  {
    v3 = self->_summaryMetadataDescription;
  }

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentCredential *)self cardType];
  if (v5 < [v4 cardType])
  {
    goto LABEL_2;
  }

  v7 = [(PKPaymentCredential *)self cardType];
  if (v7 > [v4 cardType])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v9 = [(PKPaymentCredential *)self credentialType];
  if (v9 >= [v4 credentialType])
  {
    v10 = [(PKPaymentCredential *)self credentialType];
    if (v10 <= [v4 credentialType])
    {
      rank = self->_rank;
      if (rank >= [v4 rank])
      {
        v12 = self->_rank;
        v6 = v12 > [v4 rank];
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v6 = -1;
LABEL_5:

  return v6;
}

@end