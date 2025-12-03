@interface PKRemotePaymentInstrument
+ (PKRemotePaymentInstrument)remotePaymentInstrumentWithProtobuf:(id)protobuf;
+ (id)sortDescriptorForDefaultPaymentInstrument:(id)instrument paymentSupportedQuery:(id)query;
+ (id)thumbnailCachePathForManifestHash:(id)hash size:(CGSize)size planningToWrite:(BOOL)write;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemotePaymentInstrument:(id)instrument;
- (PKRemotePaymentInstrument)initWithCoder:(id)coder;
- (PKRemotePaymentInstrument)initWithPaymentPass:(id)pass;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRemotePaymentInstrument

+ (id)sortDescriptorForDefaultPaymentInstrument:(id)instrument paymentSupportedQuery:(id)query
{
  instrumentCopy = instrument;
  queryCopy = query;
  v7 = MEMORY[0x1E696AEB0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __126__PKRemotePaymentInstrument_PKPaymentAuthorizationDataModel__sortDescriptorForDefaultPaymentInstrument_paymentSupportedQuery___block_invoke;
  v12[3] = &unk_1E79CC550;
  v13 = instrumentCopy;
  v14 = queryCopy;
  v8 = queryCopy;
  v9 = instrumentCopy;
  v10 = [v7 sortDescriptorWithKey:@"paymentApplications" ascending:1 comparator:v12];

  return v10;
}

uint64_t __126__PKRemotePaymentInstrument_PKPaymentAuthorizationDataModel__sortDescriptorForDefaultPaymentInstrument_paymentSupportedQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) primaryPaymentApplication];
  v8 = [v7 applicationIdentifier];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    v14 = *v38;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if (v13)
        {
          v13 = 1;
          if ((v12 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v13 = [*(*(&v37 + 1) + 8 * i) canProcessPayment:*(a1 + 40)];
          if ((v12 & 1) == 0)
          {
LABEL_8:
            v17 = [v16 applicationIdentifier];
            v12 = [v17 isEqualToString:v8];

            continue;
          }
        }

        v12 = 1;
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v11)
      {
        v18 = v12 ^ 1;
        goto LABEL_15;
      }
    }
  }

  v13 = 0;
  v18 = 1;
LABEL_15:
  v31 = v18;
  v32 = v9;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    LOBYTE(v22) = 0;
    LOBYTE(v23) = 0;
    v24 = *v34;
    while (1)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        if (v22)
        {
          v22 = 1;
          if ((v23 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v22 = [*(*(&v33 + 1) + 8 * j) canProcessPayment:*(a1 + 40)];
          if ((v23 & 1) == 0)
          {
LABEL_22:
            v27 = [v26 applicationIdentifier];
            v23 = [v27 isEqualToString:v8];

            continue;
          }
        }

        v23 = 1;
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v21)
      {
        goto LABEL_29;
      }
    }
  }

  v22 = 0;
  v23 = 0;
LABEL_29:

  if (((v13 ^ 1) & 1) != 0 || v22)
  {
    v29 = v32;
    if ((v13 | v22 ^ 1))
    {
      if ((v13 ^ 1 | v22 ^ 1))
      {
        v28 = 0;
      }

      else if ((v31 | v23))
      {
        v28 = v31 & v23;
      }

      else
      {
        v28 = -1;
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = -1;
    v29 = v32;
  }

  return v28;
}

+ (PKRemotePaymentInstrument)remotePaymentInstrumentWithProtobuf:(id)protobuf
{
  v36 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKRemotePaymentInstrument);
  passID = [protobufCopy passID];
  [(PKRemotePaymentInstrument *)v4 setPassIdentifier:passID];

  organizationName = [protobufCopy organizationName];
  [(PKRemotePaymentInstrument *)v4 setOrganizationName:organizationName];

  displayName = [protobufCopy displayName];
  [(PKRemotePaymentInstrument *)v4 setDisplayName:displayName];

  v8 = MEMORY[0x1E695DF00];
  [protobufCopy ingestedDate];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  [(PKRemotePaymentInstrument *)v4 setIngestedDate:v9];

  primaryAccountNumberSuffix = [protobufCopy primaryAccountNumberSuffix];
  [(PKRemotePaymentInstrument *)v4 setPrimaryAccountNumberSuffix:primaryAccountNumberSuffix];

  manifestHash = [protobufCopy manifestHash];
  [(PKRemotePaymentInstrument *)v4 setManifestHash:manifestHash];

  primaryAccountIdentifier = [protobufCopy primaryAccountIdentifier];
  [(PKRemotePaymentInstrument *)v4 setPrimaryAccountIdentifier:primaryAccountIdentifier];

  associatedWebDomains = [protobufCopy associatedWebDomains];
  [(PKRemotePaymentInstrument *)v4 setAssociatedWebDomains:associatedWebDomains];

  -[PKRemotePaymentInstrument setSupportsAutomaticSelection:](v4, "setSupportsAutomaticSelection:", [protobufCopy supportsAutomaticSelection]);
  issuerCountryCode = [protobufCopy issuerCountryCode];
  [(PKRemotePaymentInstrument *)v4 setIssuerCountryCode:issuerCountryCode];

  -[PKRemotePaymentInstrument setHasAssociatedPeerPaymentAccount:](v4, "setHasAssociatedPeerPaymentAccount:", [protobufCopy hasAssociatedPeerPaymentAccount]);
  -[PKRemotePaymentInstrument setPeerPaymentAccountState:](v4, "setPeerPaymentAccountState:", [protobufCopy peerPaymentAccountState]);
  if ([protobufCopy hasPeerPaymentAccountBalance] && objc_msgSend(protobufCopy, "hasPeerPaymentAccountCurrency"))
  {
    if ([protobufCopy hasDecimalAccountBalance])
    {
      decimalAccountBalance = [protobufCopy decimalAccountBalance];
      v16 = PKProtoSupportDecimalNumberFromProtobuf(decimalAccountBalance);
    }

    else
    {
      if (![protobufCopy hasCustomPrecisionPeerPaymentAccountBalance])
      {
        v17 = PKLegacyCurrencyStorageIntegerToDecimal([protobufCopy peerPaymentAccountBalance], 0);
        goto LABEL_9;
      }

      decimalAccountBalance = [protobufCopy customPrecisionPeerPaymentAccountBalance];
      v16 = PKLegacyCurrencyStorageIntegerToDecimal([decimalAccountBalance amount], 1);
    }

    v17 = v16;

LABEL_9:
    peerPaymentAccountCurrency = [protobufCopy peerPaymentAccountCurrency];
    v19 = PKCurrencyAmountCreate(v17, peerPaymentAccountCurrency, 0);
    [(PKRemotePaymentInstrument *)v4 setPeerPaymentAccountBalance:v19];
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  paymentApplications = [protobufCopy paymentApplications];
  v22 = [paymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(paymentApplications);
        }

        v26 = [PKPaymentApplication applicationWithProtobuf:*(*(&v31 + 1) + 8 * i)];
        [v20 addObject:v26];
        if (([v26 isAuxiliary] & 1) == 0)
        {
          [(PKRemotePaymentInstrument *)v4 setPrimaryPaymentApplication:v26];
        }
      }

      v23 = [paymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v23);
  }

  [(PKRemotePaymentInstrument *)v4 setPaymentApplications:v20];
  if ([protobufCopy hasAssociatedAccountFeatureIdentifier])
  {
    associatedAccountFeatureIdentifier = [protobufCopy associatedAccountFeatureIdentifier];
  }

  else
  {
    associatedAccountFeatureIdentifier = 0;
  }

  [(PKRemotePaymentInstrument *)v4 setAssociatedAccountFeatureIdentifier:associatedAccountFeatureIdentifier];
  if ([protobufCopy hasCobranded])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "cobranded")}];
    [(PKRemotePaymentInstrument *)v4 setCobranded:v28];
  }

  cobrandName = [protobufCopy cobrandName];
  [(PKRemotePaymentInstrument *)v4 setCobrandName:cobrandName];

  return v4;
}

- (id)protobuf
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufPaymentInstrument);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  paymentApplications = [(PKRemotePaymentInstrument *)self paymentApplications];
  v5 = [paymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(paymentApplications);
        }

        protobuf = [*(*(&v31 + 1) + 8 * i) protobuf];
        [(PKProtobufPaymentInstrument *)v3 addPaymentApplications:protobuf];
      }

      v6 = [paymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  displayName = [(PKRemotePaymentInstrument *)self displayName];
  [(PKProtobufPaymentInstrument *)v3 setDisplayName:displayName];

  passIdentifier = [(PKRemotePaymentInstrument *)self passIdentifier];
  [(PKProtobufPaymentInstrument *)v3 setPassID:passIdentifier];

  organizationName = [(PKRemotePaymentInstrument *)self organizationName];
  [(PKProtobufPaymentInstrument *)v3 setOrganizationName:organizationName];

  ingestedDate = [(PKRemotePaymentInstrument *)self ingestedDate];
  [ingestedDate timeIntervalSinceReferenceDate];
  [(PKProtobufPaymentInstrument *)v3 setIngestedDate:?];

  primaryAccountNumberSuffix = [(PKRemotePaymentInstrument *)self primaryAccountNumberSuffix];
  [(PKProtobufPaymentInstrument *)v3 setPrimaryAccountNumberSuffix:primaryAccountNumberSuffix];

  manifestHash = [(PKRemotePaymentInstrument *)self manifestHash];
  [(PKProtobufPaymentInstrument *)v3 setManifestHash:manifestHash];

  primaryAccountIdentifier = [(PKRemotePaymentInstrument *)self primaryAccountIdentifier];
  [(PKProtobufPaymentInstrument *)v3 setPrimaryAccountIdentifier:primaryAccountIdentifier];

  associatedWebDomains = [(PKRemotePaymentInstrument *)self associatedWebDomains];
  v18 = [associatedWebDomains mutableCopy];
  [(PKProtobufPaymentInstrument *)v3 setAssociatedWebDomains:v18];

  [(PKProtobufPaymentInstrument *)v3 setSupportsAutomaticSelection:[(PKRemotePaymentInstrument *)self supportsAutomaticSelection]];
  issuerCountryCode = [(PKRemotePaymentInstrument *)self issuerCountryCode];
  [(PKProtobufPaymentInstrument *)v3 setIssuerCountryCode:issuerCountryCode];

  [(PKProtobufPaymentInstrument *)v3 setHasAssociatedPeerPaymentAccount:[(PKRemotePaymentInstrument *)self hasAssociatedPeerPaymentAccount]];
  [(PKProtobufPaymentInstrument *)v3 setPeerPaymentAccountState:[(PKRemotePaymentInstrument *)self peerPaymentAccountState]];
  peerPaymentAccountBalance = [(PKRemotePaymentInstrument *)self peerPaymentAccountBalance];

  if (peerPaymentAccountBalance)
  {
    peerPaymentAccountBalance2 = [(PKRemotePaymentInstrument *)self peerPaymentAccountBalance];
    currency = [peerPaymentAccountBalance2 currency];
    [(PKProtobufPaymentInstrument *)v3 setPeerPaymentAccountCurrency:currency];

    peerPaymentAccountBalance3 = [(PKRemotePaymentInstrument *)self peerPaymentAccountBalance];
    amount = [peerPaymentAccountBalance3 amount];

    [(PKProtobufPaymentInstrument *)v3 setPeerPaymentAccountBalance:PKCurrencyDecimalToLegacyStorageInteger(amount, 0)];
    v25 = DecimalToCustomPrecisionProtobuf(amount);
    [(PKProtobufPaymentInstrument *)v3 setCustomPrecisionPeerPaymentAccountBalance:v25];

    v26 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(amount);
    [(PKProtobufPaymentInstrument *)v3 setDecimalAccountBalance:v26];
  }

  [(PKProtobufPaymentInstrument *)v3 setAssociatedAccountFeatureIdentifier:[(PKRemotePaymentInstrument *)self associatedAccountFeatureIdentifier]];
  isCobranded = [(PKRemotePaymentInstrument *)self isCobranded];

  if (isCobranded)
  {
    isCobranded2 = [(PKRemotePaymentInstrument *)self isCobranded];
    -[PKProtobufPaymentInstrument setCobranded:](v3, "setCobranded:", [isCobranded2 BOOLValue]);
  }

  cobrandName = [(PKRemotePaymentInstrument *)self cobrandName];
  [(PKProtobufPaymentInstrument *)v3 setCobrandName:cobrandName];

  return v3;
}

- (PKRemotePaymentInstrument)initWithPaymentPass:(id)pass
{
  passCopy = pass;
  v35.receiver = self;
  v35.super_class = PKRemotePaymentInstrument;
  v5 = [(PKRemotePaymentInstrument *)&v35 init];
  if (v5)
  {
    devicePaymentApplications = [passCopy devicePaymentApplications];
    allObjects = [devicePaymentApplications allObjects];
    paymentApplications = v5->_paymentApplications;
    v5->_paymentApplications = allObjects;

    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    primaryPaymentApplication = v5->_primaryPaymentApplication;
    v5->_primaryPaymentApplication = devicePrimaryPaymentApplication;

    uniqueID = [passCopy uniqueID];
    passIdentifier = v5->_passIdentifier;
    v5->_passIdentifier = uniqueID;

    organizationName = [passCopy organizationName];
    organizationName = v5->_organizationName;
    v5->_organizationName = organizationName;

    localizedDescription = [passCopy localizedDescription];
    displayName = v5->_displayName;
    v5->_displayName = localizedDescription;

    ingestedDate = [passCopy ingestedDate];
    ingestedDate = v5->_ingestedDate;
    v5->_ingestedDate = ingestedDate;

    primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
    primaryAccountNumberSuffix = v5->_primaryAccountNumberSuffix;
    v5->_primaryAccountNumberSuffix = primaryAccountNumberSuffix;

    manifestHash = [passCopy manifestHash];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = manifestHash;

    primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = primaryAccountIdentifier;

    associatedWebDomains = [passCopy associatedWebDomains];
    allObjects2 = [associatedWebDomains allObjects];
    associatedWebDomains = v5->_associatedWebDomains;
    v5->_associatedWebDomains = allObjects2;

    v5->_supportsAutomaticSelection = ([passCopy settings] & 0x10) != 0;
    issuerCountryCode = [passCopy issuerCountryCode];
    issuerCountryCode = v5->_issuerCountryCode;
    v5->_issuerCountryCode = issuerCountryCode;

    v5->_hasAssociatedPeerPaymentAccount = [passCopy hasAssociatedPeerPaymentAccount];
    v5->_associatedAccountFeatureIdentifier = [passCopy associatedAccountFeatureIdentifier];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(passCopy, "isCobranded")}];
    cobranded = v5->_cobranded;
    v5->_cobranded = v30;

    cobrandName = [passCopy cobrandName];
    cobrandName = v5->_cobrandName;
    v5->_cobrandName = cobrandName;
  }

  return v5;
}

- (PKRemotePaymentInstrument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = PKRemotePaymentInstrument;
  v5 = [(PKRemotePaymentInstrument *)&v41 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paymentApplications"];
    paymentApplications = v5->_paymentApplications;
    v5->_paymentApplications = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passID"];
    passIdentifier = v5->_passIdentifier;
    v5->_passIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ingestedDate"];
    ingestedDate = v5->_ingestedDate;
    v5->_ingestedDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountNumberSuffix"];
    primaryAccountNumberSuffix = v5->_primaryAccountNumberSuffix;
    v5->_primaryAccountNumberSuffix = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryPaymentApplication"];
    primaryPaymentApplication = v5->_primaryPaymentApplication;
    v5->_primaryPaymentApplication = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"associatedWebDomains"];
    associatedWebDomains = v5->_associatedWebDomains;
    v5->_associatedWebDomains = v30;

    v5->_supportsAutomaticSelection = [coderCopy decodeBoolForKey:@"supportsAutomaticSelection"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    issuerCountryCode = v5->_issuerCountryCode;
    v5->_issuerCountryCode = v32;

    v5->_hasAssociatedPeerPaymentAccount = [coderCopy decodeBoolForKey:@"hasAssociatedPeerPaymentAccount"];
    v5->_peerPaymentAccountState = [coderCopy decodeIntegerForKey:@"peerPaymentAccountState"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentAccountBalance"];
    peerPaymentAccountBalance = v5->_peerPaymentAccountBalance;
    v5->_peerPaymentAccountBalance = v34;

    v5->_associatedAccountFeatureIdentifier = [coderCopy decodeIntegerForKey:@"associatedAccountFeatureIdentifier"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cobranded"];
    cobranded = v5->_cobranded;
    v5->_cobranded = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cobrandName"];
    cobrandName = v5->_cobrandName;
    v5->_cobrandName = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentApplications = self->_paymentApplications;
  coderCopy = coder;
  [coderCopy encodeObject:paymentApplications forKey:@"paymentApplications"];
  [coderCopy encodeObject:self->_passIdentifier forKey:@"passID"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_ingestedDate forKey:@"ingestedDate"];
  [coderCopy encodeObject:self->_primaryAccountNumberSuffix forKey:@"primaryAccountNumberSuffix"];
  [coderCopy encodeObject:self->_primaryPaymentApplication forKey:@"primaryPaymentApplication"];
  [coderCopy encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [coderCopy encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [coderCopy encodeObject:self->_associatedWebDomains forKey:@"associatedWebDomains"];
  [coderCopy encodeBool:self->_supportsAutomaticSelection forKey:@"supportsAutomaticSelection"];
  [coderCopy encodeObject:self->_issuerCountryCode forKey:@"issuerCountryCode"];
  [coderCopy encodeBool:self->_hasAssociatedPeerPaymentAccount forKey:@"hasAssociatedPeerPaymentAccount"];
  [coderCopy encodeInteger:self->_peerPaymentAccountState forKey:@"peerPaymentAccountState"];
  [coderCopy encodeObject:self->_peerPaymentAccountBalance forKey:@"peerPaymentAccountBalance"];
  [coderCopy encodeInteger:self->_associatedAccountFeatureIdentifier forKey:@"associatedAccountFeatureIdentifier"];
  [coderCopy encodeObject:self->_cobranded forKey:@"cobranded"];
  [coderCopy encodeObject:self->_cobrandName forKey:@"cobrandName"];
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  passIdentifier = self->_passIdentifier;
  organizationName = self->_organizationName;
  ingestedDate = self->_ingestedDate;
  displayName = self->_displayName;
  hexEncoding = [(NSData *)self->_manifestHash hexEncoding];
  [v3 appendFormat:@"Display Name: %@\nPass ID: %@\nPass organizationName: %@\nIngested: %@\nManifest: %@\n", displayName, passIdentifier, organizationName, ingestedDate, hexEncoding];

  [v3 appendString:@"Applications: \n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_paymentApplications;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        applicationIdentifier = [*(*(&v16 + 1) + 8 * i) applicationIdentifier];
        [v3 appendFormat:@"%@\n", applicationIdentifier];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 appendString:@"\n\n"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKRemotePaymentInstrument allocWithZone:](PKRemotePaymentInstrument init];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:zone];
  passIdentifier = v5->_passIdentifier;
  v5->_passIdentifier = v6;

  v8 = [(NSString *)self->_organizationName copyWithZone:zone];
  organizationName = v5->_organizationName;
  v5->_organizationName = v8;

  v10 = [(NSData *)self->_manifestHash copyWithZone:zone];
  manifestHash = v5->_manifestHash;
  v5->_manifestHash = v10;

  v12 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v12;

  v14 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:zone];
  primaryAccountNumberSuffix = v5->_primaryAccountNumberSuffix;
  v5->_primaryAccountNumberSuffix = v14;

  v16 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:zone];
  primaryAccountIdentifier = v5->_primaryAccountIdentifier;
  v5->_primaryAccountIdentifier = v16;

  v18 = [(NSArray *)self->_paymentApplications copyWithZone:zone];
  paymentApplications = v5->_paymentApplications;
  v5->_paymentApplications = v18;

  v20 = [(PKPaymentApplication *)self->_primaryPaymentApplication copyWithZone:zone];
  primaryPaymentApplication = v5->_primaryPaymentApplication;
  v5->_primaryPaymentApplication = v20;

  v22 = [(NSDate *)self->_ingestedDate copyWithZone:zone];
  ingestedDate = v5->_ingestedDate;
  v5->_ingestedDate = v22;

  v24 = [(NSArray *)self->_associatedWebDomains copyWithZone:zone];
  associatedWebDomains = v5->_associatedWebDomains;
  v5->_associatedWebDomains = v24;

  v5->_supportsAutomaticSelection = self->_supportsAutomaticSelection;
  v26 = [(NSString *)self->_issuerCountryCode copyWithZone:zone];
  issuerCountryCode = v5->_issuerCountryCode;
  v5->_issuerCountryCode = v26;

  v5->_hasAssociatedPeerPaymentAccount = self->_hasAssociatedPeerPaymentAccount;
  v5->_peerPaymentAccountState = self->_peerPaymentAccountState;
  v28 = [(PKCurrencyAmount *)self->_peerPaymentAccountBalance copyWithZone:zone];
  peerPaymentAccountBalance = v5->_peerPaymentAccountBalance;
  v5->_peerPaymentAccountBalance = v28;

  v5->_associatedAccountFeatureIdentifier = self->_associatedAccountFeatureIdentifier;
  v30 = [(NSNumber *)self->_cobranded copyWithZone:zone];
  cobranded = v5->_cobranded;
  v5->_cobranded = v30;

  v32 = [(NSString *)self->_cobrandName copyWithZone:zone];
  cobrandName = v5->_cobrandName;
  v5->_cobrandName = v32;

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_passIdentifier];
  [array safelyAddObject:self->_organizationName];
  [array safelyAddObject:self->_displayName];
  [array safelyAddObject:self->_ingestedDate];
  [array safelyAddObject:self->_primaryAccountNumberSuffix];
  [array safelyAddObject:self->_primaryPaymentApplication];
  [array safelyAddObject:self->_manifestHash];
  [array safelyAddObject:self->_primaryAccountIdentifier];
  [array safelyAddObject:self->_associatedWebDomains];
  [array safelyAddObject:self->_issuerCountryCode];
  [array safelyAddObject:self->_cobranded];
  [array safelyAddObject:self->_cobrandName];
  v4 = PKCombinedHash(17, self->_paymentApplications);
  v5 = PKCombinedHash(v4, array);
  v6 = self->_associatedAccountFeatureIdentifier - v5 + 32 * v5;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemotePaymentInstrument *)self isEqualToRemotePaymentInstrument:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemotePaymentInstrument:(id)instrument
{
  instrumentCopy = instrument;
  paymentApplications = self->_paymentApplications;
  v6 = instrumentCopy[12];
  if (paymentApplications)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (paymentApplications != v6)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v8 = [(NSArray *)paymentApplications isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  primaryPaymentApplication = self->_primaryPaymentApplication;
  v10 = instrumentCopy[13];
  if (primaryPaymentApplication && v10)
  {
    if (![(PKPaymentApplication *)primaryPaymentApplication isEqual:?])
    {
      goto LABEL_54;
    }
  }

  else if (primaryPaymentApplication != v10)
  {
    goto LABEL_54;
  }

  v11 = instrumentCopy[2];
  v12 = self->_passIdentifier;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {
      goto LABEL_53;
    }

    v15 = [(NSString *)v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_54;
    }
  }

  v16 = instrumentCopy[3];
  v12 = self->_organizationName;
  v17 = v16;
  v14 = v17;
  if (v12 == v17)
  {
  }

  else
  {
    if (!v12 || !v17)
    {
      goto LABEL_53;
    }

    v18 = [(NSString *)v12 isEqualToString:v17];

    if (!v18)
    {
      goto LABEL_54;
    }
  }

  v19 = instrumentCopy[5];
  v12 = self->_displayName;
  v20 = v19;
  v14 = v20;
  if (v12 == v20)
  {
  }

  else
  {
    if (!v12 || !v20)
    {
      goto LABEL_53;
    }

    v21 = [(NSString *)v12 isEqualToString:v20];

    if (!v21)
    {
      goto LABEL_54;
    }
  }

  ingestedDate = self->_ingestedDate;
  v23 = instrumentCopy[14];
  if (ingestedDate && v23)
  {
    if (([(NSDate *)ingestedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (ingestedDate != v23)
  {
    goto LABEL_54;
  }

  manifestHash = self->_manifestHash;
  v25 = instrumentCopy[4];
  if (manifestHash && v25)
  {
    if (([(NSData *)manifestHash isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (manifestHash != v25)
  {
    goto LABEL_54;
  }

  v26 = instrumentCopy[6];
  v12 = self->_primaryAccountNumberSuffix;
  v27 = v26;
  v14 = v27;
  if (v12 == v27)
  {
  }

  else
  {
    if (!v12 || !v27)
    {
      goto LABEL_53;
    }

    v28 = [(NSString *)v12 isEqualToString:v27];

    if (!v28)
    {
      goto LABEL_54;
    }
  }

  v29 = instrumentCopy[7];
  v12 = self->_primaryAccountIdentifier;
  v30 = v29;
  v14 = v30;
  if (v12 == v30)
  {

    goto LABEL_57;
  }

  if (!v12 || !v30)
  {
LABEL_53:

    goto LABEL_54;
  }

  v31 = [(NSString *)v12 isEqualToString:v30];

  if (!v31)
  {
    goto LABEL_54;
  }

LABEL_57:
  associatedWebDomains = self->_associatedWebDomains;
  v35 = instrumentCopy[17];
  if (associatedWebDomains && v35)
  {
    if (([(NSArray *)associatedWebDomains isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (associatedWebDomains != v35)
  {
    goto LABEL_54;
  }

  issuerCountryCode = self->_issuerCountryCode;
  v37 = instrumentCopy[8];
  if (issuerCountryCode && v37)
  {
    if (([(NSString *)issuerCountryCode isEqual:?]& 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (issuerCountryCode != v37)
  {
    goto LABEL_54;
  }

  if (self->_peerPaymentAccountState != instrumentCopy[16] || self->_hasAssociatedPeerPaymentAccount != *(instrumentCopy + 9))
  {
    goto LABEL_54;
  }

  peerPaymentAccountBalance = self->_peerPaymentAccountBalance;
  v39 = instrumentCopy[15];
  if (peerPaymentAccountBalance && v39)
  {
    if (![(PKCurrencyAmount *)peerPaymentAccountBalance isEqual:?])
    {
      goto LABEL_54;
    }
  }

  else if (peerPaymentAccountBalance != v39)
  {
    goto LABEL_54;
  }

  if (self->_associatedAccountFeatureIdentifier != instrumentCopy[9])
  {
    goto LABEL_54;
  }

  cobranded = self->_cobranded;
  v41 = instrumentCopy[10];
  if (cobranded && v41)
  {
    if (([(NSNumber *)cobranded isEqual:?]& 1) != 0)
    {
      goto LABEL_80;
    }

LABEL_54:
    v32 = 0;
    goto LABEL_55;
  }

  if (cobranded != v41)
  {
    goto LABEL_54;
  }

LABEL_80:
  cobrandName = self->_cobrandName;
  v43 = instrumentCopy[11];
  if (cobrandName && v43)
  {
    v32 = [(NSString *)cobrandName isEqual:?];
  }

  else
  {
    v32 = cobrandName == v43;
  }

LABEL_55:

  return v32;
}

+ (id)thumbnailCachePathForManifestHash:(id)hash size:(CGSize)size planningToWrite:(BOOL)write
{
  writeCopy = write;
  height = size.height;
  width = size.width;
  hashCopy = hash;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%ld-%ld", hashCopy, llround(width), llround(height)];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__44;
  v18 = __Block_byref_object_dispose__44;
  v19 = 0;
  if (writeCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __93__PKRemotePaymentInstrument_Caching__thumbnailCachePathForManifestHash_size_planningToWrite___block_invoke;
    v13[3] = &unk_1E79C88C0;
    v13[4] = &v14;
    PKRemoteInstrumentThumbnailsCacheCreateFileURLForWriting(0, v9, v13);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__PKRemotePaymentInstrument_Caching__thumbnailCachePathForManifestHash_size_planningToWrite___block_invoke_2;
    v12[3] = &unk_1E79C88C0;
    v12[4] = &v14;
    PKRemoteInstrumentThumbnailsCacheCreateFileURLReadOnly(0, v9, v12);
  }

  path = [v15[5] path];
  _Block_object_dispose(&v14, 8);

  return path;
}

@end