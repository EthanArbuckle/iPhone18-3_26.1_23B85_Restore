@interface PKPaymentRequest
+ (NSArray)availableNetworks;
+ (NSError)paymentBillingAddressInvalidErrorWithKey:(NSString *)postalAddressKey localizedDescription:(NSString *)localizedDescription;
+ (NSError)paymentContactInvalidErrorWithContactField:(PKContactField)field localizedDescription:(NSString *)localizedDescription;
+ (NSError)paymentCouponCodeExpiredErrorWithLocalizedDescription:(NSString *)localizedDescription;
+ (NSError)paymentCouponCodeInvalidErrorWithLocalizedDescription:(NSString *)localizedDescription;
+ (NSError)paymentShippingAddressInvalidErrorWithKey:(NSString *)postalAddressKey localizedDescription:(NSString *)localizedDescription;
+ (NSError)paymentShippingAddressUnserviceableErrorWithLocalizedDescription:(NSString *)localizedDescription;
+ (PKPaymentRequest)requestWithProtobuf:(id)a3;
+ (id)errorFromDictionary:(id)a3;
- (BOOL)_isAMPApplePayClassicRequest;
- (BOOL)_isAMPPayment;
- (BOOL)_isPSD2StyleRequest;
- (BOOL)_isPVKRequest;
- (BOOL)_shouldSupportLandscapeOrientation;
- (BOOL)_shouldUseAmpEnrollmentPinning;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentRequest:(id)a3;
- (BOOL)isVirtualCardEnrollmentRequest;
- (BOOL)isVirtualCardRefreshRequest;
- (BOOL)shouldUseMerchantSession;
- (NSData)applicationData;
- (NSString)hashedMerchantIdentifier;
- (PKPaymentRequest)init;
- (PKPaymentRequest)initWithCoder:(id)a3;
- (PKPaymentRequest)initWithDictionary:(id)a3 error:(id *)a4;
- (id)_addressFieldsToContactFields:(unint64_t)a3;
- (id)_transactionAmount;
- (id)accountServiceTransferRequest;
- (id)description;
- (id)disbursementPaymentRequest;
- (id)peerPaymentRequest;
- (id)protobuf;
- (id)serviceProviderPaymentRequest;
- (id)virtualCardEnrollmentRequest;
- (unint64_t)_contactFieldsToAddressFields:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAccesssControlRef:(__SecAccessControl *)a3;
- (void)setBillingAddress:(ABRecordRef)billingAddress;
- (void)setBillingContact:(PKContact *)billingContact;
- (void)setMultiTokenContexts:(NSArray *)multiTokenContexts;
- (void)setRequiredBillingAddressFields:(PKAddressField)requiredBillingAddressFields;
- (void)setRequiredShippingAddressFields:(PKAddressField)requiredShippingAddressFields;
- (void)setShippingAddress:(ABRecordRef)shippingAddress;
- (void)setShippingContact:(PKContact *)shippingContact;
- (void)setShippingContactEditingMode:(PKShippingContactEditingMode)shippingContactEditingMode;
- (void)setShippingMethods:(NSArray *)shippingMethods;
- (void)setSupportedNetworks:(NSArray *)supportedNetworks;
@end

@implementation PKPaymentRequest

- (id)disbursementPaymentRequest
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (PKPaymentRequest)requestWithProtobuf:(id)a3
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 requestType] == 10;
  v5 = [v3 summaryItems];
  v6 = [v5 lastObject];
  v7 = [v6 hasDisbursementSummaryItem];

  v8 = off_1E79BFA78;
  if ((v4 & v7) == 0)
  {
    v8 = off_1E79C0B48;
  }

  v9 = objc_alloc_init(*v8);
  [v9 setAPIType:{objc_msgSend(v3, "apiType")}];
  v10 = [v3 merchantIdentifier];
  [v9 setMerchantIdentifier:v10];

  v11 = [v3 attributionIdentifier];
  [v9 setAttributionIdentifier:v11];

  v12 = [v3 countryCode];
  [v9 setCountryCode:v12];

  v13 = [v3 currencyCode];
  [v9 setCurrencyCode:v13];

  v14 = [v3 supportedNetworks];
  [v9 setSupportedNetworks:v14];

  [v9 setMerchantCapabilities:{objc_msgSend(v3, "merchantCapabilities")}];
  [v9 setRequiredBillingAddressFields:{objc_msgSend(v3, "requiredBillingAddressFields")}];
  [v9 setRequiredShippingAddressFields:{objc_msgSend(v3, "requiredShippingAddressFields")}];
  v15 = MEMORY[0x1E695DFD8];
  v16 = [v3 requiredShippingContactFields];
  v17 = [v15 setWithArray:v16];
  [v9 setRequiredShippingContactFields:v17];

  v18 = MEMORY[0x1E695DFD8];
  v19 = [v3 requiredBillingContactFields];
  v20 = [v18 setWithArray:v19];
  [v9 setRequiredBillingContactFields:v20];

  v21 = [v3 applicationData];
  [v9 setApplicationData:v21];

  v22 = MEMORY[0x1E695DFF8];
  v23 = [v3 originatingURL];
  v24 = [v22 URLWithString:v23];
  [v9 setOriginatingURL:v24];

  v25 = MEMORY[0x1E695DFD8];
  v26 = [v3 supportedCountries];
  v27 = [v25 setWithArray:v26];
  [v9 setSupportedCountries:v27];

  v28 = [v3 userAgent];
  [v9 setUserAgent:v28];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v30 = [v3 thumbnailURLs];
  v31 = [v30 countByEnumeratingWithState:&v95 objects:v101 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v96;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v96 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v95 + 1) + 8 * i)];
        [v29 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v95 objects:v101 count:16];
    }

    while (v32);
  }

  if ([v29 count])
  {
    v36 = [v29 copy];
    [v9 setThumbnailURLs:v36];
  }

  if ([v3 hasMerchantSession])
  {
    v37 = [v3 merchantSession];
    v38 = [PKPaymentMerchantSession paymentMerchantSessionWithProtobuf:v37];
    [v9 setMerchantSession:v38];
  }

  v39 = [MEMORY[0x1E695DF70] array];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v40 = [v3 summaryItems];
  v41 = [v40 countByEnumeratingWithState:&v91 objects:v100 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v92;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v92 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [PKPaymentSummaryItem itemWithProtobuf:*(*(&v91 + 1) + 8 * j)];
        [v39 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v91 objects:v100 count:16];
    }

    while (v42);
  }

  [v9 setPaymentSummaryItems:v39];
  if ([v3 hasAvailableShippingMethods])
  {
    v46 = [v3 availableShippingMethods];
    v47 = [PKShippingMethods shippingMethodsWithProtobuf:v46];
    [v9 setAvailableShippingMethods:v47];
  }

  else
  {
    v48 = [v3 shippingMethods];
    v49 = [v48 count];

    if (!v49)
    {
      goto LABEL_33;
    }

    v86 = v9;
    v46 = [MEMORY[0x1E695DF70] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v50 = [v3 shippingMethods];
    v51 = [v50 countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v88;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v88 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [PKShippingMethod shippingMethodWithProtobuf:*(*(&v87 + 1) + 8 * k)];
          [v46 addObject:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v87 objects:v99 count:16];
      }

      while (v52);
    }

    v9 = v86;
    [v86 setShippingMethods:v46];
  }

LABEL_33:
  v56 = [v3 billingContact];

  if (v56)
  {
    v57 = MEMORY[0x1E696ACD0];
    v58 = objc_opt_class();
    v59 = [v3 billingContact];
    v60 = [v57 unarchivedObjectOfClass:v58 fromData:v59 error:0];
    [v9 setBillingContact:v60];
  }

  v61 = [v3 shippingContact];

  if (v61)
  {
    v62 = MEMORY[0x1E696ACD0];
    v63 = objc_opt_class();
    v64 = [v3 shippingContact];
    v65 = [v62 unarchivedObjectOfClass:v63 fromData:v64 error:0];
    [v9 setShippingContact:v65];
  }

  v66 = [v3 multiTokenContexts];
  v67 = [v66 pk_arrayByApplyingBlock:&__block_literal_global_141];
  v68 = v67;
  v69 = MEMORY[0x1E695E0F0];
  if (v67)
  {
    v69 = v67;
  }

  v70 = v69;

  [v9 setMultiTokenContexts:v70];
  v71 = [v3 recurringPaymentRequest];

  if (v71)
  {
    v72 = [v3 recurringPaymentRequest];
    v73 = [PKRecurringPaymentRequest recurringPaymentRequestWithProtobuf:v72];
    [v9 setRecurringPaymentRequest:v73];
  }

  v74 = [v3 automaticReloadPaymentRequest];

  if (v74)
  {
    v75 = [v3 automaticReloadPaymentRequest];
    v76 = [PKAutomaticReloadPaymentRequest automaticReloadPaymentRequestWithProtobuf:v75];
    [v9 setAutomaticReloadPaymentRequest:v76];
  }

  v77 = [v3 deferredPaymentRequest];

  if (v77)
  {
    v78 = [v3 deferredPaymentRequest];
    v79 = [PKDeferredPaymentRequest deferredPaymentRequestWithProtobuf:v78];
    [v9 setDeferredPaymentRequest:v79];
  }

  v80 = [v3 contentItems];
  v81 = [v80 pk_arrayByApplyingBlock:&__block_literal_global_148];

  [v9 setPaymentContentItems:v81];
  v82 = [v3 localizedNavigationTitle];
  [v9 setLocalizedNavigationTitle:v82];

  v83 = [v3 localizedSummaryItemsTitle];
  [v9 setLocalizedSummaryItemsTitle:v83];

  [v9 setSuppressTotal:{objc_msgSend(v3, "suppressTotal")}];
  [v9 setSuppressLandscape:{objc_msgSend(v3, "suppressLandscape")}];
  [v9 setPaymentSummaryPinned:{objc_msgSend(v3, "summaryPinned")}];
  [v9 setRequestor:{objc_msgSend(v3, "requestor")}];
  [v9 setConfirmationStyle:{objc_msgSend(v3, "confirmationStyle")}];
  [v9 setRequestType:{objc_msgSend(v3, "requestType")}];
  [v9 setRespectSupportedNetworksOrder:{objc_msgSend(v3, "respectSupportedNetworksOrder")}];
  [v9 setRequestorDeviceType:{objc_msgSend(v3, "requestorDeviceType")}];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "merchantCategoryCode")}];
  [v9 setMerchantCategoryCode:{objc_msgSend(v84, "shortValue")}];

  return v9;
}

- (id)protobuf
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufPaymentRequest);
  [(PKProtobufPaymentRequest *)v3 setApiType:[(PKPaymentRequest *)self APIType]];
  v4 = [(PKPaymentRequest *)self merchantIdentifier];
  [(PKProtobufPaymentRequest *)v3 setMerchantIdentifier:v4];

  v5 = [(PKPaymentRequest *)self attributionIdentifier];
  [(PKProtobufPaymentRequest *)v3 setAttributionIdentifier:v5];

  v6 = [(PKPaymentRequest *)self countryCode];
  [(PKProtobufPaymentRequest *)v3 setCountryCode:v6];

  v7 = [(PKPaymentRequest *)self currencyCode];
  [(PKProtobufPaymentRequest *)v3 setCurrencyCode:v7];

  v8 = [(PKPaymentRequest *)self supportedNetworks];
  v9 = [v8 mutableCopy];
  [(PKProtobufPaymentRequest *)v3 setSupportedNetworks:v9];

  [(PKProtobufPaymentRequest *)v3 setMerchantCapabilities:[(PKPaymentRequest *)self merchantCapabilities]];
  [(PKProtobufPaymentRequest *)v3 setRequiredBillingAddressFields:[(PKPaymentRequest *)self requiredBillingAddressFields]];
  [(PKProtobufPaymentRequest *)v3 setRequiredShippingAddressFields:[(PKPaymentRequest *)self requiredShippingAddressFields]];
  v10 = [(PKPaymentRequest *)self requiredBillingContactFields];
  v11 = [v10 allObjects];
  v12 = [v11 mutableCopy];
  [(PKProtobufPaymentRequest *)v3 setRequiredBillingContactFields:v12];

  v13 = [(PKPaymentRequest *)self requiredShippingContactFields];
  v14 = [v13 allObjects];
  v15 = [v14 mutableCopy];
  [(PKProtobufPaymentRequest *)v3 setRequiredShippingContactFields:v15];

  v16 = [(PKPaymentRequest *)self applicationData];
  [(PKProtobufPaymentRequest *)v3 setApplicationData:v16];

  v17 = [(PKPaymentRequest *)self originatingURL];
  v18 = [v17 absoluteString];
  [(PKProtobufPaymentRequest *)v3 setOriginatingURL:v18];

  [(PKProtobufPaymentRequest *)v3 setExpectsMerchantSession:[(PKPaymentRequest *)self shouldUseMerchantSession]];
  v19 = [(PKPaymentRequest *)self supportedCountries];
  v20 = [v19 allObjects];
  v21 = [v20 mutableCopy];
  [(PKProtobufPaymentRequest *)v3 setSupportedCountries:v21];

  v22 = [(PKPaymentRequest *)self userAgent];
  [(PKProtobufPaymentRequest *)v3 setUserAgent:v22];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v23 = [(PKPaymentRequest *)self thumbnailURLs];
  v24 = [v23 countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v94;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v94 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v93 + 1) + 8 * i) absoluteString];
        [(PKProtobufPaymentRequest *)v3 addThumbnailURLs:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v25);
  }

  v29 = [(PKPaymentRequest *)self merchantSession];

  if (v29)
  {
    v30 = [(PKPaymentRequest *)self merchantSession];
    v31 = [v30 protobuf];
    [(PKProtobufPaymentRequest *)v3 setMerchantSession:v31];
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v32 = [(PKPaymentRequest *)self paymentSummaryItems];
  v33 = [v32 countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v90;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v90 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v89 + 1) + 8 * j) summaryItemProtobuf];
        [(PKProtobufPaymentRequest *)v3 addSummaryItems:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v34);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v38 = [(PKPaymentRequest *)self shippingMethods];
  v39 = [v38 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v86;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v86 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v85 + 1) + 8 * k) shippingMethodProtobuf];
        [(PKProtobufPaymentRequest *)v3 addShippingMethods:v43];
      }

      v40 = [v38 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v40);
  }

  v44 = [(PKPaymentRequest *)self availableShippingMethods];
  v45 = [v44 protobuf];
  [(PKProtobufPaymentRequest *)v3 setAvailableShippingMethods:v45];

  v46 = [(PKPaymentRequest *)self billingContact];

  if (v46)
  {
    v47 = MEMORY[0x1E696ACC8];
    v48 = [(PKPaymentRequest *)self billingContact];
    v49 = [v47 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentRequest *)v3 setBillingContact:v49];
  }

  v50 = [(PKPaymentRequest *)self shippingContact];

  if (v50)
  {
    v51 = MEMORY[0x1E696ACC8];
    v52 = [(PKPaymentRequest *)self shippingContact];
    v53 = [v51 archivedDataWithRootObject:v52 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentRequest *)v3 setShippingContact:v53];
  }

  v54 = [(PKPaymentRequest *)self multiTokenContexts];
  v55 = [v54 count];

  if (v55)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v56 = [(PKPaymentRequest *)self multiTokenContexts];
    v57 = [v56 countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v82;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v82 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = [*(*(&v81 + 1) + 8 * m) protobuf];
          [(PKProtobufPaymentRequest *)v3 addMultiTokenContexts:v61];
        }

        v58 = [v56 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v58);
    }
  }

  v62 = [(PKPaymentRequest *)self recurringPaymentRequest];
  v63 = [v62 protobuf];
  [(PKProtobufPaymentRequest *)v3 setRecurringPaymentRequest:v63];

  v64 = [(PKPaymentRequest *)self automaticReloadPaymentRequest];
  v65 = [v64 protobuf];
  [(PKProtobufPaymentRequest *)v3 setAutomaticReloadPaymentRequest:v65];

  v66 = [(PKPaymentRequest *)self deferredPaymentRequest];
  v67 = [v66 protobuf];
  [(PKProtobufPaymentRequest *)v3 setDeferredPaymentRequest:v67];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v68 = [(PKPaymentRequest *)self paymentContentItems];
  v69 = [v68 countByEnumeratingWithState:&v77 objects:v97 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v78;
    do
    {
      for (n = 0; n != v70; ++n)
      {
        if (*v78 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = [*(*(&v77 + 1) + 8 * n) protobuf];
        [(PKProtobufPaymentRequest *)v3 addContentItems:v73];
      }

      v70 = [v68 countByEnumeratingWithState:&v77 objects:v97 count:16];
    }

    while (v70);
  }

  v74 = [(PKPaymentRequest *)self localizedNavigationTitle];
  [(PKProtobufPaymentRequest *)v3 setLocalizedNavigationTitle:v74];

  v75 = [(PKPaymentRequest *)self localizedSummaryItemsTitle];
  [(PKProtobufPaymentRequest *)v3 setLocalizedSummaryItemsTitle:v75];

  [(PKProtobufPaymentRequest *)v3 setSuppressTotal:[(PKPaymentRequest *)self suppressTotal]];
  [(PKProtobufPaymentRequest *)v3 setSuppressLandscape:[(PKPaymentRequest *)self suppressLandscape]];
  [(PKProtobufPaymentRequest *)v3 setSummaryPinned:[(PKPaymentRequest *)self isPaymentSummaryPinned]];
  [(PKProtobufPaymentRequest *)v3 setRequestor:[(PKPaymentRequest *)self requestor]];
  [(PKProtobufPaymentRequest *)v3 setConfirmationStyle:[(PKPaymentRequest *)self confirmationStyle]];
  [(PKProtobufPaymentRequest *)v3 setRequestType:[(PKPaymentRequest *)self requestType]];
  [(PKProtobufPaymentRequest *)v3 setRespectSupportedNetworksOrder:[(PKPaymentRequest *)self respectSupportedNetworksOrder]];
  [(PKProtobufPaymentRequest *)v3 setRequestorDeviceType:[(PKPaymentRequest *)self requestorDeviceType]];
  [(PKProtobufPaymentRequest *)v3 setMerchantCategoryCode:[(PKPaymentRequest *)self merchantCategoryCode]];

  return v3;
}

- (id)serviceProviderPaymentRequest
{
  if ([(PKPaymentRequest *)self isServiceProviderPaymentRequest])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accountServiceTransferRequest
{
  if ([(PKPaymentRequest *)self isAccountServiceTransferRequest])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)peerPaymentRequest
{
  if ([(PKPaymentRequest *)self isPeerPaymentRequest])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isVirtualCardEnrollmentRequest
{
  v3 = [(PKPaymentRequest *)self isVirtualCardRequest];
  if (v3)
  {
    LOBYTE(v3) = [(PKPaymentRequest *)self requestType]== 12;
  }

  return v3;
}

- (BOOL)isVirtualCardRefreshRequest
{
  v3 = [(PKPaymentRequest *)self isVirtualCardRequest];
  if (v3)
  {
    LOBYTE(v3) = [(PKPaymentRequest *)self requestType]== 14;
  }

  return v3;
}

- (id)virtualCardEnrollmentRequest
{
  if ([(PKPaymentRequest *)self isVirtualCardEnrollmentRequest])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (NSArray)availableNetworks
{
  v4[32] = *MEMORY[0x1E69E9840];
  v4[0] = @"AmEx";
  v4[1] = @"Bancomat";
  v4[2] = @"PagoBancomat";
  v4[3] = @"Bancontact";
  v4[4] = @"CarteBancaire";
  v4[5] = @"CarteBancaires";
  v4[6] = @"CartesBancaires";
  v4[7] = @"ChinaUnionPay";
  v4[8] = @"Dankort";
  v4[9] = @"Discover";
  v4[10] = @"Eftpos";
  v4[11] = @"Electron";
  v4[12] = @"Elo";
  v4[13] = @"girocard";
  v4[14] = @"Himyan";
  v4[15] = @"Interac";
  v4[16] = @"iD";
  v4[17] = @"Jaywan";
  v4[18] = @"JCB";
  v4[19] = @"mada";
  v4[20] = @"Maestro";
  v4[21] = @"MasterCard";
  v4[22] = @"Meeza";
  v4[23] = @"Mir";
  v4[24] = @"MyDebit";
  v4[25] = @"NAPAS";
  v4[26] = @"BankAxept";
  v4[27] = @"PostFinanceAG";
  v4[28] = @"PrivateLabel";
  v4[29] = @"QUICPay";
  v4[30] = @"Visa";
  v4[31] = @"VPay";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:32];

  return v2;
}

- (PKPaymentRequest)init
{
  v10.receiver = self;
  v10.super_class = PKPaymentRequest;
  v2 = [(PKPaymentRequest *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_shippingContactEditingMode = 1;
    v2->_applePayLaterAvailability = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    requiredBillingContactFields = v3->_requiredBillingContactFields;
    v3->_requiredBillingContactFields = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    requiredShippingContactFields = v3->_requiredShippingContactFields;
    v3->_requiredShippingContactFields = v6;

    v3->_respectSupportedNetworksOrder = 1;
    multiTokenContexts = v3->_multiTokenContexts;
    v3->_multiTokenContexts = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (PKPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v168.receiver = self;
  v168.super_class = PKPaymentRequest;
  v5 = [(PKPaymentRequest *)&v168 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionIdentifier"];
    attributionIdentifier = v5->_attributionIdentifier;
    v5->_attributionIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"supportedNetworks"];
    supportedNetworks = v5->_supportedNetworks;
    v5->_supportedNetworks = v15;

    v5->_respectSupportedNetworksOrder = [v4 decodeBoolForKey:@"respectSupportedNetworksOrder"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCapabilities"];
    v5->_merchantCapabilities = [v17 unsignedIntegerValue];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automaticReloadPaymentRequest"];
    automaticReloadPaymentRequest = v5->_automaticReloadPaymentRequest;
    v5->_automaticReloadPaymentRequest = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentRequest"];
    recurringPaymentRequest = v5->_recurringPaymentRequest;
    v5->_recurringPaymentRequest = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"multiTokenContexts"];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_multiTokenContexts, v27);

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deferredPaymentRequest"];
    deferredPaymentRequest = v5->_deferredPaymentRequest;
    v5->_deferredPaymentRequest = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationData"];
    applicationData = v5->_applicationData;
    v5->_applicationData = v32;

    v5->_supportsCouponCode = [v4 decodeBoolForKey:@"supportsCouponCode"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"couponCode"];
    couponCode = v5->_couponCode;
    v5->_couponCode = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCategoryCode"];

    v5->_merchantCategoryCode = [v36 shortValue];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"paymentSummaryItems"];
    paymentSummaryItems = v5->_paymentSummaryItems;
    v5->_paymentSummaryItems = v40;

    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"requiredBillingContactFields"];
    requiredBillingContactFields = v5->_requiredBillingContactFields;
    v5->_requiredBillingContactFields = v45;

    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"requiredShippingContactFields"];
    requiredShippingContactFields = v5->_requiredShippingContactFields;
    v5->_requiredShippingContactFields = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingType"];

    v5->_shippingType = [v52 integerValue];
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingEditableMessage"];
    shippingEditableMessage = v5->_shippingEditableMessage;
    v5->_shippingEditableMessage = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingContactEditingMode"];

    v5->_shippingContactEditingMode = [v55 integerValue];
    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingContact"];
    shippingContact = v5->_shippingContact;
    v5->_shippingContact = v56;

    [(PKContact *)v5->_shippingContact sanitizePostalAddressCountry];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingContact"];
    billingContact = v5->_billingContact;
    v5->_billingContact = v58;

    [(PKContact *)v5->_billingContact sanitizePostalAddressCountry];
    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applePayLaterAvailability"];

    v5->_applePayLaterAvailability = [v60 integerValue];
    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteNetworkRequestPaymentTopicID"];
    remoteNetworkRequestPaymentTopicID = v5->_remoteNetworkRequestPaymentTopicID;
    v5->_remoteNetworkRequestPaymentTopicID = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteNetworkRequestInitiationType"];
    remoteNetworkRequestInitiationType = v5->_remoteNetworkRequestInitiationType;
    v5->_remoteNetworkRequestInitiationType = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresAddressPrecision"];
    v5->_requiresAddressPrecision = [v65 BOOLValue];

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingURL"];
    originatingURL = v5->_originatingURL;
    v5->_originatingURL = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantSession"];
    merchantSession = v5->_merchantSession;
    v5->_merchantSession = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [v4 decodeObjectOfClasses:v76 forKey:@"thumbnailURLs"];
    thumbnailURLs = v5->_thumbnailURLs;
    v5->_thumbnailURLs = v77;

    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userAgent"];
    userAgent = v5->_userAgent;
    v5->_userAgent = v79;

    [v4 decodeDoubleForKey:@"clientCallbackTimeout"];
    v5->_clientCallbackTimeout = v81;
    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applePayTrustSignatureRequest"];
    applePayTrustSignatureRequest = v5->_applePayTrustSignatureRequest;
    v5->_applePayTrustSignatureRequest = v82;

    v84 = MEMORY[0x1E695DFD8];
    v85 = objc_opt_class();
    v86 = [v84 setWithObjects:{v85, objc_opt_class(), 0}];
    v87 = [v4 decodeObjectOfClasses:v86 forKey:@"bankAccounts"];
    bankAccounts = v5->_bankAccounts;
    v5->_bankAccounts = v87;

    v5->_accountPaymentSupportsPeerPayment = [v4 decodeBoolForKey:@"accountPaymentSupportsPeerPayment"];
    v5->_deviceSupportsPeerPaymentAccountPayment = [v4 decodeBoolForKey:@"deviceSupportsPeerPaymentAccountPayment"];
    v5->_accountPaymentUsePeerPaymentBalance = [v4 decodeBoolForKey:@"accountPaymentUsePeerPaymentBalance"];
    v5->_paymentFrequency = [v4 decodeIntegerForKey:@"paymentFrequency"];
    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDate"];
    paymentDate = v5->_paymentDate;
    v5->_paymentDate = v89;

    v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentTimeZone"];
    paymentTimeZone = v5->_paymentTimeZone;
    v5->_paymentTimeZone = v91;

    v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationBundleIdentifier"];
    sourceApplicationBundleIdentifier = v5->_sourceApplicationBundleIdentifier;
    v5->_sourceApplicationBundleIdentifier = v93;

    v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationSecondaryIdentifier"];
    sourceApplicationSecondaryIdentifier = v5->_sourceApplicationSecondaryIdentifier;
    v5->_sourceApplicationSecondaryIdentifier = v95;

    v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CTDataConnectionServiceType"];
    CTDataConnectionServiceType = v5->_CTDataConnectionServiceType;
    v5->_CTDataConnectionServiceType = v97;

    v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundInterfaceIdentifier"];
    boundInterfaceIdentifier = v5->_boundInterfaceIdentifier;
    v5->_boundInterfaceIdentifier = v99;

    v101 = MEMORY[0x1E695DFD8];
    v102 = objc_opt_class();
    v103 = [v101 setWithObjects:{v102, objc_opt_class(), 0}];
    v104 = [v4 decodeObjectOfClasses:v103 forKey:@"supportedCountries"];
    supportedCountries = v5->_supportedCountries;
    v5->_supportedCountries = v104;

    v106 = MEMORY[0x1E695DFD8];
    v107 = objc_opt_class();
    v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
    v109 = [v4 decodeObjectOfClasses:v108 forKey:@"paymentContentItems"];
    paymentContentItems = v5->_paymentContentItems;
    v5->_paymentContentItems = v109;

    v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalizedContext"];
    externalizedContext = v5->_externalizedContext;
    v5->_externalizedContext = v111;

    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleIDAuthenticationContext"];
    appleIDAuthenticationContext = v5->_appleIDAuthenticationContext;
    v5->_appleIDAuthenticationContext = v113;

    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientViewSourceIdentifier"];
    clientViewSourceIdentifier = v5->_clientViewSourceIdentifier;
    v5->_clientViewSourceIdentifier = v115;

    v117 = [v4 decodePropertyListForKey:@"clientViewSourceParameter"];
    clientViewSourceParameter = v5->_clientViewSourceParameter;
    v5->_clientViewSourceParameter = v117;

    v119 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedNavigationTitle"];
    localizedNavigationTitle = v5->_localizedNavigationTitle;
    v5->_localizedNavigationTitle = v119;

    v121 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedConfirmationTitle"];
    localizedConfirmationTitle = v5->_localizedConfirmationTitle;
    v5->_localizedConfirmationTitle = v121;

    v123 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedPhysicalButtonConfirmationTitle"];
    localizedPhysicalButtonConfirmationTitle = v5->_localizedPhysicalButtonConfirmationTitle;
    v5->_localizedPhysicalButtonConfirmationTitle = v123;

    v125 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedPasswordButtonTitle"];
    localizedPasswordButtonTitle = v5->_localizedPasswordButtonTitle;
    v5->_localizedPasswordButtonTitle = v125;

    v5->_suppressTotal = [v4 decodeBoolForKey:@"suppressTotal"];
    v5->_suppressLandscape = [v4 decodeBoolForKey:@"suppressLandscape"];
    v5->_paymentSummaryPinned = [v4 decodeBoolForKey:@"paymentSummaryPinned"];
    v127 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentSummaryItemsTitle"];
    localizedSummaryItemsTitle = v5->_localizedSummaryItemsTitle;
    v5->_localizedSummaryItemsTitle = v127;

    v5->_confirmationStyle = [v4 decodeIntegerForKey:@"confirmationStyle"];
    v5->_APIType = [v4 decodeIntegerForKey:@"APIType"];
    v5->_supportsInstantFundsIn = [v4 decodeBoolForKey:@"supportsInstantFundsIn"];
    v129 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v129;

    v131 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedErrorMessage"];
    localizedErrorMessage = v5->_localizedErrorMessage;
    v5->_localizedErrorMessage = v131;

    v133 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedAutorizingTitle"];
    localizedAuthorizingTitle = v5->_localizedAuthorizingTitle;
    v5->_localizedAuthorizingTitle = v133;

    v135 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedCallbackErrorTitle"];
    localizedCallbackErrorTitle = v5->_localizedCallbackErrorTitle;
    v5->_localizedCallbackErrorTitle = v135;

    v137 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedCallbackErrorMessage"];
    localizedCallbackErrorMessage = v5->_localizedCallbackErrorMessage;
    v5->_localizedCallbackErrorMessage = v137;

    v139 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedBiometricRetryMessage"];
    localizedBiometricRetryMessage = v5->_localizedBiometricRetryMessage;
    v5->_localizedBiometricRetryMessage = v139;

    v141 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedUnboundBiometricMessage"];
    localizedUnboundBiometricMessage = v5->_localizedUnboundBiometricMessage;
    v5->_localizedUnboundBiometricMessage = v141;

    v5->_disablePasscodeFallback = [v4 decodeBoolForKey:@"disablePasscodeFallback"];
    v5->_useLocationBasedAuthorization = [v4 decodeBoolForKey:@"useLocationBasedAuthorization"];
    v143 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostProcessIdentifier"];
    hostProcessIdentifier = v5->_hostProcessIdentifier;
    v5->_hostProcessIdentifier = v143;

    v145 = [v4 decodePropertyListForKey:@"clientAnalyticsParameters"];
    clientAnalyticsParameters = v5->_clientAnalyticsParameters;
    v5->_clientAnalyticsParameters = v145;

    v147 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestor"];

    v5->_requestor = [v147 integerValue];
    v148 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];

    v5->_requestType = [v148 integerValue];
    v149 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestorDeviceType"];

    v5->_requestorDeviceType = [v149 integerValue];
    v150 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableShippingMethods"];
    availableShippingMethods = v5->_availableShippingMethods;
    v5->_availableShippingMethods = v150;

    v152 = MEMORY[0x1E695DFD8];
    v153 = objc_opt_class();
    v154 = [v152 setWithObjects:{v153, objc_opt_class(), 0}];
    v155 = [v4 decodeObjectOfClasses:v154 forKey:@"shippingMethods"];

    if (!v5->_availableShippingMethods && v155)
    {
      v156 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v155];
      v157 = v5->_availableShippingMethods;
      v5->_availableShippingMethods = v156;
    }

    v158 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessControlRef"];
    if (v158)
    {
      v167 = 0;
      v159 = SecAccessControlCreateFromData();
      if (v159)
      {
        v5->_accesssControlRef = v159;
      }

      else
      {
        v160 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v160, OS_LOG_TYPE_DEFAULT, "Error decoding access control ref", buf, 2u);
        }
      }
    }

    v161 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddress"];
    v162 = v161;
    if (v161)
    {
      v5->_shippingAddress = [v161 ABPerson];
    }

    v163 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    v164 = v163;
    if (v163)
    {
      v5->_billingAddress = [v163 ABPerson];
    }
  }

  return v5;
}

- (void)dealloc
{
  accesssControlRef = self->_accesssControlRef;
  if (accesssControlRef)
  {
    CFRelease(accesssControlRef);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentRequest;
  [(PKPaymentRequest *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  [v18 encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  [v18 encodeObject:self->_attributionIdentifier forKey:@"attributionIdentifier"];
  [v18 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v18 encodeObject:self->_supportedNetworks forKey:@"supportedNetworks"];
  [v18 encodeBool:self->_respectSupportedNetworksOrder forKey:@"respectSupportedNetworksOrder"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_merchantCapabilities];
  [v18 encodeObject:v4 forKey:@"merchantCapabilities"];

  [v18 encodeObject:self->_automaticReloadPaymentRequest forKey:@"automaticReloadPaymentRequest"];
  [v18 encodeObject:self->_recurringPaymentRequest forKey:@"recurringPaymentRequest"];
  [v18 encodeObject:self->_deferredPaymentRequest forKey:@"deferredPaymentRequest"];
  [v18 encodeObject:self->_multiTokenContexts forKey:@"multiTokenContexts"];
  [v18 encodeBool:self->_supportsCouponCode forKey:@"supportsCouponCode"];
  [v18 encodeObject:self->_couponCode forKey:@"couponCode"];
  [v18 encodeObject:self->_paymentSummaryItems forKey:@"paymentSummaryItems"];
  [v18 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:self->_merchantCategoryCode];
  [v18 encodeObject:v5 forKey:@"merchantCategoryCode"];

  [v18 encodeObject:self->_applicationData forKey:@"applicationData"];
  [v18 encodeObject:self->_requiredShippingContactFields forKey:@"requiredShippingContactFields"];
  [v18 encodeObject:self->_requiredBillingContactFields forKey:@"requiredBillingContactFields"];
  v6 = [(PKShippingMethods *)self->_availableShippingMethods legacyShippingMethods];
  [v18 encodeObject:v6 forKey:@"shippingMethods"];

  [v18 encodeObject:self->_availableShippingMethods forKey:@"availableShippingMethods"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shippingType];
  [v18 encodeObject:v7 forKey:@"shippingType"];

  [v18 encodeObject:self->_shippingEditableMessage forKey:@"shippingEditableMessage"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shippingContactEditingMode];
  [v18 encodeObject:v8 forKey:@"shippingContactEditingMode"];

  [v18 encodeObject:self->_shippingContact forKey:@"shippingContact"];
  [v18 encodeObject:self->_billingContact forKey:@"billingContact"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentRequest requiresAddressPrecision](self, "requiresAddressPrecision")}];
  [v18 encodeObject:v9 forKey:@"requiresAddressPrecision"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_applePayLaterAvailability];
  [v18 encodeObject:v10 forKey:@"applePayLaterAvailability"];

  [v18 encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [v18 encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [v18 encodeObject:self->_originatingURL forKey:@"originatingURL"];
  [v18 encodeObject:self->_merchantSession forKey:@"merchantSession"];
  [v18 encodeObject:self->_thumbnailURLs forKey:@"thumbnailURLs"];
  [v18 encodeObject:self->_userAgent forKey:@"userAgent"];
  [v18 encodeObject:self->_remoteNetworkRequestPaymentTopicID forKey:@"remoteNetworkRequestPaymentTopicID"];
  [v18 encodeObject:self->_remoteNetworkRequestInitiationType forKey:@"remoteNetworkRequestInitiationType"];
  [v18 encodeDouble:@"clientCallbackTimeout" forKey:self->_clientCallbackTimeout];
  [v18 encodeObject:self->_applePayTrustSignatureRequest forKey:@"applePayTrustSignatureRequest"];
  [v18 encodeObject:self->_bankAccounts forKey:@"bankAccounts"];
  [v18 encodeBool:self->_accountPaymentSupportsPeerPayment forKey:@"accountPaymentSupportsPeerPayment"];
  [v18 encodeBool:self->_deviceSupportsPeerPaymentAccountPayment forKey:@"deviceSupportsPeerPaymentAccountPayment"];
  [v18 encodeBool:self->_accountPaymentUsePeerPaymentBalance forKey:@"accountPaymentUsePeerPaymentBalance"];
  [v18 encodeInteger:self->_paymentFrequency forKey:@"paymentFrequency"];
  [v18 encodeObject:self->_paymentDate forKey:@"paymentDate"];
  [v18 encodeObject:self->_paymentTimeZone forKey:@"paymentTimeZone"];
  [v18 encodeObject:self->_sourceApplicationBundleIdentifier forKey:@"sourceApplicationBundleIdentifier"];
  [v18 encodeObject:self->_sourceApplicationSecondaryIdentifier forKey:@"sourceApplicationSecondaryIdentifier"];
  [v18 encodeObject:self->_CTDataConnectionServiceType forKey:@"CTDataConnectionServiceType"];
  [v18 encodeObject:self->_supportedCountries forKey:@"supportedCountries"];
  [v18 encodeObject:self->_boundInterfaceIdentifier forKey:@"boundInterfaceIdentifier"];
  [v18 encodeObject:self->_externalizedContext forKey:@"externalizedContext"];
  [v18 encodeObject:self->_appleIDAuthenticationContext forKey:@"appleIDAuthenticationContext"];
  [v18 encodeObject:self->_clientViewSourceIdentifier forKey:@"clientViewSourceIdentifier"];
  [v18 encodeObject:self->_clientViewSourceParameter forKey:@"clientViewSourceParameter"];
  [v18 encodeObject:self->_paymentContentItems forKey:@"paymentContentItems"];
  [v18 encodeObject:self->_localizedNavigationTitle forKey:@"localizedNavigationTitle"];
  [v18 encodeObject:self->_localizedConfirmationTitle forKey:@"localizedConfirmationTitle"];
  [v18 encodeObject:self->_localizedPhysicalButtonConfirmationTitle forKey:@"localizedPhysicalButtonConfirmationTitle"];
  [v18 encodeObject:self->_localizedPasswordButtonTitle forKey:@"localizedPasswordButtonTitle"];
  [v18 encodeObject:self->_localizedSummaryItemsTitle forKey:@"paymentSummaryItemsTitle"];
  [v18 encodeBool:self->_suppressTotal forKey:@"suppressTotal"];
  [v18 encodeBool:self->_suppressTotal forKey:@"suppressLandscape"];
  [v18 encodeBool:self->_paymentSummaryPinned forKey:@"paymentSummaryPinned"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestType];
  [v18 encodeObject:v11 forKey:@"requestType"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestor];
  [v18 encodeObject:v12 forKey:@"requestor"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_requestorDeviceType];
  [v18 encodeObject:v13 forKey:@"requestorDeviceType"];

  [v18 encodeInteger:self->_confirmationStyle forKey:@"confirmationStyle"];
  [v18 encodeInteger:self->_APIType forKey:@"APIType"];
  [v18 encodeBool:self->_supportsInstantFundsIn forKey:@"supportsInstantFundsIn"];
  [v18 encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [v18 encodeObject:self->_localizedErrorMessage forKey:@"localizedErrorMessage"];
  [v18 encodeObject:self->_localizedAuthorizingTitle forKey:@"localizedAutorizingTitle"];
  [v18 encodeObject:self->_localizedCallbackErrorTitle forKey:@"localizedCallbackErrorTitle"];
  [v18 encodeObject:self->_localizedCallbackErrorMessage forKey:@"localizedCallbackErrorMessage"];
  [v18 encodeObject:self->_localizedBiometricRetryMessage forKey:@"localizedBiometricRetryMessage"];
  [v18 encodeObject:self->_localizedUnboundBiometricMessage forKey:@"localizedUnboundBiometricMessage"];
  [v18 encodeBool:self->_disablePasscodeFallback forKey:@"disablePasscodeFallback"];
  [v18 encodeBool:self->_useLocationBasedAuthorization forKey:@"useLocationBasedAuthorization"];
  [v18 encodeObject:self->_hostProcessIdentifier forKey:@"hostProcessIdentifier"];
  [v18 encodeObject:self->_clientAnalyticsParameters forKey:@"clientAnalyticsParameters"];
  if (self->_accesssControlRef)
  {
    v14 = SecAccessControlCopyData();
    if (v14)
    {
      [v18 encodeObject:v14 forKey:@"accessControlRef"];
    }
  }

  if (self->_shippingAddress)
  {
    v15 = [MEMORY[0x1E695CD58] contactWithABRecordRef:?];
    [v18 encodeObject:v15 forKey:@"shippingAddress"];
  }

  v16 = v18;
  if (self->_billingAddress)
  {
    v17 = [MEMORY[0x1E695CD58] contactWithABRecordRef:?];
    [v18 encodeObject:v17 forKey:@"billingAddress"];

    v16 = v18;
  }
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentRequest *)self isEqualToPaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentRequest:(id)a3
{
  v44[28] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  if (self->_merchantCapabilities != *(v4 + 7) || self->_shippingType != *(v4 + 15) || self->_shippingContactEditingMode != *(v4 + 16) || self->_requiresAddressPrecision != v4[16] || self->_requestor != *(v4 + 42) || self->_requestorDeviceType != *(v4 + 64) || self->_requestType != *(v4 + 41))
  {
    goto LABEL_53;
  }

  applePayTrustSignatureRequest = self->_applePayTrustSignatureRequest;
  v7 = *(v5 + 33);
  if (applePayTrustSignatureRequest && v7)
  {
    if (([(PKApplePayTrustSignatureRequest *)applePayTrustSignatureRequest isEqual:?]& 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (applePayTrustSignatureRequest != v7)
  {
    goto LABEL_53;
  }

  bankAccounts = self->_bankAccounts;
  v9 = *(v5 + 34);
  if (bankAccounts && v9)
  {
    if (([(NSArray *)bankAccounts isEqual:?]& 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (bankAccounts != v9)
  {
    goto LABEL_53;
  }

  if (self->_accountPaymentSupportsPeerPayment != v5[10] || self->_accountPaymentUsePeerPaymentBalance != v5[11])
  {
    goto LABEL_53;
  }

  paymentDate = self->_paymentDate;
  v11 = *(v5 + 36);
  if (paymentDate && v11)
  {
    if (([(NSDate *)paymentDate isEqual:?]& 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (paymentDate != v11)
  {
    goto LABEL_53;
  }

  if (self->_paymentFrequency == *(v5 + 35))
  {
    paymentTimeZone = self->_paymentTimeZone;
    v13 = *(v5 + 37);
    if (paymentTimeZone && v13)
    {
      if (([(NSTimeZone *)paymentTimeZone isEqual:?]& 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (paymentTimeZone != v13)
    {
      goto LABEL_53;
    }

    if (self->_clientCallbackTimeout != *(v5 + 62) || self->_supportsInstantFundsIn != v5[17])
    {
      goto LABEL_53;
    }

    installmentConfiguration = self->_installmentConfiguration;
    v15 = *(v5 + 63);
    if (installmentConfiguration && v15)
    {
      if (![(PKPaymentInstallmentConfiguration *)installmentConfiguration isEqual:?])
      {
        goto LABEL_53;
      }
    }

    else if (installmentConfiguration != v15)
    {
      goto LABEL_53;
    }

    if (self->_supportsCouponCode != v5[8] || self->_merchantCategoryCode != *(v5 + 11))
    {
      goto LABEL_53;
    }

    couponCode = self->_couponCode;
    v17 = *(v5 + 8);
    if (couponCode && v17)
    {
      if (([(NSString *)couponCode isEqual:?]& 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (couponCode != v17)
    {
      goto LABEL_53;
    }

    if (self->_respectSupportedNetworksOrder != v5[13] || self->_disablePasscodeFallback != v5[18] || self->_useLocationBasedAuthorization != v5[19])
    {
      goto LABEL_53;
    }

    hostProcessIdentifier = self->_hostProcessIdentifier;
    v19 = *(v5 + 67);
    if (hostProcessIdentifier && v19)
    {
      if (([(NSNumber *)hostProcessIdentifier isEqual:?]& 1) != 0)
      {
LABEL_51:
        v20 = self->_applePayLaterAvailability == *(v5 + 25);
        goto LABEL_54;
      }
    }

    else if (hostProcessIdentifier == v19)
    {
      goto LABEL_51;
    }
  }

LABEL_53:
  v20 = 0;
LABEL_54:
  v43 = v20;
  if (*(v41 + 24) == 1 && (v44[0] = @"merchantIdentifier", v44[1] = @"attributionIdentifier", v44[2] = @"multiTokenContexts", v44[3] = @"automaticReloadPaymentRequest", v44[4] = @"recurringPaymentRequest", v44[5] = @"deferredPaymentRequest", v44[6] = @"remoteNetworkRequestPaymentTopicID", v44[7] = @"remoteNetworkRequestInitiationType", v44[8] = @"countryCode", v44[9] = @"supportedNetworks", v44[10] = @"paymentSummaryItems", v44[11] = @"currencyCode", v44[12] = @"billingContact", v44[13] = @"shippingContact", v44[14] = @"availableShippingMethods", v44[15] = @"applicationData", v44[16] = @"shippingEditableMessage", v44[17] = @"shippingContactEditingMode", v44[18] = @"thumbnailURLs", v44[19] = @"requiredBillingContactFields", v44[20] = @"requiredShippingContactFields", v44[21] = @"supportedCountries", v44[22] = @"paymentContentItems", v44[23] = @"externalizedContext", v44[24] = @"passTypeIdentifier", v44[25] = @"clientViewSourceIdentifier", v44[26] = @"clientViewSourceParameter", v44[27] = @"passSerialNumber", [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:28], v21 = objc_claimAutoreleasedReturnValue(), v33 = MEMORY[0x1E69E9820], v34 = 3221225472, v35 = __44__PKPaymentRequest_isEqualToPaymentRequest___block_invoke, v36 = &unk_1E79E3290, v39 = &v40, v37 = self, v22 = v5, v38 = v22, objc_msgSend(v21, "enumerateObjectsUsingBlock:", &v33), v38, v21, (v41[3] & 1) != 0) && (!self->_billingAddress && !*(v22 + 20) || ((objc_msgSend(MEMORY[0x1E695CD58], "contactWithABRecordRef:", v33, v34, v35, v36, v37), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695CD58], "contactWithABRecordRef:", *(v22 + 20)), v24 = objc_claimAutoreleasedReturnValue(), v25 = v24, !v23) || !v24 ? (v26 = v23 == v24) : (v26 = objc_msgSend(v23, "isEqual:", v24)), *(v41 + 24) = v26, v25, v23, (v41[3] & 1) != 0)))
  {
    if (self->_shippingAddress || *(v22 + 19))
    {
      v27 = [MEMORY[0x1E695CD58] contactWithABRecordRef:{v33, v34, v35, v36, v37}];
      v28 = [MEMORY[0x1E695CD58] contactWithABRecordRef:*(v22 + 19)];
      v29 = v28;
      if (v27 && v28)
      {
        v30 = [v27 isEqual:v28];
      }

      else
      {
        v30 = v27 == v28;
      }

      *(v41 + 24) = v30;

      v31 = *(v41 + 24);
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(&v40, 8);

  return v31 & 1;
}

void __44__PKPaymentRequest_isEqualToPaymentRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 valueForKey:v7];
  v9 = [*(a1 + 40) valueForKey:v7];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v8 == v9;
  }

  else
  {
    v11 = [v8 isEqual:v9];
  }

  *(*(*(a1 + 48) + 8) + 24) = v11;

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

- (void)setSupportedNetworks:(NSArray *)supportedNetworks
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = supportedNetworks;
  v6 = [v4 alloc];
  v7 = PKInAppSupportedPaymentNetworks();
  v8 = [v6 initWithArray:v7];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PKPaymentRequest_setSupportedNetworks___block_invoke;
  v12[3] = &unk_1E79C4340;
  v13 = v8;
  v9 = v8;
  v10 = [(NSArray *)v5 pk_objectsPassingTest:v12];

  v11 = self->_supportedNetworks;
  self->_supportedNetworks = v10;
}

- (void)setMultiTokenContexts:(NSArray *)multiTokenContexts
{
  if (multiTokenContexts)
  {
    v4 = [(NSArray *)multiTokenContexts copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = self->_multiTokenContexts;
  self->_multiTokenContexts = v4;
}

- (void)setAccesssControlRef:(__SecAccessControl *)a3
{
  accesssControlRef = self->_accesssControlRef;
  if (accesssControlRef != a3)
  {
    if (accesssControlRef)
    {
      CFRelease(accesssControlRef);
      self->_accesssControlRef = 0;
    }

    if (a3)
    {
      self->_accesssControlRef = CFRetain(a3);
    }
  }
}

- (void)setShippingMethods:(NSArray *)shippingMethods
{
  v4 = shippingMethods;
  v6 = v4;
  if (v4)
  {
    v4 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v4];
  }

  availableShippingMethods = self->_availableShippingMethods;
  self->_availableShippingMethods = v4;
}

- (void)setShippingContactEditingMode:(PKShippingContactEditingMode)shippingContactEditingMode
{
  self->_shippingContactEditingMode = shippingContactEditingMode;
  if (shippingContactEditingMode == PKShippingContactEditingModeAvailable)
  {

    [(PKPaymentRequest *)self setShippingEditableMessage:0];
  }

  else if (shippingContactEditingMode == PKShippingContactEditingModeStorePickup)
  {
    v4 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_11.isa, 0);
    [(PKPaymentRequest *)self setShippingEditableMessage:v4];
  }
}

- (void)setShippingContact:(PKContact *)shippingContact
{
  v5 = shippingContact;
  v7 = self->_shippingContact;
  p_shippingContact = &self->_shippingContact;
  v8 = v5;
  if (![(PKContact *)v7 isEqual:?])
  {
    objc_storeStrong(p_shippingContact, shippingContact);
    [(PKContact *)*p_shippingContact sanitizePostalAddressCountry];
  }
}

- (void)setBillingContact:(PKContact *)billingContact
{
  v5 = billingContact;
  v7 = self->_billingContact;
  p_billingContact = &self->_billingContact;
  v8 = v5;
  if (![(PKContact *)v7 isEqual:?])
  {
    objc_storeStrong(p_billingContact, billingContact);
    [(PKContact *)*p_billingContact sanitizePostalAddressCountry];
  }
}

- (void)setShippingAddress:(ABRecordRef)shippingAddress
{
  v5 = self->_shippingAddress;
  if (v5)
  {
    CFRelease(v5);
    self->_shippingAddress = 0;
  }

  if (shippingAddress)
  {
    self->_shippingAddress = CFRetain(shippingAddress);
  }
}

- (void)setBillingAddress:(ABRecordRef)billingAddress
{
  v5 = self->_billingAddress;
  if (v5)
  {
    CFRelease(v5);
    self->_billingAddress = 0;
  }

  if (billingAddress)
  {
    self->_billingAddress = CFRetain(billingAddress);
  }
}

- (void)setRequiredBillingAddressFields:(PKAddressField)requiredBillingAddressFields
{
  v4 = [(PKPaymentRequest *)self _addressFieldsToContactFields:requiredBillingAddressFields];
  requiredBillingContactFields = self->_requiredBillingContactFields;
  self->_requiredBillingContactFields = v4;
}

- (void)setRequiredShippingAddressFields:(PKAddressField)requiredShippingAddressFields
{
  v4 = [(PKPaymentRequest *)self _addressFieldsToContactFields:requiredShippingAddressFields];
  requiredShippingContactFields = self->_requiredShippingContactFields;
  self->_requiredShippingContactFields = v4;
}

- (id)_addressFieldsToContactFields:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"post"];
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"name"];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:@"email"];
  if ((v3 & 2) != 0)
  {
LABEL_5:
    [v5 addObject:@"phone"];
  }

LABEL_6:
  v6 = [v5 copy];

  return v6;
}

- (unint64_t)_contactFieldsToAddressFields:(id)a3
{
  v3 = a3;
  v4 = [v3 containsObject:@"post"];
  if ([v3 containsObject:@"name"])
  {
    v4 |= 8uLL;
  }

  if ([v3 containsObject:@"email"])
  {
    v5 = v4 | 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 containsObject:@"phone"];

  if (v6)
  {
    return v5 | 2;
  }

  else
  {
    return v5;
  }
}

- (id)_transactionAmount
{
  v2 = [(NSArray *)self->_paymentSummaryItems lastObject];
  v3 = [v2 amount];

  return v3;
}

- (NSData)applicationData
{
  if ([(PKPaymentRequest *)self _shouldUseAmpEnrollmentPinning])
  {
    v3 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "AMP initiative, ignoring applicationData on PKPaymentRequest", v8, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:self->_applicationData];
    v5 = [(PKPaymentMerchantSession *)self->_merchantSession ampEnrollmentPinning];
    v6 = [v5 copy];
    [(NSData *)v4 appendData:v6];
  }

  else
  {
    v4 = self->_applicationData;
  }

  return v4;
}

- (BOOL)_shouldUseAmpEnrollmentPinning
{
  v2 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  if ([v2 isEqualToString:@"amp_enrollment"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"amp_payment_token") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"amp_psd2") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"amp_applepay_classic"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"amp_verification"];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v9 = _PKEnumValueToString(self->_APIType, @"PKPaymentRequestAPIType", @"PKPaymentRequestAPITypeInApp, PKPaymentRequestAPITypeWebJS, PKPaymentRequestAPITypeWebPaymentRequest, PKPaymentRequestAPITypeWinterpeg, PKPaymentRequestAPITypeAMPEnrollment", v4, v5, v6, v7, v8, 0);
  [v3 appendFormat:@"APIType: %@, ", v9, 1, 2, 3, 4];

  v10 = PKPaymentRequestTypeToString(self->_requestType);
  [v3 appendFormat:@"requestType: %@, ", v10];

  v11 = PKPaymentRequestorToString(self->_requestor);
  [v3 appendFormat:@"requestor: %@, ", v11];

  [v3 appendFormat:@"countryCode: %@, ", self->_countryCode];
  [v3 appendFormat:@"attributionIdentifier: %@, ", self->_attributionIdentifier];
  [v3 appendFormat:@"merchantCapabilities: %x, ", self->_merchantCapabilities];
  [v3 appendFormat:@"merchantCategoryCode: %d, ", self->_merchantCategoryCode];
  [v3 appendFormat:@"currencyCode: %@, ", self->_currencyCode];
  v12 = 0;
  shippingType = self->_shippingType;
  if (shippingType <= 3)
  {
    v12 = off_1E79E3360[shippingType];
  }

  [v3 appendFormat:@"shippingType: %@, ", v12];
  applePayLaterAvailability = self->_applePayLaterAvailability;
  if (applePayLaterAvailability > 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = off_1E79E3380[applePayLaterAvailability];
  }

  [v3 appendFormat:@"applePayLaterAvailability: %@, ", v15];
  [v3 appendFormat:@"shouldUseMerchantSession: %d, ", -[PKPaymentRequest shouldUseMerchantSession](self, "shouldUseMerchantSession")];
  [v3 appendFormat:@"suppressTotal: %d, ", self->_suppressTotal];
  [v3 appendFormat:@"paymentSummaryPinned: %d, ", self->_paymentSummaryPinned];
  if (self->_supportedNetworks)
  {
    [v3 appendFormat:@"supportedNetworks: %@, ", self->_supportedNetworks];
  }

  if (self->_automaticReloadPaymentRequest)
  {
    [v3 appendFormat:@"automaticPaymentRequest: %@", self->_automaticReloadPaymentRequest];
  }

  if (self->_recurringPaymentRequest)
  {
    [v3 appendFormat:@"recurringPaymentRequest: %@, ", self->_recurringPaymentRequest];
  }

  if (self->_deferredPaymentRequest)
  {
    [v3 appendFormat:@"deferredPaymentRequest: %@, ", self->_deferredPaymentRequest];
  }

  if ([(NSArray *)self->_multiTokenContexts count])
  {
    [v3 appendFormat:@"multiTokenContexts: %@, ", self->_multiTokenContexts];
  }

  [v3 appendFormat:@"supportsCouponCode: %d, ", self->_supportsCouponCode];
  if (self->_couponCode)
  {
    [v3 appendFormat:@"couponCode: %@, ", self->_couponCode];
  }

  paymentSummaryItems = self->_paymentSummaryItems;
  if (paymentSummaryItems)
  {
    [v3 appendFormat:@"paymentSummaryItems: %d, ", -[NSArray count](paymentSummaryItems, "count")];
  }

  paymentContentItems = self->_paymentContentItems;
  if (paymentContentItems)
  {
    [v3 appendFormat:@"paymentContentItems: %d, ", -[NSArray count](paymentContentItems, "count")];
  }

  if (self->_merchantSession)
  {
    [v3 appendFormat:@"merchantSession: %@, ", self->_merchantSession];
  }

  if ([(NSSet *)self->_requiredBillingContactFields count])
  {
    [v3 appendFormat:@"requiredBillingContactFields: %@, ", self->_requiredBillingContactFields];
  }

  if ([(NSSet *)self->_requiredShippingContactFields count])
  {
    [v3 appendFormat:@"requiredShippingContactFields: %@, ", self->_requiredShippingContactFields];
  }

  availableShippingMethods = self->_availableShippingMethods;
  if (availableShippingMethods)
  {
    v19 = [(PKShippingMethods *)availableShippingMethods methods];
    [v3 appendFormat:@"shippingMethods: %d, ", objc_msgSend(v19, "count")];
  }

  applicationData = self->_applicationData;
  if (applicationData)
  {
    [v3 appendFormat:@"applicationData: %d bytes, ", -[NSData length](applicationData, "length")];
  }

  if (self->_supportedCountries)
  {
    [v3 appendFormat:@"supportedCountries: %@, ", self->_supportedCountries];
  }

  if (self->_passTypeIdentifier)
  {
    [v3 appendFormat:@"passTypeIdentifier: %@, ", self->_passTypeIdentifier];
  }

  if (self->_passSerialNumber)
  {
    [v3 appendFormat:@"passSerialNumber: %@, ", self->_passSerialNumber];
  }

  if (self->_boundInterfaceIdentifier)
  {
    [v3 appendFormat:@"boundInterfaceIdentifier: %@, ", self->_boundInterfaceIdentifier];
  }

  if (self->_externalizedContext)
  {
    [v3 appendFormat:@"externalizedContext: %p, ", self->_externalizedContext];
  }

  if (self->_accesssControlRef)
  {
    [v3 appendFormat:@"accesssControlRef: %p, ", self->_accesssControlRef];
  }

  if (self->_clientViewSourceIdentifier)
  {
    [v3 appendFormat:@"clientViewSourceIdentifier: %@, ", self->_clientViewSourceIdentifier];
  }

  if (self->_clientViewSourceParameter)
  {
    [v3 appendFormat:@"clientViewSourceParameter: %@, ", self->_clientViewSourceParameter];
  }

  if (self->_appleIDAuthenticationContext)
  {
    [v3 appendFormat:@"appleIDAuthenticationContext: %p, ", self->_appleIDAuthenticationContext];
  }

  if (self->_suppressLandscape)
  {
    [v3 appendFormat:@"suppressedLandscape"];
  }

  [v3 appendFormat:@">"];
  v21 = [v3 copy];

  return v21;
}

- (BOOL)_isPSD2StyleRequest
{
  if (self->_requestType)
  {
    return 0;
  }

  v3 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  v4 = [v3 isEqualToString:@"amp_psd2"];

  return v4;
}

- (BOOL)_isAMPApplePayClassicRequest
{
  if (self->_requestType)
  {
    return 0;
  }

  v3 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  v4 = [v3 isEqualToString:@"amp_applepay_classic"];

  return v4;
}

- (BOOL)_isAMPPayment
{
  if (self->_requestType == 1 || [(PKPaymentRequest *)self _isPSD2StyleRequest]|| [(PKPaymentRequest *)self _isAMPApplePayClassicRequest])
  {
    return 1;
  }

  return [(PKPaymentRequest *)self _isPVKRequest];
}

- (BOOL)_isPVKRequest
{
  if (self->_requestType)
  {
    return 0;
  }

  v3 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  v4 = [v3 isEqualToString:@"amp_verification"];

  return v4;
}

- (BOOL)_shouldSupportLandscapeOrientation
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (PKPearlIsAvailable() && (PKLandscapePearlIsSupported() & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Landscape orientation auth is not supported";
      v5 = buf;
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  if (self->_suppressLandscape)
  {
    v3 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Landscape orientation was suppressed";
      v5 = &v7;
LABEL_12:
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  return [(PKPaymentRequest *)self _isAMPPayment];
}

- (BOOL)shouldUseMerchantSession
{
  v3 = [(PKPaymentRequest *)self APIType];
  if ((v3 - 1) < 4)
  {
    return 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [(PKPaymentRequest *)self requestType];
  if (v5 > 0xE)
  {
    return 0;
  }

  if (((1 << v5) & 0x5401) != 0)
  {
    return [(NSString *)self->_merchantIdentifier length]== 0;
  }

  return v5 == 3;
}

- (NSString)hashedMerchantIdentifier
{
  if ([(PKPaymentRequest *)self shouldUseMerchantSession])
  {
    v3 = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  }

  else
  {
    merchantIdentifier = self->_merchantIdentifier;
    if (merchantIdentifier)
    {
      v5 = [(NSString *)merchantIdentifier dataUsingEncoding:4];
      v6 = [v5 SHA256Hash];
      v3 = [v6 hexEncoding];
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = [v3 lowercaseString];
  v8 = [v7 pk_stringIfNotEmpty];

  return v8;
}

- (PKPaymentRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v185 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentRequest *)self init];

  if (!v7)
  {
    goto LABEL_110;
  }

  v133 = a4;
  v8 = [v6 PKDictionaryForKey:@"applePay"];
  v134 = [v8 PKStringForKey:@"merchantIdentifier"];
  objc_storeStrong(&v7->_merchantIdentifier, v134);
  v138 = v6;
  v9 = [v6 PKStringForKey:@"attributionIdentifier"];
  attributionIdentifier = v7->_attributionIdentifier;
  v7->_attributionIdentifier = v9;

  v137 = v8;
  [v8 PKArrayForKey:@"merchantCapabilities"];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = v176 = 0u;
  v11 = [obj countByEnumeratingWithState:&v173 objects:v184 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v174;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v174 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v173 + 1) + 8 * i);
        if ([v15 isEqualToString:@"supports3DS"])
        {
          v7->_merchantCapabilities |= 1uLL;
        }

        if ([v15 isEqualToString:@"supportsEMV"])
        {
          v7->_merchantCapabilities |= 2uLL;
        }

        if ([v15 isEqualToString:@"supportsCredit"])
        {
          v7->_merchantCapabilities |= 4uLL;
        }

        if ([v15 isEqualToString:@"supportsDebit"])
        {
          v7->_merchantCapabilities |= 8uLL;
        }

        if ([v15 isEqualToString:@"supportsEWallet"])
        {
          v7->_merchantCapabilities |= 0x10uLL;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v173 objects:v184 count:16];
    }

    while (v12);
  }

  v16 = [v8 PKDictionaryForKey:@"automaticReloadPaymentRequest"];
  if (v16)
  {
    v17 = [[PKAutomaticReloadPaymentRequest alloc] initWithDictionary:v16 error:0];
    automaticReloadPaymentRequest = v7->_automaticReloadPaymentRequest;
    v7->_automaticReloadPaymentRequest = v17;
  }

  v132 = v16;
  v19 = [v137 PKDictionaryForKey:@"recurringPaymentRequest"];
  if (v19)
  {
    v20 = [[PKRecurringPaymentRequest alloc] initWithDictionary:v19 error:0];
    recurringPaymentRequest = v7->_recurringPaymentRequest;
    v7->_recurringPaymentRequest = v20;
  }

  v131 = v19;
  v22 = [v137 PKArrayForKey:@"multiTokenContexts"];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v169 objects:v183 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v170;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v170 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [[PKPaymentTokenContext alloc] initWithDictionary:*(*(&v169 + 1) + 8 * j) error:0];
        [v23 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v169 objects:v183 count:16];
    }

    while (v26);
  }

  v129 = v24;

  v130 = v23;
  v30 = [v23 copy];
  multiTokenContexts = v7->_multiTokenContexts;
  v7->_multiTokenContexts = v30;

  v32 = PKInAppSupportedPaymentNetworks();
  v33 = [v137 PKArrayForKey:@"supportedNetworks"];
  v140 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v141 = v33;
  v34 = [v141 countByEnumeratingWithState:&v165 objects:v182 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v166;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v166 != v36)
        {
          objc_enumerationMutation(v141);
        }

        v38 = *(*(&v165 + 1) + 8 * k);
        v164[0] = MEMORY[0x1E69E9820];
        v164[1] = 3221225472;
        v164[2] = __45__PKPaymentRequest_initWithDictionary_error___block_invoke;
        v164[3] = &unk_1E79C4340;
        v164[4] = v38;
        v39 = [v32 indexOfObjectPassingTest:v164];
        if (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = [v32 objectAtIndexedSubscript:v39];
          [v140 addObject:v40];
        }
      }

      v35 = [v141 countByEnumeratingWithState:&v165 objects:v182 count:16];
    }

    while (v35);
  }

  if ([v140 count])
  {
    v41 = [v140 copy];
    supportedNetworks = v7->_supportedNetworks;
    v7->_supportedNetworks = v41;
  }

  v43 = v138;
  v128 = [v138 PKStringForKey:@"countryCode"];
  objc_storeStrong(&v7->_countryCode, v128);
  v127 = [v138 PKStringForKey:@"currencyCode"];
  objc_storeStrong(&v7->_currencyCode, v127);
  v7->_supportsCouponCode = [v138 PKBoolForKey:@"supportsCouponCode"];
  v44 = [v138 PKStringForKey:@"couponCode"];
  couponCode = v7->_couponCode;
  v7->_couponCode = v44;

  v126 = [v138 PKNumberForKey:@"merchantCategoryCode"];
  v7->_merchantCategoryCode = [v126 shortValue];
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v138 PKArrayForKey:@"lineItems"];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v47 = v163 = 0u;
  v48 = [v47 countByEnumeratingWithState:&v160 objects:v181 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v161;
    do
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v161 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [[PKPaymentSummaryItem alloc] initWithDictionary:*(*(&v160 + 1) + 8 * m) error:0];
        [v46 addObject:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v160 objects:v181 count:16];
    }

    while (v49);
  }

  v123 = [v138 PKDictionaryForKey:@"total"];
  v122 = [[PKPaymentSummaryItem alloc] initWithDictionary:v123 error:0];
  [v46 addObject:?];
  v53 = [v46 copy];
  paymentSummaryItems = v7->_paymentSummaryItems;
  v7->_paymentSummaryItems = v53;

  v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v138 PKArrayForKey:@"shippingMethods"];
  v136 = v124 = v47;
  if (v136)
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v55 = v136;
    v56 = [v55 countByEnumeratingWithState:&v156 objects:v180 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v157;
      do
      {
        for (n = 0; n != v57; ++n)
        {
          if (*v157 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [[PKShippingMethod alloc] initWithDictionary:*(*(&v156 + 1) + 8 * n) error:0];
          [v143 addObject:v60];
        }

        v57 = [v55 countByEnumeratingWithState:&v156 objects:v180 count:16];
      }

      while (v57);
    }

    v61 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v143];
    availableShippingMethods = v7->_availableShippingMethods;
    v7->_availableShippingMethods = v61;
  }

  v63 = [v138 PKStringForKey:@"shippingType"];
  v7->_shippingType = 0;
  if ([v63 isEqualToString:@"delivery"])
  {
    v64 = 1;
LABEL_63:
    v7->_shippingType = v64;
    goto LABEL_64;
  }

  if ([v63 isEqualToString:@"storePickup"])
  {
    v64 = 2;
    goto LABEL_63;
  }

  if ([v63 isEqualToString:@"servicePickup"])
  {
    v64 = 3;
    goto LABEL_63;
  }

LABEL_64:
  v121 = v63;
  v125 = v46;
  v65 = [v138 PKStringForKey:@"applicationData"];
  if (v65)
  {
    v66 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v65 options:0];
    applicationData = v7->_applicationData;
    v7->_applicationData = v66;
  }

  v120 = v65;
  v135 = [v138 PKArrayForKey:@"supportedCountries"];
  if (v135)
  {
    v68 = [MEMORY[0x1E695DFA8] set];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v69 = v135;
    v70 = [v69 countByEnumeratingWithState:&v152 objects:v179 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v153;
      do
      {
        for (ii = 0; ii != v71; ++ii)
        {
          if (*v153 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v152 + 1) + 8 * ii);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v68 addObject:v74];
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v152 objects:v179 count:16];
      }

      while (v71);
    }

    if ([v68 count])
    {
      v75 = [v68 copy];
      supportedCountries = v7->_supportedCountries;
      v7->_supportedCountries = v75;
    }

    v43 = v138;
  }

  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{@"email", @"name", @"phone", @"postalAddress", @"phoneticName", 0}];
  v78 = [v43 PKArrayForKey:@"requiredShippingContactFields"];
  v139 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v79 = v78;
  v80 = [v79 countByEnumeratingWithState:&v148 objects:v178 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v149;
    do
    {
      for (jj = 0; jj != v81; ++jj)
      {
        if (*v149 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v148 + 1) + 8 * jj);
        if ([v77 containsObject:v84])
        {
          [v139 addObject:v84];
        }
      }

      v81 = [v79 countByEnumeratingWithState:&v148 objects:v178 count:16];
    }

    while (v81);
  }

  if ([v139 count])
  {
    v85 = [v139 copy];
    requiredShippingContactFields = v7->_requiredShippingContactFields;
    v7->_requiredShippingContactFields = v85;
  }

  v87 = [v43 PKArrayForKey:@"requiredBillingContactFields"];
  v88 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v89 = v87;
  v90 = [v89 countByEnumeratingWithState:&v144 objects:v177 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v145;
    do
    {
      for (kk = 0; kk != v91; ++kk)
      {
        if (*v145 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v144 + 1) + 8 * kk);
        if ([v77 containsObject:v94])
        {
          [v88 addObject:v94];
        }
      }

      v91 = [v89 countByEnumeratingWithState:&v144 objects:v177 count:16];
    }

    while (v91);
  }

  if ([v88 count])
  {
    v95 = [v88 copy];
    requiredBillingContactFields = v7->_requiredBillingContactFields;
    v7->_requiredBillingContactFields = v95;
  }

  v6 = v138;
  v97 = [v138 PKDictionaryForKey:@"shippingContact"];
  if (v97)
  {
    v98 = [[PKContact alloc] initWithDictionary:v97 error:0];
    shippingContact = v7->_shippingContact;
    v7->_shippingContact = v98;

    [(PKContact *)v7->_shippingContact sanitizePostalAddressCountry];
  }

  v100 = [v138 PKDictionaryForKey:@"billingContact"];
  if (v100)
  {
    v101 = [[PKContact alloc] initWithDictionary:v100 error:0];
    billingContact = v7->_billingContact;
    v7->_billingContact = v101;

    [(PKContact *)v7->_billingContact sanitizePostalAddressCountry];
  }

  v118 = v100;
  v119 = v97;
  v103 = [v138 PKStringForKey:@"APIType"];
  v104 = v103;
  if (v103)
  {
    v105 = v103;
    v106 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v107 = v105;
    v112 = _PKEnumValueFromString(v105, v106, @"PKPaymentRequestAPIType", @"PKPaymentRequestAPITypeInApp, PKPaymentRequestAPITypeWebJS, PKPaymentRequestAPITypeWebPaymentRequest, PKPaymentRequestAPITypeWinterpeg, PKPaymentRequestAPITypeAMPEnrollment", v108, v109, v110, v111, 0);

    v6 = v138;
    v7->_APIType = v112;
  }

  v113 = v104;
  v114 = [PKPaymentRequestValidator validatorWithObject:v7];
  v115 = [v114 isValidWithAPIType:v7->_APIType withError:v133];

  if ((v115 & 1) == 0)
  {

    v7 = 0;
  }

LABEL_110:
  v116 = v7;

  return v116;
}

+ (id)errorFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 objectForKeyedSubscript:@"message"];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v6 = [v3 objectForKey:@"code"];
  if ([v6 isEqualToString:@"shippingContactInvalid"])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToString:@"billingContactInvalid"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"shippingAddressUnserviceable"])
  {
    v7 = 3;
  }

  else
  {
    v7 = -1;
  }

  v8 = [v3 objectForKey:@"contactField"];
  if ([v8 isEqualToString:@"phoneNumber"])
  {
    v9 = 0;
    v10 = &PKContactFieldPhoneNumber;
LABEL_18:
    v11 = *v10;
    v12 = v11;
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"emailAddress"])
  {
    v9 = 0;
    v10 = &PKContactFieldEmailAddress;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"name"])
  {
    v9 = 0;
    v10 = &PKContactFieldName;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"phoneticName"])
  {
    v9 = 0;
    v10 = &PKContactFieldPhoneticName;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"postalAddress"])
  {
    v9 = 0;
    v10 = &PKContactFieldPostalAddress;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"addressLines"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC30];
  }

  else if ([v8 isEqualToString:@"locality"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC00];
  }

  else if ([v8 isEqualToString:@"subLocality"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC40];
  }

  else if ([v8 isEqualToString:@"postalCode"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC18];
  }

  else if ([v8 isEqualToString:@"administrativeArea"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC28];
  }

  else if ([v8 isEqualToString:@"subAdministrativeArea"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC38];
  }

  else if ([v8 isEqualToString:@"country"])
  {
    v12 = @"post";
    v16 = MEMORY[0x1E695CC08];
  }

  else
  {
    if (![v8 isEqualToString:@"countryCode"])
    {
      v9 = 0;
      v12 = 0;
      goto LABEL_22;
    }

    v12 = @"post";
    v16 = MEMORY[0x1E695CC10];
  }

  v11 = *v16;
  v9 = v11;
LABEL_19:
  v13 = v11;
  if (v12)
  {
    [v4 setObject:v12 forKey:@"PKPaymentErrorContactField"];
    if (v9)
    {
      [v4 setObject:v9 forKey:@"PKPaymentErrorPostalAddress"];
    }
  }

LABEL_22:
  v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPaymentErrorDomain" code:v7 userInfo:v4];

  return v14;
}

+ (NSError)paymentContactInvalidErrorWithContactField:(PKContactField)field localizedDescription:(NSString *)localizedDescription
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = localizedDescription;
  v7 = field;
  v8 = [v5 alloc];
  v13[0] = *MEMORY[0x1E696A578];
  v13[1] = @"PKPaymentErrorContactField";
  v9 = &stru_1F227FD28;
  if (v6)
  {
    v9 = v6;
  }

  v14[0] = v9;
  v14[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v8 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v10];

  return v11;
}

+ (NSError)paymentShippingAddressInvalidErrorWithKey:(NSString *)postalAddressKey localizedDescription:(NSString *)localizedDescription
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = localizedDescription;
  v7 = postalAddressKey;
  v8 = [v5 alloc];
  v9 = &stru_1F227FD28;
  v13[0] = *MEMORY[0x1E696A578];
  v13[1] = @"PKPaymentErrorContactField";
  if (v6)
  {
    v9 = v6;
  }

  v14[0] = v9;
  v14[1] = @"post";
  v13[2] = @"PKPaymentErrorPostalAddress";
  v14[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [v8 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v10];

  return v11;
}

+ (NSError)paymentBillingAddressInvalidErrorWithKey:(NSString *)postalAddressKey localizedDescription:(NSString *)localizedDescription
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = localizedDescription;
  v7 = postalAddressKey;
  v8 = [v5 alloc];
  v9 = &stru_1F227FD28;
  v13[0] = *MEMORY[0x1E696A578];
  v13[1] = @"PKPaymentErrorContactField";
  if (v6)
  {
    v9 = v6;
  }

  v14[0] = v9;
  v14[1] = @"post";
  v13[2] = @"PKPaymentErrorPostalAddress";
  v14[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [v8 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v10];

  return v11;
}

+ (NSError)paymentShippingAddressUnserviceableErrorWithLocalizedDescription:(NSString *)localizedDescription
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = localizedDescription;
  v5 = [v3 alloc];
  v6 = &stru_1F227FD28;
  v10[0] = *MEMORY[0x1E696A578];
  v10[1] = @"PKPaymentErrorContactField";
  if (v4)
  {
    v6 = v4;
  }

  v11[0] = v6;
  v11[1] = @"post";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [v5 initWithDomain:@"PKPaymentErrorDomain" code:3 userInfo:v7];

  return v8;
}

+ (NSError)paymentCouponCodeInvalidErrorWithLocalizedDescription:(NSString *)localizedDescription
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (localizedDescription)
  {
    v3 = localizedDescription;
  }

  else
  {
    v3 = &stru_1F227FD28;
  }

  v10 = *MEMORY[0x1E696A578];
  v11[0] = v3;
  v4 = MEMORY[0x1E695DF20];
  v5 = localizedDescription;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = objc_alloc(MEMORY[0x1E696ABC0]);

  v8 = [v7 initWithDomain:@"PKPaymentErrorDomain" code:4 userInfo:v6];

  return v8;
}

+ (NSError)paymentCouponCodeExpiredErrorWithLocalizedDescription:(NSString *)localizedDescription
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (localizedDescription)
  {
    v3 = localizedDescription;
  }

  else
  {
    v3 = &stru_1F227FD28;
  }

  v10 = *MEMORY[0x1E696A578];
  v11[0] = v3;
  v4 = MEMORY[0x1E695DF20];
  v5 = localizedDescription;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = objc_alloc(MEMORY[0x1E696ABC0]);

  v8 = [v7 initWithDomain:@"PKPaymentErrorDomain" code:5 userInfo:v6];

  return v8;
}

@end