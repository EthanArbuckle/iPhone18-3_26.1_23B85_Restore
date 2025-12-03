@interface PKPaymentApplication
+ (BOOL)paymentApplicationSupportsMerchantCapabilties:(unint64_t)capabilties paymentType:(unint64_t)type;
+ (PKPaymentApplication)applicationWithProtobuf:(id)protobuf;
- (BOOL)acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service;
- (BOOL)acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities paymentMode:(int64_t)mode;
- (BOOL)acceptedForWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentApplicationStates:(id)states webService:(id)service paymentMode:(int64_t)mode isMultiTokensRequest:(BOOL)request;
- (BOOL)blockingSupportedUWBDueToHardware;
- (BOOL)canProcessPayment:(id)payment;
- (BOOL)firstApproachCompleted;
- (BOOL)generatesLocalTransactions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentApplication:(id)application;
- (BOOL)isParsedTransitApplication;
- (BOOL)isRequiredForMerchantInCountry:(id)country;
- (BOOL)isShareable;
- (BOOL)supportsAutomaticSelectionForTCI:(id)i;
- (BOOL)supportsDeviceAssessmentAccordingToService:(id)service;
- (BOOL)supportsExpress;
- (BOOL)supportsExpressForAutomaticSelectionCriteriaPassingTest:(id)test;
- (BOOL)supportsExpressForAutomaticSelectionTechnologyType:(int64_t)type;
- (BOOL)supportsExpressMode:(id)mode;
- (BOOL)supportsMultiTokensWithImplicitlyEnabledNetworks:(id)networks;
- (BOOL)supportsSuica;
- (BOOL)supportsTransit;
- (BOOL)supportsUWB;
- (BOOL)supportsWebPaymentMode:(int64_t)mode withExclusionList:(id)list clientOSVersion:(id)version;
- (NSString)stateAsString;
- (NSString)stationCodeProvider;
- (PKPaymentApplication)initWithCoder:(id)coder;
- (PKPaymentApplication)initWithPaymentApplicationDictionary:(id)dictionary auxiliaryApplication:(BOOL)application;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)networksSupportedAccordingToService:(id)service;
- (id)paymentApplicationsIncludingAuxiliaryPaymentTypes;
- (id)protobuf;
- (id)torinoFeatureFromService:(id)service;
- (unint64_t)hash;
- (unint64_t)supportedRadioTechnologies;
- (unint64_t)vpanRefreshTypeAccordingToService:(id)service;
- (void)_createAndPopulateAutomaticSelectionCriteriaIfNecessary;
- (void)_createAndPopulateReaderIdentifierIfNecessary;
- (void)encodeWithCoder:(id)coder;
- (void)setFelicaProperties:(id)properties;
@end

@implementation PKPaymentApplication

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_applicationIdentifier];
  [v3 safelyAddObject:self->_secureElementIdentifier];
  [v3 safelyAddObject:self->_dpanIdentifier];
  [v3 safelyAddObject:self->_dpanSuffix];
  [v3 safelyAddObject:self->_sanitizedDPAN];
  [v3 safelyAddObject:self->_apanIdentifier];
  [v3 safelyAddObject:self->_apanSuffix];
  [v3 safelyAddObject:self->_virtualCardIdentifier];
  [v3 safelyAddObject:self->_virtualCardSuffix];
  [v3 safelyAddObject:self->_suspendedReason];
  [v3 safelyAddObject:self->_inAppPINRequiredAmount];
  [v3 safelyAddObject:self->_inAppPINRequiredCurrency];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_supportedExpressModes];
  [v3 safelyAddObject:self->_automaticSelectionCriteria];
  [v3 safelyAddObject:self->_appletDataFormat];
  [v3 safelyAddObject:self->_appletCurrencyCode];
  [v3 safelyAddObject:self->_transitProperties];
  [v3 safelyAddObject:self->_supportedInAppMerchantCountryCodes];
  [v3 safelyAddObject:self->_unsupportedInAppMerchantCountryCodes];
  [v3 safelyAddObject:self->_supportedTransitNetworkIdentifiers];
  [v3 safelyAddObject:self->_transactionSourceIdentifier];
  [v3 safelyAddObject:self->_subcredentials];
  [v3 safelyAddObject:self->_supportsMultiTokens];
  [v3 safelyAddObject:self->_virtualCardRefreshTypeNumber];
  v4 = PKCombinedHash(17, v3);
  state = self->_state;
  supportsContactlessPayment = self->_supportsContactlessPayment;
  supportsInAppPayment = self->_supportsInAppPayment;
  supportsMerchantTokens = self->_supportsMerchantTokens;
  hasMerchantTokens = self->_hasMerchantTokens;
  hadMerchantTokens = self->_hadMerchantTokens;
  supportsVirtualCardNumber = self->_supportsVirtualCardNumber;
  if (supportsVirtualCardNumber)
  {
    bOOLValue = [(NSNumber *)supportsVirtualCardNumber BOOLValue];
  }

  else
  {
    bOOLValue = 2;
  }

  v13 = supportsContactlessPayment - (state - v4 + 32 * v4) + 32 * (state - v4 + 32 * v4);
  v14 = supportsMerchantTokens - (supportsInAppPayment - v13 + 32 * v13) + 32 * (supportsInAppPayment - v13 + 32 * v13);
  v15 = hadMerchantTokens - (hasMerchantTokens - v14 + 32 * v14) + 32 * (hasMerchantTokens - v14 + 32 * v14);
  v16 = self->_virtualCardVPANOrigin - (bOOLValue - v15 + 32 * v15) + 32 * (bOOLValue - v15 + 32 * v15);
  v17 = self->_supportsBarcodePayment - v16 + 32 * v16;
  v18 = self->_supportsOptionalAuthentication - v17 + 32 * v17;
  v19 = self->_supportsServiceMode - v18 + 32 * v18;
  v20 = self->_paymentNetworkIdentifier - v19 + 32 * v19;
  v21 = self->_auxiliary - v20 + 32 * v20;
  v22 = self->_paymentType - v21 + 32 * v21;
  v23 = self->_auxiliaryPaymentType - v22 + 32 * v22;
  v24 = self->_requiresDeferredAuthorization - v23 + 32 * v23;
  v25 = self->_contactlessPriority - v24 + 32 * v24;
  v26 = self->_supportsInstantFundsIn - (self->_inAppPriority - v25 + 32 * v25) + 32 * (self->_inAppPriority - v25 + 32 * v25);
  v27 = self->_fundingSourcePaymentType - v26 + 32 * v26;
  v28 = self->_requiresConsentForDataRelease - v27 + 32 * v27;
  v29 = self->_shareable - v28 + 32 * v28;
  v30 = [(NSData *)self->_readerIdentifier hash]- v29 + 32 * v29;
  v31 = [(NSSet *)self->_associatedReaders hash]- v30 + 32 * v30;

  return v31;
}

- (void)_createAndPopulateAutomaticSelectionCriteriaIfNecessary
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self->_automaticSelectionCriteria)
  {
    v3 = [(NSArray *)self->_supportedExpressModes count];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v5 = self->_supportedExpressModes;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v41;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v41 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [PKPassAutomaticSelectionCriterion criterionForExpressMode:*(*(&v40 + 1) + 8 * i)];
            if (v10)
            {
              [v4 addObject:v10];
            }
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v7);
      }

      v11 = [v4 copy];
      automaticSelectionCriteria = self->_automaticSelectionCriteria;
      self->_automaticSelectionCriteria = v11;
    }

    else
    {
      v13 = self->_automaticSelectionCriteria;
      self->_automaticSelectionCriteria = MEMORY[0x1E695E0F0];
    }
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_subcredentials;
  v16 = [(NSSet *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * j);
        _readerIdentifier = [v20 _readerIdentifier];
        if (_readerIdentifier)
        {
          [v14 pk_safelyAddObject:_readerIdentifier];
        }

        else
        {
          pairedReaderIdentifier = [v20 pairedReaderIdentifier];
          pk_decodeHexadecimal = [pairedReaderIdentifier pk_decodeHexadecimal];
          [v14 pk_safelyAddObject:pk_decodeHexadecimal];
        }
      }

      v17 = [(NSSet *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = self->_automaticSelectionCriteria;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v32 + 1) + 8 * k);
          readerIDs = [v29 readerIDs];
          v31 = [readerIDs count];

          if (!v31)
          {
            [v29 setReaderIDs:v14];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }
  }
}

- (void)_createAndPopulateReaderIdentifierIfNecessary
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_readerIdentifier)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = self->_automaticSelectionCriteria;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v3);
          }

          readerIDs = [*(*(&v14 + 1) + 8 * i) readerIDs];
          if ([readerIDs count] > 1)
          {
            v11 = v6;
LABEL_17:

            goto LABEL_18;
          }

          anyObject = [readerIDs anyObject];
          v11 = anyObject;
          if (anyObject)
          {
            if (v6 && ![(NSData *)anyObject isEqual:v6])
            {

              goto LABEL_17;
            }

            v12 = v11;

            v6 = v12;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_18:
      v6 = 0;
    }

    readerIdentifier = self->_readerIdentifier;
    self->_readerIdentifier = v6;
  }
}

- (BOOL)acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities paymentMode:(int64_t)mode
{
  LOBYTE(v8) = 0;
  v6 = [PKPaymentRequestSupportedQuery inAppQueryWithSupportedNetworkIDs:identifiers merchantCapabilities:capabilities merchantCountryCode:0 paymentMode:mode paymentApplicationStates:0 paymentRequestType:0 isMultiTokensRequest:v8 webService:0];
  LOBYTE(self) = [(PKPaymentApplication *)self canProcessPayment:v6];

  return self;
}

- (BOOL)canProcessPayment:(id)payment
{
  paymentCopy = payment;
  issuedOnTheWeb = [paymentCopy issuedOnTheWeb];
  supportedNetworkIDs = [paymentCopy supportedNetworkIDs];
  merchantCapabilities = [paymentCopy merchantCapabilities];
  merchantCountryCode = [paymentCopy merchantCountryCode];
  paymentApplicationStates = [paymentCopy paymentApplicationStates];
  if (issuedOnTheWeb)
  {
    webService = [paymentCopy webService];
    paymentMode = [paymentCopy paymentMode];
    isMultiTokensRequest = [paymentCopy isMultiTokensRequest];

    LOBYTE(v17) = isMultiTokensRequest;
    v13 = [(PKPaymentApplication *)self acceptedForWebPaymentWithSupportedNetworkIdentifiers:supportedNetworkIDs merchantCapabilities:merchantCapabilities merchantCountryCode:merchantCountryCode paymentApplicationStates:paymentApplicationStates webService:webService paymentMode:paymentMode isMultiTokensRequest:v17];
  }

  else
  {
    webService = [paymentCopy paymentRequestType];
    isMultiTokensRequest2 = [paymentCopy isMultiTokensRequest];
    webService2 = [paymentCopy webService];

    v13 = [(PKPaymentApplication *)self acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:supportedNetworkIDs merchantCapabilities:merchantCapabilities merchantCountryCode:merchantCountryCode paymentApplicationStates:paymentApplicationStates paymentRequestType:webService isMultiTokensRequest:isMultiTokensRequest2 webService:webService2];
  }

  return v13;
}

- (BOOL)acceptedForWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentApplicationStates:(id)states webService:(id)service paymentMode:(int64_t)mode isMultiTokensRequest:(BOOL)request
{
  serviceCopy = service;
  if ([(PKPaymentApplication *)self acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:identifiers merchantCapabilities:capabilities merchantCountryCode:code paymentApplicationStates:states paymentRequestType:0 isMultiTokensRequest:request webService:serviceCopy])
  {
    context = [serviceCopy context];
    configuration = [context configuration];
    unsupportedWebPaymentConfigurations = [configuration unsupportedWebPaymentConfigurations];

    v19 = [(PKPaymentApplication *)self supportsWebPaymentMode:mode withExclusionList:unsupportedWebPaymentConfigurations];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)acceptedForNonWebPaymentWithSupportedNetworkIdentifiers:(id)identifiers merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)service
{
  requestCopy = request;
  typeCopy = type;
  serviceCopy = service;
  statesCopy = states;
  codeCopy = code;
  identifiersCopy = identifiers;
  LODWORD(identifiers) = [(PKPaymentApplication *)self supportsInAppPayment];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPaymentApplication state](self, "state")}];
  v19 = [statesCopy containsObject:v18];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPaymentApplication paymentNetworkIdentifier](self, "paymentNetworkIdentifier")}];
  v21 = [identifiersCopy containsObject:v20];

  unsupportedInAppMerchantCountryCodes = [(PKPaymentApplication *)self unsupportedInAppMerchantCountryCodes];
  v23 = [unsupportedInAppMerchantCountryCodes containsObject:codeCopy];

  v24 = 0;
  if (identifiers && v19 && v21 && (v23 & 1) == 0)
  {
    if (typeCopy && [typeCopy intValue] == 10 && ((capabilities & 0x80) != 0 && !-[PKPaymentApplication supportsInstantFundsIn](self, "supportsInstantFundsIn") || (+[PKWebServiceDisbursementFeature disbursementFeatureWithWebService:](PKWebServiceDisbursementFeature, "disbursementFeatureWithWebService:", serviceCopy), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "supportedNetworks"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", -[PKPaymentApplication paymentNetworkIdentifier](self, "paymentNetworkIdentifier")), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "containsObject:", v27), v27, v26, v25, !v28)))
    {
      v24 = 0;
    }

    else
    {
      targetDevice = [serviceCopy targetDevice];
      v30 = [targetDevice paymentWebService:serviceCopy supportedRegionFeatureOfType:4];

      supportedNetworks = [v30 supportedNetworks];
      if (requestCopy && ![(PKPaymentApplication *)self supportsMultiTokensWithImplicitlyEnabledNetworks:supportedNetworks])
      {
        v24 = 0;
      }

      else
      {
        v24 = [objc_opt_class() paymentApplicationSupportsMerchantCapabilties:capabilities paymentType:{-[PKPaymentApplication paymentType](self, "paymentType")}];
      }
    }
  }

  return v24;
}

+ (PKPaymentApplication)applicationWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPaymentApplication);
  dpanIdentifier = [protobufCopy dpanIdentifier];
  [(PKPaymentApplication *)v4 setDPANIdentifier:dpanIdentifier];

  dpanSuffix = [protobufCopy dpanSuffix];
  [(PKPaymentApplication *)v4 setDPANSuffix:dpanSuffix];

  sanitizedDpan = [protobufCopy sanitizedDpan];
  [(PKPaymentApplication *)v4 setSanitizedDPAN:sanitizedDpan];

  applicationIdentifier = [protobufCopy applicationIdentifier];
  [(PKPaymentApplication *)v4 setApplicationIdentifier:applicationIdentifier];

  secureElementIdenfitier = [protobufCopy secureElementIdenfitier];
  [(PKPaymentApplication *)v4 setSecureElementIdentifier:secureElementIdenfitier];

  -[PKPaymentApplication setState:](v4, "setState:", [protobufCopy state]);
  suspendedReason = [protobufCopy suspendedReason];
  [(PKPaymentApplication *)v4 setSuspendedReason:suspendedReason];

  -[PKPaymentApplication setSupportsContactlessPayment:](v4, "setSupportsContactlessPayment:", [protobufCopy supportsContactlessPayment]);
  -[PKPaymentApplication setSupportsInAppPayment:](v4, "setSupportsInAppPayment:", [protobufCopy supportsInAppPayment]);
  -[PKPaymentApplication setPaymentNetworkIdentifier:](v4, "setPaymentNetworkIdentifier:", [protobufCopy paymentNetworkIdentifier]);
  -[PKPaymentApplication setInAppPINRequired:](v4, "setInAppPINRequired:", [protobufCopy inAppPINRequired]);
  if ([protobufCopy hasBalanceInAppPINRequiredAmount])
  {
    balanceInAppPINRequiredAmount = [protobufCopy balanceInAppPINRequiredAmount];
    v12 = PKProtoSupportDecimalNumberFromProtobuf(balanceInAppPINRequiredAmount);
LABEL_5:
    v13 = v12;
    [(PKPaymentApplication *)v4 setInAppPINRequiredAmount:v12];

    goto LABEL_7;
  }

  if ([protobufCopy hasCustomPrecisionInAppPINRequiredAmount])
  {
    balanceInAppPINRequiredAmount = [protobufCopy customPrecisionInAppPINRequiredAmount];
    v12 = PKLegacyCurrencyStorageIntegerToDecimal([balanceInAppPINRequiredAmount amount], 1);
    goto LABEL_5;
  }

  balanceInAppPINRequiredAmount = PKLegacyCurrencyStorageIntegerToDecimal([protobufCopy inAppPINRequiredAmount], 0);
  [(PKPaymentApplication *)v4 setInAppPINRequiredAmount:balanceInAppPINRequiredAmount];
LABEL_7:

  inAppPINRequiredCurrency = [protobufCopy inAppPINRequiredCurrency];
  [(PKPaymentApplication *)v4 setInAppPINRequiredCurrency:inAppPINRequiredCurrency];

  displayName = [protobufCopy displayName];
  [(PKPaymentApplication *)v4 setDisplayName:displayName];

  -[PKPaymentApplication setAuxiliary:](v4, "setAuxiliary:", [protobufCopy auxiliary]);
  -[PKPaymentApplication setPaymentType:](v4, "setPaymentType:", [protobufCopy paymentType]);
  -[PKPaymentApplication setAuxiliaryPaymentType:](v4, "setAuxiliaryPaymentType:", [protobufCopy auxiliaryPaymentType]);
  [(PKPaymentApplication *)v4 setAutomaticSelectionCriteria:MEMORY[0x1E695E0F0]];
  -[PKPaymentApplication setInAppPriority:](v4, "setInAppPriority:", [protobufCopy inAppPriority]);
  apanIdentifier = [protobufCopy apanIdentifier];
  [(PKPaymentApplication *)v4 setAPANIdentifier:apanIdentifier];

  apanSuffix = [protobufCopy apanSuffix];
  [(PKPaymentApplication *)v4 setAPANSuffix:apanSuffix];

  -[PKPaymentApplication setSupportsMerchantTokens:](v4, "setSupportsMerchantTokens:", [protobufCopy supportsMerchantTokens]);
  -[PKPaymentApplication setSupportsInstantFundsIn:](v4, "setSupportsInstantFundsIn:", [protobufCopy supportsInstantFundsIn]);
  if ([protobufCopy hasSupportsMultiTokensV2])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "supportsMultiTokensV2")}];
    [(PKPaymentApplication *)v4 setSupportsMultiTokens:v18];
  }

  else
  {
    [(PKPaymentApplication *)v4 setSupportsMultiTokens:0];
  }

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentApplication);
  dpanIdentifier = [(PKPaymentApplication *)self dpanIdentifier];
  [(PKProtobufPaymentApplication *)v3 setDpanIdentifier:dpanIdentifier];

  dpanSuffix = [(PKPaymentApplication *)self dpanSuffix];
  [(PKProtobufPaymentApplication *)v3 setDpanSuffix:dpanSuffix];

  sanitizedDPAN = [(PKPaymentApplication *)self sanitizedDPAN];
  [(PKProtobufPaymentApplication *)v3 setSanitizedDpan:sanitizedDPAN];

  applicationIdentifier = [(PKPaymentApplication *)self applicationIdentifier];
  [(PKProtobufPaymentApplication *)v3 setApplicationIdentifier:applicationIdentifier];

  secureElementIdentifier = [(PKPaymentApplication *)self secureElementIdentifier];
  [(PKProtobufPaymentApplication *)v3 setSecureElementIdenfitier:secureElementIdentifier];

  [(PKProtobufPaymentApplication *)v3 setState:[(PKPaymentApplication *)self state]];
  suspendedReason = [(PKPaymentApplication *)self suspendedReason];
  [(PKProtobufPaymentApplication *)v3 setSuspendedReason:suspendedReason];

  [(PKProtobufPaymentApplication *)v3 setSupportsContactlessPayment:[(PKPaymentApplication *)self supportsContactlessPayment]];
  [(PKProtobufPaymentApplication *)v3 setSupportsInAppPayment:[(PKPaymentApplication *)self supportsInAppPayment]];
  [(PKProtobufPaymentApplication *)v3 setPaymentNetworkIdentifier:[(PKPaymentApplication *)self paymentNetworkIdentifier]];
  [(PKProtobufPaymentApplication *)v3 setInAppPINRequired:[(PKPaymentApplication *)self inAppPINRequired]];
  inAppPINRequiredAmount = [(PKPaymentApplication *)self inAppPINRequiredAmount];
  [(PKProtobufPaymentApplication *)v3 setInAppPINRequiredAmount:PKCurrencyDecimalToLegacyStorageInteger(inAppPINRequiredAmount, 0)];

  inAppPINRequiredAmount2 = [(PKPaymentApplication *)self inAppPINRequiredAmount];
  v12 = DecimalToCustomPrecisionProtobuf(inAppPINRequiredAmount2);
  [(PKProtobufPaymentApplication *)v3 setCustomPrecisionInAppPINRequiredAmount:v12];

  inAppPINRequiredAmount3 = [(PKPaymentApplication *)self inAppPINRequiredAmount];
  v14 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(inAppPINRequiredAmount3);
  [(PKProtobufPaymentApplication *)v3 setBalanceInAppPINRequiredAmount:v14];

  inAppPINRequiredCurrency = [(PKPaymentApplication *)self inAppPINRequiredCurrency];
  [(PKProtobufPaymentApplication *)v3 setInAppPINRequiredCurrency:inAppPINRequiredCurrency];

  displayName = [(PKPaymentApplication *)self displayName];
  [(PKProtobufPaymentApplication *)v3 setDisplayName:displayName];

  [(PKProtobufPaymentApplication *)v3 setAuxiliary:[(PKPaymentApplication *)self isAuxiliary]];
  [(PKProtobufPaymentApplication *)v3 setPaymentType:[(PKPaymentApplication *)self paymentType]];
  [(PKProtobufPaymentApplication *)v3 setAuxiliaryPaymentType:[(PKPaymentApplication *)self auxiliaryPaymentType]];
  [(PKProtobufPaymentApplication *)v3 setInAppPriority:[(PKPaymentApplication *)self inAppPriority]];
  apanIdentifier = [(PKPaymentApplication *)self apanIdentifier];
  [(PKProtobufPaymentApplication *)v3 setApanIdentifier:apanIdentifier];

  apanSuffix = [(PKPaymentApplication *)self apanSuffix];
  [(PKProtobufPaymentApplication *)v3 setApanSuffix:apanSuffix];

  [(PKProtobufPaymentApplication *)v3 setSupportsMerchantTokens:[(PKPaymentApplication *)self supportsMerchantTokens]];
  [(PKProtobufPaymentApplication *)v3 setSupportsInstantFundsIn:[(PKPaymentApplication *)self supportsInstantFundsIn]];
  supportsMultiTokens = [(PKPaymentApplication *)self supportsMultiTokens];

  if (supportsMultiTokens)
  {
    supportsMultiTokens2 = [(PKPaymentApplication *)self supportsMultiTokens];
    -[PKProtobufPaymentApplication setSupportsMultiTokensV2:](v3, "setSupportsMultiTokensV2:", [supportsMultiTokens2 BOOLValue]);
  }

  return v3;
}

- (PKPaymentApplication)initWithPaymentApplicationDictionary:(id)dictionary auxiliaryApplication:(BOOL)application
{
  v123 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v120.receiver = self;
  v120.super_class = PKPaymentApplication;
  v7 = [(PKPaymentApplication *)&v120 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKey:@"applicationIdentifier"];
    applicationIdentifier = v7->_applicationIdentifier;
    v7->_applicationIdentifier = v8;

    v10 = [dictionaryCopy objectForKey:@"secureElementIdentifier"];
    secureElementIdentifier = v7->_secureElementIdentifier;
    v7->_secureElementIdentifier = v10;

    v12 = [dictionaryCopy objectForKey:@"DPANIdentifier"];
    dpanIdentifier = v7->_dpanIdentifier;
    v7->_dpanIdentifier = v12;

    v14 = [dictionaryCopy objectForKey:@"DPANSuffix"];
    dpanSuffix = v7->_dpanSuffix;
    v7->_dpanSuffix = v14;

    v16 = [dictionaryCopy objectForKey:@"sanitizedDPAN"];
    sanitizedDPAN = v7->_sanitizedDPAN;
    v7->_sanitizedDPAN = v16;

    v18 = [dictionaryCopy objectForKey:@"state"];
    v7->_state = [v18 integerValue];

    v19 = [dictionaryCopy objectForKey:@"suspendedReason"];
    suspendedReason = v7->_suspendedReason;
    v7->_suspendedReason = v19;

    v21 = [dictionaryCopy objectForKey:@"supportsContactlessPayment"];
    v7->_supportsContactlessPayment = [v21 BOOLValue];

    v22 = [dictionaryCopy objectForKey:@"supportsInAppPayment"];
    v7->_supportsInAppPayment = [v22 BOOLValue];

    v23 = [dictionaryCopy objectForKey:@"supportsMerchantTokens"];
    v7->_supportsMerchantTokens = [v23 BOOLValue];

    v24 = [dictionaryCopy objectForKey:@"hasMerchantTokens"];
    v7->_hasMerchantTokens = [v24 BOOLValue];

    v25 = [dictionaryCopy objectForKey:@"hadMerchantTokens"];
    v7->_hadMerchantTokens = [v25 BOOLValue];

    v26 = [dictionaryCopy objectForKey:@"APANIdentifier"];
    apanIdentifier = v7->_apanIdentifier;
    v7->_apanIdentifier = v26;

    v28 = [dictionaryCopy objectForKey:@"APANSuffix"];
    apanSuffix = v7->_apanSuffix;
    v7->_apanSuffix = v28;

    v30 = [dictionaryCopy objectForKey:@"supportsMultiTokens"];
    supportsMultiTokens = v7->_supportsMultiTokens;
    v7->_supportsMultiTokens = v30;

    v32 = [dictionaryCopy objectForKey:@"VPANIdentifier"];
    virtualCardIdentifier = v7->_virtualCardIdentifier;
    v7->_virtualCardIdentifier = v32;

    v34 = [dictionaryCopy objectForKey:@"VPANSuffix"];
    virtualCardSuffix = v7->_virtualCardSuffix;
    v7->_virtualCardSuffix = v34;

    v36 = [dictionaryCopy objectForKey:@"supportsVirtualCardNumber"];
    supportsVirtualCardNumber = v7->_supportsVirtualCardNumber;
    v7->_supportsVirtualCardNumber = v36;

    v38 = [dictionaryCopy objectForKey:@"virtualCardNumberOrigin"];
    v7->_virtualCardVPANOrigin = PKVirtualCardVPANOriginForString(v38);

    v39 = [dictionaryCopy PKNumberForKey:@"virtualCardRefreshType"];
    virtualCardRefreshTypeNumber = v7->_virtualCardRefreshTypeNumber;
    v7->_virtualCardRefreshTypeNumber = v39;

    v41 = [dictionaryCopy objectForKey:@"supportsBarcodePayment"];
    v7->_supportsBarcodePayment = [v41 BOOLValue];

    v42 = [dictionaryCopy objectForKey:@"supportsOptionalAuthentication"];
    v7->_supportsOptionalAuthentication = [v42 BOOLValue];

    v43 = [dictionaryCopy objectForKey:@"supportedExpressModes"];
    v44 = [v43 copy];
    supportedExpressModes = v7->_supportedExpressModes;
    v7->_supportedExpressModes = v44;

    v46 = [dictionaryCopy objectForKey:@"supportsServiceMode"];
    v111 = v46;
    if (v46)
    {
      bOOLValue = [v46 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7->_supportsServiceMode = bOOLValue;
    v48 = [dictionaryCopy objectForKey:@"automaticSelectionCriteria"];
    if (v48)
    {
      applicationCopy = application;
      v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v48, "count")}];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v50 = v48;
      v51 = v48;
      v52 = [v51 countByEnumeratingWithState:&v116 objects:v122 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v117;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v117 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = [[PKPassAutomaticSelectionCriterion alloc] initWithDictionary:*(*(&v116 + 1) + 8 * i)];
            if (v56)
            {
              [v49 addObject:v56];
            }
          }

          v53 = [v51 countByEnumeratingWithState:&v116 objects:v122 count:16];
        }

        while (v53);
      }

      v57 = [v49 copy];
      automaticSelectionCriteria = v7->_automaticSelectionCriteria;
      v7->_automaticSelectionCriteria = v57;

      v48 = v50;
      application = applicationCopy;
    }

    v59 = [dictionaryCopy objectForKey:@"appletDataFormat"];
    v60 = [v59 copy];
    appletDataFormat = v7->_appletDataFormat;
    v7->_appletDataFormat = v60;

    v62 = [dictionaryCopy objectForKey:@"appletCurrencyCode"];
    v63 = [v62 copy];
    appletCurrencyCode = v7->_appletCurrencyCode;
    v7->_appletCurrencyCode = v63;

    v65 = [dictionaryCopy objectForKey:@"requiresDeferredAuthorization"];
    v7->_requiresDeferredAuthorization = [v65 BOOLValue];

    v66 = [dictionaryCopy objectForKey:@"paymentNetworkIdentifier"];
    v7->_paymentNetworkIdentifier = [v66 integerValue];

    v67 = [dictionaryCopy objectForKey:@"paymentType"];
    v7->_paymentType = PKPaymentMethodTypeForString(v67);

    v68 = [dictionaryCopy objectForKey:@"auxiliaryPaymentType"];
    v7->_auxiliaryPaymentType = PKPaymentMethodTypeForString(v68);

    v69 = [dictionaryCopy objectForKey:@"applicationDescription"];
    displayName = v7->_displayName;
    v7->_displayName = v69;

    v71 = [dictionaryCopy objectForKey:@"inAppPINRequiredAmount"];
    if (v71)
    {
      v72 = [MEMORY[0x1E696AB90] decimalNumberWithString:v71];
      inAppPINRequiredAmount = v7->_inAppPINRequiredAmount;
      v7->_inAppPINRequiredAmount = v72;
    }

    v74 = [dictionaryCopy objectForKey:@"inAppPINRequiredCurrency"];
    inAppPINRequiredCurrency = v7->_inAppPINRequiredCurrency;
    v7->_inAppPINRequiredCurrency = v74;

    v7->_auxiliary = application;
    v76 = [dictionaryCopy objectForKey:@"contactlessPriority"];
    v7->_contactlessPriority = [v76 integerValue];

    v77 = [dictionaryCopy objectForKey:@"inAppPriority"];
    v7->_inAppPriority = [v77 integerValue];

    v78 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedInAppMerchantCountryCodes"];
    supportedInAppMerchantCountryCodes = v7->_supportedInAppMerchantCountryCodes;
    v7->_supportedInAppMerchantCountryCodes = v78;

    v80 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"unsupportedInAppMerchantCountryCodes"];
    unsupportedInAppMerchantCountryCodes = v7->_unsupportedInAppMerchantCountryCodes;
    v7->_unsupportedInAppMerchantCountryCodes = v80;

    v82 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedTransitNetworkIdentifiers"];
    supportedTransitNetworkIdentifiers = v7->_supportedTransitNetworkIdentifiers;
    v7->_supportedTransitNetworkIdentifiers = v82;

    v84 = [dictionaryCopy objectForKey:@"supportsInstantFundsIn"];
    v7->_supportsInstantFundsIn = [v84 BOOLValue];

    v85 = [dictionaryCopy objectForKey:@"fundingSourcePaymentType"];
    v86 = v85;
    if (v85)
    {
      paymentType = PKPaymentMethodTypeForString(v85);
    }

    else
    {
      paymentType = v7->_paymentType;
    }

    v7->_fundingSourcePaymentType = paymentType;
    v88 = [dictionaryCopy objectForKey:@"requiresConsentForDataRelease"];
    v7->_requiresConsentForDataRelease = [v88 BOOLValue];

    v89 = [dictionaryCopy PKDictionaryForKey:@"subcredential"];
    if (v89)
    {
      v90 = [[PKAppletSubcredential alloc] initWithDictionary:v89];
      v91 = v90;
      if (v90)
      {
        v90 = [MEMORY[0x1E695DFD8] setWithObject:v90];
      }

      subcredentials = v7->_subcredentials;
      v7->_subcredentials = v90;
    }

    v7->_shareable = [dictionaryCopy PKBoolForKey:@"shareable"];
    v7->_foundVehicleReport = 0;
    v93 = [dictionaryCopy PKStringForKey:@"readerIdentifier"];
    pk_decodeHexadecimal = [v93 pk_decodeHexadecimal];
    readerIdentifier = v7->_readerIdentifier;
    v7->_readerIdentifier = pk_decodeHexadecimal;

    v96 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"associatedReaders"];
    if ([v96 count])
    {
      v107 = v89;
      v108 = v71;
      v110 = v48;
      v97 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v98 = v96;
      v99 = [v98 countByEnumeratingWithState:&v112 objects:v121 count:16];
      if (v99)
      {
        v100 = v99;
        v101 = *v113;
        do
        {
          for (j = 0; j != v100; ++j)
          {
            if (*v113 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = [[PKPaymentApplicationAssociatedReader alloc] initWithDictionary:*(*(&v112 + 1) + 8 * j)];
            if (v103)
            {
              [v97 addObject:v103];
            }
          }

          v100 = [v98 countByEnumeratingWithState:&v112 objects:v121 count:16];
        }

        while (v100);
      }

      v104 = [v97 copy];
      associatedReaders = v7->_associatedReaders;
      v7->_associatedReaders = v104;

      v71 = v108;
      v48 = v110;
      v89 = v107;
    }

    [(PKPaymentApplication *)v7 _createAndPopulateAutomaticSelectionCriteriaIfNecessary];
    [(PKPaymentApplication *)v7 _createAndPopulateReaderIdentifierIfNecessary];
  }

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentApplication *)self isEqualToPaymentApplication:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentApplication:(id)application
{
  applicationCopy = application;
  applicationIdentifier = self->_applicationIdentifier;
  v6 = applicationCopy[7];
  if (applicationIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (applicationIdentifier != v6)
    {
      goto LABEL_157;
    }
  }

  else if (([(NSString *)applicationIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_157;
  }

  secureElementIdentifier = self->_secureElementIdentifier;
  v9 = applicationCopy[8];
  if (secureElementIdentifier && v9)
  {
    if (([(NSString *)secureElementIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (secureElementIdentifier != v9)
  {
    goto LABEL_157;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v11 = applicationCopy[4];
  if (dpanIdentifier && v11)
  {
    if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (dpanIdentifier != v11)
  {
    goto LABEL_157;
  }

  dpanSuffix = self->_dpanSuffix;
  v13 = applicationCopy[5];
  if (dpanSuffix && v13)
  {
    if (([(NSString *)dpanSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (dpanSuffix != v13)
  {
    goto LABEL_157;
  }

  sanitizedDPAN = self->_sanitizedDPAN;
  v15 = applicationCopy[6];
  if (sanitizedDPAN && v15)
  {
    if (([(NSString *)sanitizedDPAN isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (sanitizedDPAN != v15)
  {
    goto LABEL_157;
  }

  suspendedReason = self->_suspendedReason;
  v17 = applicationCopy[10];
  if (suspendedReason && v17)
  {
    if (([(NSString *)suspendedReason isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (suspendedReason != v17)
  {
    goto LABEL_157;
  }

  inAppPINRequiredAmount = self->_inAppPINRequiredAmount;
  v19 = applicationCopy[23];
  if (inAppPINRequiredAmount && v19)
  {
    if (([(NSDecimalNumber *)inAppPINRequiredAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (inAppPINRequiredAmount != v19)
  {
    goto LABEL_157;
  }

  inAppPINRequiredCurrency = self->_inAppPINRequiredCurrency;
  v21 = applicationCopy[24];
  if (inAppPINRequiredCurrency && v21)
  {
    if (([(NSString *)inAppPINRequiredCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (inAppPINRequiredCurrency != v21)
  {
    goto LABEL_157;
  }

  displayName = self->_displayName;
  v23 = applicationCopy[27];
  if (displayName && v23)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (displayName != v23)
  {
    goto LABEL_157;
  }

  if (self->_state != applicationCopy[9] || self->_supportsContactlessPayment != *(applicationCopy + 9) || self->_supportsInAppPayment != *(applicationCopy + 10) || self->_supportsMerchantTokens != *(applicationCopy + 11) || self->_hasMerchantTokens != *(applicationCopy + 12) || self->_hadMerchantTokens != *(applicationCopy + 13))
  {
    goto LABEL_157;
  }

  apanIdentifier = self->_apanIdentifier;
  v25 = applicationCopy[11];
  if (apanIdentifier && v25)
  {
    if (([(NSString *)apanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (apanIdentifier != v25)
  {
    goto LABEL_157;
  }

  apanSuffix = self->_apanSuffix;
  v27 = applicationCopy[12];
  if (apanSuffix && v27)
  {
    if (([(NSString *)apanSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (apanSuffix != v27)
  {
    goto LABEL_157;
  }

  virtualCardIdentifier = self->_virtualCardIdentifier;
  v29 = applicationCopy[13];
  if (virtualCardIdentifier && v29)
  {
    if (([(NSString *)virtualCardIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (virtualCardIdentifier != v29)
  {
    goto LABEL_157;
  }

  virtualCardSuffix = self->_virtualCardSuffix;
  v31 = applicationCopy[14];
  if (virtualCardSuffix && v31)
  {
    if (([(NSString *)virtualCardSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (virtualCardSuffix != v31)
  {
    goto LABEL_157;
  }

  supportsVirtualCardNumber = self->_supportsVirtualCardNumber;
  v33 = applicationCopy[15];
  if (supportsVirtualCardNumber && v33)
  {
    if (([(NSNumber *)supportsVirtualCardNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (supportsVirtualCardNumber != v33)
  {
    goto LABEL_157;
  }

  if (self->_virtualCardVPANOrigin != applicationCopy[16])
  {
    goto LABEL_157;
  }

  virtualCardRefreshTypeNumber = self->_virtualCardRefreshTypeNumber;
  v35 = applicationCopy[17];
  if (virtualCardRefreshTypeNumber && v35)
  {
    if (([(NSNumber *)virtualCardRefreshTypeNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (virtualCardRefreshTypeNumber != v35)
  {
    goto LABEL_157;
  }

  supportsMultiTokens = self->_supportsMultiTokens;
  v37 = applicationCopy[18];
  if (supportsMultiTokens && v37)
  {
    if (([(NSNumber *)supportsMultiTokens isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (supportsMultiTokens != v37)
  {
    goto LABEL_157;
  }

  if (self->_supportsBarcodePayment != *(applicationCopy + 14) || self->_supportsOptionalAuthentication != *(applicationCopy + 15) || self->_requiresDeferredAuthorization != *(applicationCopy + 17))
  {
    goto LABEL_157;
  }

  supportedExpressModes = self->_supportedExpressModes;
  v39 = applicationCopy[19];
  if (supportedExpressModes && v39)
  {
    if (([(NSArray *)supportedExpressModes isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (supportedExpressModes != v39)
  {
    goto LABEL_157;
  }

  automaticSelectionCriteria = self->_automaticSelectionCriteria;
  v41 = applicationCopy[20];
  if (automaticSelectionCriteria && v41)
  {
    if (([(NSArray *)automaticSelectionCriteria isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (automaticSelectionCriteria != v41)
  {
    goto LABEL_157;
  }

  transitProperties = self->_transitProperties;
  v43 = applicationCopy[33];
  if (transitProperties && v43)
  {
    if (![(PKStoredValuePassProperties *)transitProperties isEqual:?])
    {
      goto LABEL_157;
    }
  }

  else if (transitProperties != v43)
  {
    goto LABEL_157;
  }

  if (self->_paymentNetworkIdentifier != applicationCopy[22] || self->_auxiliary != *(applicationCopy + 19) || self->_paymentType != applicationCopy[25] || self->_auxiliaryPaymentType != applicationCopy[26] || self->_contactlessPriority != applicationCopy[28] || self->_inAppPriority != applicationCopy[29] || self->_supportsInstantFundsIn != *(applicationCopy + 20) || self->_fundingSourcePaymentType != applicationCopy[30] || self->_requiresConsentForDataRelease != *(applicationCopy + 21) || self->_supportsServiceMode != *(applicationCopy + 16))
  {
    goto LABEL_157;
  }

  appletDataFormat = self->_appletDataFormat;
  v45 = applicationCopy[32];
  if (appletDataFormat && v45)
  {
    if (([(NSString *)appletDataFormat isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (appletDataFormat != v45)
  {
    goto LABEL_157;
  }

  subcredentials = self->_subcredentials;
  v47 = applicationCopy[38];
  if (subcredentials && v47)
  {
    if (([(NSSet *)subcredentials isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (subcredentials != v47)
  {
    goto LABEL_157;
  }

  supportedInAppMerchantCountryCodes = self->_supportedInAppMerchantCountryCodes;
  v49 = applicationCopy[34];
  if (supportedInAppMerchantCountryCodes && v49)
  {
    if (([(NSArray *)supportedInAppMerchantCountryCodes isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (supportedInAppMerchantCountryCodes != v49)
  {
    goto LABEL_157;
  }

  unsupportedInAppMerchantCountryCodes = self->_unsupportedInAppMerchantCountryCodes;
  v51 = applicationCopy[35];
  if (unsupportedInAppMerchantCountryCodes && v51)
  {
    if (([(NSArray *)unsupportedInAppMerchantCountryCodes isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (unsupportedInAppMerchantCountryCodes != v51)
  {
    goto LABEL_157;
  }

  supportedTransitNetworkIdentifiers = self->_supportedTransitNetworkIdentifiers;
  v53 = applicationCopy[36];
  if (supportedTransitNetworkIdentifiers && v53)
  {
    if (([(NSArray *)supportedTransitNetworkIdentifiers isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (supportedTransitNetworkIdentifiers != v53)
  {
    goto LABEL_157;
  }

  transactionSourceIdentifier = self->_transactionSourceIdentifier;
  v55 = applicationCopy[31];
  if (transactionSourceIdentifier && v55)
  {
    if (([(NSString *)transactionSourceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_157;
    }
  }

  else if (transactionSourceIdentifier != v55)
  {
    goto LABEL_157;
  }

  if (self->_shareable != *(applicationCopy + 22))
  {
    goto LABEL_157;
  }

  readerIdentifier = self->_readerIdentifier;
  v57 = applicationCopy[3];
  if (!readerIdentifier || !v57)
  {
    if (readerIdentifier == v57)
    {
      goto LABEL_153;
    }

LABEL_157:
    v60 = 0;
    goto LABEL_158;
  }

  if (([(NSData *)readerIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_153:
  associatedReaders = self->_associatedReaders;
  v59 = applicationCopy[39];
  if (associatedReaders && v59)
  {
    v60 = [(NSSet *)associatedReaders isEqual:?];
  }

  else
  {
    v60 = associatedReaders == v59;
  }

LABEL_158:

  return v60;
}

- (PKPaymentApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v84.receiver = self;
  v84.super_class = PKPaymentApplication;
  v5 = [(PKPaymentApplication *)&v84 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DPANIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DPANSuffix"];
    dpanSuffix = v5->_dpanSuffix;
    v5->_dpanSuffix = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedDPAN"];
    sanitizedDPAN = v5->_sanitizedDPAN;
    v5->_sanitizedDPAN = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppPINRequiredAmount"];
    inAppPINRequiredAmount = v5->_inAppPINRequiredAmount;
    v5->_inAppPINRequiredAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppPINRequiredCurrency"];
    inAppPINRequiredCurrency = v5->_inAppPINRequiredCurrency;
    v5->_inAppPINRequiredCurrency = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationDescription"];
    displayName = v5->_displayName;
    v5->_displayName = v20;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suspendedReason"];
    suspendedReason = v5->_suspendedReason;
    v5->_suspendedReason = v22;

    v5->_supportsContactlessPayment = [coderCopy decodeBoolForKey:@"supportsContactlessPayment"];
    v5->_supportsServiceMode = [coderCopy decodeBoolForKey:@"supportsServiceMode"];
    v5->_supportsInAppPayment = [coderCopy decodeBoolForKey:@"supportsInAppPayment"];
    v5->_supportsMerchantTokens = [coderCopy decodeBoolForKey:@"supportsMerchantTokens"];
    v5->_hasMerchantTokens = [coderCopy decodeBoolForKey:@"hasMerchantTokens"];
    v5->_hadMerchantTokens = [coderCopy decodeBoolForKey:@"hadMerchantTokens"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APANIdentifier"];
    apanIdentifier = v5->_apanIdentifier;
    v5->_apanIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APANSuffix"];
    apanSuffix = v5->_apanSuffix;
    v5->_apanSuffix = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VPANIdentifier"];
    virtualCardIdentifier = v5->_virtualCardIdentifier;
    v5->_virtualCardIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VPANSuffix"];
    virtualCardSuffix = v5->_virtualCardSuffix;
    v5->_virtualCardSuffix = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsVirtualCardNumber"];
    supportsVirtualCardNumber = v5->_supportsVirtualCardNumber;
    v5->_supportsVirtualCardNumber = v32;

    v5->_virtualCardVPANOrigin = [coderCopy decodeIntegerForKey:@"virtualCardNumberOrigin"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"virtualCardRefreshType"];
    virtualCardRefreshTypeNumber = v5->_virtualCardRefreshTypeNumber;
    v5->_virtualCardRefreshTypeNumber = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsMultiTokens"];
    supportsMultiTokens = v5->_supportsMultiTokens;
    v5->_supportsMultiTokens = v36;

    v5->_supportsBarcodePayment = [coderCopy decodeBoolForKey:@"supportsBarcodePayment"];
    v5->_supportsOptionalAuthentication = [coderCopy decodeBoolForKey:@"supportsOptionalAuthentication"];
    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"supportedExpressModes"];
    supportedExpressModes = v5->_supportedExpressModes;
    v5->_supportedExpressModes = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"automaticSelectionCriteria"];
    automaticSelectionCriteria = v5->_automaticSelectionCriteria;
    v5->_automaticSelectionCriteria = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletCurrencyCode"];
    appletCurrencyCode = v5->_appletCurrencyCode;
    v5->_appletCurrencyCode = v48;

    v5->_requiresDeferredAuthorization = [coderCopy decodeBoolForKey:@"requiresDeferredAuthorization"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletDataFormat"];
    appletDataFormat = v5->_appletDataFormat;
    v5->_appletDataFormat = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transitPassProperties"];
    transitProperties = v5->_transitProperties;
    v5->_transitProperties = v52;

    v5->_paymentNetworkIdentifier = [coderCopy decodeIntegerForKey:@"paymentNetworkIdentifier"];
    v5->_auxiliary = [coderCopy decodeBoolForKey:@"isAuxiliary"];
    v5->_paymentType = [coderCopy decodeIntegerForKey:@"paymentType"];
    v5->_auxiliaryPaymentType = [coderCopy decodeIntegerForKey:@"auxiliaryPaymentType"];
    v5->_contactlessPriority = [coderCopy decodeIntegerForKey:@"contactlessPriority"];
    v5->_inAppPriority = [coderCopy decodeIntegerForKey:@"inAppPriority"];
    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"supportedInAppMerchantCountryCodes"];
    supportedInAppMerchantCountryCodes = v5->_supportedInAppMerchantCountryCodes;
    v5->_supportedInAppMerchantCountryCodes = v57;

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"unsupportedInAppMerchantCountryCodes"];
    unsupportedInAppMerchantCountryCodes = v5->_unsupportedInAppMerchantCountryCodes;
    v5->_unsupportedInAppMerchantCountryCodes = v62;

    v64 = MEMORY[0x1E695DFD8];
    v65 = objc_opt_class();
    v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"supportedTransitNetworkIdentifiers"];
    supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
    v5->_supportedTransitNetworkIdentifiers = v67;

    v5->_supportsInstantFundsIn = [coderCopy decodeBoolForKey:@"supportsInstantFundsIn"];
    v5->_fundingSourcePaymentType = [coderCopy decodeIntegerForKey:@"fundingSourcePaymentType"];
    v5->_requiresConsentForDataRelease = [coderCopy decodeBoolForKey:@"requiresConsentForDataRelease"];
    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    v72 = [coderCopy decodeObjectOfClasses:v71 forKey:@"subcredentials"];
    subcredentials = v5->_subcredentials;
    v5->_subcredentials = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v74;

    v5->_shareable = [coderCopy decodeBoolForKey:@"shareable"];
    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v76;

    v78 = objc_alloc(MEMORY[0x1E695DFD8]);
    v79 = objc_opt_class();
    v80 = [v78 initWithObjects:{v79, objc_opt_class(), 0}];
    v81 = [coderCopy decodeObjectOfClasses:v80 forKey:@"associatedReaders"];
    associatedReaders = v5->_associatedReaders;
    v5->_associatedReaders = v81;

    [(PKPaymentApplication *)v5 _createAndPopulateAutomaticSelectionCriteriaIfNecessary];
    [(PKPaymentApplication *)v5 _createAndPopulateReaderIdentifierIfNecessary];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeObject:self->_dpanIdentifier forKey:@"DPANIdentifier"];
  [coderCopy encodeObject:self->_dpanSuffix forKey:@"DPANSuffix"];
  [coderCopy encodeObject:self->_sanitizedDPAN forKey:@"sanitizedDPAN"];
  [coderCopy encodeObject:self->_displayName forKey:@"applicationDescription"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_suspendedReason forKey:@"suspendedReason"];
  [coderCopy encodeBool:self->_supportsContactlessPayment forKey:@"supportsContactlessPayment"];
  [coderCopy encodeBool:self->_supportsServiceMode forKey:@"supportsServiceMode"];
  [coderCopy encodeBool:self->_supportsInAppPayment forKey:@"supportsInAppPayment"];
  [coderCopy encodeBool:self->_supportsMerchantTokens forKey:@"supportsMerchantTokens"];
  [coderCopy encodeBool:self->_hasMerchantTokens forKey:@"hasMerchantTokens"];
  [coderCopy encodeBool:self->_hadMerchantTokens forKey:@"hadMerchantTokens"];
  [coderCopy encodeObject:self->_apanIdentifier forKey:@"APANIdentifier"];
  [coderCopy encodeObject:self->_apanSuffix forKey:@"APANSuffix"];
  [coderCopy encodeObject:self->_virtualCardIdentifier forKey:@"VPANIdentifier"];
  [coderCopy encodeObject:self->_virtualCardSuffix forKey:@"VPANSuffix"];
  [coderCopy encodeObject:self->_supportsVirtualCardNumber forKey:@"supportsVirtualCardNumber"];
  [coderCopy encodeInteger:self->_virtualCardVPANOrigin forKey:@"virtualCardNumberOrigin"];
  [coderCopy encodeObject:self->_virtualCardRefreshTypeNumber forKey:@"virtualCardRefreshType"];
  [coderCopy encodeObject:self->_supportsMultiTokens forKey:@"supportsMultiTokens"];
  [coderCopy encodeBool:self->_supportsBarcodePayment forKey:@"supportsBarcodePayment"];
  [coderCopy encodeBool:self->_supportsOptionalAuthentication forKey:@"supportsOptionalAuthentication"];
  [coderCopy encodeObject:self->_supportedExpressModes forKey:@"supportedExpressModes"];
  [coderCopy encodeObject:self->_automaticSelectionCriteria forKey:@"automaticSelectionCriteria"];
  [coderCopy encodeObject:self->_appletDataFormat forKey:@"appletDataFormat"];
  [coderCopy encodeObject:self->_appletCurrencyCode forKey:@"appletCurrencyCode"];
  [coderCopy encodeBool:self->_requiresDeferredAuthorization forKey:@"requiresDeferredAuthorization"];
  [coderCopy encodeObject:self->_transitProperties forKey:@"transitPassProperties"];
  [coderCopy encodeBool:self->_auxiliary forKey:@"isAuxiliary"];
  [coderCopy encodeInteger:self->_paymentNetworkIdentifier forKey:@"paymentNetworkIdentifier"];
  [coderCopy encodeInteger:self->_paymentType forKey:@"paymentType"];
  [coderCopy encodeInteger:self->_auxiliaryPaymentType forKey:@"auxiliaryPaymentType"];
  [coderCopy encodeBool:self->_supportsInstantFundsIn forKey:@"supportsInstantFundsIn"];
  [coderCopy encodeInteger:self->_fundingSourcePaymentType forKey:@"fundingSourcePaymentType"];
  [coderCopy encodeBool:self->_requiresConsentForDataRelease forKey:@"requiresConsentForDataRelease"];
  [coderCopy encodeInteger:self->_contactlessPriority forKey:@"contactlessPriority"];
  [coderCopy encodeInteger:self->_inAppPriority forKey:@"inAppPriority"];
  [coderCopy encodeObject:self->_inAppPINRequiredAmount forKey:@"inAppPINRequiredAmount"];
  [coderCopy encodeObject:self->_inAppPINRequiredCurrency forKey:@"inAppPINRequiredCurrency"];
  [coderCopy encodeObject:self->_supportedInAppMerchantCountryCodes forKey:@"supportedInAppMerchantCountryCodes"];
  [coderCopy encodeObject:self->_unsupportedInAppMerchantCountryCodes forKey:@"unsupportedInAppMerchantCountryCodes"];
  [coderCopy encodeObject:self->_supportedTransitNetworkIdentifiers forKey:@"supportedTransitNetworkIdentifiers"];
  [coderCopy encodeObject:self->_subcredentials forKey:@"subcredentials"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeBool:self->_shareable forKey:@"shareable"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [coderCopy encodeObject:self->_associatedReaders forKey:@"associatedReaders"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentApplication allocWithZone:](PKPaymentApplication init];
  v6 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  applicationIdentifier = v5->_applicationIdentifier;
  v5->_applicationIdentifier = v6;

  v8 = [(NSString *)self->_secureElementIdentifier copyWithZone:zone];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v8;

  v10 = [(NSString *)self->_dpanIdentifier copyWithZone:zone];
  dpanIdentifier = v5->_dpanIdentifier;
  v5->_dpanIdentifier = v10;

  v12 = [(NSString *)self->_dpanSuffix copyWithZone:zone];
  dpanSuffix = v5->_dpanSuffix;
  v5->_dpanSuffix = v12;

  v14 = [(NSString *)self->_sanitizedDPAN copyWithZone:zone];
  sanitizedDPAN = v5->_sanitizedDPAN;
  v5->_sanitizedDPAN = v14;

  v16 = [(NSDecimalNumber *)self->_inAppPINRequiredAmount copyWithZone:zone];
  inAppPINRequiredAmount = v5->_inAppPINRequiredAmount;
  v5->_inAppPINRequiredAmount = v16;

  v18 = [(NSString *)self->_inAppPINRequiredCurrency copyWithZone:zone];
  inAppPINRequiredCurrency = v5->_inAppPINRequiredCurrency;
  v5->_inAppPINRequiredCurrency = v18;

  v20 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v20;

  v5->_state = self->_state;
  v22 = [(NSString *)self->_suspendedReason copyWithZone:zone];
  suspendedReason = v5->_suspendedReason;
  v5->_suspendedReason = v22;

  v24 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:zone];
  transactionSourceIdentifier = v5->_transactionSourceIdentifier;
  v5->_transactionSourceIdentifier = v24;

  v5->_supportsContactlessPayment = self->_supportsContactlessPayment;
  v5->_supportsInAppPayment = self->_supportsInAppPayment;
  v5->_supportsMerchantTokens = self->_supportsMerchantTokens;
  v5->_hasMerchantTokens = self->_hasMerchantTokens;
  v5->_hadMerchantTokens = self->_hadMerchantTokens;
  v26 = [(NSString *)self->_apanIdentifier copyWithZone:zone];
  apanIdentifier = v5->_apanIdentifier;
  v5->_apanIdentifier = v26;

  v28 = [(NSString *)self->_apanSuffix copyWithZone:zone];
  apanSuffix = v5->_apanSuffix;
  v5->_apanSuffix = v28;

  v30 = [(NSString *)self->_virtualCardIdentifier copyWithZone:zone];
  virtualCardIdentifier = v5->_virtualCardIdentifier;
  v5->_virtualCardIdentifier = v30;

  v32 = [(NSString *)self->_virtualCardSuffix copyWithZone:zone];
  virtualCardSuffix = v5->_virtualCardSuffix;
  v5->_virtualCardSuffix = v32;

  v34 = [(NSNumber *)self->_supportsVirtualCardNumber copyWithZone:zone];
  supportsVirtualCardNumber = v5->_supportsVirtualCardNumber;
  v5->_supportsVirtualCardNumber = v34;

  v5->_virtualCardVPANOrigin = self->_virtualCardVPANOrigin;
  v36 = [(NSNumber *)self->_virtualCardRefreshTypeNumber copyWithZone:zone];
  virtualCardRefreshTypeNumber = v5->_virtualCardRefreshTypeNumber;
  v5->_virtualCardRefreshTypeNumber = v36;

  v38 = [(NSNumber *)self->_supportsMultiTokens copyWithZone:zone];
  supportsMultiTokens = v5->_supportsMultiTokens;
  v5->_supportsMultiTokens = v38;

  v5->_supportsBarcodePayment = self->_supportsBarcodePayment;
  v5->_supportsOptionalAuthentication = self->_supportsOptionalAuthentication;
  v5->_supportsServiceMode = self->_supportsServiceMode;
  v40 = [(NSArray *)self->_supportedExpressModes copyWithZone:zone];
  supportedExpressModes = v5->_supportedExpressModes;
  v5->_supportedExpressModes = v40;

  v42 = [(NSArray *)self->_automaticSelectionCriteria copyWithZone:zone];
  automaticSelectionCriteria = v5->_automaticSelectionCriteria;
  v5->_automaticSelectionCriteria = v42;

  v44 = [(NSString *)self->_appletDataFormat copyWithZone:zone];
  appletDataFormat = v5->_appletDataFormat;
  v5->_appletDataFormat = v44;

  v46 = [(NSString *)self->_appletCurrencyCode copyWithZone:zone];
  appletCurrencyCode = v5->_appletCurrencyCode;
  v5->_appletCurrencyCode = v46;

  v5->_requiresDeferredAuthorization = self->_requiresDeferredAuthorization;
  v48 = [(PKStoredValuePassProperties *)self->_transitProperties copyWithZone:zone];
  transitProperties = v5->_transitProperties;
  v5->_transitProperties = v48;

  v5->_paymentNetworkIdentifier = self->_paymentNetworkIdentifier;
  v5->_auxiliary = self->_auxiliary;
  v5->_paymentType = self->_paymentType;
  v5->_auxiliaryPaymentType = self->_auxiliaryPaymentType;
  v5->_contactlessPriority = self->_contactlessPriority;
  v5->_inAppPriority = self->_inAppPriority;
  v5->_supportsInstantFundsIn = self->_supportsInstantFundsIn;
  v5->_fundingSourcePaymentType = self->_fundingSourcePaymentType;
  v5->_requiresConsentForDataRelease = self->_requiresConsentForDataRelease;
  v50 = [(NSArray *)self->_supportedInAppMerchantCountryCodes copyWithZone:zone];
  supportedInAppMerchantCountryCodes = v5->_supportedInAppMerchantCountryCodes;
  v5->_supportedInAppMerchantCountryCodes = v50;

  v52 = [(NSArray *)self->_unsupportedInAppMerchantCountryCodes copyWithZone:zone];
  unsupportedInAppMerchantCountryCodes = v5->_unsupportedInAppMerchantCountryCodes;
  v5->_unsupportedInAppMerchantCountryCodes = v52;

  v54 = [(NSArray *)self->_supportedTransitNetworkIdentifiers copyWithZone:zone];
  supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
  v5->_supportedTransitNetworkIdentifiers = v54;

  v56 = [(NSSet *)self->_subcredentials copyWithZone:zone];
  subcredentials = v5->_subcredentials;
  v5->_subcredentials = v56;

  v5->_shareable = self->_shareable;
  v58 = [(NSData *)self->_readerIdentifier copyWithZone:zone];
  readerIdentifier = v5->_readerIdentifier;
  v5->_readerIdentifier = v58;

  v60 = [(NSSet *)self->_associatedReaders copyWithZone:zone];
  associatedReaders = v5->_associatedReaders;
  v5->_associatedReaders = v60;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  secureElementIdentifier = [(PKPaymentApplication *)self secureElementIdentifier];
  applicationIdentifier = [(PKPaymentApplication *)self applicationIdentifier];
  displayName = [(PKPaymentApplication *)self displayName];
  dpanIdentifier = [(PKPaymentApplication *)self dpanIdentifier];
  state = [(PKPaymentApplication *)self state];
  stateAsString = [(PKPaymentApplication *)self stateAsString];
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  v12 = [v3 stringWithFormat:@"<%@: %p SEID: %@; Application Identifier: %@; Display Name: %@; DPAN Identifier: %@; State: %d (%@); Reader Identifier: %@", v4, self, secureElementIdentifier, applicationIdentifier, displayName, dpanIdentifier, state, stateAsString, hexEncoding];;

  if ([(PKPaymentApplication *)self inAppPINRequired])
  {
    inAppPINRequiredAmount = [(PKPaymentApplication *)self inAppPINRequiredAmount];
    inAppPINRequiredCurrency = [(PKPaymentApplication *)self inAppPINRequiredCurrency];
    [v12 appendFormat:@"; InAppPINRequiredAmount: %@; InAppPINRequiredCurrency: %@", inAppPINRequiredAmount, inAppPINRequiredCurrency];
  }

  [v12 appendFormat:@">"];
  v15 = [v12 copy];

  return v15;
}

- (NSString)stateAsString
{
  state = [(PKPaymentApplication *)self state];
  if (state <= 5)
  {
    if (state > 2)
    {
      if (state == 3 || state == 4)
      {
        v4 = @"Requires Verification";
      }

      else
      {
        v4 = @"Verification Terminated";
      }

      goto LABEL_24;
    }

    if (state == 1)
    {
      v4 = @"Personalized";
      goto LABEL_24;
    }

    if (state == 2)
    {
      v4 = @"Personalizing";
      goto LABEL_24;
    }

LABEL_23:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown: %lu", -[PKPaymentApplication state](self, "state")];
    goto LABEL_24;
  }

  if (state > 8)
  {
    switch(state)
    {
      case 9:
        v5 = MEMORY[0x1E696AEC0];
        suspendedReason = [(PKPaymentApplication *)self suspendedReason];
        v4 = [v5 stringWithFormat:@"Suspended - Custom '%@'", suspendedReason];

        goto LABEL_24;
      case 10:
        v4 = @"Removed by Issuer";
        goto LABEL_24;
      case 15:
        v4 = @"In Termination";
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (state == 6)
  {
    v4 = @"Suspended - Issuer";
  }

  else if (state == 7)
  {
    v4 = @"Suspended - Lost Mode";
  }

  else
  {
    v4 = @"Suspended - No Passcode";
  }

LABEL_24:

  return v4;
}

- (BOOL)supportsWebPaymentMode:(int64_t)mode withExclusionList:(id)list clientOSVersion:(id)version
{
  v64 = *MEMORY[0x1E69E9840];
  listCopy = list;
  versionCopy = version;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = listCopy;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (!v9)
  {
    v41 = 1;
    goto LABEL_49;
  }

  v11 = v9;
  v45 = versionCopy;
  modeCopy = mode;
  v13 = mode == 2 && versionCopy != 0;
  v48 = v13;
  v14 = *v52;
  v15 = @"PaymentNetworks";
  v16 = 0x1E696A000uLL;
  *&v10 = 138412546;
  v44 = v10;
  selfCopy2 = self;
  while (2)
  {
    v18 = 0;
    v49 = v11;
    do
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v51 + 1) + 8 * v18);
      v20 = [v19 PKArrayForKey:{v15, v44}];
      v21 = [*(v16 + 3480) numberWithInteger:selfCopy2->_paymentNetworkIdentifier];
      v22 = [v20 containsObject:v21];

      if (!v22)
      {
        goto LABEL_40;
      }

      v23 = v15;
      v24 = [v19 PKDictionaryForKey:@"OSVersion"];
      v25 = PKOSVersion();
      if (!v24)
      {
        goto LABEL_20;
      }

      v26 = [v24 PKStringForKey:@"iOS"];
      if (![v26 length] || objc_msgSend(v25, "compare:options:", v26, 64) == -1)
      {

LABEL_20:
        if (modeCopy == 1)
        {
          v28 = [v19 PKArrayForKey:@"LocalDeviceClasses"];
          if (v28)
          {
            v29 = PKDeviceClass();
            v30 = [v28 containsObject:v29];

            v31 = v30 ^ 1;
          }

          else
          {
            v31 = 0;
          }

          v32 = @"local";
        }

        else
        {
          v31 = 0;
          v32 = @"remote";
        }

        v33 = [v19 PKArrayForKey:@"PaymentModes"];
        v26 = v33;
        if (v33)
        {
          v34 = [v33 containsObject:v32] ^ 1;
        }

        else
        {
          LOBYTE(v34) = 0;
        }

        v35 = v31 | v34;
        selfCopy2 = self;
        if ((v35 & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_30;
      }

      v27 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v44;
        v56 = v25;
        v57 = 2112;
        v58 = v26;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Current version %@ is greater than or equal to the specified config version %@, skipping over", buf, 0x16u);
      }

LABEL_30:
      v36 = [v19 PKDictionaryForKey:@"HandoffMinOSVersion"];
      v26 = v36;
      if (v36)
      {
        v37 = v48;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        v38 = [v36 PKStringForKey:@"Mac"];
        v39 = [v26 PKStringForKey:@"iOS"];
        v40 = v39;
        if (v38 && v39 && ([v38 compare:v45 options:64] == 1 || objc_msgSend(v40, "compare:options:", v25, 64) == 1))
        {
          v42 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v56 = v45;
            v57 = 2112;
            v58 = v25;
            v59 = 2112;
            v60 = v38;
            v61 = 2112;
            v62 = v40;
            _os_log_impl(&dword_1AD337000, v42, OS_LOG_TYPE_DEFAULT, "Client version %@ or host version %@ is lower than minimum supported client version %@ or host version %@", buf, 0x2Au);
          }

LABEL_47:
          v41 = 0;
          goto LABEL_48;
        }
      }

      v15 = v23;
      v11 = v49;
      v16 = 0x1E696A000;
LABEL_40:

      ++v18;
    }

    while (v11 != v18);
    v11 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v41 = 1;
LABEL_48:
  versionCopy = v45;
LABEL_49:

  return v41;
}

- (BOOL)supportsExpress
{
  v16 = *MEMORY[0x1E69E9840];
  state = self->_state;
  v3 = state > 0xF;
  v4 = (1 << state) & 0x83DE;
  v5 = v3 || v4 == 0;
  if (v5 || !self->_supportsOptionalAuthentication)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_automaticSelectionCriteria;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) supportsExpress])
          {
            LOBYTE(v7) = 1;
            goto LABEL_17;
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v7;
}

- (BOOL)supportsExpressForAutomaticSelectionCriteriaPassingTest:(id)test
{
  v20 = *MEMORY[0x1E69E9840];
  testCopy = test;
  state = self->_state;
  v6 = state > 0xF;
  v7 = (1 << state) & 0x83DE;
  v8 = v6 || v7 == 0;
  if (v8 || !self->_supportsOptionalAuthentication)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_automaticSelectionCriteria;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 supportsExpress] && (!testCopy || (testCopy[2](testCopy, v13) & 1) != 0))
          {
            LOBYTE(v10) = 1;
            goto LABEL_19;
          }
        }

        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  return v10;
}

- (BOOL)supportsExpressForAutomaticSelectionTechnologyType:(int64_t)type
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PKPaymentApplication_supportsExpressForAutomaticSelectionTechnologyType___block_invoke;
  v4[3] = &__block_descriptor_40_e43_B16__0__PKPassAutomaticSelectionCriterion_8l;
  v4[4] = type;
  return [(PKPaymentApplication *)self supportsExpressForAutomaticSelectionCriteriaPassingTest:v4];
}

- (BOOL)supportsExpressMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy;
  state = self->_state;
  v7 = state > 0xF;
  v8 = (1 << state) & 0x83DE;
  v9 = v7 || v8 == 0;
  if (v9 || !self->_supportsOptionalAuthentication)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (modeCopy)
    {
      supportedExpressModes = self->_supportedExpressModes;
      if (supportedExpressModes)
      {
        v10 = [(NSArray *)supportedExpressModes indexOfObject:v5]!= 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v10;
}

- (BOOL)supportsAutomaticSelectionForTCI:(id)i
{
  v21 = *MEMORY[0x1E69E9840];
  iCopy = i;
  if (iCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_automaticSelectionCriteria;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          primaryTCIs = [v10 primaryTCIs];
          if ([primaryTCIs containsObject:iCopy])
          {

LABEL_15:
            v14 = 1;
            goto LABEL_16;
          }

          tCIs = [v10 TCIs];
          v13 = [tCIs containsObject:iCopy];

          if (v13)
          {
            goto LABEL_15;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)paymentApplicationsIncludingAuxiliaryPaymentTypes
{
  if ([(PKPaymentApplication *)self supportsComboCard])
  {
    v3 = [(PKPaymentApplication *)self copy];
    v4 = PKDisplayablePaymentMethodStringFromType(self->_paymentType);
    [v3 setDisplayName:v4];

    v5 = [(PKPaymentApplication *)self copy];
    [v5 setPaymentType:self->_auxiliaryPaymentType];
    v6 = PKDisplayablePaymentMethodStringFromType(self->_auxiliaryPaymentType);
    [v5 setDisplayName:v6];

    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, v5, 0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isRequiredForMerchantInCountry:(id)country
{
  countryCopy = country;
  supportedInAppMerchantCountryCodes = [(PKPaymentApplication *)self supportedInAppMerchantCountryCodes];
  v6 = [supportedInAppMerchantCountryCodes containsObject:countryCopy];

  return v6;
}

- (BOOL)supportsTransit
{
  appletDataFormat = [(PKPaymentApplication *)self appletDataFormat];
  if (!appletDataFormat || !@"transit.felica.suica")
  {
    if (@"transit.felica.suica" == appletDataFormat)
    {
      goto LABEL_4;
    }

LABEL_6:
    isParsedTransitApplication = [(PKPaymentApplication *)self isParsedTransitApplication];
    goto LABEL_7;
  }

  if (([@"transit.felica.suica" isEqual:appletDataFormat] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  isParsedTransitApplication = 1;
LABEL_7:

  return isParsedTransitApplication;
}

- (void)setFelicaProperties:(id)properties
{
  v4 = [properties copy];
  transitProperties = self->_transitProperties;
  self->_transitProperties = v4;
}

- (BOOL)supportsSuica
{
  appletDataFormat = [(PKPaymentApplication *)self appletDataFormat];
  if (appletDataFormat && @"transit.felica.suica")
  {
    v3 = [@"transit.felica.suica" isEqual:appletDataFormat];
  }

  else
  {
    v3 = @"transit.felica.suica" == appletDataFormat;
  }

  return v3;
}

- (BOOL)isParsedTransitApplication
{
  appletDataFormat = [(PKPaymentApplication *)self appletDataFormat];
  v3 = [appletDataFormat hasPrefix:@"transit.apple"];

  return v3;
}

- (BOOL)generatesLocalTransactions
{
  if ([(PKPaymentApplication *)self supportsSuica])
  {
    return 1;
  }

  return [(PKPaymentApplication *)self isParsedTransitApplication];
}

- (BOOL)blockingSupportedUWBDueToHardware
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PKPaymentApplication *)self supportsUWB])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = self->_subcredentials;
    v3 = [(NSSet *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if (([*(*(&v8 + 1) + 8 * i) allSupportedRadioTechnologies] & 2) != 0)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [(NSSet *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)supportsUWB
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_subcredentials;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v7 + 1) + 8 * i) supportedRadioTechnologies] & 2) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)supportedRadioTechnologies
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_subcredentials;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) supportedRadioTechnologies];
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)stationCodeProvider
{
  appletDataFormat = [(PKPaymentApplication *)self appletDataFormat];
  if (!appletDataFormat || !@"transit.felica.suica")
  {
    if (@"transit.felica.suica" == appletDataFormat)
    {
      goto LABEL_4;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  if (([@"transit.felica.suica" isEqual:appletDataFormat] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v3 = @"transit.felica.cjrc";
LABEL_7:
  if (!appletDataFormat || !@"transit.apple.bmac")
  {
    if (@"transit.apple.bmac" != appletDataFormat)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([@"transit.apple.bmac" isEqual:appletDataFormat])
  {
LABEL_10:
    v4 = @"transit.apple.bmac";

    v3 = v4;
  }

LABEL_11:
  if (!appletDataFormat || !@"transit.apple.sptcc")
  {
    if (@"transit.apple.sptcc" != appletDataFormat)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([@"transit.apple.sptcc" isEqual:appletDataFormat])
  {
LABEL_14:
    v5 = @"transit.apple.sptcc";

    v3 = v5;
  }

LABEL_15:
  if (!appletDataFormat || !@"transit.apple.mot")
  {
    if (@"transit.apple.mot" != appletDataFormat)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([@"transit.apple.mot" isEqual:appletDataFormat])
  {
LABEL_18:
    v6 = @"transit.apple.mot";

    v3 = v6;
  }

LABEL_19:
  if (!appletDataFormat || !@"transit.apple.mifare")
  {
    if (@"transit.apple.mifare" != appletDataFormat)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ([@"transit.apple.mifare" isEqual:appletDataFormat])
  {
LABEL_22:
    v7 = @"transit.apple.mifare";

    v3 = v7;
  }

LABEL_23:
  if (!appletDataFormat || !@"transit.apple.tmoney")
  {
    if (@"transit.apple.tmoney" != appletDataFormat)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ([@"transit.apple.tmoney" isEqual:appletDataFormat])
  {
LABEL_26:
    v8 = @"transit.apple.tmoney";

    v3 = v8;
  }

LABEL_27:
  if (appletDataFormat && @"transit.apple.calypso.navigo")
  {
    if (([@"transit.apple.calypso.navigo" isEqual:appletDataFormat] & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (@"transit.apple.calypso.navigo" == appletDataFormat)
  {
LABEL_30:
    v9 = @"com.apple.transit.navigo";

    v3 = v9;
  }

LABEL_31:

  return v3;
}

- (id)asDictionary
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v3 setObject:applicationIdentifier forKeyedSubscript:@"applicationIdentifier"];
  }

  secureElementIdentifier = self->_secureElementIdentifier;
  if (secureElementIdentifier)
  {
    [v4 setObject:secureElementIdentifier forKeyedSubscript:@"secureElementIdentifier"];
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v4 setObject:dpanIdentifier forKeyedSubscript:@"DPANIdentifier"];
  }

  dpanSuffix = self->_dpanSuffix;
  if (dpanSuffix)
  {
    [v4 setObject:dpanSuffix forKeyedSubscript:@"DPANSuffix"];
  }

  sanitizedDPAN = self->_sanitizedDPAN;
  if (sanitizedDPAN)
  {
    [v4 setObject:sanitizedDPAN forKeyedSubscript:@"sanitizedDPAN"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  [v4 setObject:v10 forKeyedSubscript:@"state"];

  suspendedReason = self->_suspendedReason;
  if (suspendedReason)
  {
    [v4 setObject:suspendedReason forKeyedSubscript:@"suspendedReason"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsContactlessPayment];
  [v4 setObject:v12 forKeyedSubscript:@"supportsContactlessPayment"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInAppPayment];
  [v4 setObject:v13 forKeyedSubscript:@"supportsInAppPayment"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsOptionalAuthentication];
  [v4 setObject:v14 forKeyedSubscript:@"supportsOptionalAuthentication"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMerchantTokens];
  [v4 setObject:v15 forKeyedSubscript:@"supportsMerchantTokens"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasMerchantTokens];
  [v4 setObject:v16 forKeyedSubscript:@"hasMerchantTokens"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_hadMerchantTokens];
  [v4 setObject:v17 forKeyedSubscript:@"hadMerchantTokens"];

  apanIdentifier = self->_apanIdentifier;
  if (apanIdentifier)
  {
    [v4 setObject:apanIdentifier forKeyedSubscript:@"APANIdentifier"];
  }

  apanSuffix = self->_apanSuffix;
  if (apanSuffix)
  {
    [v4 setObject:apanSuffix forKeyedSubscript:@"APANSuffix"];
  }

  supportsMultiTokens = self->_supportsMultiTokens;
  if (supportsMultiTokens)
  {
    [v4 setObject:supportsMultiTokens forKeyedSubscript:@"supportsMultiTokens"];
  }

  [v4 setObject:self->_virtualCardIdentifier forKeyedSubscript:@"VPANIdentifier"];
  [v4 setObject:self->_virtualCardSuffix forKeyedSubscript:@"VPANSuffix"];
  [v4 setObject:self->_supportsVirtualCardNumber forKeyedSubscript:@"supportsVirtualCardNumber"];
  v21 = PKVirtualCardVPANOriginToString(self->_virtualCardVPANOrigin);
  [v4 setObject:v21 forKeyedSubscript:@"virtualCardNumberOrigin"];

  [v4 setObject:self->_virtualCardRefreshTypeNumber forKeyedSubscript:@"virtualCardRefreshType"];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsBarcodePayment];
  [v4 setObject:v22 forKeyedSubscript:@"supportsBarcodePayment"];

  if ([(NSArray *)self->_supportedExpressModes count])
  {
    [v4 setObject:self->_supportedExpressModes forKeyedSubscript:@"supportedExpressModes"];
  }

  else if ([(NSArray *)self->_automaticSelectionCriteria count])
  {
    v23 = [(NSArray *)self->_automaticSelectionCriteria pk_arrayByApplyingBlock:&__block_literal_global_110];
    [v4 setObject:v23 forKeyedSubscript:@"automaticSelectionCriteria"];
  }

  appletDataFormat = self->_appletDataFormat;
  if (appletDataFormat)
  {
    [v4 setObject:appletDataFormat forKeyedSubscript:@"appletDataFormat"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsServiceMode];
  [v4 setObject:v25 forKeyedSubscript:@"supportsServiceMode"];

  appletCurrencyCode = self->_appletCurrencyCode;
  if (appletCurrencyCode)
  {
    [v4 setObject:appletCurrencyCode forKeyedSubscript:@"appletCurrencyCode"];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresDeferredAuthorization];
  [v4 setObject:v27 forKeyedSubscript:@"requiresDeferredAuthorization"];

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentNetworkIdentifier];
  [v4 setObject:v28 forKeyedSubscript:@"paymentNetworkIdentifier"];

  v29 = PKPaymentMethodTypeToString(self->_paymentType);
  [v4 setObject:v29 forKeyedSubscript:@"paymentType"];

  v30 = PKPaymentMethodTypeToString(self->_auxiliaryPaymentType);
  [v4 setObject:v30 forKeyedSubscript:@"auxiliaryPaymentType"];

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKeyedSubscript:@"applicationDescription"];
  }

  inAppPINRequiredAmount = self->_inAppPINRequiredAmount;
  if (inAppPINRequiredAmount)
  {
    stringValue = [(NSDecimalNumber *)inAppPINRequiredAmount stringValue];
    [v4 setObject:stringValue forKeyedSubscript:@"inAppPINRequiredAmount"];
  }

  inAppPINRequiredCurrency = self->_inAppPINRequiredCurrency;
  if (inAppPINRequiredCurrency)
  {
    [v4 setObject:inAppPINRequiredCurrency forKeyedSubscript:@"inAppPINRequiredCurrency"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contactlessPriority];
  [v4 setObject:v35 forKeyedSubscript:@"contactlessPriority"];

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inAppPriority];
  [v4 setObject:v36 forKeyedSubscript:@"inAppPriority"];

  v37 = [(NSArray *)self->_supportedInAppMerchantCountryCodes copy];
  if (v37)
  {
    [v4 setObject:self->_supportedInAppMerchantCountryCodes forKeyedSubscript:@"supportedInAppMerchantCountryCodes"];
  }

  v38 = [(NSArray *)self->_unsupportedInAppMerchantCountryCodes copy];

  if (v38)
  {
    [v4 setObject:self->_unsupportedInAppMerchantCountryCodes forKeyedSubscript:@"unsupportedInAppMerchantCountryCodes"];
  }

  if ([(NSArray *)self->_supportedTransitNetworkIdentifiers count])
  {
    [v4 setObject:self->_supportedTransitNetworkIdentifiers forKeyedSubscript:@"supportedTransitNetworkIdentifiers"];
  }

  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInstantFundsIn];
  [v4 setObject:v39 forKeyedSubscript:@"supportsInstantFundsIn"];

  v40 = PKPaymentMethodTypeToString(self->_fundingSourcePaymentType);
  [v4 setObject:v40 forKeyedSubscript:@"fundingSourcePaymentType"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresConsentForDataRelease];
  [v4 setObject:v41 forKeyedSubscript:@"requiresConsentForDataRelease"];

  if ([(NSSet *)self->_subcredentials count])
  {
    anyObject = [(NSSet *)self->_subcredentials anyObject];
    asDictionary = [anyObject asDictionary];
    [v4 setObject:asDictionary forKeyedSubscript:@"subcredential"];
  }

  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_shareable];
  [v4 setObject:v44 forKeyedSubscript:@"shareable"];

  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  [v4 setObject:hexEncoding forKeyedSubscript:@"readerIdentifier"];

  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v47 = self->_associatedReaders;
  v48 = [(NSSet *)v47 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v57;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(v47);
        }

        asDictionary2 = [*(*(&v56 + 1) + 8 * i) asDictionary];
        [v46 addObject:asDictionary2];
      }

      v49 = [(NSSet *)v47 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v49);
  }

  v53 = [v46 copy];
  [v4 setObject:v53 forKeyedSubscript:@"associatedReaders"];

  v54 = [v4 copy];

  return v54;
}

- (BOOL)firstApproachCompleted
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_foundVehicleReport)
  {
    return 1;
  }

  else
  {
    subcredentials = [(PKPaymentApplication *)self subcredentials];
    anyObject = [subcredentials anyObject];
    identifier = [anyObject identifier];

    if ([identifier length])
    {
      v13 = 0;
      v7 = [PKGetClassNFDigitalCarKeySession() vehicleReports:&v13];
      v8 = v13;
      v9 = [v7 objectForKeyedSubscript:identifier];
      if (!v9)
      {
        v10 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          applicationIdentifier = [(PKPaymentApplication *)self applicationIdentifier];
          *buf = 138412802;
          v15 = applicationIdentifier;
          v16 = 2112;
          v17 = identifier;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPaymentApplication: failed to fetch vehicle report for (%@: %@) - %@.", buf, 0x20u);
        }
      }

      self->_foundVehicleReport = v9 != 0;
    }

    return self->_foundVehicleReport;
  }
}

- (BOOL)supportsMultiTokensWithImplicitlyEnabledNetworks:(id)networks
{
  networksCopy = networks;
  bOOLValue = [(NSNumber *)self->_supportsMultiTokens BOOLValue];
  if (self->_supportsMultiTokens)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentNetworkIdentifier];
    v6 = [networksCopy containsObject:v7];
  }

  return (bOOLValue | v6) & 1;
}

- (BOOL)isShareable
{
  if (self->_shareable)
  {
    return 1;
  }

  v3 = [(NSSet *)self->_subcredentials pk_anyObjectPassingTest:&__block_literal_global_125_0];
  v2 = v3 != 0;

  return v2;
}

- (BOOL)supportsDeviceAssessmentAccordingToService:(id)service
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(PKPaymentApplication *)self networksSupportedAccordingToService:service];
  if (v4)
  {
    paymentNetworkIdentifier = [(PKPaymentApplication *)self paymentNetworkIdentifier];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:paymentNetworkIdentifier];
    v7 = [v4 containsObject:v6];

    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "No";
      if (v7)
      {
        v9 = "Yes";
      }

      v11 = 134218242;
      v12 = paymentNetworkIdentifier;
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Device assessment supports network %ld: %s", &v11, 0x16u);
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Device assessment not supported.", &v11, 2u);
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)networksSupportedAccordingToService:(id)service
{
  v3 = [(PKPaymentApplication *)self torinoFeatureFromService:service];
  v4 = v3;
  if (v3)
  {
    implicitFeatureSupportedNetworks = [v3 implicitFeatureSupportedNetworks];
  }

  else
  {
    implicitFeatureSupportedNetworks = 0;
  }

  return implicitFeatureSupportedNetworks;
}

- (id)torinoFeatureFromService:(id)service
{
  serviceCopy = service;
  targetDevice = [serviceCopy targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v5 = [targetDevice paymentWebService:serviceCopy supportedRegionFeatureOfType:6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)vpanRefreshTypeAccordingToService:(id)service
{
  v4 = [PKWebServiceVirtualCardFeature virtualCardFeatureWithWebService:service];
  v5 = [v4 refreshTypeForPaymentApplication:self];

  return v5;
}

+ (BOOL)paymentApplicationSupportsMerchantCapabilties:(unint64_t)capabilties paymentType:(unint64_t)type
{
  result = 1;
  if ((capabilties & 0x1C) != 0)
  {
    v5 = (capabilties >> 4) & 1;
    v6 = (capabilties >> 2) & 1;
    v7 = type != 1 || (capabilties & 8) != 0;
    if (type != 2)
    {
      LOBYTE(v6) = v7;
    }

    if (type != 100)
    {
      LOBYTE(v5) = v6;
    }

    if ((capabilties & 0x1C) == 0x1C)
    {
      return 1;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

@end