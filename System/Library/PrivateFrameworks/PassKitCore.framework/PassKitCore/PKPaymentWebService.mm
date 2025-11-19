@interface PKPaymentWebService
+ (id)remoteDeviceWebService;
+ (id)sharedService;
- (BOOL)_hasConfiguration;
- (BOOL)_isSandboxAccount;
- (BOOL)_isValidResponse:(id)a3 error:(id)a4;
- (BOOL)_needsRegistrationForBrokerURL:(id)a3 shouldCheckSecureElementOwnership:(BOOL)a4;
- (BOOL)_supportsAccounts;
- (BOOL)canBypassTrustValidation;
- (BOOL)isChinaRegionIdentifier:(id)a3;
- (BOOL)needsConfigurationWithSupportedRegionTimeInterval:(double)a3 unsupportedRegionTimeInterval:(double)a4;
- (BOOL)registrationSetupSupportedInRegion;
- (NSArray)delegates;
- (NSURL)primaryBrokerURL;
- (PKPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 archiver:(id)a5 tapToRadarDelegate:(id)a6;
- (PKPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 tapToRadarDelegate:(id)a5;
- (PKPaymentWebServiceBackgroundDelegate)backgroundDelegate;
- (PKPaymentWebServiceContext)context;
- (id)_brokerUrlForRegion:(id)a3 regionOut:(id *)a4;
- (id)_downloadCacheLocation;
- (id)_downloadPassesWithURLs:(id)a3;
- (id)_errorWithResult:(unint64_t)a3 response:(id)a4 data:(id)a5;
- (id)_fakeVerificationMethodGroups;
- (id)_movePassToDownloadCache:(id)a3;
- (id)_passWithFileURL:(id)a3;
- (id)_paymentDevice;
- (id)_requestBuilderForRegion:(id)a3 regionOut:(id *)a4;
- (id)forbiddenErrorWithResponse:(id)a3;
- (id)removeRedundantMethodGroupsFromMethodGroups:(id)a3;
- (id)supportedRegionFeatureOfType:(int64_t)a3 didFailOSVersionRequirements:(BOOL *)a4;
- (id)verificationRecordForPass:(id)a3;
- (unint64_t)_augmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)_auxiliaryCapabilityRegisterResultForResponse:(id)a3 error:(id)a4 successHandler:(id)a5;
- (unint64_t)_downloadPassAtURL:(id)a3 completion:(id)a4;
- (unint64_t)_nonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)_passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 forDeviceIdentifier:(id)a5 completion:(id)a6;
- (unint64_t)_passActionGroupWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 forDeviceIdentifier:(id)a5 completion:(id)a6;
- (unint64_t)_passActionIncludingAppletDataWithRemoteContentPassAction:(id)a3 pass:(id)a4 completion:(id)a5;
- (unint64_t)_passActionWithRemoteContentPassAction:(id)a3 pass:(id)a4 completion:(id)a5;
- (unint64_t)_passActionWithRemoteContentPassAction:(id)a3 serviceProviderData:(id)a4 pass:(id)a5 completion:(id)a6;
- (unint64_t)_performAccountApplePayTrustProtocolRequest:(id)a3 originalRequest:(id)a4 taskID:(unint64_t)a5 completion:(id)a6;
- (unint64_t)_performAccountRequest:(id)a3 account:(id)a4 request:(id)a5 taskID:(unint64_t)a6 responseClass:(Class)a7 completion:(id)a8;
- (unint64_t)_performAccountRequest:(id)a3 account:(id)a4 responseClass:(Class)a5 completion:(id)a6;
- (unint64_t)_performAccountRequest:(id)a3 request:(id)a4 responseClass:(Class)a5 completion:(id)a6;
- (unint64_t)_performAccountRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5;
- (unint64_t)_performApplePayTrustRegistrationWithURL:(id)a3 pushToken:(id)a4 completion:(id)a5;
- (unint64_t)_performApplyRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5;
- (unint64_t)_performOptionalAccountApplePayTrustProtocolRequest:(id)a3 originalRequest:(id)a4 taskID:(unint64_t)a5 completion:(id)a6;
- (unint64_t)_performPaymentOfferRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5;
- (unint64_t)_performRewrapRequest:(id)a3 serviceURL:(id)a4 responseHandler:(id)a5 completion:(id)a6;
- (unint64_t)_resultForResponse:(id)a3 error:(id)a4 successHandler:(id)a5;
- (unint64_t)_updateContextWithRegistrationType:(int64_t)a3 response:(id)a4;
- (unint64_t)accountActionWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountBalanceHistoryWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountBankLookupWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountDeleteBeneficiaryWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountDocumentActionWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountPassDetailsRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountReportDeviceEventWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountSendReportWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountServiceCertificatesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountStatementsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountTaxFormsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountTermsDataWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountTermsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountTransactionAnswerWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountUpdateUserInfoWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountUsersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)accountsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)addFundingSourceWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)agreementURLForPass:(id)a3 agreement:(id)a4 completion:(id)a5;
- (unint64_t)applePayTrustSignatureRequestWithRequest:(id)a3 account:(id)a4 completion:(id)a5;
- (unint64_t)applicationsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)applyWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)augmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)augmentedProductWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)authenticationTokenWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)auxiliaryCapabilityKeyCreationMetadataWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)availableCommonProductsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)availableDevicesWithCompletion:(id)a3;
- (unint64_t)availableProductsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)browseableBankAppsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)cancelPaymentOfferWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)cancelPaymentWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)cardInfoForMerchantIdentifier:(id)a3 completion:(id)a4;
- (unint64_t)checkAuxiliaryCapabilityRegistrationStateWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)checkMerchantStatus:(id)a3 forDomain:(id)a4 withCompletion:(id)a5;
- (unint64_t)completeSession:(id)a3 wrappedPayment:(id)a4 pass:(id)a5 applicationData:(id)a6 completion:(id)a7;
- (unint64_t)completeSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)configurePaymentServiceWithCompletion:(id)a3;
- (unint64_t)confirmOffersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)contactInformationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)createVehicleKeyShareWithRequest:(id)a3 passTypeIdentifier:(id)a4 completion:(id)a5;
- (unint64_t)createVirtualCardWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)createWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)createdZoneWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)credentialAccountAttesationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)creditAccountUserInfoWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)creditRecoveryPaymentPlansWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)customizePhysicalCardWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)dailyCashEligibilityWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteAccountUserWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteAccountWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteApplicationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteForRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteFundingSourceWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deleteMerchantTokenWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)deprovisionForRequest:(id)a3 completion:(id)a4;
- (unint64_t)deviceCheckInDeviceCheckInForRegion:(id)a3 completion:(id)a4;
- (unint64_t)devicePassesSinceLastUpdatedTag:(BOOL)a3 withCompletion:(id)a4;
- (unint64_t)discoveryBundleForURL:(id)a3 completion:(id)a4;
- (unint64_t)discoveryManifestWithCompletion:(id)a3;
- (unint64_t)eligibilityForRequest:(id)a3 completion:(id)a4;
- (unint64_t)enhancedMerchantsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)exportTransactionDataWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)featureTermsDataWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)fetchBarcodesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)fundingSourcesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)generateTopUpTokenWithRequest:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (unint64_t)inAppPaymentNonceForPass:(id)a3 completion:(id)a4;
- (unint64_t)inAppPaymentNonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)initiateExternalProvisioningForRequest:(id)a3 completion:(id)a4;
- (unint64_t)issuerProvisioningCertificatesForRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)merchandisingWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)moreInfoItemAtURL:(id)a3 withMetadata:(id)a4 completion:(id)a5;
- (unint64_t)networkManifestWithCompletion:(id)a3;
- (unint64_t)notifyIssuerAppletStateDirtyWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)passActionGroupWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 completion:(id)a5;
- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 forDeviceIdentifier:(id)a4 passTypeIdentifier:(id)a5 passSerialNumber:(id)a6 completion:(id)a7;
- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 forPass:(id)a4 completion:(id)a5;
- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 serviceProviderData:(id)a4 pass:(id)a5 completion:(id)a6;
- (unint64_t)passAtURL:(id)a3 completion:(id)a4;
- (unint64_t)passAtURL:(id)a3 completionWithError:(id)a4;
- (unint64_t)passUpgradeWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)passWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5;
- (unint64_t)passesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentOfferCatalogWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentOffersDynamicContentWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentOffersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentProvisioningNonceOfType:(unint64_t)a3 completion:(id)a4;
- (unint64_t)paymentRewardsBalancesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentRewardsRedemptionsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)paymentSetupSupportedInRegion;
- (unint64_t)paymentsWithRequest:(id)a3 account:(id)a4 completion:(id)a5;
- (unint64_t)performAction:(id)a3 onServiceProviderPurchase:(id)a4 completion:(id)a5;
- (unint64_t)performApplePayTrustRegistrationWithCompletion:(id)a3;
- (unint64_t)performInstallmentAuthorizationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)performInstallmentBindWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)performNotificationActionRequest:(id)a3 completion:(id)a4;
- (unint64_t)performProductActionRequest:(id)a3 completion:(id)a4;
- (unint64_t)performServiceProviderPayment:(id)a3 completion:(id)a4;
- (unint64_t)physicalCardActionWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)physicalCardsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)prepareToProvisionForRequest:(id)a3 completion:(id)a4;
- (unint64_t)prepareTransactionDetailsForMerchantSession:(id)a3 secureElementIdentifier:(id)a4 amount:(id)a5 currencyCode:(id)a6 completion:(id)a7;
- (unint64_t)promotionsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)provideEncryptedPushProvisioningTargetWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)provisionPassesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)provisionPrecursorPassForRequest:(id)a3 completion:(id)a4;
- (unint64_t)provisioningMethodWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)pushProvisioningSharingIdentifiersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)pushProvisioningSharingStatusRequest:(id)a3 completion:(id)a4;
- (unint64_t)registerAuxiliaryCapabilityWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)registerCredentialWithRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)registerDeviceAtBrokerURL:(id)a3 withConsistencyCheckResults:(id)a4 retries:(unint64_t)a5 completion:(id)a6;
- (unint64_t)registerDeviceWithCompletion:(id)a3;
- (unint64_t)registerMerchantTokenPublicKeyWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)remotePaymentCredentialsForRequest:(id)a3 completion:(id)a4;
- (unint64_t)remotePaymentCredentialsUpdateForRequest:(id)a3 completion:(id)a4;
- (unint64_t)repopulateZonesWithCloudStoreZoneNames:(id)a3 completion:(id)a4;
- (unint64_t)requestPhysicalCardWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)requestVerificationCodeForPass:(id)a3 usingChannel:(id)a4 completion:(id)a5;
- (unint64_t)requirementsForRequest:(id)a3 completion:(id)a4;
- (unint64_t)resendVerificationRequest:(id)a3 completion:(id)a4;
- (unint64_t)resolveStorefrontCountryMismatchWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)retrieveMerchantTokensUnifiedListWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)retrieveMerchantTokensWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)revokeSharedCredentialWithRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)rewrapInAppPayment:(id)a3 merchantIdentifier:(id)a4 hostApplicationIdentifier:(id)a5 applicationData:(id)a6 pass:(id)a7 completion:(id)a8;
- (unint64_t)rewrapInAppPaymentWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)savingsAccountStatementsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)savingsAccountUserInfoWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)schedulePaymentWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)scheduleTransferWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)selectedOffersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)sendOwnershipTokensForReason:(unint64_t)a3 completion:(id)a4;
- (unint64_t)serviceProviderAugmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)serviceProviderNonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5;
- (unint64_t)serviceProviderPurchaseWithIdentifier:(id)a3 completion:(id)a4;
- (unint64_t)serviceProviderPurchasesWithRequest:(id)a3 inRegion:(id)a4 completion:(id)a5;
- (unint64_t)sharedAccountCloudStoreWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)shownTermsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)submitDocumentsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)submitTermsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)submitVerificationCode:(id)a3 verificationData:(id)a4 forPass:(id)a5 completion:(id)a6;
- (unint64_t)submitVerificationEntries:(id)a3 forPass:(id)a4 completion:(id)a5;
- (unint64_t)submitVerificationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)supportTopicsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)tapToProvisionConfigurationForRequest:(id)a3 completion:(id)a4;
- (unint64_t)termsDataWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)transactionReceiptAuthorizationWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)transactionReceiptWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)transferEligibilityWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)transfersWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)unregisterDeviceWithCompanionSerialNumber:(id)a3 completion:(id)a4;
- (unint64_t)updateAccountUserPreferencesWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)updateRegistrationDataAtBrokerURL:(id)a3 completion:(id)a4;
- (unint64_t)updateVerification:(id)a3 completion:(id)a4;
- (unint64_t)vehicleManufacturerWithRequest:(id)a3 withCompletion:(id)a4;
- (unint64_t)verificationChannelsForPass:(id)a3 completion:(id)a4;
- (unint64_t)verificationOptionsForRequest:(id)a3 completion:(id)a4;
- (unint64_t)virtualCardActionWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)virtualCardLegacyCredentialsWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)virtualCardListWithRequest:(id)a3 completion:(id)a4;
- (unint64_t)virtualCardPaymentSessionWithCompletion:(id)a3;
- (unint64_t)virtualCardSecurityCodeActivity:(id)a3 completion:(id)a4;
- (unint64_t)vpanNonceForPaymentPass:(id)a3 completion:(id)a4;
- (unint64_t)vpanPaymentCredentialsForPaymentPass:(id)a3 vpanIdentifier:(id)a4 nonce:(id)a5 encryptionFields:(id)a6 merchantHost:(id)a7 regenerate:(BOOL)a8 completion:(id)a9;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_applePayTrustPublicKeyHashWithCompletion:(id)a3;
- (void)_archiveBackgroundContext;
- (void)_archiveContext;
- (void)_auxiliaryRegistrationServiceURLForRequest:(id)a3 completion:(id)a4;
- (void)_backgroundDownloadCloudStoreAssetsForItem:(id)a3 cloudStoreCoordinatorDelegate:(id)a4;
- (void)_backgroundDownloadPassAtURL:(id)a3 fromPushTopic:(id)a4;
- (void)_canRegisterForPeerPaymentWithCompletion:(id)a3;
- (void)_cleanupPassDownloadCache;
- (void)_createApplePayTrustKeyWithCompletion:(id)a3;
- (void)_deviceProvisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletion:(id)a4;
- (void)_handleDeviceCheckInTask:(id)a3 downloadRecord:(id)a4 data:(id)a5;
- (void)_handlePassDownloadTask:(id)a3 data:(id)a4 fromPushTopic:(id)a5;
- (void)_handlePassListDownloadTask:(id)a3 data:(id)a4 fromPushTopic:(id)a5;
- (void)_handleRemoteAssetDownloadForManifestItem:(id)a3 taskPassURL:(id)a4 data:(id)a5 shouldWriteData:(BOOL)a6 error:(id *)a7;
- (void)_handleRemoteCloudStoreAssetForRecordName:(id)a3 taskRecord:(id)a4 data:(id)a5 shouldWriteData:(BOOL)a6 error:(id *)a7;
- (void)_handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:(id)a3 completionHandler:(id)a4;
- (void)_handleRetryAfterRegisterWithRequest:(id)a3 response:(id)a4 completionHandler:(id)a5;
- (void)_handleRetryAfterTSMSyncForPushTopic:(id)a3 withRequest:(id)a4 taskIdentifier:(unint64_t)a5 completionHandler:(id)a6;
- (void)_passOwnershipTokenForPaymentCredential:(id)a3 completion:(id)a4;
- (void)_passWithData:(id)a3 response:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_performVerificationRequest:(id)a3 selectedMethodGroup:(id)a4 selectedMethod:(id)a5 pass:(id)a6 taskID:(unint64_t)a7 completion:(id)a8;
- (void)_recentConfiguration:(id)a3;
- (void)_regionChanged;
- (void)_registerIfNeededWithResponse:(id)a3 task:(id)a4 isRedirect:(BOOL)a5 completion:(id)a6;
- (void)_renewAppleAccountWithCompletionHandler:(id)a3;
- (void)_resetSupportInRegionCache;
- (void)_secureRequestBuilderForRegion:(id)a3 fields:(unint64_t)a4 completion:(id)a5;
- (void)_shouldPerformApplePayTrustRegistrationWithCompletion:(id)a3;
- (void)_startBackgroundURLSessionWithIdentifier:(id)a3 context:(id)a4 backgroundDelegate:(id)a5 completion:(id)a6;
- (void)_storePassOwnershipToken:(id)a3 withIdentifier:(id)a4;
- (void)_updateSharedServiceWithContext:(id)a3;
- (void)addDelegate:(id)a3;
- (void)backgroundDownloadPassesForPushTopic:(id)a3 sinceLastUpdatedTag:(BOOL)a4;
- (void)backgroundDownloadPassesSinceLastUpdatedTag:(BOOL)a3;
- (void)backgroundDownloadRemotePassAssets:(id)a3 forSuffixesAndScreenScales:(id)a4 cloudStoreCoordinatorDelegate:(id)a5;
- (void)backgroundDownloadWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (void)backgroundPerformDeviceCheckInForRegion:(id)a3 identifier:(id)a4;
- (void)backgroundRegisterCredentialWithRequest:(id)a3;
- (void)dealloc;
- (void)getHasBackgroundDownloadTaskPassesForPushTopic:(id)a3 completion:(id)a4;
- (void)handleResponse:(id)a3 withError:(id)a4 data:(id)a5 task:(id)a6 completionHandler:(id)a7;
- (void)handleWillPerformHTTPRedirectionWithResponse:(id)a3 originalRequest:(id)a4 redirectHandler:(id)a5;
- (void)invalidateBackgroundSession;
- (void)processRetryRequest:(id)a3 responseData:(id)a4 orginalRequest:(id)a5 completion:(id)a6;
- (void)removeDelegate:(id)a3;
- (void)removeVerificationRequestRecord:(id)a3;
- (void)setContext:(id)a3;
- (void)setSharedService:(BOOL)a3;
- (void)sharedPaymentServiceChanged:(id)a3;
- (void)signNonce:(id)a3 withCompletion:(id)a4;
- (void)startBackgroundURLSessionWithIdentifier:(id)a3 context:(id)a4 backgroundDelegate:(id)a5 completion:(id)a6;
- (void)updateContextAndNotifyIfNeeded:(id)a3;
- (void)updateVerificationRecord:(id)a3;
@end

@implementation PKPaymentWebService

+ (id)sharedService
{
  v2 = qword_1EB5A03D0;
  if (!qword_1EB5A03D0)
  {
    os_unfair_lock_lock(&_MergedGlobals_35);
    if (!qword_1EB5A03D0)
    {
      v3 = +[PKPaymentService paymentService];
      v4 = [v3 sharedPaymentWebServiceContext];
      if (v4)
      {
        v5 = [PKPaymentWebService alloc];
        v6 = +[PKPaymentWebServiceTargetDevice localTargetDevice];
        v7 = +[PKSharedPaymentWebServiceArchiver sharedPaymentWebServiceArchiver];
        v8 = [(PKPaymentWebService *)v5 initWithContext:v4 targetDevice:v6 archiver:v7 tapToRadarDelegate:v3];
        v9 = qword_1EB5A03D0;
        qword_1EB5A03D0 = v8;

        [qword_1EB5A03D0 setSharedService:1];
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Error: Failed to get the shared payment web service context.", buf, 2u);
        }
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_35);
    v2 = qword_1EB5A03D0;
    if (!qword_1EB5A03D0)
    {
      v11 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Error: Failed to get the shared payment web service, therefore +[PKPaymentWebService sharedService] is not available. This is likely an entitlements issue or passd hasn't initialized yet.", v13, 2u);
      }

      v2 = qword_1EB5A03D0;
    }
  }

  return v2;
}

- (PKPaymentWebServiceContext)context
{
  os_unfair_lock_lock(&self->_contextLock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_contextLock);

  return v3;
}

- (unint64_t)paymentSetupSupportedInRegion
{
  os_unfair_lock_lock(&self->_lock);
  paymentSupportInRegion = self->_paymentSupportInRegion;
  if (!paymentSupportInRegion || !self->_sharedService)
  {
    paymentSupportInRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice paymentSupportedInCurrentRegionForWebService:self];
    self->_paymentSupportInRegion = paymentSupportInRegion;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (paymentSupportInRegion == 1)
  {
    v4 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    v5 = [(PKPaymentWebService *)self context];
    v6 = [v5 contextMeetsProvisioningEnablementPercentageThresholdForRegion:v4];

    if (v6)
    {
      paymentSupportInRegion = 1;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Payment setup is supported in region, however region has a provisioning enablement percentage specified and our current context does not meet it. Forcing paymentSetupSupportedInRegion to PKPaymentSupportInRegionNotSupported.", v9, 2u);
      }

      paymentSupportInRegion = 2;
    }
  }

  return paymentSupportInRegion;
}

- (BOOL)_isSandboxAccount
{
  v2 = [(PKPaymentWebService *)self _appleAccountInformation];
  v3 = [v2 isSandboxAccount];

  return v3;
}

- (unint64_t)registerAuxiliaryCapabilityWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];
  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    objc_initWeak(location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke;
    v14[3] = &unk_1E79C8FF8;
    objc_copyWeak(v18, location);
    v17 = v7;
    v15 = v6;
    v16 = v10;
    v18[1] = v8;
    [(PKPaymentWebService *)self _auxiliaryRegistrationServiceURLForRequest:v15 completion:v14];

    objc_destroyWeak(v18);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x1DuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Missing deviceID", location, 2u);
    }

    if (v7)
    {
      v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(v7 + 2))(v7, 0, 0, v12);
    }
  }

  return v8;
}

void __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = *(a1 + 48);
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = *(v14 + 16);
LABEL_8:
    v15();
    goto LABEL_9;
  }

  if (!v5)
  {
    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = *(v16 + 16);
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [WeakRetained _appleAccountInformation];
  v12 = [v9 _urlRequestWithServiceURL:v5 deviceIdentifier:v10 appleAccountInformation:v11];

  v13 = *(a1 + 64);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke_2;
  v17[3] = &unk_1E79C8FD0;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 48);
  [v8 performRequest:v12 taskIdentifier:v13 completionHandler:v17];

  objc_destroyWeak(&v19);
LABEL_9:
}

void __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke_13;
    v19 = &unk_1E79C8FA8;
    v21 = &v22;
    v11 = v7;
    v20 = v11;
    v12 = [WeakRetained _auxiliaryCapabilityRegisterResultForResponse:v8 error:v9 successHandler:&v16];
    v13 = v12;
    if (!v9 && v12 != 1)
    {
      v9 = [WeakRetained _errorWithResult:v12 data:{v11, v16, v17, v18, v19}];
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, v23[5], v9);
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, 0, 0);
    }
  }
}

BOOL __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke_13(uint64_t a1)
{
  v2 = [[PKAuxiliaryCapabilityRegisterResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)_auxiliaryCapabilityRegisterResultForResponse:(id)a3 error:(id)a4 successHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v8)
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 URL];
        v13 = [v12 absoluteString];
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error executing request: %@ error: %@", &v15, 0x16u);
      }
    }

    goto LABEL_8;
  }

  if (([v7 statusCode] - 200) > 0x63)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v9[2](v9);
LABEL_9:

  return v10;
}

- (unint64_t)checkAuxiliaryCapabilityRegistrationStateWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKWebService *)self nextTaskID];
    v9 = [(PKPaymentWebService *)self context];
    v10 = [v9 deviceID];
    if (v10)
    {
      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
      objc_initWeak(location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke;
      v14[3] = &unk_1E79C8FF8;
      objc_copyWeak(v18, location);
      v17 = v7;
      v15 = v6;
      v16 = v10;
      v18[1] = v8;
      [(PKPaymentWebService *)self _auxiliaryRegistrationServiceURLForRequest:v15 completion:v14];

      objc_destroyWeak(v18);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x1DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Missing deviceID", location, 2u);
      }

      v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(v7 + 2))(v7, 0, 0, v12);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = *(a1 + 48);
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = *(v14 + 16);
LABEL_8:
    v15();
    goto LABEL_9;
  }

  if (!v5)
  {
    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = *(v16 + 16);
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [WeakRetained _appleAccountInformation];
  v12 = [v9 _urlRequestWithServiceURL:v5 deviceIdentifier:v10 appleAccountInformation:v11];

  v13 = *(a1 + 64);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke_2;
  v17[3] = &unk_1E79C8FD0;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 48);
  [v8 performRequest:v12 taskIdentifier:v13 completionHandler:v17];

  objc_destroyWeak(&v19);
LABEL_9:
}

void __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__4;
    v19[4] = __Block_byref_object_dispose__4;
    v20 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke_3;
    v16 = &unk_1E79C8FA8;
    v18 = v19;
    v11 = v7;
    v17 = v11;
    v12 = [WeakRetained _resultForResponse:v8 error:v9 successHandler:&v13];
    if (!v9 && v12 != 1)
    {
      v9 = [WeakRetained _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
    }

    (*(*(a1 + 32) + 16))();

    _Block_object_dispose(v19, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

BOOL __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = [[PKAuxiliaryCapabilityRegistrationStateResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)auxiliaryCapabilityKeyCreationMetadataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKWebService *)self nextTaskID];
    v9 = [(PKPaymentWebService *)self context];
    v10 = [v9 deviceID];
    if (v10)
    {
      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
      objc_initWeak(location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke;
      v14[3] = &unk_1E79C8FF8;
      objc_copyWeak(v18, location);
      v17 = v7;
      v15 = v6;
      v16 = v10;
      v18[1] = v8;
      [(PKPaymentWebService *)self _auxiliaryRegistrationServiceURLForRequest:v15 completion:v14];

      objc_destroyWeak(v18);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x1DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Missing deviceID", location, 2u);
      }

      v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(v7 + 2))(v7, 0, v12);

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = *(a1 + 48);
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = *(v14 + 16);
LABEL_8:
    v15();
    goto LABEL_9;
  }

  if (!v5)
  {
    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_9;
    }

    v15 = *(v16 + 16);
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [WeakRetained _appleAccountInformation];
  v12 = [v9 _urlRequestWithServiceURL:v5 deviceIdentifier:v10 appleAccountInformation:v11];

  v13 = *(a1 + 64);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke_2;
  v17[3] = &unk_1E79C8FD0;
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 48);
  [v8 performRequest:v12 taskIdentifier:v13 completionHandler:v17];

  objc_destroyWeak(&v19);
LABEL_9:
}

void __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__4;
    v19[4] = __Block_byref_object_dispose__4;
    v20 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke_3;
    v16 = &unk_1E79C8FA8;
    v18 = v19;
    v11 = v7;
    v17 = v11;
    v12 = [WeakRetained _resultForResponse:v8 error:v9 successHandler:&v13];
    if (!v9 && v12 != 1)
    {
      v9 = [WeakRetained _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
    }

    (*(*(a1 + 32) + 16))();

    _Block_object_dispose(v19, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

BOOL __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke_3(uint64_t a1)
{
  v2 = [[PKAuxiliaryCapabilityKeyCreationMetadataResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)fetchBarcodesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];
  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    objc_initWeak(&location, self);
    v11 = [v6 pass];
    v12 = [v11 passTypeIdentifier];
    v13 = [v9 regionForIdentifier:v12];
    v14 = [v13 partnerServiceURL];

    v15 = [(PKPaymentWebService *)self _appleAccountInformation];
    v16 = [v6 _urlRequestWithServiceURL:v14 deviceIdentifier:v10 appleAccountInformation:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__PKPaymentWebService_PKAuxiliaryCapabilityWebService__fetchBarcodesWithRequest_completion___block_invoke;
    v19[3] = &unk_1E79C8FD0;
    objc_copyWeak(&v21, &location);
    v20 = v7;
    [(PKWebService *)self performRequest:v16 taskIdentifier:v8 completionHandler:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v17 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v17);
  }

  return v8;
}

void __92__PKPaymentWebService_PKAuxiliaryCapabilityWebService__fetchBarcodesWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __92__PKPaymentWebService_PKAuxiliaryCapabilityWebService__fetchBarcodesWithRequest_completion___block_invoke_2;
    v19 = &unk_1E79C8FA8;
    v21 = &v22;
    v11 = v7;
    v20 = v11;
    v12 = [WeakRetained _resultForResponse:v8 error:v9 successHandler:&v16];
    v13 = v12;
    if (!v9 && v12 != 1)
    {
      v9 = [WeakRetained _errorWithResult:v12 data:{v11, v16, v17, v18, v19}];
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, v23[5], v9);
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, 0, 0);
    }
  }
}

BOOL __92__PKPaymentWebService_PKAuxiliaryCapabilityWebService__fetchBarcodesWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[PKAuxiliaryCapabilityFetchBarcodeResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)_auxiliaryRegistrationServiceURLForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v6 pass];
  v10 = [v9 passTypeIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 primaryRegionIdentifier];
  }

  v13 = v12;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v14 = [v8 regionForIdentifier:v13];
  v28 = [v14 partnerServiceURL];

  v15 = v24[5];
  if (v15)
  {
    v7[2](v7, v15, 0);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0x1DuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Context missing partnerServiceURL, reregistering", buf, 2u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __110__PKPaymentWebService_PKAuxiliaryCapabilityWebService___auxiliaryRegistrationServiceURLForRequest_completion___block_invoke;
    v17[3] = &unk_1E79C9020;
    v21 = &v23;
    v18 = v8;
    v19 = v13;
    v20 = v7;
    [(PKPaymentWebService *)self registerDeviceWithCompletion:v17];
  }

  _Block_object_dispose(&v23, 8);
}

void __110__PKPaymentWebService_PKAuxiliaryCapabilityWebService___auxiliaryRegistrationServiceURLForRequest_completion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) regionForIdentifier:*(a1 + 40)];
  v4 = [v3 partnerServiceURL];
  v5 = v4;
  if (!v4)
  {
    v1 = [*(a1 + 32) primaryRegion];
    v5 = [v1 partnerServiceURL];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if (!v4)
  {
  }

  v7 = a1 + 48;
  v6 = *(a1 + 48);
  if (*(*(*(v7 + 8) + 8) + 40))
  {
    v8 = *(v6 + 16);

    v8(v6);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"partnerServiceURL was nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v10];
    (*(v6 + 16))(v6, 0, v11);
  }
}

- (unint64_t)_performPaymentOfferRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PKWebService *)self nextTaskID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentWebService_PaymentOffers___performPaymentOfferRequest_responseClass_completion___block_invoke;
  v13[3] = &unk_1E79C90C8;
  v14 = v8;
  v15 = a4;
  v13[4] = self;
  v11 = v8;
  [(PKWebService *)self performRequest:v9 taskIdentifier:v10 completionHandler:v13];

  return v10;
}

void __91__PKPaymentWebService_PaymentOffers___performPaymentOfferRequest_responseClass_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v10 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__PKPaymentWebService_PaymentOffers___performPaymentOfferRequest_responseClass_completion___block_invoke_13;
  v15[3] = &unk_1E79C90A0;
  v11 = *(a1 + 48);
  v17 = &v19;
  v18 = v11;
  v12 = v7;
  v16 = v12;
  v13 = [v10 _resultForResponse:v8 error:v9 successHandler:v15];
  if (!v9 && v13 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v13 data:v12];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v20[5], v9);
  }

  _Block_object_dispose(&v19, 8);
}

BOOL __91__PKPaymentWebService_PaymentOffers___performPaymentOfferRequest_responseClass_completion___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 48) responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)paymentOfferCatalogWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)paymentOffersDynamicContentWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)paymentOffersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)selectedOffersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)confirmOffersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)cancelPaymentOfferWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)paymentRewardsBalancesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)paymentRewardsRedemptionsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)merchandisingWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [v7 _urlRequest];

  v9 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v8 responseClass:objc_opt_class() completion:v6];
  return v9;
}

- (unint64_t)transferEligibilityWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)scheduleTransferWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKPaymentWebService_Savings__scheduleTransferWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v7;
  v10 = v6;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return v8;
}

void __71__PKPaymentWebService_Savings__scheduleTransferWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)transfersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountBalanceHistoryWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)dailyCashEligibilityWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)savingsAccountStatementsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountTaxFormsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)savingsAccountUserInfoWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountReportDeviceEventWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)discoveryManifestWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPaymentWebService *)self context];
  v7 = [v6 configuration];
  v8 = PKCurrentRegion();
  v9 = [v7 discoveryManifestURLForRegion:v8];

  if (v9)
  {
    v10 = objc_alloc_init(PKPaymentConfigurationRequest);
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
    v11 = [(PKPaymentConfigurationRequest *)v10 _requestWithServiceURL:v9];
    v12 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Fetching Discovery Manifest at URL: %@...", buf, 0xCu);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PKPaymentWebService_PKDiscoveryWebService__discoveryManifestWithCompletion___block_invoke;
    v15[3] = &unk_1E79CB9F0;
    v16 = v4;
    [(PKWebService *)self performRequest:v11 taskIdentifier:v5 completionHandler:v15];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Discovery Manifest URL is nil. Not updating.", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

  return v5;
}

void __78__PKPaymentWebService_PKDiscoveryWebService__discoveryManifestWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a2;
  v9 = [[PKDiscoveryManifestResponse alloc] initWithData:v8];

  if (a3)
  {
    v10 = [(PKDiscoveryManifestResponse *)v9 manifest];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 version];
      v13 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v12;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Discovery Manifest version is %ld", &v14, 0xCu);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)discoveryBundleForURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentConfigurationRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPaymentConfigurationRequest *)v9 _requestWithServiceURL:v7];

  [(PKWebService *)self performRequest:v10 taskIdentifier:v8 completionHandler:v6];
  return v8;
}

- (unint64_t)vpanNonceForPaymentPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKWebService *)self nextTaskID];
  if (v7)
  {
    if (v6)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Getting nonce for VPAN", buf, 2u);
        }

        v14 = [(PKPaymentWebService *)self context];
        v15 = [v14 primaryRegion];
        v16 = [v15 paymentServicesURL];

        v17 = [[PKPaymentCredentialNonceRequest alloc] initWithPaymentPass:v6 deviceIdentifier:v9];
        v18 = [(PKPaymentCredentialNonceRequest *)v17 _urlRequestWithServiceURL:v16 appleAccountInformation:v10];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __64__PKPaymentWebService_VPAN__vpanNonceForPaymentPass_completion___block_invoke;
        v21[3] = &unk_1E79CB9F0;
        v22 = v7;
        [(PKWebService *)self performRequest:v18 taskIdentifier:v11 completionHandler:v21];

        goto LABEL_16;
      }

      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Can't retrieve VPAN nonce without a deviceID", buf, 2u);
      }
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Can't retrieve VPAN nonce without a pass", buf, 2u);
      }
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v7 + 2))(v7, 0, v16);
    goto LABEL_16;
  }

  v16 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Can't retrieve VPAN nonce without a completion", buf, 2u);
  }

LABEL_16:

  return v11;
}

void __64__PKPaymentWebService_VPAN__vpanNonceForPaymentPass_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v10 = [[PKVPANNonceResponse alloc] initWithData:v7];

  v8 = *(a1 + 32);
  v9 = [(PKVPANNonceResponse *)v10 nonce];
  (*(v8 + 16))(v8, v9, v6);
}

- (unint64_t)vpanPaymentCredentialsForPaymentPass:(id)a3 vpanIdentifier:(id)a4 nonce:(id)a5 encryptionFields:(id)a6 merchantHost:(id)a7 regenerate:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v15 = a3;
  v43 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v42 = a9;
  v19 = [(PKPaymentWebService *)self context];
  v20 = [v19 deviceID];

  v41 = [(PKPaymentWebService *)self _appleAccountInformation];
  v21 = [(PKWebService *)self nextTaskID];
  v22 = v21;
  if (v20)
  {
    v38 = v21;
    v39 = v16;
    v40 = v17;
    v23 = [(PKPaymentWebService *)self context];
    v24 = [v23 primaryRegion];
    v25 = [v24 paymentServicesURL];

    if (v9)
    {
      v26 = objc_opt_class();

      v18 = 0;
    }

    else
    {
      v26 = objc_opt_class();
    }

    v37 = v18;
    v30 = v43;
    v32 = [[v26 alloc] initWithPaymentPass:v15 vpanIdentifier:v43 deviceIdentifier:v20 nonce:v39 encryptionFields:v40 merchantHost:v18];
    v33 = [(PKPaymentWebService *)self _paymentDevice];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke;
    v44[3] = &unk_1E79D6158;
    v45 = v32;
    v46 = v25;
    v31 = v41;
    v47 = v41;
    v48 = self;
    v22 = v38;
    v50 = v38;
    v29 = v42;
    v49 = v42;
    v34 = v25;
    v35 = v32;
    v16 = v39;
    v28 = v35;
    [v33 rewrapDataWithCompletionHandler:v44];

    v17 = v40;
    v18 = v37;
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Error: Trying to get VPAN credentials without a deviceID. Device registration is necessary.", buf, 2u);
    }

    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v29 = v42;
    (*(v42 + 2))(v42, 0, v28);
    v30 = v43;
    v31 = v41;
  }

  return v22;
}

void __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke_2;
  v9[3] = &unk_1E79D1DE0;
  v8 = a1[8];
  v7 = a1[9];
  v9[4] = v6;
  v11 = v7;
  v10 = v8;
  [v3 _urlRequestWithServiceURL:v4 rewrapData:a2 appleAccountInformation:v5 webService:v6 completion:v9];
}

void __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke_3;
  v5[3] = &unk_1E79CB9F0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 performRequest:a2 taskIdentifier:v3 completionHandler:v5];
}

void __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    if (v9 && v11 && !v8 && [v9 statusCode] == 200)
    {
      v10 = [[PKVPANPaymentCredentialResponse alloc] initWithData:v11];
      (*(*(a1 + 32) + 16))();

      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (unint64_t)virtualCardPaymentSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self context];
  v6 = [v5 deviceID];

  v7 = [(PKPaymentWebService *)self _appleAccountInformation];
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 primaryRegion];
  v11 = [v10 paymentServicesURL];

  if (v6)
  {
    v12 = [[PKVPANPaymentSessionRequest alloc] initWithDeviceIdentifier:v6];
    v13 = [(PKVPANPaymentSessionRequest *)v12 _urlRequestWithServiceURL:v11 appleAccountInformation:v7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__PKPaymentWebService_VPAN__virtualCardPaymentSessionWithCompletion___block_invoke;
    v16[3] = &unk_1E79CB9F0;
    v17 = v4;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error: Trying to start a VPAN session without a deviceID. Device registration is necessary.", buf, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v4 + 2))(v4, 0, v12);
  }

  return v8;
}

void __69__PKPaymentWebService_VPAN__virtualCardPaymentSessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v16 = 0;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v16];
    v11 = v16;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[PKPaymentMerchantSession alloc] initWithDictionary:v10];
        v13 = *(a1 + 32);
        if (v12)
        {
          (*(v13 + 16))(v13, v12, 0);
        }

        else
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2005 userInfo:0];
          (*(v13 + 16))(v13, 0, v15);
        }
      }

      else
      {
        v14 = *(a1 + 32);
        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-2005 userInfo:0];
        (*(v14 + 16))(v14, 0, v12);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (unint64_t)accountsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [v7 accountServicesURL];
  v9 = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [v7 _urlRequestWithServiceURL:v8 AppleAccountInformation:v9];

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentWebService_PKAccountWebService__accountsWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79DAA98;
  v16 = v6;
  v12 = v6;
  v13 = [(PKPaymentWebService *)self _performAccountRequest:v10 responseClass:v11 completion:v15];

  return v13;
}

uint64_t __75__PKPaymentWebService_PKAccountWebService__accountsWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)accountWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)deleteAccountWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountActionWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountTermsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountTermsDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountPassDetailsRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];
  v11 = [v7 _urlRequestWithAppleAccountInformation:v8 deviceIdentifier:v10];

  v12 = [(PKPaymentWebService *)self _performAccountRequest:v11 responseClass:objc_opt_class() completion:v6];
  return v12;
}

- (unint64_t)accountBankLookupWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountStatementsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountDocumentActionWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)schedulePaymentWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPaymentWebService_PKAccountWebService__schedulePaymentWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v7;
  v10 = v6;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return v8;
}

void __82__PKPaymentWebService_PKAccountWebService__schedulePaymentWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)paymentsWithRequest:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [v10 _urlRequestWithAppleAccountInformation:v11];

  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:v9 responseClass:objc_opt_class() completion:v8];
  return v13;
}

- (unint64_t)cancelPaymentWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)fundingSourcesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)addFundingSourceWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)deleteFundingSourceWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountServiceCertificatesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)customizePhysicalCardWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)requestPhysicalCardWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKPaymentWebService_PKAccountWebService__requestPhysicalCardWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v7;
  v10 = v6;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return v8;
}

void __86__PKPaymentWebService_PKAccountWebService__requestPhysicalCardWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performOptionalAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)physicalCardActionWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKPaymentWebService_PKAccountWebService__physicalCardActionWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v7;
  v10 = v6;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return v8;
}

void __85__PKPaymentWebService_PKAccountWebService__physicalCardActionWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performOptionalAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)physicalCardsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)creditAccountUserInfoWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountUpdateUserInfoWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountDeleteBeneficiaryWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)createVirtualCardWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)virtualCardActionWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)virtualCardListWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)virtualCardLegacyCredentialsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)virtualCardSecurityCodeActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountTransactionAnswerWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)applePayTrustSignatureRequestWithRequest:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [v10 _urlRequestWithAppleAccountInformation:v11];

  v13 = [v10 responseClass];
  v14 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:v9 responseClass:v13 completion:v8];

  return v14;
}

- (unint64_t)performInstallmentBindWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)performInstallmentAuthorizationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PKPaymentWebService_PKAccountWebService__performInstallmentAuthorizationWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v16 = v8;
  v9 = v7;
  v10 = v6;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return v8;
}

void __98__PKPaymentWebService_PKAccountWebService__performInstallmentAuthorizationWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)exportTransactionDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 request:v7 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountUsersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)deleteAccountUserWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)updateAccountUserPreferencesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)sharedAccountCloudStoreWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)createdZoneWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)promotionsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)enhancedMerchantsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)accountSendReportWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)supportTopicsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)creditRecoveryPaymentPlansWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)authenticationTokenWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (void)handleResponse:(id)a3 withError:(id)a4 data:(id)a5 task:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v34 = a5;
  objc_initWeak(location, a6);
  v14 = a7;
  WeakRetained = objc_loadWeakRetained(location);
  v16 = [WeakRetained currentRequest];

  v17 = [v12 statusCode];
  if (v17 != 301)
  {
    if (v17 == 412)
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Received Status Code 412.", buf, 2u);
      }

      v18 = [v12 pk_valueForHTTPHeaderField:@"X-Pod-Region"];
      v20 = [(PKPaymentWebService *)self context];
      v21 = [v20 regionForIdentifier:v18];
      v22 = v21;
      if (!v21 || ([v21 trustedServiceManagerPushTopic], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v24 = [v20 primaryRegion];
        v23 = [v24 trustedServiceManagerPushTopic];
      }

      v25 = [v16 mutableCopy];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke;
      v43[3] = &unk_1E79DB1F0;
      v43[4] = self;
      v26 = v23;
      v44 = v26;
      objc_copyWeak(&v46, location);
      v45 = v14;
      [(PKPaymentWebService *)self processRetryRequest:v25 responseData:v34 orginalRequest:v16 completion:v43];

      objc_destroyWeak(&v46);
    }

    else if (v17 == 452)
    {
      if (self->_handlingApplePayTrustReRegister)
      {
        v18 = objc_loadWeakRetained(location);
        v42.receiver = self;
        v42.super_class = PKPaymentWebService;
        [(PKWebService *)&v42 handleResponse:v12 withError:v13 data:v34 task:v18 completionHandler:v14];
      }

      else
      {
        self->_handlingApplePayTrustReRegister = 1;
        v31 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Received Status Code 452.", buf, 2u);
        }

        v32 = PKLogFacilityTypeGetObject(0x10uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Submitting Apple Pay Trust enrollment data because of HTTP 452.", buf, 2u);
        }

        v18 = objc_loadWeakRetained(location);
        v33 = [v18 originalRequest];
        [(PKPaymentWebService *)self _handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:v33 completionHandler:v14];
      }
    }

    else
    {
      v30 = objc_loadWeakRetained(location);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke_107;
      v35[3] = &unk_1E79DB218;
      v40 = v14;
      v36 = v12;
      v37 = v13;
      v38 = v34;
      objc_copyWeak(&v41, location);
      v39 = self;
      [(PKPaymentWebService *)self _registerIfNeededWithResponse:v36 task:v30 isRedirect:0 completion:v35];

      objc_destroyWeak(&v41);
      v18 = v40;
    }

LABEL_22:

    goto LABEL_23;
  }

  v27 = [v12 pk_valueForHTTPHeaderField:@"Location"];

  v28 = PKLogFacilityTypeGetObject(7uLL);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Server requested redirect which was handled early. Not Reregistering.", buf, 2u);
    }

    v18 = objc_loadWeakRetained(location);
    v47.receiver = self;
    v47.super_class = PKPaymentWebService;
    [(PKWebService *)&v47 handleResponse:v12 withError:v13 data:v34 task:v18 completionHandler:v14];
    goto LABEL_22;
  }

  if (v29)
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Received Status Code 301.", buf, 2u);
  }

  [(PKPaymentWebService *)self _handleRetryAfterRegisterWithRequest:v16 response:v12 completionHandler:v14];
LABEL_23:

  objc_destroyWeak(location);
}

void __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 _handleRetryAfterTSMSyncForPushTopic:v4 withRequest:v5 taskIdentifier:objc_msgSend(WeakRetained completionHandler:{"taskIdentifier"), *(a1 + 48)}];
}

void __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v10 = *(a1 + 64);
    v11.receiver = v8;
    v11.super_class = PKPaymentWebService;
    objc_msgSendSuper2(&v11, sel_handleResponse_withError_data_task_completionHandler_, v5, v6, v7, WeakRetained, v10);
  }
}

- (BOOL)canBypassTrustValidation
{
  v8.receiver = self;
  v8.super_class = PKPaymentWebService;
  if ([(PKWebService *)&v8 canBypassTrustValidation])
  {
    return 1;
  }

  v3 = [(PKPaymentWebService *)self context];
  v4 = [v3 devSigned];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Allowing bypass of extended trust validation by dev-signed SE", v7, 2u);
    }

    return 1;
  }

  return 0;
}

+ (id)remoteDeviceWebService
{
  v2 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
  if ([v2 _hasRemoteLibrary])
  {
    v3 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3[0]());
    v4 = [v3 watchPaymentWebService];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 tapToRadarDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v26.receiver = self;
  v26.super_class = PKPaymentWebService;
  v11 = [(PKWebService *)&v26 initWithTapToRadarDelegate:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    objc_storeStrong(&v12->_targetDevice, a4);
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_delegateLock._os_unfair_lock_opaque = 0;
    v12->_contextLock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passesByLocalURL = v12->_passesByLocalURL;
    v12->_passesByLocalURL = v13;

    v15 = dispatch_queue_create("background download session queue", 0);
    backgroundDownloadQueue = v12->_backgroundDownloadQueue;
    v12->_backgroundDownloadQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    backgroundSessionDelegateQueue = v12->_backgroundSessionDelegateQueue;
    v12->_backgroundSessionDelegateQueue = v17;

    [(NSOperationQueue *)v12->_backgroundSessionDelegateQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v12->_backgroundSessionDelegateQueue setUnderlyingQueue:v12->_backgroundDownloadQueue];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.passkit.paymentwebservice.background", v19);
    backgroundQueue = v12->_backgroundQueue;
    v12->_backgroundQueue = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeRegistrationTasks = v12->_activeRegistrationTasks;
    v12->_activeRegistrationTasks = v22;

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 addObserver:v12 selector:sel__regionChanged name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v12;
}

- (PKPaymentWebService)initWithContext:(id)a3 targetDevice:(id)a4 archiver:(id)a5 tapToRadarDelegate:(id)a6
{
  v11 = a5;
  v12 = [(PKPaymentWebService *)self initWithContext:a3 targetDevice:a4 tapToRadarDelegate:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_archiver, a5);
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (self->_sharedService)
  {
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 removeObserver:self name:@"PDSharedPaymentWebServiceDidChangeNotification" object:0];
  }

  v5.receiver = self;
  v5.super_class = PKPaymentWebService;
  [(PKPaymentWebService *)&v5 dealloc];
}

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_contextLock);
  context = self->_context;
  self->_context = v4;

  self->_paymentSupportInRegion = 0;
  self->_registrationSupportInRegion = 0;

  os_unfair_lock_unlock(&self->_contextLock);
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    os_unfair_lock_lock(&self->_delegateLock);
    delegates = self->_delegates;
    if (!delegates)
    {
      v6 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v7 = self->_delegates;
      self->_delegates = v6;

      delegates = self->_delegates;
    }

    [(NSHashTable *)delegates addObject:v8];
    os_unfair_lock_unlock(&self->_delegateLock);
    v4 = v8;
  }
}

- (void)removeDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates removeObject:v4];

    os_unfair_lock_unlock(&self->_delegateLock);
  }
}

- (void)setSharedService:(BOOL)a3
{
  self->_sharedService = a3;
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 addObserver:self selector:sel_sharedPaymentServiceChanged_ name:@"PDSharedPaymentWebServiceDidChangeNotification" object:0 suspensionBehavior:2];
}

- (void)sharedPaymentServiceChanged:(id)a3
{
  if (self->_sharedService)
  {
    v11 = v3;
    v12 = v4;
    v6 = +[PKPaymentService paymentService];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PKPaymentWebService_sharedPaymentServiceChanged___block_invoke;
    v8[3] = &unk_1E79DB240;
    v9 = v6;
    v10 = self;
    v7 = v6;
    [v7 sharedPaymentWebServiceContextWithCompletion:v8];
  }
}

- (void)updateContextAndNotifyIfNeeded:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (self->_sharedService)
    {
      [(PKPaymentWebService *)self _updateSharedServiceWithContext:v4];
    }

    else
    {
      [(PKPaymentWebService *)self setContext:v4];
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PKPaymentWebService updateContextAndNotifyIfNeeded:]";
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "%s called without a context. Ignoring.", &v6, 0xCu);
    }
  }
}

- (void)_updateSharedServiceWithContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sharedService = self->_sharedService;
  if (v4 && sharedService)
  {
    v6 = [(PKPaymentWebService *)self context];
    v7 = [v6 archivedDate];
    if (v7 && ([v4 archivedDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToDate:", v8), v8, v9))
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PKW3CDateStringFromDate(v7);
        v17 = 136315394;
        v18 = "[PKPaymentWebService _updateSharedServiceWithContext:]";
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "%s called, however the archivedDates matched with a value of %@. Ignoring.", &v17, 0x16u);
      }
    }

    else
    {
      [(PKPaymentWebService *)self setContext:v4];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 postNotificationName:@"PKSharedPaymentWebServiceDidChangeNotification" object:0];

      v14 = [v6 configuration];
      v15 = [v4 configuration];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"PKSharedPaymentWebServiceRegionConfigurationChangedNotification" object:0];
    }

    goto LABEL_14;
  }

  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"on non-shared service";
    if (sharedService)
    {
      v12 = @"without a context";
    }

    v17 = 136315394;
    v18 = "[PKPaymentWebService _updateSharedServiceWithContext:]";
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%s called %@. Ignoring.", &v17, 0x16u);
  }

LABEL_15:
}

- (void)_regionChanged
{
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Device region changed - removing region cache", v4, 2u);
  }

  [(PKPaymentWebService *)self _resetSupportInRegionCache];
}

- (void)_resetSupportInRegionCache
{
  os_unfair_lock_lock(&self->_lock);
  self->_paymentSupportInRegion = 0;
  self->_registrationSupportInRegion = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)registrationSetupSupportedInRegion
{
  os_unfair_lock_lock(&self->_lock);
  registrationSupportInRegion = self->_registrationSupportInRegion;
  if (!registrationSupportInRegion || !self->_sharedService)
  {
    registrationSupportInRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice registrationSupportedInCurrentRegionForWebService:self];
    self->_registrationSupportInRegion = registrationSupportInRegion;
  }

  os_unfair_lock_unlock(&self->_lock);
  return registrationSupportInRegion == 1;
}

- (BOOL)_needsRegistrationForBrokerURL:(id)a3 shouldCheckSecureElementOwnership:(BOOL)a4
{
  v4 = a4;
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentWebService *)self context];
  v8 = [v7 registrationType];
  if (v8 == 3)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "PKPaymentWebService: needs registration - registration type unknown.";
      goto LABEL_7;
    }

LABEL_8:
    v12 = 1;
    goto LABEL_42;
  }

  v9 = v8;
  if (!v8)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "PKPaymentWebService: needs registration - never registered.";
LABEL_7:
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v51 = v4;
  v50 = self;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v10 addObject:@"Has Previously Registered: YES"];
  v52 = v7;
  if (v6)
  {
    v13 = [v7 regions];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v49 = v9;
      v16 = 0;
      v17 = *v54;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [v13 objectForKeyedSubscript:*(*(&v53 + 1) + 8 * i)];
          v20 = [v19 brokerURL];
          if (v20)
          {
            v21 = v20;
            v22 = [v6 isEqual:v20];

            if (v22)
            {
              v23 = [v19 certificates];
              v24 = [v23 count] != 0;

              v16 |= v24;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v15);
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = @"NO";
      if (v16)
      {
        v26 = @"YES";
      }

      v27 = v16 ^ 1;
      v9 = v49;
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v26 = @"NO";
      v27 = 1;
    }

    v34 = [v25 initWithFormat:@"Has Certificates: %@", v26];
    [v10 addObject:v34];
  }

  else
  {
    v28 = [v7 primaryRegion];
    v29 = [v28 certificates];
    v30 = [v29 count];

    v31 = objc_alloc(MEMORY[0x1E696AEC0]);
    v27 = v30 == 0;
    v32 = @"YES";
    if (v27)
    {
      v32 = @"NO";
    }

    v33 = [v31 initWithFormat:@"Has Certificates: %@", v32];
    [v10 addObject:v33];
  }

  if (v51)
  {
    v35 = [(PKPaymentWebService *)v50 targetDevice];
    v36 = [v35 secureElementOwnershipStateForCurrentUser];

    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v38 = @"YES";
    if ((v36 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v38 = @"NO";
    }

    v39 = [v37 initWithFormat:@"User Owns Secure Element: %@", v38];
    [v10 addObject:v39];

    v27 |= (v36 & 0xFFFFFFFFFFFFFFFELL) != 2;
  }

  else
  {
    [v10 addObject:@"Secure Element Ownership Check Skipped"];
  }

  if (PKCurrentPassbookState() < 2)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  v41 = objc_alloc(MEMORY[0x1E696AEC0]);
  v42 = PKPaymentWebServiceRegistrationTypeToString(v9);
  v43 = PKPaymentWebServiceRegistrationTypeToString(v40);
  v44 = [v41 initWithFormat:@"Registration Type: %@ -> %@", v42, v43];
  [v10 addObject:v44];

  v12 = (v9 != v40) | v27;
  v45 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v46 = @"YES";
    }

    else
    {
      v46 = @"NO";
    }

    v47 = [v10 componentsJoinedByString:@", "];
    *buf = 138543618;
    v58 = v46;
    v59 = 2114;
    v60 = v47;
    _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Needs Registration: %{public}@ (%{public}@)", buf, 0x16u);
  }

  v7 = v52;
LABEL_42:

  return v12 & 1;
}

- (BOOL)needsConfigurationWithSupportedRegionTimeInterval:(double)a3 unsupportedRegionTimeInterval:(double)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = [(PKPaymentWebService *)self context];
  v8 = [v7 configurationDate];
  if (v8)
  {
    v9 = [v7 configuration];
    if (!v9)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Configuration parameters not set - Configuration needs update", &v26, 2u);
      }

      LOBYTE(v18) = 1;
      goto LABEL_34;
    }

    v10 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    v11 = [v9 heroImageManifestURLForRegion:v10];
    if (v11)
    {
      v12 = v11;
      v13 = [PKPaymentHeroImageManifest manifestFileExistsForRegion:v10];

      if (!v13)
      {
        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          v17 = "Hero image manifest file does not exist - Configuration needs update";
          goto LABEL_21;
        }

LABEL_22:
        LOBYTE(v18) = 1;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

    v14 = [v9 configurationURL];
    v15 = PKStockholmForceConfigUpdate(v14, [v7 devSigned], -[PKPaymentWebService _isSandboxAccount](self, "_isSandboxAccount"));

    if (v15)
    {
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v17 = "Forcing config update - Configuration needs update";
LABEL_21:
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, v17, &v26, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v16 = [MEMORY[0x1E695DF00] date];
    v19 = [(PKPaymentWebService *)self paymentSetupSupportedInRegion];
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = [v8 dateByAddingTimeInterval:a3];
        v21 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412546;
          v27 = v20;
          v28 = 2050;
          v29 = a3;
          v22 = "Region supported, next date for region configuration check: %@ used refresh interval: %{public}lu";
          goto LABEL_25;
        }

LABEL_26:

        [v16 timeIntervalSinceDate:v20];
        v18 = v23 > 0.0;

LABEL_28:
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v24 = @"NO";
          if (v18)
          {
            v24 = @"YES";
          }

          v26 = 138543362;
          v27 = v24;
          _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Needs updating? %{public}@", &v26, 0xCu);
        }

        goto LABEL_33;
      }

      if (v19 != 2)
      {
        v21 = PKLogFacilityTypeGetObject(7uLL);
        v18 = 0;
        goto LABEL_28;
      }
    }

    v20 = [v8 dateByAddingTimeInterval:a4];
    v21 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v20;
      v28 = 2050;
      v29 = a4;
      v22 = "Region unsupported, next date for region configuration check: %@ used refresh value in the configuration: %{public}lu";
LABEL_25:
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, v22, &v26, 0x16u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Web service never configured - Configuration needs update", &v26, 2u);
  }

  LOBYTE(v18) = 1;
LABEL_35:

  return v18;
}

- (id)supportedRegionFeatureOfType:(int64_t)a3 didFailOSVersionRequirements:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(PKPaymentWebService *)self context];
  v8 = [v7 configuration];

  if (v8)
  {
    v9 = [(PKPaymentWebService *)self targetDevice];
    v10 = [v9 deviceRegion];
    v11 = [v9 deviceClass];
    v12 = [v9 deviceVersion];
    v13 = [v8 supportedFeatureOfType:a3 inRegion:v10 osVersion:v12 deviceClass:v11 didFailOSVersionRequirements:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSURL)primaryBrokerURL
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentWebService *)self context];
  v4 = PKStockholmBrokerURL();
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Overriding broker url %@", &v12, 0xCu);
    }

    v6 = v4;
    goto LABEL_5;
  }

  v8 = [v3 primaryRegion];
  v7 = [v8 brokerURL];

  if (!v7)
  {
    v9 = [v3 configuration];
    v10 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    v7 = [v9 brokerURLForRegion:v10];

    if (!v7)
    {
      v6 = PKLocalBrokerURL([v3 devSigned]);
LABEL_5:
      v7 = v6;
    }
  }

  return v7;
}

- (id)_brokerUrlForRegion:(id)a3 regionOut:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKPaymentWebService *)self context];
  v8 = v7;
  if (!v6)
  {
LABEL_7:
    v9 = [v8 primaryRegion];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    goto LABEL_8;
  }

  v9 = [v7 regionForIdentifier:v6];
  v10 = [v9 brokerURL];
  v11 = v10;
  if (!v9 || !v10)
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: region identifier %@ provided but not registered for region.", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    objc_storeStrong(a4, v9);
  }

  return v11;
}

- (id)_requestBuilderForRegion:(id)a3 regionOut:(id *)a4
{
  v6 = a3;
  v7 = [(PKPaymentWebService *)self context];
  v8 = [v7 deviceID];
  if (v8)
  {
    v9 = v8;
    goto LABEL_7;
  }

  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find deviceID when creating builder, falling back to SEID", buf, 2u);
  }

  v10 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
  v11 = [v10 firstObject];

  if (v11)
  {
    v9 = v11;
LABEL_7:
    v12 = [(PKPaymentWebService *)self _brokerUrlForRegion:v6 regionOut:a4];
    if (v12)
    {
      v13 = [(PKPaymentWebService *)self _appleAccountInformation];
      if (v13)
      {
        v14 = v13;
        v15 = [[PKPaymentWebServiceRequestBuilder alloc] initWithBrokerURL:v12 deviceID:v9 appleAccountInformation:v13];
LABEL_16:

        goto LABEL_17;
      }

      v16 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find account info when creating builder", v18, 2u);
      }

      v14 = 0;
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find broker url when creating builder", v19, 2u);
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: Failed find fall back deviceID", v20, 2u);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)_secureRequestBuilderForRegion:(id)a3 fields:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v32 = 0;
  v10 = [(PKPaymentWebService *)self _requestBuilderForRegion:v8 regionOut:&v32];
  if (!v10)
  {
LABEL_8:
    v9[2](v9, 0);
    goto LABEL_13;
  }

  if (!v32)
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find region when creating secure builder", buf, 2u);
    }

    goto LABEL_8;
  }

  v11 = [v32 certificates];
  if (v11)
  {
    v12 = [(PKPaymentWebService *)self context];
    v13 = [v12 devSigned];
    v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__54;
    v30 = __Block_byref_object_dispose__54;
    v31 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke;
    v25[3] = &unk_1E79DB290;
    v25[5] = buf;
    v25[6] = a4;
    v25[4] = self;
    [(PKAsyncUnaryOperationComposer *)v14 addOperation:v25];
    v15 = [MEMORY[0x1E695DFB0] null];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke_3;
    v19[3] = &unk_1E79DB2B8;
    v20 = v10;
    v24 = v13;
    v21 = v11;
    v23 = buf;
    v22 = v9;
    v16 = [(PKAsyncUnaryOperationComposer *)v14 evaluateWithInput:v15 completion:v19];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find certificates when creating secure builder", buf, 2u);
    }

    v9[2](v9, 0);
  }

LABEL_13:
}

void __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = a1[6];
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke_2;
    v11[3] = &unk_1E79DB268;
    v10 = a1[4];
    v14 = a1[5];
    v13 = v7;
    v12 = v6;
    [v10 _deviceDataIncludingMetadataFields:v9 withCompletionHandler:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke_3(uint64_t a1)
{
  v2 = [[PKPaymentWebServiceSecureRequestBuilder alloc] initWithRequestBuilder:*(a1 + 32) devSigned:*(a1 + 64) certificates:*(a1 + 40) deviceData:*(*(*(a1 + 56) + 8) + 40)];
  (*(*(a1 + 48) + 16))();
}

- (BOOL)_supportsAccounts
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  targetDevice = self->_targetDevice;

  return [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebServiceSupportsAccounts:self];
}

- (void)_canRegisterForPeerPaymentWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(PKPaymentWebService *)self _canRegisterForPeerPayment])
    {
      v4[2](v4, 1);
    }

    else if ([(PKPaymentWebService *)self needsRegistration])
    {
      v4[2](v4, 0);
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __64__PKPaymentWebService__canRegisterForPeerPaymentWithCompletion___block_invoke;
      v5[3] = &unk_1E79DB2E0;
      v5[4] = self;
      v6 = v4;
      [(PKPaymentWebService *)self _recentConfiguration:v5];
    }
  }
}

void __64__PKPaymentWebService__canRegisterForPeerPaymentWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) targetDevice];
    v7 = [v6 deviceRegion];

    v34 = v5;
    v31 = [v5 peerPaymentEnabledForRegion:v7];
    v32 = a1;
    [*(a1 + 32) context];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = v40 = 0u;
    v8 = [v33 regions];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v37 + 1) + 8 * i) regionCode];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 uppercaseString];
            v18 = [v7 uppercaseString];
            v19 = [v17 isEqualToString:v18];

            v12 |= v19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    if (!v31)
    {
      v25 = PKLogFacilityTypeGetObject(0xCuLL);
      v20 = v33;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = @"NO";
        if (v12)
        {
          v26 = @"YES";
        }

        *buf = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = @"YES";
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Skipping registration update. hasMatchingRegisteredRegion: %{public}@ hasMissingRegisteredRegionCode: %{public}@", buf, 0x16u);
      }

      (*(*(v32 + 40) + 16))();
      v5 = v34;
      goto LABEL_30;
    }

    v20 = v33;
    v21 = [v33 registrationDate];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
      v23 = [(__CFString *)v21 compare:v22];

      v5 = v34;
      if (v23 != -1)
      {
        v24 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v21;
          _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Skipping registration update as data is not stale. Date: %{public}@", buf, 0xCu);
        }

        (*(*(v32 + 40) + 16))(*(v32 + 40), [*(v32 + 32) _canRegisterForPeerPayment]);
        goto LABEL_29;
      }
    }

    else
    {
      v27 = PKLogFacilityTypeGetObject(0xCuLL);
      v5 = v34;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "No previous registration date. Performing update", buf, 2u);
      }
    }

    v28 = *(v32 + 32);
    v29 = [v28 primaryBrokerURL];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __64__PKPaymentWebService__canRegisterForPeerPaymentWithCompletion___block_invoke_175;
    v35[3] = &unk_1E79D1690;
    v30 = *(v32 + 40);
    v35[4] = *(v32 + 32);
    v36 = v30;
    [v28 updateRegistrationDataAtBrokerURL:v29 completion:v35];

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  (*(*(a1 + 40) + 16))();
LABEL_31:
}

uint64_t __64__PKPaymentWebService__canRegisterForPeerPaymentWithCompletion___block_invoke_175(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _canRegisterForPeerPayment];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)_recentConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(PKPaymentWebService *)self needsConfiguration])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__PKPaymentWebService__recentConfiguration___block_invoke;
      v7[3] = &unk_1E79D1690;
      v7[4] = self;
      v8 = v4;
      [(PKPaymentWebService *)self configurePaymentServiceWithCompletion:v7];
    }

    else
    {
      v5 = [(PKPaymentWebService *)self context];
      v6 = [v5 configuration];
      (*(v4 + 2))(v4, 1, v6);
    }
  }
}

void __44__PKPaymentWebService__recentConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 1 && a3 == 0;
  v5 = *(a1 + 40);
  v7 = [*(a1 + 32) context];
  v6 = [v7 configuration];
  (*(v5 + 16))(v5, v4, v6);
}

- (void)startBackgroundURLSessionWithIdentifier:(id)a3 context:(id)a4 backgroundDelegate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke;
  block[3] = &unk_1E79C4F68;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(backgroundDownloadQueue, block);
}

void __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15])
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [v2 _hasConfiguration];
    v6 = *(a1 + 32);
    if (v5)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke_2;
      v18[3] = &unk_1E79DB308;
      v18[4] = v6;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      *&v12 = v7;
      *(&v12 + 1) = v8;
      v19 = v12;
      v20 = v11;
      [v6 _deviceConfigurationDataWithCompletion:v18];
    }

    else
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 32);

      [v17 _startBackgroundURLSessionWithIdentifier:v13 context:v14 backgroundDelegate:v15 completion:v16];
    }
  }
}

void __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = a1[8];
    if (v15)
    {
      v15[2]();
    }
  }

  else
  {
    v8 = [a1[4] context];
    [v8 setDevSigned:{objc_msgSend(v5, "devSigned")}];

    v16 = *(a1 + 2);
    v9 = *(v16 + 176);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke_3;
    v17[3] = &unk_1E79C4F68;
    v10 = *(&v16 + 1);
    v11 = a1[6];
    v12 = a1[7];
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v18 = v16;
    v19 = v13;
    v20 = a1[8];
    v14 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v22 = v14;
    dispatch_async(v9, block);
  }
}

- (void)invalidateBackgroundSession
{
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKPaymentWebService_invalidateBackgroundSession__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_sync(backgroundDownloadQueue, block);
}

- (NSArray)delegates
{
  os_unfair_lock_lock(&self->_delegateLock);
  v3 = [(NSHashTable *)self->_delegates allObjects];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_delegateLock);

  return v4;
}

- (id)forbiddenErrorWithResponse:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PKPaymentWebService;
  v5 = [(PKWebService *)&v32 forbiddenErrorWithResponse:v4];
  v6 = [v4 errorCode];
  v7 = [v6 integerValue];

  v8 = 0;
  if (v7 <= 40402)
  {
    if (v7 <= 40105)
    {
      if (v7 <= 40013)
      {
        if (v7 == 40001)
        {
          v9 = PKLocalizedPaymentString(&cfstr_InvalidPanTitl.isa, 0);
          v8 = PKLocalizedPaymentString(&cfstr_InvalidPanMess.isa, 0);
        }

        else
        {
          v9 = 0;
          if (v7 != 40013)
          {
            goto LABEL_62;
          }

          v9 = PKLocalizedPaymentString(&cfstr_InvalidExpirat.isa, 0);
          v8 = PKLocalizedPaymentString(&cfstr_InvalidExpirat_0.isa, 0);
        }
      }

      else if (v7 == 40014)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidNameTit.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidNameMes.isa, 0);
      }

      else if (v7 == 40016)
      {
        v9 = PKLocalizedPaymentString(&cfstr_SecureElementL.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_SecureElementL_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (v7 != 40102)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_ProvisioningCo_0.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_ProvisioningCo_2.isa, 0);
      }

      goto LABEL_58;
    }

    if (v7 > 40115)
    {
      if (v7 != 40116)
      {
        if (v7 == 40301)
        {
          v9 = PKLocalizedPaymentString(&cfstr_IneligibleAcco.isa, 0);
          goto LABEL_56;
        }

        v9 = 0;
        if (v7 != 40307)
        {
          goto LABEL_62;
        }

        goto LABEL_42;
      }

      v9 = PKLocalizedPaymentString(&cfstr_VelocityErrorT.isa, 0);
      v10 = @"VELOCITY_ERROR_MESSAGE";
    }

    else
    {
      if (v7 == 40106)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidCscTitl.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidCscMess.isa, 0);
        goto LABEL_58;
      }

      if (v7 == 40107)
      {
        v9 = PKLocalizedPaymentString(&cfstr_ReaderModeErro.isa, 0);
        v10 = @"READER_MODE_ERROR_INCORRECT_CARD_DETAILS_MESSAGE";
      }

      else
      {
        v9 = 0;
        if (v7 != 40110)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_ReaderModeAcco.isa, 0);
        v10 = @"READER_MODE_ACCOUNT_NAME_MISMATCH_MESSAGE";
      }
    }

LABEL_60:
    v11 = PKLocalizedPaymentString(&v10->isa, 0);
LABEL_61:
    v8 = v11;
    goto LABEL_62;
  }

  if (v7 <= 40500)
  {
    if (v7 <= 40453)
    {
      if (v7 == 40403)
      {
        v9 = PKLocalizedPaymentString(&cfstr_ProvisioningRe.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_ProvisioningRe_0.isa, 0);
      }

      else if (v7 == 40421)
      {
        v9 = PKLocalizedPaymentString(&cfstr_VerificationPe.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_VerificationPe_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (v7 != 40423)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_VerificationRe_0.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_VerificationRe_1.isa, 0);
      }

      goto LABEL_58;
    }

    if (v7 != 40454)
    {
      if (v7 == 40456)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidVerific.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidVerific_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (v7 != 40457)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_ExpiredVerific.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_ExpiredVerific_0.isa, 0);
      }

      goto LABEL_58;
    }

    v9 = PKLocalizedPaymentString(&cfstr_VerificationAt.isa, 0);
LABEL_56:
    AnalyticsSendEvent();
    v8 = 0;
    goto LABEL_62;
  }

  if (v7 <= 60010)
  {
    if (v7 != 40501)
    {
      if (v7 != 60009)
      {
        v9 = 0;
        if (v7 != 60010)
        {
          goto LABEL_62;
        }

        AnalyticsSendEvent();
        v9 = PKLocalizedPaymentString(&cfstr_ProvisioningEr.isa, 0);
        v10 = @"PROVISIONING_ERROR_PIN_INCORRECT_MESSAGE";
        goto LABEL_60;
      }

LABEL_42:
      AnalyticsSendEvent();
      v8 = 0;
      v9 = 0;
      goto LABEL_62;
    }

    v9 = PKLocalizedPaymentString(&cfstr_HsaRequiredTit.isa, 0);
    v8 = PKLocalizedPaymentString(&cfstr_HsaRequiredMes.isa, 0);
LABEL_58:
    AnalyticsSendEvent();
    goto LABEL_62;
  }

  if (v7 == 60011)
  {
    AnalyticsSendEvent();
    v9 = PKLocalizedPaymentString(&cfstr_ProvisioningEr.isa, 0);
    v10 = @"PROVISIONING_ERROR_PIN_INCORRECT_LOCKOUT_MESSAGE";
    goto LABEL_60;
  }

  if (v7 != 60057)
  {
    v9 = 0;
    if (v7 != 60104)
    {
      goto LABEL_62;
    }

    v9 = PKLocalizedString(&cfstr_PassErrorManag.isa, 0);
    v11 = PKLocalizedString(&cfstr_PassErrorManag_0.isa, 0);
    goto LABEL_61;
  }

  v9 = PKLocalizedPaymentString(&cfstr_OsVersionUpdat.isa, 0);
  v12 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceClass];
  v13 = v12;
  if (v12 == @"iPhone")
  {
    goto LABEL_47;
  }

  if (!v12)
  {
LABEL_75:
    v8 = 0;
    goto LABEL_76;
  }

  v14 = [(__CFString *)v12 isEqualToString:@"iPhone"];

  if ((v14 & 1) == 0)
  {
    v26 = v13;
    if (v26 == @"iPad" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"iPad"], v27, (v28 & 1) != 0))
    {
      v15 = @"OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE_IPAD";
      goto LABEL_48;
    }

    v29 = v27;
    if (v29 == @"Watch" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"Watch"], v30, v31))
    {
      v15 = @"OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE_WATCH";
      goto LABEL_48;
    }

    goto LABEL_75;
  }

LABEL_47:
  v15 = @"OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE_IPHONE";
LABEL_48:
  v8 = PKLocalizedString(&v15->isa, 0);
LABEL_76:

LABEL_62:
  v16 = [v4 localizedTitle];
  if (v16)
  {
  }

  else
  {
    v17 = [v4 localizedDescription];

    if (!v17)
    {
      goto LABEL_66;
    }
  }

  v18 = [v4 localizedTitle];

  v19 = [v4 localizedDescription];

  v8 = v19;
  v9 = v18;
LABEL_66:
  v20 = [MEMORY[0x1E695DF90] dictionary];
  [v20 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v20 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A598]];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v9, v8];
  [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [v20 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v22 = MEMORY[0x1E696ABC0];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v20];
  v24 = [v22 errorWithDomain:@"PKPaymentWebServiceErrorDomain" code:v7 userInfo:v23];

  return v24;
}

- (void)signNonce:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = MEMORY[0x1E695DF88];
    v8 = a3;
    v9 = objc_alloc_init(v7);
    [v9 appendData:v8];

    v10 = [(PKPaymentWebService *)self _appleAccountInformation];
    v11 = [v10 primaryAppleAccountHash];
    [v9 appendData:v11];

    targetDevice = self->_targetDevice;
    v13 = [v9 SHA256Hash];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PKPaymentWebService_signNonce_withCompletion___block_invoke;
    v14[3] = &unk_1E79DB330;
    v15 = v6;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self signData:v13 signatureEntanglementMode:0 withCompletionHandler:v14];
  }
}

- (void)_renewAppleAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  targetDevice = self->_targetDevice;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentWebService__renewAppleAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice renewAppleAccountWithCompletionHandler:v7];
}

void __63__PKPaymentWebService__renewAppleAccountWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = PKWebServiceAccountCredentialRenewalSucceededNotification;
  if (a2)
  {
    v5 = &PKWebServiceAccountCredentialRenewalFailedNotification;
  }

  v6 = MEMORY[0x1E696AD88];
  v7 = *v5;
  v8 = [v6 defaultCenter];
  [v8 postNotificationName:v7 object:*(a1 + 32)];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v10);
  }
}

- (void)processRetryRequest:(id)a3 responseData:(id)a4 orginalRequest:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E695AC60] propertyForKey:@"overlayRequest" inRequest:a5];
  v14 = MEMORY[0x1E696ACD0];
  v15 = objc_opt_class();
  v16 = [v13 data];
  v17 = [v14 unarchivedObjectOfClass:v15 fromData:v16 error:0];

  if (v17 && [v17 requiresConfigurationForRetry])
  {
    if (v10 && v11)
    {
      v29 = 0;
      v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v29];
      v19 = v29;
      if (v19)
      {
        v20 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v19;
          v21 = "Error: Retry response JSON is invalid with error :%@";
          v22 = v20;
          v23 = 12;
LABEL_8:
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __82__PKPaymentWebService_processRetryRequest_responseData_orginalRequest_completion___block_invoke;
          v27[3] = &unk_1E79DAF50;
          v28 = v12;
          [v17 _updateRequestForRetry:v10 retryFields:v18 webService:self withCompletion:v27];
          v24 = v28;
          goto LABEL_19;
        }

        if (v18)
        {
LABEL_10:
          if (!v12)
          {
LABEL_20:

            goto LABEL_21;
          }

          v24 = [v10 copy];
          (*(v12 + 2))(v12, v24);
LABEL_19:

          goto LABEL_20;
        }

        v20 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v21 = "Error: No retry response json";
          v22 = v20;
          v23 = 2;
          goto LABEL_8;
        }
      }

      goto LABEL_10;
    }

    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "No requests or response data to use", buf, 2u);
    }
  }

  if (v12)
  {
    v26 = [v10 copy];
    (*(v12 + 2))(v12, v26);
  }

LABEL_21:
}

void __82__PKPaymentWebService_processRetryRequest_responseData_orginalRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 copy];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)handleWillPerformHTTPRedirectionWithResponse:(id)a3 originalRequest:(id)a4 redirectHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PKPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke;
  v9[3] = &unk_1E79C4450;
  v10 = v7;
  v8 = v7;
  [(PKPaymentWebService *)self _registerIfNeededWithResponse:a3 task:0 isRedirect:1 completion:v9];
}

- (BOOL)isChinaRegionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self context];
  v6 = [v5 regionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 regionCode];
    v8 = [v7 caseInsensitiveCompare:@"CN"] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)configurePaymentServiceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke;
  v8[3] = &unk_1E79DB3D0;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v4;
  [(PKPaymentWebService *)self _deviceConfigurationDataWithCompletion:v8];

  return v5;
}

void __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v20 = *(a1 + 40);
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = *(v20 + 16);
LABEL_16:
    v21();
    goto LABEL_17;
  }

  v7 = [v5 devSigned];
  if (!os_variant_has_internal_ui() || !v7 || (PKStockholmEnvironmentName(), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsString:@"QA"], v8, (v9 & 1) != 0))
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v7;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: set devSigned=%i from device data during configuration", buf, 8u);
    }

    v11 = [*(a1 + 32) context];
    v12 = [v5 secureElementIdentifier];
    if (v12)
    {
      [v11 setSecureElementID:v12];
    }

    [v11 setDevSigned:v7];
    [v11 setConfigurationDate:0];
    v13 = PKStockholmConfigURL(v7, [*(a1 + 32) _isSandboxAccount]);
    v14 = objc_alloc_init(PKPaymentConfigurationRequest);
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v14];
    v15 = [(PKPaymentConfigurationRequest *)v14 _requestWithServiceURL:v13];
    v16 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_337;
    v24[3] = &unk_1E79DB3A8;
    v24[4] = v16;
    v25 = v13;
    v26 = v11;
    v17 = *(a1 + 48);
    v27 = *(a1 + 40);
    v18 = v11;
    v19 = v13;
    [v16 performRequest:v15 taskIdentifier:v17 completionHandler:v24];

    goto LABEL_17;
  }

  v22 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AD337000, v22, OS_LOG_TYPE_ERROR, "******** ERROR: Using DevSE with non QA Enviroment - refusing to update configuration **********", buf, 2u);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    v21 = *(v23 + 16);
    goto LABEL_16;
  }

LABEL_17:
}

void __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_337(id *a1, void *a2, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a1[4];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_2;
  v28[3] = &unk_1E79DB358;
  v10 = v7;
  v29 = v10;
  v11 = a1[5];
  v12 = a1[4];
  v30 = v11;
  v31 = v12;
  v32 = a1[6];
  v13 = [v9 _resultForResponse:a3 error:v8 successHandler:v28];
  [a1[4] _archiveContext];
  if (v13 == 1)
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Updated server config data successfully", buf, 2u);
    }

    v15 = [*(a1[4] + 32) deviceRegion];
    [PKPaymentHeroImageManifest removeManifestFileForRegion:v15];
    v16 = [a1[6] configuration];
    v17 = [v16 heroImageManifestURLForRegion:v15];

    if (v17)
    {
      v18 = +[PKObjectDownloader sharedImageAssetDownloader];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_342;
      v23[3] = &unk_1E79DB380;
      v24 = v18;
      v26 = a1[7];
      v27 = 1;
      v25 = v8;
      v19 = v18;
      [PKPaymentHeroImageManifest downloadManifestForRegion:v15 url:v17 fileDownloader:v19 completion:v23];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Hero manifest URL is nil - skipping download.", buf, 2u);
      }

      v22 = a1[7];
      if (v22)
      {
        v22[2](v22, 1, v8);
      }
    }
  }

  else
  {
    if (!v8)
    {
      v8 = [a1[4] _errorWithResult:v13 data:v10];
    }

    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v8;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Failed to update server config data with error %@", buf, 0xCu);
    }

    v21 = a1[7];
    if (v21)
    {
      v21[2](v21, v13, v8);
    }
  }
}

uint64_t __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PKWebServiceResponse *)PKPaymentConfigurationResponse responseWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 version];
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Version is %@", &v14, 0xCu);
    }

    v6 = [PKPaymentWebServiceConfiguration alloc];
    v7 = [v3 JSONObject];
    v8 = [(PKPaymentWebServiceConfiguration *)v6 initWithConfiguration:v7 url:*(a1 + 40)];

    if (v8)
    {
      [*(a1 + 48) _resetSupportInRegionCache];
      [*(a1 + 56) setConfiguration:v8];
      v9 = *(a1 + 56);
      v10 = [MEMORY[0x1E695DF00] date];
      [v9 setConfigurationDate:v10];

      if (*(*(a1 + 48) + 225) == 1)
      {
        v11 = [MEMORY[0x1E696AD88] defaultCenter];
        [v11 postNotificationName:@"PKSharedPaymentWebServiceRegionConfigurationChangedNotification" object:0];
      }

      v12 = 1;
      PKSetNFRemoteAdminV2Enabled(1);
      [*(*(a1 + 48) + 256) paymentWebServiceDidUpdateConfiguration:?];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke_342(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKScreenScale();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 images];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (([v14 hasCachedImageWithScale:v7] & 1) == 0)
          {
            [v14 downloadImageWithScale:a1[4] fileDownloader:0 completion:v7];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = a1[6];
  if (v15)
  {
    if (a1[5])
    {
      v16 = a1[5];
    }

    else
    {
      v16 = v5;
    }

    (*(v15 + 16))(v15, a1[7], v16);
  }
}

- (unint64_t)registerDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self primaryBrokerURL];
  v6 = [(PKPaymentWebService *)self registerDeviceAtBrokerURL:v5 consistencyCheckResults:0 completion:v4];

  return v6;
}

- (unint64_t)registerDeviceAtBrokerURL:(id)a3 withConsistencyCheckResults:(id)a4 retries:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PKWebService *)self nextTaskID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke;
  v18[3] = &unk_1E79DB498;
  v18[4] = self;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v22 = v13;
  v23 = a5;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [(PKPaymentWebService *)self _deviceRegistrationDataWithCompletion:v18];

  return v13;
}

void __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v34 = *(*(a1 + 56) + 16);
LABEL_20:
    v34();
    goto LABEL_21;
  }

  v7 = [v5 devSigned];
  if (!os_variant_has_internal_ui() || !v7 || (PKStockholmEnvironmentName(), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsString:@"QA"], v8, (v9 & 1) != 0))
  {
    v10 = [*(a1 + 32) context];
    v11 = [v5 secureElementIdentifier];
    [v10 setSecureElementID:v11];

    [v10 setDevSigned:v7];
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v52 = v7;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: set devSigned=%i from device data during registration", buf, 8u);
    }

    v40 = v6;

    v13 = objc_alloc_init(PKPaymentRegistrationRequest);
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v13];
    v14 = [v10 pushToken];
    v15 = [v10 nextPushToken];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17;
    v19 = v10;
    if (!v18)
    {
      v20 = v14;
      v21 = v19;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "*** WARNING ***: Push token is missing!", buf, 2u);
      }

      AnalyticsSendEvent();
      v19 = v21;
      v14 = v20;
    }

    v38 = v14;
    v39 = v19;
    v22 = [*(a1 + 40) summary];
    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) _appleAccountInformation];
    v25 = [(PKPaymentRegistrationRequest *)v13 _requestWithServiceURL:v23 deviceData:v5 pushToken:v18 consistencyData:v22 appleAccountInformation:v24];

    v37 = v13;
    os_unfair_lock_lock((*(a1 + 32) + 168));
    v26 = *(*(a1 + 32) + 160);
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v26 addObject:v27];

    os_unfair_lock_unlock((*(a1 + 32) + 168));
    v28 = *(a1 + 32);
    v29 = *(a1 + 64);
    v30 = *(a1 + 72);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_347;
    v41[3] = &unk_1E79DB470;
    v41[4] = v28;
    v48 = v29;
    v50 = v22 != 0;
    v42 = v5;
    v43 = v16;
    v31 = *(a1 + 72);
    v44 = v18;
    v49 = v31;
    v45 = *(a1 + 48);
    v46 = *(a1 + 40);
    v47 = *(a1 + 56);
    v32 = v18;
    v33 = v16;
    [v28 performRequest:v25 taskIdentifier:v29 retries:v30 authHandling:0 completionHandler:v41];

    v6 = v40;
    goto LABEL_21;
  }

  v35 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AD337000, v35, OS_LOG_TYPE_ERROR, "******** ERROR: Using DevSE with non QA Enviroment - refusing to register **********", buf, 2u);
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    v34 = *(v36 + 16);
    goto LABEL_20;
  }

LABEL_21:
}

void __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_347(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock((*(a1 + 32) + 168));
  v10 = *(*(a1 + 32) + 160);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
  [v10 removeObject:v11];

  os_unfair_lock_unlock((*(a1 + 32) + 168));
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = 0;
  v12 = *(a1 + 32);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_2;
  v53[3] = &unk_1E79DB3F8;
  v13 = v7;
  v54 = v13;
  v58 = *(a1 + 104);
  v34 = *(a1 + 32);
  v14 = *(&v34 + 1);
  v57 = v59;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v55 = v34;
  v56 = v17;
  v18 = [v12 _resultForResponse:v8 error:v9 successHandler:v53];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] == 401)
  {
    if (*(a1 + 96))
    {
      v19 = *(a1 + 32);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_3;
      v45[3] = &unk_1E79DB420;
      v45[4] = v19;
      v46 = *(a1 + 64);
      v20 = *(a1 + 72);
      v21 = *(a1 + 96);
      v47 = v20;
      v51 = v21;
      v22 = *(a1 + 80);
      v52 = v18;
      v49 = v22;
      v50 = v59;
      v9 = v9;
      v48 = v9;
      [v19 handleAuthenticationFailureWithCompletionHandler:v45];

      v23 = v46;
LABEL_5:

      goto LABEL_24;
    }

    v31 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Exceeded maximum retries (giving up).", buf, 2u);
    }

    (*(*(a1 + 80) + 16))();
    goto LABEL_24;
  }

  if (v18 == 1)
  {
    AnalyticsSendEvent();
    [*(a1 + 32) performApplePayTrustRegistrationWithCompletion:0];
    (*(*(a1 + 80) + 16))();
    goto LABEL_24;
  }

  if (v18)
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v18 data:v13];
    }

    goto LABEL_17;
  }

  AnalyticsSendEvent();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v24 = v8, v25 = [v24 statusCode], v24, v25 != 428))
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:0 data:v13];
    }

LABEL_17:
    (*(*(a1 + 80) + 16))();
    goto LABEL_24;
  }

  v26 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Received Secure Element Reinitialization Response Code (428)...", buf, 2u);
  }

  if (*(a1 + 96))
  {
    v27 = [*(a1 + 32) targetDevice];
    v28 = *(a1 + 32);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_354;
    v35[3] = &unk_1E79DB448;
    v35[4] = v28;
    v36 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = *(a1 + 96);
    v37 = v29;
    v42 = v30;
    v40 = *(a1 + 80);
    v9 = v9;
    v38 = v9;
    v43 = 0;
    v39 = v13;
    v41 = v59;
    [v27 paymentWebService:v28 setNewAuthRandom:v35];

    v23 = v36;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Exceeded maximum retries (giving up).", buf, 2u);
  }

  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v32 = [*(a1 + 32) _errorWithResult:0 data:v13];
  }

  v33 = v32;
  (*(*(a1 + 80) + 16))();

LABEL_24:
  _Block_object_dispose(v59, 8);
}

uint64_t __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentRegistrationResponse responseWithData:*(a1 + 32)];
  if (v2)
  {
    v3 = [*(a1 + 40) context];
    v4 = v3;
    if (*(a1 + 80))
    {
      v5 = [v3 registrationType];
    }

    else if ([*(a1 + 48) walletDeleted])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v7 = [v2 cardsOnFile];
    *(*(*(a1 + 72) + 8) + 24) = [v7 unsignedIntegerValue];

    v6 = [*(a1 + 40) _updateContextWithRegistrationType:v5 response:v2];
    if (v6 == 1)
    {
      v8 = [v4 nextPushToken];
      v9 = v8;
      if (*(a1 + 56) && v8 && [v8 isEqual:?])
      {
        [v4 setPushToken:*(a1 + 64)];
        [v4 setNextPushToken:0];
      }

      v10 = [*(a1 + 48) companionSerialNumber];
      [v4 setCompanionSerialNumber:v10];
    }

    [*(a1 + 40) _archiveContext];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v12 = 0;
    v8 = "Credential Renewal Failed.";
    v9 = &v12;
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v11 = 0;
    v8 = "Credential Renewal Rejected by User.";
    v9 = &v11;
LABEL_13:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_14;
  }

  if (a2)
  {
    if (v7)
    {
      v10 = 0;
      v8 = "Credential Renewal: Unknown result.";
      v9 = &v10;
      goto LABEL_13;
    }

LABEL_14:

    (*(*(a1 + 64) + 16))(*(a1 + 64));
    goto LABEL_15;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Credential Renewal succeeded, retrying request.", buf, 2u);
  }

  [*(a1 + 32) registerDeviceAtBrokerURL:*(a1 + 40) withConsistencyCheckResults:*(a1 + 48) retries:*(a1 + 80) - 1 completion:*(a1 + 64)];
LABEL_15:
}

void __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke_354(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Secure Element reinitialized, retrying request.", buf, 2u);
    }

    [*(a1 + 32) registerDeviceAtBrokerURL:*(a1 + 40) withConsistencyCheckResults:*(a1 + 48) retries:*(a1 + 88) - 1 completion:*(a1 + 72)];
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to reinitialize Secure Element.", v9, 2u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [*(a1 + 32) _errorWithResult:*(a1 + 96) data:*(a1 + 64)];
    }

    v8 = v7;
    (*(*(a1 + 72) + 16))();
  }
}

- (void)_shouldPerformApplePayTrustRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (PKCurrentPassbookState() <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      targetDevice = self->_targetDevice;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __77__PKPaymentWebService__shouldPerformApplePayTrustRegistrationWithCompletion___block_invoke;
      v6[3] = &unk_1E79DB4C0;
      v7 = v4;
      [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice applePayTrustKeyForIdentifier:@"com.apple.wallet.applepaytrust" completion:v6];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

- (void)_createApplePayTrustKeyWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(PKPaymentWebService *)self _appleAccountInformation];
      v6 = [v5 aidaAlternateDSID];
      v7 = [v6 dataUsingEncoding:4];

      v8 = [PKApplePayTrustKeyRequest alloc];
      v9 = [v7 SHA256Hash];
      v10 = [(PKApplePayTrustKeyRequest *)v8 initWithKeyIdentifier:@"com.apple.wallet.applepaytrust" subjectIdentifier:v9];

      [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice createApplePayTrustKeyWithRequest:v10 completion:v11];
    }

    else
    {
      (*(v11 + 2))(v11, 0, 0);
    }

    v4 = v11;
  }
}

- (unint64_t)performApplePayTrustRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self primaryBrokerURL];
  v6 = [(PKPaymentWebService *)self context];
  v7 = [v6 pushToken];
  v8 = [(PKPaymentWebService *)self _performApplePayTrustRegistrationWithURL:v5 pushToken:v7 completion:v4];

  return v8;
}

- (unint64_t)_performApplePayTrustRegistrationWithURL:(id)a3 pushToken:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [(PKWebService *)self nextTaskID];
  v10 = [(PKPaymentWebService *)self context];
  v11 = [v10 deviceID];

  if (!v11)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    v12 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: Asked to register for Apple Pay Trust with nil service deviceID. Perform device registration first.", v18, 2u);
    }

    v13 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
LABEL_11:
    v8[2](v8, 0, v13);
LABEL_12:

    goto LABEL_13;
  }

  if (!v7)
  {
    v14 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error: Asked to register for Apple Pay Trust with nil service URL.", v18, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Error: Asked to register for Apple Pay Trust with nil service URL.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = [v15 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v16];

    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke;
  v19[3] = &unk_1E79DB4E8;
  v19[4] = self;
  v20 = v7;
  v21 = v11;
  v23 = v9;
  v22 = v8;
  [(PKPaymentWebService *)self _createApplePayTrustKeyWithCompletion:v19];

LABEL_13:
  return v9;
}

void __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(PKApplePayTrustRegistrationRequest);
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v7];
    [(PKApplePayTrustRegistrationRequest *)v7 setApplePayTrustKey:v5];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = [*(a1 + 32) _appleAccountInformation];
    v11 = [(PKApplePayTrustRegistrationRequest *)v7 _urlRequestWithServiceURL:v9 deviceIdentifier:v8 appleAccountInformation:v10];

    v12 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke_2;
    v16[3] = &unk_1E79D1D90;
    v16[4] = v12;
    v13 = *(a1 + 64);
    v18 = *(a1 + 56);
    v17 = v5;
    [v12 performRequest:v11 taskIdentifier:v13 completionHandler:v16];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error: Failed to get enrollment data for Apple Pay Trust registration with error: %@", buf, 0xCu);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v6);
    }
  }
}

void __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || ![a1[4] _isValidResponse:v8 error:0])
  {
    v13 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust registration request failed with error: %@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = *(a1[4] + 32);
      v15 = [a1[5] identifier];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke_370;
      v17[3] = &unk_1E79C4888;
      v19 = a1[6];
      v18 = v9;
      [v14 deleteApplePayTrustKeyWithIdentifier:v15 completion:v17];
    }

    else
    {
      v16 = a1[6];
      if (v16)
      {
        v12 = *(v16 + 2);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust registration succeeded.", buf, 2u);
    }

    v11 = a1[6];
    if (v11)
    {
      v12 = *(v11 + 2);
LABEL_13:
      v12();
    }
  }
}

uint64_t __85__PKPaymentWebService__performApplePayTrustRegistrationWithURL_pushToken_completion___block_invoke_370(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (BOOL)_isValidResponse:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v5;
    v8 = [v7 statusCode];
    v9 = v8 == 200;
    if (v8 != 200)
    {
      v10 = v8;
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 URL];
        v13 = [v12 absoluteString];
        v17 = 138412802;
        v18 = v13;
        v19 = 2048;
        v20 = v10;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error executing request: %@; statusCode: %ld; error: %@", &v17, 0x20u);
      }
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 localizedDescription];
      v15 = [objc_opt_class() description];
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Invalid response with error: %@; Expected 'NSHTTPURLResponse' but got '%@'", &v17, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)_updateContextWithRegistrationType:(int64_t)a3 response:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 deviceIdentifier];

  if (!v7)
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "*** ERROR ***: No Device ID";
LABEL_26:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    goto LABEL_27;
  }

  v8 = [v6 primaryRegion];

  if (!v8)
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "*** ERROR ***: No Primary Region";
    goto LABEL_26;
  }

  v9 = [v6 regions];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "*** ERROR ***: Empty Regions Dictionary";
      goto LABEL_26;
    }

LABEL_27:
    v33 = 0;
    goto LABEL_37;
  }

  v43 = self;
  v11 = [(PKPaymentWebService *)self context];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = [v6 regions];
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        v18 = [v6 regions];
        v19 = [v18 objectForKeyedSubscript:v17];

        v20 = [v19 certificates];
        if ((PKPaymentCreateAndValidateTrustWithCerts(v20, 0, [v11 devSigned]) & 1) == 0)
        {
          v32 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "*** ERROR ***: Invalid Certificate Chain for %@", buf, 0xCu);
          }

          v33 = 0;
          goto LABEL_36;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [(PKPaymentWebService *)v43 _resetSupportInRegionCache];
  v21 = [v6 regions];
  [v11 setRegions:v21];

  v22 = [v6 deviceIdentifier];
  [v11 setDeviceID:v22];

  v12 = [v6 primaryRegion];
  if (!v12)
  {
    v23 = [v6 regions];
    v24 = [v23 allKeys];
    v12 = [v24 lastObject];
  }

  [v11 setPrimaryRegionIdentifier:v12];
  [v11 setRegistrationType:a3];
  v25 = [MEMORY[0x1E695DF00] date];
  [v11 setRegistrationDate:v25];

  v26 = PKDeviceBuildVersion();
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __67__PKPaymentWebService__updateContextWithRegistrationType_response___block_invoke;
  v44[3] = &unk_1E79DB510;
  v19 = v26;
  v45 = v19;
  [v11 atomicallyUpdateEveryRegion:v44];
  v27 = [v6 maxCards];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    v30 = [v27 unsignedIntegerValue];
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentWebServiceTargetDeviceProtocol *)v43->_targetDevice setMaximumPaymentCards:v30];
    }

    else
    {
      PKSetMaxPaymentCards(v30);
    }

    v28 = v29;
  }

  v34 = [v6 environmentName];
  v42 = PKStockholmEnvironmentDisplayName();
  if (([v34 isEqualToString:?] & 1) == 0)
  {
    if ([v34 length])
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    PKSetStockholmEnvironmentDisplayName(v35);
    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 postNotificationName:@"PKSharedPaymentWebServiceRegionConfigurationChangedNotification" object:0];
  }

  targetDevice = v43->_targetDevice;
  v38 = [v11 TSMURLStringByPushTopic];
  v39 = [v11 primaryRegion];
  v40 = [v39 trustedServiceManagerPushTopic];
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:v43 didRegisterWithRegionMap:v38 primaryRegionTopic:v40];

  v33 = 1;
  v20 = v45;
LABEL_36:

LABEL_37:
  return v33;
}

- (unint64_t)deviceCheckInDeviceCheckInForRegion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentDeviceCheckinRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPaymentWebService *)self context];
  v11 = [v10 deviceID];
  if (v11)
  {
    v12 = [v10 regionForIdentifier:v6];
    v13 = [v12 brokerURL];

    v14 = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [(PKPaymentDeviceCheckinRequest *)v9 _urlRequestWithServiceURL:v13 deviceIdentifier:v11 appleAccountInformation:v14];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__PKPaymentWebService_deviceCheckInDeviceCheckInForRegion_completion___block_invoke;
    v18[3] = &unk_1E79CD770;
    v18[4] = self;
    v19 = v7;
    [(PKWebService *)self performRequest:v15 taskIdentifier:v8 completionHandler:v18];
  }

  else if (v7)
  {
    v16 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, v16);
  }

  return v8;
}

void __70__PKPaymentWebService_deviceCheckInDeviceCheckInForRegion_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __70__PKPaymentWebService_deviceCheckInDeviceCheckInForRegion_completion___block_invoke_2;
  v17 = &unk_1E79C8FA8;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v14];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v14, v15, v16, v17}];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

BOOL __70__PKPaymentWebService_deviceCheckInDeviceCheckInForRegion_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentDeviceCheckInResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)sendOwnershipTokensForReason:(unint64_t)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PKWebService *)self nextTaskID];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__54;
  v27[4] = __Block_byref_object_dispose__54;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__54;
  v25[4] = __Block_byref_object_dispose__54;
  v26 = 0;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PKPaymentSendOwnershipTokensRequestReasonToString(a3);
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Sending ownership tokens with reason %@", buf, 0xCu);
    }

    v12 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke;
    v24[3] = &unk_1E79D7438;
    v24[4] = v27;
    [(PKAsyncUnaryOperationComposer *)v12 addOperation:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_382;
    v23[3] = &unk_1E79CD7C0;
    v23[4] = self;
    v23[5] = v25;
    [(PKAsyncUnaryOperationComposer *)v12 addOperation:v23];
    v13 = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_3;
    v16[3] = &unk_1E79DB580;
    v21 = a3;
    v19 = v27;
    v16[4] = self;
    v17 = v9;
    v20 = v25;
    v22 = v7;
    v18 = v6;
    v14 = [(PKAsyncUnaryOperationComposer *)v12 evaluateWithInput:v13 completion:v16];

    goto LABEL_7;
  }

  if (v6)
  {
    v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v6 + 2))(v6, 0, v12);
LABEL_7:
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);

  return v7;
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_2;
  v11[3] = &unk_1E79DB538;
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [PKPassOwnershipToken queryKeychainForOwnershipTokens:v11];
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error getting pass ownership tokens %@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  (*(*(a1 + 40) + 16))();
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_382(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_2_383;
  v12[3] = &unk_1E79DB268;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 _deviceDataIncludingMetadataFields:498 withCompletionHandler:v12];
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_2_383(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(PKPaymentSendOwnershipTokensRequest);
  [(PKPaymentSendOwnershipTokensRequest *)v2 setPassOwnershipTokens:*(*(*(a1 + 56) + 8) + 40)];
  [(PKPaymentSendOwnershipTokensRequest *)v2 setReason:*(a1 + 72)];
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v2];
  v3 = [*(a1 + 32) primaryBrokerURL];
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) _appleAccountInformation];
  v7 = [(PKPaymentSendOwnershipTokensRequest *)v2 _urlRequestWithServiceURL:v3 deviceIdentifier:v5 deviceMetadata:v4 appleAccountInformation:v6];

  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_4;
  v10[3] = &unk_1E79CD770;
  v10[4] = v8;
  v11 = *(a1 + 48);
  [v8 performRequest:v7 taskIdentifier:v9 completionHandler:v10];
}

void __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) _resultForResponse:a3 error:v7 successHandler:&__block_literal_global_156];
  if (!v7 && v8 != 1)
  {
    v7 = [*(a1 + 32) _errorWithResult:v8 data:v10];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 1, v7);
  }
}

- (unint64_t)repopulateZonesWithCloudStoreZoneNames:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];
  v11 = v10;
  if (v6 && v10 && [v6 count])
  {
    v12 = [[PKPaymentRepopulateZonesRequest alloc] initWithCloudStoreZoneNames:v6];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v12];
    v13 = [(PKPaymentWebService *)self primaryBrokerURL];
    v14 = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [(PKPaymentRepopulateZonesRequest *)v12 _urlRequestWithServiceURL:v13 deviceIdentifier:v11 appleAccountInformation:v14];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__PKPaymentWebService_repopulateZonesWithCloudStoreZoneNames_completion___block_invoke;
    v18[3] = &unk_1E79CD770;
    v18[4] = self;
    v19 = v7;
    [(PKWebService *)self performRequest:v15 taskIdentifier:v8 completionHandler:v18];
  }

  else if (v7)
  {
    v16 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, v16);
  }

  return v8;
}

void __73__PKPaymentWebService_repopulateZonesWithCloudStoreZoneNames_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) _resultForResponse:a3 error:v7 successHandler:&__block_literal_global_387];
  if (!v7 && v8 != 1)
  {
    v7 = [*(a1 + 32) _errorWithResult:v8 data:v10];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 1, v7);
  }
}

- (void)backgroundPerformDeviceCheckInForRegion:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKPaymentWebService_backgroundPerformDeviceCheckInForRegion_identifier___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __74__PKPaymentWebService_backgroundPerformDeviceCheckInForRegion_identifier___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PKPaymentDeviceCheckinRequest);
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v2];
  v3 = [*(a1 + 32) context];
  v4 = [v3 deviceID];
  if (v4)
  {
    v5 = [v3 regionForIdentifier:*(a1 + 40)];
    v6 = [v5 brokerURL];

    v7 = [*(a1 + 32) _appleAccountInformation];
    v8 = [(PKPaymentDeviceCheckinRequest *)v2 _urlRequestWithServiceURL:v6 deviceIdentifier:v4 appleAccountInformation:v7];

    v9 = [*(*(a1 + 32) + 120) downloadTaskWithRequest:v8];
    v10 = [(PKPaymentBackgroundDownloadRecord *)PKPaymentDeviceCheckinDownloadRecord taskWithType:4];
    [v10 setRegion:*(a1 + 40)];
    [v10 setIdentifier:*(a1 + 48)];
    v11 = [*(a1 + 32) backgroundContext];
    [v11 addBackgroundDownloadRecord:v10 forTaskIdentifier:{objc_msgSend(v9, "taskIdentifier")}];

    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v4;
      v14 = [v9 taskIdentifier];
      [v8 URL];
      v15 = v24 = v6;
      [v15 absoluteString];
      v25 = v3;
      v17 = v16 = v2;
      *buf = 134218242;
      *&buf[4] = v14;
      v4 = v13;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu for %@:", buf, 0x16u);

      v6 = v24;
      v2 = v16;
      v3 = v25;
    }

    [*(a1 + 32) logRequest:v8];
    [*(a1 + 32) _archiveBackgroundContext];
    [v9 resume];
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Device check in failed - no device ID present", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
    v20 = dispatch_get_global_queue(21, 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __74__PKPaymentWebService_backgroundPerformDeviceCheckInForRegion_identifier___block_invoke_389;
    v26[3] = &unk_1E79C9668;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v27 = WeakRetained;
    v28 = v21;
    v29 = v22;
    v30 = *(a1 + 48);
    v23 = v26;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke_14;
    v32 = &unk_1E79C4428;
    v33 = v23;
    v6 = WeakRetained;
    dispatch_async(v20, buf);

    v8 = v27;
  }
}

- (unint64_t)updateRegistrationDataAtBrokerURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentUpdateRegistrationDataRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPaymentWebService *)self context];
  v11 = [v10 deviceID];

  if (v11)
  {
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [(PKPaymentUpdateRegistrationDataRequest *)v9 _urlRequestWithServiceURL:v6 deviceIdentifier:v11 appleAccountInformation:v12];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__PKPaymentWebService_updateRegistrationDataAtBrokerURL_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, v14);
  }

  return v8;
}

void __68__PKPaymentWebService_updateRegistrationDataAtBrokerURL_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __68__PKPaymentWebService_updateRegistrationDataAtBrokerURL_completion___block_invoke_2;
  v18 = &unk_1E79DB5A8;
  v10 = v7;
  v11 = *(a1 + 32);
  v19 = v10;
  v20 = v11;
  v12 = [v9 _resultForResponse:a3 error:v8 successHandler:&v15];
  v13 = v12;
  if (!v8 && v12 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v12 data:{v10, v15, v16, v17, v18}];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v13, v8);
  }
}

uint64_t __68__PKPaymentWebService_updateRegistrationDataAtBrokerURL_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentRegistrationResponse responseWithData:*(a1 + 32)];
  if (v2)
  {
    v3 = [*(a1 + 40) context];
    v4 = [*(a1 + 40) _updateContextWithRegistrationType:objc_msgSend(v3 response:{"registrationType"), v2}];
    if (v4 == 1)
    {
      [*(a1 + 40) _archiveContext];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)unregisterDeviceWithCompanionSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    v11 = objc_alloc_init(PKPaymentUnregisterRequest);
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
    v12 = [(PKPaymentWebService *)self primaryBrokerURL];
    v13 = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [(PKPaymentUnregisterRequest *)v11 _urlRequestWithServiceURL:v12 deviceIdentifier:v10 companionSerialNumber:v6 appleAccountInformation:v13];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__PKPaymentWebService_unregisterDeviceWithCompanionSerialNumber_completion___block_invoke;
    v17[3] = &unk_1E79CD770;
    v17[4] = self;
    v18 = v7;
    [(PKWebService *)self performRequest:v14 taskIdentifier:v8 completionHandler:v17];
  }

  else
  {
    AnalyticsSendEvent();
    if (v7)
    {
      v15 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(v7 + 2))(v7, 0, v15);
    }
  }

  return v8;
}

void __76__PKPaymentWebService_unregisterDeviceWithCompanionSerialNumber_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) _resultForResponse:a3 error:v7 successHandler:&__block_literal_global_393];
  if (v8 == 1)
  {
    [*(*(a1 + 32) + 256) paymentWebService:*(a1 + 32) didRegisterWithRegionMap:0 primaryRegionTopic:0];
  }

  else
  {
    AnalyticsSendEvent();
    v9 = [*(a1 + 32) _errorWithResult:v8 data:v11];

    v7 = v9;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
  }
}

- (unint64_t)issuerProvisioningCertificatesForRequest:(id)a3 withCompletion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];
  v11 = v10;
  if (!v7 || !v6 || !v10)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    if (v10)
    {
      if (v6)
      {
LABEL_14:
        (*(v7 + 2))(v7, 0, 0);
        goto LABEL_15;
      }

      v15 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "Failed to fetch certificates because of nil request.";
        v17 = v15;
        v18 = 2;
LABEL_12:
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = v9;
        v16 = "Failed to fetch certificates because of nil deviceID. \nWebService: %@ \nContext: %@";
        v17 = v15;
        v18 = 22;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v12 = [(PKPaymentWebService *)self primaryBrokerURL];
  v13 = [(PKPaymentWebService *)self _appleAccountInformation];
  v14 = [v6 _urlRequestWithServiceURL:v12 deviceIdentifier:v11 appleAccountInformation:v13];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke;
  v20[3] = &unk_1E79D1CC8;
  v20[4] = self;
  v21 = v9;
  v22 = v7;
  [(PKWebService *)self performRequest:v14 taskIdentifier:v8 completionHandler:v20];

LABEL_15:
  return v8;
}

void __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__54;
  v29 = __Block_byref_object_dispose__54;
  v30 = 0;
  v10 = a1[4];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke_2;
  v22[3] = &unk_1E79C8FA8;
  v24 = &v25;
  v11 = v7;
  v23 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:v22];
  if (v26[5])
  {
    if ([a1[5] devSigned])
    {
      values = PKCreateQARootCACertificate();
      if (values)
      {
        v13 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, 0);
      }

      else
      {
        v13 = 0;
      }

      BasicX509 = SecPolicyCreateBasicX509();
    }

    else
    {
      values = 0;
      BasicX509 = SecPolicyCreateApplePayIssuerEncryption();
      v13 = 0;
    }

    v15 = v26[5];
    v16 = [v15 certificates];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke_3;
    v18[3] = &unk_1E79DB5D0;
    v17 = v15;
    v19 = v17;
    v20 = a1[6];
    PKCreateTrustAndValidateAsync(v16, BasicX509, v13, v18);

    if (BasicX509)
    {
      CFRelease(BasicX509);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (values)
    {
      CFRelease(values);
    }
  }

  else
  {
    if (!v9)
    {
      v9 = [a1[4] _errorWithResult:v12 data:v11];
    }

    (*(a1[6] + 2))();
  }

  _Block_object_dispose(&v25, 8);
}

BOOL __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [[PKPaymentIssuerProvisioningCertificatesResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

uint64_t __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke_3(uint64_t a1, int a2, SecTrustRef trust)
{
  if (trust)
  {
    if (a2)
    {
      if (SecTrustGetCertificateCount(trust) >= 1)
      {
        if (PKSecTrustGetCertificateAtIndex(trust, 0))
        {
          v5 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
          if (v5)
          {
            v6 = v5;
            [*(a1 + 32) setPublicKeyHash:v5];
            CFRelease(v6);
          }
        }
      }
    }
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (unint64_t)remotePaymentCredentialsForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v6 deviceProvisioningDataExpected];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke;
  v14[3] = &unk_1E79DB620;
  if (v9)
  {
    v10 = 240;
  }

  else
  {
    v10 = 0;
  }

  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v11 = v6;
  v12 = v7;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:v10 completion:v14];

  return v8;
}

void __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_2;
    v10[3] = &unk_1E79D1DE0;
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10[4] = v5;
    v12 = v6;
    v11 = v7;
    [v4 _urlRequestWithBuilder:v3 webService:v5 completion:v10];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v8 + 16))(v8, 0, 0, v9);
    }
  }
}

void __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_3;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 completionHandler:v5];
}

void __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = [(PKWebServiceResponse *)PKPaymentRemoteCredentialsResponse responseWithData:v7];
  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_4;
  v14[3] = &unk_1E79DB5F8;
  v12 = v10;
  v15 = v12;
  v13 = [v11 _resultForResponse:v9 error:v8 successHandler:v14];

  if (!v8 && v13 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v13 data:v7];
  }

  (*(*(a1 + 40) + 16))();
}

BOOL __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32) != 0;
  AnalyticsSendEvent();
  return v1;
}

- (unint64_t)remotePaymentCredentialsUpdateForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke;
  v12[3] = &unk_1E79DB620;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v9 = v6;
  v10 = v7;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:0 completion:v12];

  return v8;
}

void __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_2;
    v10[3] = &unk_1E79D1DE0;
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10[4] = v5;
    v12 = v6;
    v11 = v7;
    [v4 _urlRequestWithBuilder:v3 webService:v5 completion:v10];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) _errorWithResult:0 data:0];
    (*(v8 + 16))(v8, 0, 0, v9);
  }
}

void __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_3;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 completionHandler:v5];
}

void __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = [(PKWebServiceResponse *)PKPaymentRemoteCredentialsUpdateResponse responseWithData:v7];
  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_4;
  v14[3] = &unk_1E79DB5F8;
  v12 = v10;
  v15 = v12;
  v13 = [v11 _resultForResponse:v9 error:v8 successHandler:v14];

  if (!v8 && v13 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v13 data:v7];
  }

  (*(*(a1 + 40) + 16))();
}

BOOL __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32) != 0;
  AnalyticsSendEvent();
  return v1;
}

- (unint64_t)requirementsForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v6 paymentCredential];
  v10 = [v9 couldSupportSuperEasyProvisioning];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke;
  v15[3] = &unk_1E79DB620;
  if (v10)
  {
    v11 = 498;
  }

  else
  {
    v11 = 256;
  }

  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v12 = v6;
  v13 = v7;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:v11 completion:v15];

  return v8;
}

void __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) paymentCredential];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79DB648;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v14 = v6;
    v15 = v7;
    v8 = v3;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v16 = v8;
    v18 = v9;
    v17 = v10;
    [v4 _passOwnershipTokenForPaymentCredential:v5 completion:v13];
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v11 + 16))(v11, 0, 0, v12);
    }
  }
}

void __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPassOwnershipToken:a2];
  v3 = *(*(a1 + 40) + 216);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_3;
  block[3] = &unk_1E79D1F80;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v14 = *(a1 + 64);
  v10 = *(a1 + 40);
  v7 = v6;
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  dispatch_async(v3, block);
}

void __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_4;
  v5[3] = &unk_1E79D1DE0;
  v3 = a1[8];
  v4 = a1[7];
  v6 = a1[6];
  v8 = v3;
  v7 = v4;
  [v1 _urlRequestWithBuilder:v2 webService:v6 completion:v5];
}

void __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_5;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 cacheResponse:0 completionHandler:v5];
}

void __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__54;
  v18[4] = __Block_byref_object_dispose__54;
  v19 = 0;
  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_6;
  v14[3] = &unk_1E79DBAC0;
  v11 = v8;
  v15 = v11;
  v17 = v18;
  v12 = v7;
  v16 = v12;
  v13 = [v10 _resultForResponse:v11 error:v9 successHandler:v14];
  if (!v9 && v13 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v13 response:v11 data:v12];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(v18, 8);
}

BOOL __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke_6(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) allHeaderFields];
  }

  else
  {
    v2 = 0;
  }

  v3 = [(PKWebServiceResponse *)PKPaymentRequirementsResponse responseWithData:*(a1 + 40) headers:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v6;
}

- (unint64_t)eligibilityForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v6 region];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke;
  v13[3] = &unk_1E79DB620;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = v6;
  v11 = v7;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:v9 fields:256 completion:v13];

  return v8;
}

void __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) paymentCredential];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_2;
    v13[3] = &unk_1E79DB648;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v14 = v6;
    v15 = v7;
    v8 = v3;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v16 = v8;
    v18 = v9;
    v17 = v10;
    [v4 _passOwnershipTokenForPaymentCredential:v5 completion:v13];
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v11 + 16))(v11, 0, 0, v12);
    }
  }
}

void __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPassOwnershipToken:a2];
  v3 = *(*(a1 + 40) + 216);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_3;
  block[3] = &unk_1E79D1F80;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v14 = *(a1 + 64);
  v10 = *(a1 + 40);
  v7 = v6;
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  dispatch_async(v3, block);
}

void __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_4;
  v5[3] = &unk_1E79D1DE0;
  v3 = a1[8];
  v4 = a1[7];
  v6 = a1[6];
  v8 = v3;
  v7 = v4;
  [v1 _urlRequestWithBuilder:v2 webService:v6 completion:v5];
}

void __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_5;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 cacheResponse:0 completionHandler:v5];
}

void __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_6;
  v17 = &unk_1E79C8FA8;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v14];
  if (v12 != 1 && !v9)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 response:v8 data:{v11, v14, v15, v16, v17}];
  }

  AnalyticsSendEvent();
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v12, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

BOOL __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke_6(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentEligibilityResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)provisionPassesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  targetDevice = self->_targetDevice;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke;
  v13[3] = &unk_1E79DB6C0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = v6;
  v11 = v7;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self setNewAuthRandomIfNecessaryReturningPairingState:v13];

  return v8;
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    if ([*(a1 + 40) isDeviceProvisioningDataExpected])
    {
      if ([*(a1 + 40) sendReducedDeviceData])
      {
        v9 = 354;
      }

      else
      {
        v9 = 498;
      }
    }

    else
    {
      v9 = 256;
    }

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) eligibilityResponse];
    v14 = [v13 region];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_2;
    v20[3] = &unk_1E79DB620;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v22 = v15;
    v20[4] = v16;
    v18 = v17;
    v19 = *(a1 + 56);
    v21 = v18;
    v23 = v19;
    [v12 _secureRequestBuilderForRegion:v14 fields:v9 completion:v20];
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v10 + 16))(v10, 0, 0, v11);
    }
  }
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 216);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_3;
    block[3] = &unk_1E79D1F80;
    v11 = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    v7 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = v7;
    dispatch_async(v4, block);
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v8 + 16))(v8, 0, 0, v9);
    }
  }
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_4;
  v5[3] = &unk_1E79D1DE0;
  v3 = a1[8];
  v4 = a1[7];
  v6 = a1[6];
  v8 = v3;
  v7 = v4;
  [v1 _urlRequestWithBuilder:v2 webService:v6 completion:v5];
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_5;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 cacheResponse:0 completionHandler:v5];
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__54;
  v56 = __Block_byref_object_dispose__54;
  v57 = 0;
  v10 = *(a1 + 32);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_6;
  v49[3] = &unk_1E79DB670;
  v26 = v8;
  v27 = v7;
  v50 = v27;
  v51 = &v52;
  v11 = [v10 _resultForResponse:v8 error:v9 successHandler:v49];
  v28 = [v53[5] downloadablePasses];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__54;
  v47 = __Block_byref_object_dispose__54;
  v48 = 0;
  v29 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  if (v11 == 1)
  {
    if ([v28 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = v28;
      v13 = [v12 countByEnumeratingWithState:&v39 objects:v58 count:16];
      if (v13)
      {
        v14 = *v40;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v39 + 1) + 8 * i);
            v17 = *(a1 + 32);
            v18 = [v16 ownershipToken];
            v19 = [v16 ownershipTokenIdentifier];
            [v17 _storePassOwnershipToken:v18 withIdentifier:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v39 objects:v58 count:16];
        }

        while (v13);
      }

LABEL_17:

      goto LABEL_18;
    }

    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: Error - Provisioning succeeded but returned no downloadable passes", buf, 2u);
    }
  }

  v12 = v9;
  if (!v9)
  {
    v12 = [*(a1 + 32) _errorWithResult:v11 response:v26 data:v27];
  }

  objc_storeStrong(v44 + 5, v12);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_18:
  v21 = [MEMORY[0x1E695DFB0] null];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_439;
  v30[3] = &unk_1E79DB698;
  v35 = &v43;
  v22 = v28;
  v23 = *(a1 + 32);
  v31 = v22;
  v32 = v23;
  v37 = v11;
  v24 = v27;
  v33 = v24;
  v34 = *(a1 + 40);
  v36 = &v52;
  v25 = [(PKAsyncUnaryOperationComposer *)v29 evaluateWithInput:v21 completion:v30];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v52, 8);
}

uint64_t __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_6(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentProvisioningResponse responseWithData:*(a1 + 32)];
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke_439(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (!v8)
  {
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 80), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  v12 = @"success";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 == 0];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  AnalyticsSendEvent();
}

- (unint64_t)initiateExternalProvisioningForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [v6 region];
    v12 = [(PKPaymentWebService *)self _brokerUrlForRegion:v11 regionOut:0];

    v13 = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [v6 _urlRequestWithServiceURL:v12 deviceIdentifier:v10 appleAccountInformation:v13];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__PKPaymentWebService_initiateExternalProvisioningForRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v14 taskIdentifier:v8 completionHandler:v16];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  return v8;
}

void __73__PKPaymentWebService_initiateExternalProvisioningForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _resultForResponse:v7 error:v8 successHandler:&__block_literal_global_442];
  v10 = v9;
  if (!v8 && v9 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v9 response:v7 data:v12];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v8);
  }
}

- (unint64_t)deprovisionForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PKPaymentWebService_deprovisionForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v15];
  }

  return v8;
}

void __56__PKPaymentWebService_deprovisionForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _resultForResponse:v7 error:v8 successHandler:&__block_literal_global_444];
  v10 = v9;
  if (!v8 && v9 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v9 response:v7 data:v12];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v8);
  }
}

- (unint64_t)deleteForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 appleAccountInformation:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__PKPaymentWebService_deleteForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v15];
  }

  return v8;
}

void __51__PKPaymentWebService_deleteForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _resultForResponse:v7 error:v8 successHandler:&__block_literal_global_446];
  v10 = v9;
  if (!v8 && v9 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v9 response:v7 data:v12];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v8);
  }
}

- (unint64_t)prepareToProvisionForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    if (v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__PKPaymentWebService_prepareToProvisionForRequest_completion___block_invoke;
      v15[3] = &unk_1E79CD770;
      v15[4] = self;
      v16 = v7;
      [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v15];
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  return v8;
}

void __63__PKPaymentWebService_prepareToProvisionForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _resultForResponse:v7 error:v8 successHandler:&__block_literal_global_448];
  v10 = v9;
  if (!v8 && v9 != 1)
  {
    v8 = [*(a1 + 32) _errorWithResult:v9 response:v7 data:v12];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10, v8);
  }
}

- (unint64_t)provisionPrecursorPassForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKPaymentWebService_provisionPrecursorPassForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v15];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  return v8;
}

void __67__PKPaymentWebService_provisionPrecursorPassForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__PKPaymentWebService_provisionPrecursorPassForRequest_completion___block_invoke_2;
  v17 = &unk_1E79C8FA8;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v14];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 response:v8 data:{v11, v14, v15, v16, v17}];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

BOOL __67__PKPaymentWebService_provisionPrecursorPassForRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentProvisionPrecursorPassResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)tapToProvisionConfigurationForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__PKPaymentWebService_tapToProvisionConfigurationForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v15];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  return v8;
}

void __72__PKPaymentWebService_tapToProvisionConfigurationForRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__PKPaymentWebService_tapToProvisionConfigurationForRequest_completion___block_invoke_2;
  v17 = &unk_1E79C8FA8;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v14];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 response:v8 data:{v11, v14, v15, v16, v17}];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

BOOL __72__PKPaymentWebService_tapToProvisionConfigurationForRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentTapToProvisionConfigurationResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)verificationOptionsForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v6 pass];
  v10 = [v9 passTypeIdentifier];
  v11 = [(PKPaymentWebService *)self _requestBuilderForRegion:v10];

  if (v11)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v12 = [v6 _urlRequestWithBuilder:v11];
    if (v12)
    {
      v13 = [v6 pass];
      [(PKPaymentWebService *)self _performVerificationRequest:v12 selectedMethodGroup:0 selectedMethod:0 pass:v13 taskID:v8 completion:v7];
    }

    else
    {
      if (!v7)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v13 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(v7 + 2))(v7, 0, 0, v13);
    }

LABEL_9:
    goto LABEL_10;
  }

  if (v7)
  {
    v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v12);
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (unint64_t)updateVerification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v6 pass];
  v10 = [(PKPaymentWebService *)self verificationRecordForPass:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [PKVerificationRequestRecord verificationRequestRecordForPass:v9];
  }

  v13 = v12;

  v14 = [v6 methodGroup];
  v15 = [v6 method];
  if (v14 && ([v14 needsServerRequest] & 1) == 0)
  {
    [v13 setActiveMethodGroup:v14];
    [v13 setVerificationStatus:4000];
    [(PKPaymentWebService *)self updateVerificationRecord:v13];
    if (v7)
    {
      v7[2](v7, 1, v13, 0);
    }
  }

  else
  {
    v16 = [v9 passTypeIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__PKPaymentWebService_updateVerification_completion___block_invoke;
    v18[3] = &unk_1E79DB710;
    v23 = v7;
    v18[4] = self;
    v19 = v6;
    v20 = v14;
    v21 = v15;
    v22 = v9;
    v24 = v8;
    [(PKPaymentWebService *)self _secureRequestBuilderForRegion:v16 fields:256 completion:v18];
  }

  return v8;
}

void __53__PKPaymentWebService_updateVerification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PKPaymentWebService_updateVerification_completion___block_invoke_2;
    v11[3] = &unk_1E79DB6E8;
    v11[4] = v4;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v14 = v6;
    v16 = v7;
    v15 = v8;
    [v5 _urlRequestWithBuilder:v3 webService:v4 completion:v11];
  }

  else
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v9 + 16))(v9, 0, 0, v10);
    }
  }
}

void __53__PKPaymentWebService_updateVerification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [*(a1 + 32) _performVerificationRequest:v3 selectedMethodGroup:*(a1 + 40) selectedMethod:*(a1 + 48) pass:*(a1 + 56) taskID:*(a1 + 72) completion:*(a1 + 64)];
  }

  else
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v4 + 16))(v4, 0, 0, v5);
    }

    AnalyticsSendEvent();
  }
}

- (void)_performVerificationRequest:(id)a3 selectedMethodGroup:(id)a4 selectedMethod:(id)a5 pass:(id)a6 taskID:(unint64_t)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke;
  v22[3] = &unk_1E79D1D40;
  v22[4] = self;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  v26 = v17;
  v18 = v17;
  v19 = v15;
  v20 = v14;
  v21 = v16;
  [(PKWebService *)self performRequest:a3 taskIdentifier:a7 completionHandler:v22];
}

void __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__54;
  v39 = __Block_byref_object_dispose__54;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v10 = a1[4];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke_2;
  v25[3] = &unk_1E79DB738;
  v11 = v7;
  v26 = v11;
  v12 = a1[5];
  v29 = &v35;
  v30 = &v31;
  *&v13 = v12;
  *(&v13 + 1) = a1[4];
  v21 = v13;
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v27 = v21;
  v28 = v16;
  v17 = [v10 _resultForResponse:v8 error:v9 successHandler:v25];
  if (v17 != 1)
  {
    if (!v9)
    {
      v9 = [a1[4] _errorWithResult:v17 response:v8 data:v11];
    }

    AnalyticsSendEvent();
    goto LABEL_8;
  }

  AnalyticsSendEvent();
  if (v32[3] > 1 || [v36[5] verificationStatus] != 3)
  {
LABEL_8:
    (*(a1[8] + 2))();
    goto LABEL_9;
  }

  v18 = a1[4];
  v19 = [a1[5] passTypeIdentifier];
  v20 = [a1[5] serialNumber];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke_466;
  v22[3] = &unk_1E79DB760;
  v23 = a1[8];
  v24 = &v35;
  [v18 passWithPassTypeIdentifier:v19 serialNumber:v20 completion:v22];

LABEL_9:
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

uint64_t __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke_2(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPaymentActivationResponse responseWithData:*(a1 + 32) forPass:*(a1 + 40)];
  if (!v2)
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *v23 = 0;
    v13 = "no activation response";
LABEL_28:
    _os_log_error_impl(&dword_1AD337000, v12, OS_LOG_TYPE_ERROR, v13, v23, 2u);
    goto LABEL_19;
  }

  v3 = [*(a1 + 48) verificationRecordForPass:*(a1 + 40)];
  v4 = v3;
  if (!v3)
  {
    v4 = [PKVerificationRequestRecord verificationRequestRecordForPass:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
  if (!v3)
  {
  }

  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = [v2 previousStepIdentifier];
  [v5 setPreviousStepIdentifier:v6];

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = [v2 stepIdentifier];
  [v7 setCurrentStepIdentifier:v8];

  *(*(*(a1 + 80) + 8) + 24) = [*(*(*(a1 + 72) + 8) + 40) verificationStatus];
  [*(*(*(a1 + 72) + 8) + 40) setVerificationStatus:{objc_msgSend(v2, "verificationStatus")}];
  v9 = [v2 verificationStatus];
  switch(v9)
  {
    case 3:
      if (*(a1 + 56))
      {
        [*(*(*(a1 + 72) + 8) + 40) setActiveMethodGroup:?];
      }

      [*(*(*(a1 + 72) + 8) + 40) setRequiredFieldData:0];
      v17 = *(*(*(a1 + 72) + 8) + 40);
      v24[0] = *(a1 + 64);
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [v17 recordStartedMethods:v18];

      goto LABEL_25;
    case 2:
      v14 = [v2 methodGroups];
      if (PKShowFakeVerificationChannels())
      {
        v15 = [*(a1 + 48) _fakeVerificationMethodGroups];
        if (!v14)
        {
LABEL_22:
          [*(*(*(a1 + 72) + 8) + 40) setMethodGroups:v15];
          v20 = [*(*(*(a1 + 72) + 8) + 40) channel];
          v21 = [v20 type];

          if (v21 == 7)
          {
            [*(*(*(a1 + 72) + 8) + 40) setChannel:0];
          }

          [*(*(*(a1 + 72) + 8) + 40) setRequiredFieldData:0];

          goto LABEL_25;
        }

        v16 = [v14 arrayByAddingObjectsFromArray:v15];
      }

      else
      {
        v16 = [*(a1 + 48) removeRedundantMethodGroupsFromMethodGroups:v14];
        v15 = v14;
      }

      v15 = v16;
      goto LABEL_22;
    case 1:
      v10 = *(*(*(a1 + 72) + 8) + 40);
      v11 = [v2 requiredVerificationFieldData];
      [v10 setRequiredFieldData:v11];

      [*(*(*(a1 + 72) + 8) + 40) setChannel:0];
      [*(*(*(a1 + 72) + 8) + 40) setAllChannels:0];
LABEL_25:
      [*(a1 + 48) updateVerificationRecord:*(*(*(a1 + 72) + 8) + 40)];
      v19 = 1;
      goto LABEL_26;
  }

  v12 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    v13 = "Unknown state";
    goto LABEL_28;
  }

LABEL_19:

  v19 = 0;
LABEL_26:

  return v19;
}

- (id)removeRedundantMethodGroupsFromMethodGroups:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PKEnableGroupVerificationMethods();
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    goto LABEL_20;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v8)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v23 + 1) + 8 * i);
      v15 = [v14 legacyChannelRepresentation];
      v16 = v15;
      if (v15)
      {
        if ([v15 type] == 5)
        {
          v17 = v10;
          v10 = v14;
          v18 = v11;
        }

        else
        {
          v17 = v11;
          v18 = v14;
          if ([v16 type] != 8)
          {
            goto LABEL_12;
          }
        }

        v19 = v14;

        v11 = v18;
      }

LABEL_12:
    }

    v9 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v9);
  if (v10 && v11)
  {
    v20 = [v6 mutableCopy];
    [v20 removeObjectIdenticalTo:v10];
    v21 = [v20 copy];

    goto LABEL_19;
  }

LABEL_18:
  v21 = v6;
LABEL_19:
  v7 = v21;

LABEL_20:

  return v7;
}

- (id)_fakeVerificationMethodGroups
{
  v51[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51[0] = @"fake_email";
  v50[0] = @"identifier";
  v50[1] = @"type";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
  v51[1] = v3;
  v51[2] = MEMORY[0x1E695E110];
  v50[2] = @"requiresUserInteraction";
  v50[3] = @"contactPoint";
  v50[4] = @"sourceAddress";
  v51[3] = @"fakebank@apple.com";
  v51[4] = @"fakebank@apple.com";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];
  v5 = [PKVerificationChannel verificationChannelWithDictionary:v4 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v5];

  v49[0] = @"fake_sms";
  v48[0] = @"identifier";
  v48[1] = @"type";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2];
  v49[1] = v6;
  v48[2] = @"requiresUserInteraction";
  v48[3] = @"contactPoint";
  v48[4] = @"sourceAddress";
  v49[2] = MEMORY[0x1E695E110];
  v49[3] = @"123-456";
  v49[4] = @"123-456";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
  v8 = [PKVerificationChannel verificationChannelWithDictionary:v7 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v8];

  v47[0] = @"fake_inbound_call";
  v46[0] = @"identifier";
  v46[1] = @"type";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:3];
  v47[1] = v9;
  v47[2] = MEMORY[0x1E695E118];
  v46[2] = @"requiresUserInteraction";
  v46[3] = @"contactPoint";
  v46[4] = @"sourceAddress";
  v47[3] = @"123-456";
  v47[4] = @"123-456";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:5];
  v11 = [PKVerificationChannel verificationChannelWithDictionary:v10 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v11];

  v45[0] = @"fake_outbound_call";
  v44[0] = @"identifier";
  v44[1] = @"type";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
  v45[1] = v12;
  v44[2] = @"requiresUserInteraction";
  v44[3] = @"contactPoint";
  v44[4] = @"sourceAddress";
  v45[2] = MEMORY[0x1E695E118];
  v45[3] = @"(408) 300 2752";
  v45[4] = @"Bank";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:5];
  v14 = [PKVerificationChannel verificationChannelWithDictionary:v13 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v14];

  v43[0] = @"fake_outbound_call_no_number";
  v42[0] = @"identifier";
  v42[1] = @"type";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
  v43[1] = v15;
  v42[2] = @"requiresUserInteraction";
  v42[3] = @"sourceAddress";
  v43[2] = MEMORY[0x1E695E118];
  v43[3] = @"Bank";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v17 = [PKVerificationChannel verificationChannelWithDictionary:v16 andOrganizationName:@"Fake Bank"];
  v18 = v2;
  [v2 addObject:v17];

  v41[0] = @"fake_url";
  v40[0] = @"identifier";
  v40[1] = @"type";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:8];
  v41[1] = v19;
  v41[2] = @"Other";
  v40[2] = @"typeDescription";
  v40[3] = @"requiresUserInteraction";
  v20 = MEMORY[0x1E695E118];
  v41[3] = MEMORY[0x1E695E118];
  v41[4] = @"Chase App Clip or Web Page";
  v40[4] = @"contactPoint";
  v40[5] = @"sourceAddress";
  v41[5] = @"https://syndrome-stage.apple.com/verification";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:6];
  v22 = [PKVerificationChannel verificationChannelWithDictionary:v21 andOrganizationName:@"JP Morgan Chase"];
  [v2 addObject:v22];

  v39[0] = @"fake_statement";
  v38[0] = @"identifier";
  v38[1] = @"type";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:6];
  v39[1] = v23;
  v39[2] = v20;
  v38[2] = @"requiresUserInteraction";
  v38[3] = @"contactPoint";
  v38[4] = @"sourceAddress";
  v39[3] = @"Bank Statement";
  v39[4] = @"Bank Statement";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
  v25 = [PKVerificationChannel verificationChannelWithDictionary:v24 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v25];

  v37[0] = @"fake_other";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{7, @"identifier", @"type"}];
  v37[1] = v26;
  v37[2] = @"Other";
  v36[2] = @"typeDescription";
  v36[3] = @"requiresUserInteraction";
  v37[3] = MEMORY[0x1E695E118];
  v37[4] = @"Some other method...";
  v36[4] = @"contactPoint";
  v36[5] = @"sourceAddress";
  v37[5] = @"Other";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:6];
  v28 = [PKVerificationChannel verificationChannelWithDictionary:v27 andOrganizationName:@"Fake Bank"];
  [v2 addObject:v28];

  v29 = [v2 pk_arrayBySafelyApplyingBlock:&__block_literal_global_546];
  v30 = [v29 mutableCopy];

  v31 = [[PKPassVerificationMethodGroup alloc] initWithDictionary:&unk_1F23B65A8];
  [v30 addObject:v31];
  v32 = [[PKPassVerificationMethodGroup alloc] initWithDictionary:&unk_1F23B65F8];
  [v30 addObject:v32];
  v33 = [[PKPassVerificationMethodGroup alloc] initWithDictionary:&unk_1F23B6670];
  [v30 addObject:v33];
  v34 = [[PKPassVerificationMethodGroup alloc] initWithDictionary:&unk_1F23B6710];
  [v30 addObject:v34];

  return v30;
}

- (id)verificationRecordForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self context];
  v6 = [v4 uniqueID];

  v7 = [v5 verificationRequestRecordForUniqueID:v6];

  return v7;
}

- (void)updateVerificationRecord:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentWebService *)self context];
    v6 = [v4 passUniqueID];
    [v5 addVerificationRequestRecord:v4 forUniqueID:v6];

    [(PKPaymentWebService *)self _archiveContext];
  }

  if ([v4 verificationStatus] == 2)
  {
    v7 = [v4 channel];
    v8 = [v7 typeDescriptionUnlocalized];

    if (v8)
    {
      v10 = @"type";
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      AnalyticsSendEvent();
    }
  }
}

- (void)removeVerificationRequestRecord:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PKPaymentWebService *)self context];
    v6 = [v4 passUniqueID];

    [v5 removeVerificationRequestRecordForUniqueID:v6];

    [(PKPaymentWebService *)self _archiveContext];
  }
}

- (unint64_t)submitVerificationCode:(id)a3 verificationData:(id)a4 forPass:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E695DF70];
  v14 = a6;
  v15 = objc_alloc_init(v13);
  v39 = self;
  v16 = [(PKPaymentWebService *)self verificationRecordForPass:v12];
  v17 = [v16 methodGroups];

  if (v10)
  {
    v18 = [v17 pk_firstObjectPassingTest:&__block_literal_global_682];
    v19 = objc_alloc_init(PKPaymentVerificationSubmitMethodEntry);
    v20 = [v18 identifier];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"otp-group";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setMethodGroupIdentifier:v22];

    v23 = [v18 onlyMethod];
    v24 = [v23 identifier];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = @"otp";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setMethodIdentifier:v26];

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setVerificationCode:v10];
    [v15 addObject:v19];
  }

  if (v11)
  {
    v27 = [v17 pk_firstObjectPassingTest:&__block_literal_global_691];
    v28 = objc_alloc_init(PKPaymentVerificationSubmitMethodEntry);
    v29 = [v27 identifier];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = @"otp-group";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setMethodGroupIdentifier:v31];

    v32 = [v27 onlyMethod];
    v33 = [v32 identifier];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = @"otp";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setMethodIdentifier:v35];

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setVerificationData:v11];
    [v15 addObject:v28];
  }

  v36 = [v15 copy];
  v37 = [(PKPaymentWebService *)v39 submitVerificationEntries:v36 forPass:v12 completion:v14];

  return v37;
}

BOOL __82__PKPaymentWebService_submitVerificationCode_verificationData_forPass_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 onlyMethod];
  v3 = [v2 type] == 3;

  return v3;
}

- (unint64_t)submitVerificationEntries:(id)a3 forPass:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [v9 passTypeIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKPaymentWebService_submitVerificationEntries_forPass_completion___block_invoke;
  v17[3] = &unk_1E79DB7C8;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v21 = v11;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:v12 fields:0 completion:v17];

  return v11;
}

void __68__PKPaymentWebService_submitVerificationEntries_forPass_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKPaymentSubmitActivationCodeRequest);
    [(PKPaymentSubmitActivationCodeRequest *)v4 setPass:*(a1 + 40)];
    [(PKPaymentSubmitActivationCodeRequest *)v4 setEntries:*(a1 + 48)];
    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v4];
    v5 = [(PKPaymentSubmitActivationCodeRequest *)v4 _urlRequestWithBuilder:v3];
    v6 = *(a1 + 32);
    v7 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PKPaymentWebService_submitVerificationEntries_forPass_completion___block_invoke_2;
    v11[3] = &unk_1E79D1D40;
    v11[4] = v6;
    v12 = v4;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v8 = v4;
    [v6 performRequest:v5 taskIdentifier:v7 cacheResponse:0 completionHandler:v11];
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = [*(a1 + 32) _errorWithResult:0 data:0];
      (*(v9 + 16))(v9, 0, 0, v10);
    }
  }
}

void __68__PKPaymentWebService_submitVerificationEntries_forPass_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) _resultForResponse:v8 error:v9 successHandler:&__block_literal_global_694];
  if (v10 == 1)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) pass];
    v13 = [v11 verificationRecordForPass:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [PKVerificationRequestRecord verificationRequestRecordForPass:*(a1 + 48)];
    }

    v22 = v15;

    [v22 setVerificationStatus:3];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = *(a1 + 56);
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v42 + 1) + 8 * i) methodIdentifier];
          [v22 recordCompletedMethodForMethodIdentifier:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v25);
    }

    [*(a1 + 32) updateVerificationRecord:v22];
    v29 = *(a1 + 32);
    v30 = [*(a1 + 48) passTypeIdentifier];
    v31 = [*(a1 + 48) serialNumber];
    [v29 passWithPassTypeIdentifier:v30 serialNumber:v31 completion:*(a1 + 64)];

    AnalyticsSendEvent();
LABEL_29:

    goto LABEL_30;
  }

  v16 = v10;
  if (PKShowFakeVerificationChannels())
  {
    v17 = *(a1 + 32);
    v18 = [*(a1 + 40) pass];
    v19 = [v17 verificationRecordForPass:v18];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [PKVerificationRequestRecord verificationRequestRecordForPass:*(a1 + 48)];
    }

    v22 = v21;

    [v22 setVerificationStatus:3];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = *(a1 + 56);
    v33 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v39;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v38 + 1) + 8 * j) methodIdentifier];
          [v22 recordCompletedMethodForMethodIdentifier:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v34);
    }

    [*(a1 + 32) updateVerificationRecord:v22];
    (*(*(a1 + 64) + 16))();
    goto LABEL_29;
  }

  if (!v9)
  {
    v9 = [*(a1 + 32) _errorWithResult:v16 response:v8 data:v7];
  }

  (*(*(a1 + 64) + 16))();
  if (!v16)
  {
    AnalyticsSendEvent();
  }

LABEL_30:
}

- (unint64_t)verificationChannelsForPass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [PKPaymentVerificationOptionsRequest requestWithPass:a3];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKPaymentWebService_verificationChannelsForPass_completion___block_invoke;
  v11[3] = &unk_1E79DB7F0;
  v12 = v6;
  v8 = v6;
  v9 = [(PKPaymentWebService *)self verificationOptionsForRequest:v7 completion:v11];

  return v9;
}

void __62__PKPaymentWebService_verificationChannelsForPass_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [a3 allChannels];
  (*(v6 + 16))(v6, a2, v8, v7);
}

- (unint64_t)requestVerificationCodeForPass:(id)a3 usingChannel:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PKPaymentVerificationUpdateRequest);
  [(PKPaymentVerificationUpdateRequest *)v11 setPass:v10];

  [(PKPaymentVerificationUpdateRequest *)v11 setChannel:v9];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
  v12 = [(PKPaymentWebService *)self updateVerification:v11 completion:v8];

  return v12;
}

- (unint64_t)devicePassesSinceLastUpdatedTag:(BOOL)a3 withCompletion:(id)a4
{
  v18 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v20 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPaymentWebService *)self context];
  v19 = [v6 deviceID];
  if (v19)
  {
    [v6 regions];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v21 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v17 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [obj objectForKeyedSubscript:v8];
          v10 = objc_alloc_init(PKPaymentDevicePassesRequest);
          if (v18)
          {
            v11 = [v9 lastUpdatedTag];
            [(PKPaymentDevicePassesRequest *)v10 setUpdatedSince:v11];
          }

          [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
          v12 = [v9 brokerURL];
          v13 = [(PKPaymentWebService *)self _appleAccountInformation];
          v14 = [(PKPaymentDevicePassesRequest *)v10 _urlRequestWithServiceURL:v12 deviceIdentifier:v19 appleAccountInformation:v13];

          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke;
          v23[3] = &unk_1E79DB3A8;
          v23[4] = self;
          v24 = v6;
          v25 = v8;
          v26 = v5;
          [(PKWebService *)self performRequest:v14 taskIdentifier:v20 completionHandler:v23];
        }

        v21 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v15 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v5 + 2))(v5, 0, 0, v15);
  }

  return v20;
}

void __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__54;
  v37 = __Block_byref_object_dispose__54;
  v38 = 0;
  v10 = *(a1 + 32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke_2;
  v29[3] = &unk_1E79DBAC0;
  v32 = &v33;
  v11 = v7;
  v30 = v11;
  v12 = v8;
  v31 = v12;
  v13 = [v10 _resultForResponse:v12 error:v9 successHandler:v29];
  if (v13 == 1 && ([v34[5] passURLs], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    v16 = dispatch_queue_create("passDownloadQueue", 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke_3;
    v22[3] = &unk_1E79DB818;
    v17 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v27 = &v33;
    v18 = v17;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v23 = v18;
    v24 = v19;
    v26 = v20;
    v28 = 1;
    v9 = v9;
    v25 = v9;
    v21 = v22;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v40 = v21;
    dispatch_async(v16, block);
  }

  else
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v13 data:v11];
    }

    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v33, 8);
}

BOOL __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke_2(void *a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentPassesResponse responseWithData:a1[4]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return a1[5] != 0;
}

void __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 72) + 8) + 40) passURLs];
  v4 = [v2 _downloadPassesWithURLs:v3];

  v5 = [v4 count];
  v6 = [*(*(*(a1 + 72) + 8) + 40) passURLs];
  v7 = [v6 count];

  if (v5 == v7)
  {
    v8 = [*(*(*(a1 + 72) + 8) + 40) lastUpdatedTag];
    v9 = v8;
    if (v8)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke_4;
      v12[3] = &unk_1E79DB510;
      v13 = v8;
      [v10 atomicallyUpdateRegionWithIdentifier:v11 updateBlock:v12];
      [*(a1 + 32) _archiveContext];
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (unint64_t)passesWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 primaryRegion];

  v11 = [v10 brokerURL];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__PKPaymentWebService_passesWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CD770;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];

  return v8;
}

void __52__PKPaymentWebService_passesWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__54;
  v32 = __Block_byref_object_dispose__54;
  v33 = 0;
  v10 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__PKPaymentWebService_passesWithRequest_completion___block_invoke_2;
  v24[3] = &unk_1E79DBAC0;
  v27 = &v28;
  v11 = v7;
  v25 = v11;
  v12 = v8;
  v26 = v12;
  v13 = [v10 _resultForResponse:v12 error:v9 successHandler:v24];
  if (v13 == 1 && ([v29[5] passURLs], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    v16 = dispatch_queue_create("passDownloadQueue", 0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__PKPaymentWebService_passesWithRequest_completion___block_invoke_3;
    v19[3] = &unk_1E79DB840;
    v17 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v22 = &v28;
    v21 = v17;
    v23 = 1;
    v9 = v9;
    v20 = v9;
    v18 = v19;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v35 = v18;
    dispatch_async(v16, block);
  }

  else
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v13 data:v11];
    }

    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v28, 8);
}

BOOL __52__PKPaymentWebService_passesWithRequest_completion___block_invoke_2(void *a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentPassesResponse responseWithData:a1[4]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return a1[5] != 0;
}

void __52__PKPaymentWebService_passesWithRequest_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[7] + 8) + 40) passURLs];
  v4 = [v2 _downloadPassesWithURLs:v3];

  (*(a1[6] + 16))();
}

- (unint64_t)notifyIssuerAppletStateDirtyWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 primaryRegion];

  v11 = [(PKPaymentWebService *)self context];
  v12 = [v11 deviceID];

  if (v12)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v13 = [v10 brokerURL];
    v14 = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [v6 _urlRequestWithServiceURL:v13 deviceIdentifier:v12 appleAccountInformation:v14];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__PKPaymentWebService_notifyIssuerAppletStateDirtyWithRequest_completion___block_invoke;
    v17[3] = &unk_1E79CB9F0;
    v18 = v7;
    [(PKWebService *)self performRequest:v15 taskIdentifier:v8 retries:3 authHandling:1 completionHandler:v17];
  }

  return v8;
}

uint64_t __74__PKPaymentWebService_notifyIssuerAppletStateDirtyWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 statusCode];
  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (unint64_t)performNotificationActionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__PKPaymentWebService_performNotificationActionRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v14);
  }

  return v8;
}

void __67__PKPaymentWebService_performNotificationActionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__54;
  v23 = __Block_byref_object_dispose__54;
  v24 = 0;
  v10 = *(a1 + 32);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __67__PKPaymentWebService_performNotificationActionRequest_completion___block_invoke_2;
  v16 = &unk_1E79C8FA8;
  v18 = &v19;
  v11 = v7;
  v17 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v13];
  if (v12 == 1)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 1, v20[5], 0);
  }

  else
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
    }

    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v19, 8);
}

BOOL __67__PKPaymentWebService_performNotificationActionRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[PKPaymentNotificationActionResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)backgroundDownloadPassesSinceLastUpdatedTag:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PKPaymentWebService *)self context];
  v6 = [v5 regions];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PKPaymentWebService *)self backgroundDownloadPassesForPushTopic:*(*(&v11 + 1) + 8 * v10++) sinceLastUpdatedTag:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)backgroundDownloadPassesForPushTopic:(id)a3 sinceLastUpdatedTag:(BOOL)a4
{
  v6 = a3;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentWebService_backgroundDownloadPassesForPushTopic_sinceLastUpdatedTag___block_invoke;
  v10[3] = &unk_1E79C9618;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v14 = v8;
  v9 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __80__PKPaymentWebService_backgroundDownloadPassesForPushTopic_sinceLastUpdatedTag___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 deviceID];
  if (v3)
  {
    v4 = [v2 regionForIdentifier:*(a1 + 40)];
    v5 = objc_alloc_init(PKPaymentDevicePassesRequest);
    if (*(a1 + 48) == 1)
    {
      v6 = [v4 lastUpdatedTag];
      [(PKPaymentDevicePassesRequest *)v5 setUpdatedSince:v6];
    }

    [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v5];
    v7 = [v4 brokerURL];
    v8 = [*(a1 + 32) _appleAccountInformation];
    v9 = [(PKPaymentDevicePassesRequest *)v5 _urlRequestWithServiceURL:v7 deviceIdentifier:v3 appleAccountInformation:v8];
    v10 = [v9 mutableCopy];

    [MEMORY[0x1E695AC60] setProperty:*(a1 + 40) forKey:@"regionPushTopic" inRequest:v10];
    v11 = MEMORY[0x1E695AC60];
    v12 = [MEMORY[0x1E695DF00] date];
    [v11 setProperty:v12 forKey:@"requestDate" inRequest:v10];

    v13 = [*(*(a1 + 32) + 120) downloadTaskWithRequest:v10];
    v14 = [PKPaymentBackgroundDownloadRecord taskWithType:1];
    [v14 setPushTopic:*(a1 + 40)];
    v15 = [*(a1 + 32) backgroundContext];
    [v15 addBackgroundDownloadRecord:v14 forTaskIdentifier:{objc_msgSend(v13, "taskIdentifier")}];

    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 taskIdentifier];
      v18 = *(a1 + 40);
      v19 = 134218242;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu from %@:", &v19, 0x16u);
    }

    [*(a1 + 32) logRequest:v10];
    [v13 resume];
    [*(a1 + 32) _archiveBackgroundContext];
  }
}

- (void)getHasBackgroundDownloadTaskPassesForPushTopic:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 120);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke_2;
  v5[3] = &unk_1E79DB868;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 getTasksWithCompletionHandler:v5];
}

void __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 176);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke_3;
  v10[3] = &unk_1E79C4EF0;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, v10);
}

void __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v3)
  {

LABEL_24:
    (*(*(a1 + 56) + 16))();
    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v25;
  v23 = v2;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v24 + 1) + 8 * i);
      v9 = [v8 taskIdentifier];
      v10 = [*(a1 + 40) backgroundContext];
      v11 = [v10 backgroundDownloadRecordForTaskIdentifier:v9];

      if ([v11 taskType] == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 pushTopic];
          if ([v12 isEqualToString:*(a1 + 48)])
          {
            v13 = v5;
            v14 = MEMORY[0x1E695AC60];
            v15 = [v8 originalRequest];
            v16 = [v14 propertyForKey:@"requestDate" inRequest:v15];
            v17 = v16;
            if (v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = [MEMORY[0x1E695DF00] distantPast];
            }

            v19 = v18;

            v5 = v13;
            if (!v13 || [v13 compare:v19] == -1)
            {
              v20 = v19;

              v5 = v20;
            }

            v2 = v23;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v4);

  if (!v5)
  {
    goto LABEL_24;
  }

  v21 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 48);
    *buf = 138412546;
    v29 = v22;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Found existing background download passes request with push topic: %@; request date: %@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
}

- (unint64_t)passAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PKPaymentWebService_passAtURL_completion___block_invoke;
  v10[3] = &unk_1E79DB890;
  v11 = v6;
  v7 = v6;
  v8 = [(PKPaymentWebService *)self passAtURL:a3 completionWithError:v10];

  return v8;
}

- (unint64_t)passAtURL:(id)a3 completionWithError:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKPaymentWebService_passAtURL_completionWithError___block_invoke;
  v10[3] = &unk_1E79DB890;
  v11 = v6;
  v7 = v6;
  v8 = [(PKPaymentWebService *)self _downloadPassAtURL:a3 completion:v10];

  return v8;
}

- (void)_backgroundDownloadPassAtURL:(id)a3 fromPushTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentWebService__backgroundDownloadPassAtURL_fromPushTopic___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __66__PKPaymentWebService__backgroundDownloadPassAtURL_fromPushTopic___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PKPaymentWebServiceRequest);
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v2];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _appleAccountInformation];
  v5 = [(PKWebServiceRequest *)v2 _murlRequestWithURL:v3 appleAccountInformation:v4];

  v6 = [*(*(a1 + 32) + 120) downloadTaskWithRequest:v5];
  v7 = [PKPaymentBackgroundDownloadRecord taskWithType:2];
  [v7 setPushTopic:*(a1 + 48)];
  v8 = [*(a1 + 32) backgroundContext];
  [v8 addBackgroundDownloadRecord:v7 forTaskIdentifier:{objc_msgSend(v6, "taskIdentifier")}];

  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 taskIdentifier];
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = 134218498;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu from %@ for %@:", &v13, 0x20u);
  }

  [*(a1 + 32) logRequest:v5];
  [v6 resume];
  [*(a1 + 32) _archiveBackgroundContext];
}

- (void)backgroundDownloadRemotePassAssets:(id)a3 forSuffixesAndScreenScales:(id)a4 cloudStoreCoordinatorDelegate:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v24 = &stru_1F227FD28;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:PKScreenScale()];
    v25[0] = v11;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke;
  v17[3] = &unk_1E79C9668;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v23 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(backgroundDownloadQueue, block);
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) organizationName];
    v4 = [*(a1 + 32) serialNumber];
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Downloading Remote Pass Assets for %@:%@", buf, 0x16u);
  }

  v5 = [*(a1 + 40) _movePassToDownloadCache:*(a1 + 32)];
  v32 = v5;
  if (v5)
  {
    v6 = [v5 dataAccessor];
    v7 = [*(*(a1 + 40) + 256) secureElementIdentifiers];
    v34 = [v6 remoteAssetManagerForSEIDs:v7];

    v31 = [v34 remoteAssetManifests];
    if ([v31 count])
    {
      v35 = [PKPaymentBackgroundDownloadRecord taskWithType:3];
      v8 = [*(a1 + 32) passTypeIdentifier];
      [v35 setPushTopic:v8];

      v9 = [v32 dataAccessor];
      v10 = [v9 fileURL];
      [v35 setPassURL:v10];

      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 1;
      v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v11 = v31;
      v12 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v12)
      {
        v13 = *v53;
        do
        {
          v14 = 0;
          do
          {
            if (*v53 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v52 + 1) + 8 * v14);
            v16 = *(a1 + 48);
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_725;
            v45[3] = &unk_1E79DB8B8;
            v45[4] = v15;
            v46 = v33;
            v17 = v34;
            v51 = &v56;
            v18 = *(a1 + 40);
            v47 = v17;
            v48 = v18;
            v49 = v35;
            v50 = *(a1 + 56);
            [v16 enumerateKeysAndObjectsUsingBlock:v45];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v12);
      }

      if (*(v57 + 24) == 1)
      {
        v19 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v32 organizationName];
          v21 = [*(a1 + 32) serialNumber];
          *buf = 138412546;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "No background download tasks -- delivering pass immediately: %@:%@", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
        v23 = dispatch_get_global_queue(21, 0);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_732;
        v41[3] = &unk_1E79C4E00;
        v24 = *(a1 + 40);
        v42 = WeakRetained;
        v43 = v24;
        v44 = v32;
        v25 = v41;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __dispatch_async_ar_block_invoke_14;
        v62 = &unk_1E79C4428;
        v63 = v25;
        v26 = WeakRetained;
        dispatch_async(v23, buf);
      }

      [*(a1 + 40) _archiveBackgroundContext];

      _Block_object_dispose(&v56, 8);
    }

    else
    {
      v27 = objc_loadWeakRetained((*(a1 + 40) + 248));
      v28 = dispatch_get_global_queue(21, 0);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_734;
      v37[3] = &unk_1E79C9668;
      v38 = v27;
      v36 = *(a1 + 32);
      v29 = v36.i64[0];
      v39 = vextq_s8(v36, v36, 8uLL);
      v40 = v32;
      v30 = v37;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __dispatch_async_ar_block_invoke_14;
      v62 = &unk_1E79C4428;
      v63 = v30;
      v35 = v27;
      dispatch_async(v28, buf);
    }

    v5 = v32;
  }
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_725(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v5 length])
  {

    v5 = 0;
  }

  [v6 floatValue];
  v8 = [*(a1 + 32) deviceSpecificAssetForScreenScale:v5 suffix:v7];
  v9 = [v8 remoteURL];
  if (!v8)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v11 = [*(a1 + 32) fileURL];
    v12 = [v11 lastPathComponent];
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "**** ERROR **** : Could not find device specific asset for manifest: %@", buf, 0xCu);

LABEL_29:
    goto LABEL_30;
  }

  if (![*(a1 + 40) containsObject:v9])
  {
    v10 = [v8 localURL];
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v10 path];
    v15 = [v13 fileExistsAtPath:v14];

    if (v15)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10];
      v16 = [v12 SHA1Hash];
      v17 = [v16 hexEncoding];

      v18 = [v8 sha1Hex];
      v19 = [v18 isEqualToString:v17];

      if (v19)
      {
        v20 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v9;
          _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Not downloading: %@ since the asset already exists in the pass directory", buf, 0xCu);
        }

        [*(a1 + 48) addRemoteAssetData:v12 shouldWriteData:0 forManifestItem:v8 error:0];
      }

      goto LABEL_29;
    }

    v21 = [v8 sha1Hex];
    v12 = PKCachedFileForSHA1(v21);

    if (v12)
    {
      v22 = [v8 sha1Hex];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_728;
      v35[3] = &unk_1E79C8898;
      v36 = v9;
      PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v22, v35);

      [*(a1 + 48) addRemoteAssetData:v12 forManifestItem:v8 error:0];
      goto LABEL_29;
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
    v23 = [v8 itemType];
    if (v23 == 1)
    {
      v25 = v8;
      v24 = [v25 recordName];
      v31 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v24;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Background downloading from the cloud store: %@", buf, 0xCu);
      }

      [*(a1 + 64) setRemoteCloudStoreAsset:v25 forRecordName:v24];
      v32 = [*(a1 + 56) backgroundContext];
      [v32 addBackgroundDownloadRecord:*(a1 + 64) forRecordName:v24];

      [*(a1 + 56) _backgroundDownloadCloudStoreAssetsForItem:v25 cloudStoreCoordinatorDelegate:*(a1 + 72)];
    }

    else
    {
      if (v23)
      {
LABEL_28:
        [*(a1 + 40) addObject:v9];
        v12 = 0;
        goto LABEL_29;
      }

      log = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "Background downloading: %@", buf, 0xCu);
      }

      v24 = [MEMORY[0x1E695AC68] requestWithURL:v9];
      v25 = [*(*(a1 + 56) + 120) downloadTaskWithRequest:v24];
      v26 = *(a1 + 64);
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "taskIdentifier")}];
      [v26 setRemoteURLAsset:v8 forTaskIdentifier:v27];

      v28 = [*(a1 + 56) backgroundContext];
      [v28 addBackgroundDownloadRecord:*(a1 + 64) forTaskIdentifier:{objc_msgSend(v25, "taskIdentifier")}];

      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v25 taskIdentifier];
        v29 = [v8 localURL];
        v30 = [v29 lastPathComponent];
        *buf = 134218242;
        v38 = v33;
        v39 = 2112;
        v40 = v30;
        _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu for %@", buf, 0x16u);
      }

      [*(a1 + 56) logRequest:v24];
      [v25 resume];
    }

    goto LABEL_28;
  }

  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Download already requested for %@", buf, 0xCu);
  }

LABEL_30:
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_728(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Using cached copy of %@ at %@", &v6, 0x16u);
  }
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_732(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_2;
  v4[3] = &unk_1E79C4E28;
  v5 = v3;
  [v1 paymentWebService:v2 didDownloadPassRemoteAssets:v5 completion:v4];
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataAccessor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) dataAccessor];
    v5 = [v4 fileURL];

    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up download cache copy of pass: %@", &v8, 0xCu);
    }

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    [v7 removeItemAtURL:v5 error:0];
  }
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_734(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_2_735;
  v4[3] = &unk_1E79C4E28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 paymentWebService:v2 didDownloadPassRemoteAssets:v3 completion:v4];
}

void __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke_2_735(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataAccessor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) dataAccessor];
    v5 = [v4 fileURL];

    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up download cache copy of pass: %@", &v8, 0xCu);
    }

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    [v7 removeItemAtURL:v5 error:0];
  }
}

- (unint64_t)passWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 regionForIdentifier:v8];

  if (v13)
  {
    [v13 brokerURL];
  }

  else
  {
    [(PKPaymentWebService *)self primaryBrokerURL];
  }
  v14 = ;
  v15 = [[PKPaymentPassRequest alloc] initWithPassTypeID:v8 serialNumber:v10];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
  v16 = [(PKPaymentWebService *)self _appleAccountInformation];
  v17 = [(PKPaymentPassRequest *)v15 _urlRequestWithServiceURL:v14 appleAccountInformation:v16];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__PKPaymentWebService_passWithPassTypeIdentifier_serialNumber_completion___block_invoke;
  v20[3] = &unk_1E79CD770;
  v20[4] = self;
  v21 = v9;
  v18 = v9;
  [(PKWebService *)self performRequest:v17 taskIdentifier:v11 completionHandler:v20];

  return v11;
}

- (void)backgroundDownloadWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaymentWebService_backgroundDownloadWithPassTypeIdentifier_serialNumber___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __77__PKPaymentWebService_backgroundDownloadWithPassTypeIdentifier_serialNumber___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 regionForIdentifier:*(a1 + 40)];

  if (v3)
  {
    [v3 brokerURL];
  }

  else
  {
    [*(a1 + 32) primaryBrokerURL];
  }
  v4 = ;
  v5 = [[PKPaymentPassRequest alloc] initWithPassTypeID:*(a1 + 40) serialNumber:*(a1 + 48)];
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:v5];
  v6 = [*(a1 + 32) _appleAccountInformation];
  v7 = [(PKPaymentPassRequest *)v5 _urlRequestWithServiceURL:v4 appleAccountInformation:v6];

  [*(a1 + 32) logRequest:v7];
  v8 = [*(*(a1 + 32) + 120) downloadTaskWithRequest:v7];
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 taskIdentifier];
    v11 = [v7 URL];
    v14 = 134218242;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu: %@", &v14, 0x16u);
  }

  v12 = [PKPaymentBackgroundDownloadRecord taskWithType:2];
  [v12 setPushTopic:*(a1 + 40)];
  v13 = [*(a1 + 32) backgroundContext];
  [v13 addBackgroundDownloadRecord:v12 forTaskIdentifier:{objc_msgSend(v8, "taskIdentifier")}];

  [*(a1 + 32) _archiveBackgroundContext];
  [v8 resume];
}

- (void)backgroundRegisterCredentialWithRequest:(id)a3
{
  v4 = a3;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PKPaymentWebService_backgroundRegisterCredentialWithRequest___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  v7 = v4;
  dispatch_async(backgroundDownloadQueue, block);
}

void __63__PKPaymentWebService_backgroundRegisterCredentialWithRequest___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 deviceID];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) primaryBrokerURL];
  v6 = [*(a1 + 32) _appleAccountInformation];
  v7 = [v4 _urlRequestWithServiceURL:v5 deviceIdentifier:v3 appleAccountInformation:v6];

  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
  [*(a1 + 32) logRequest:v7];
  v8 = [*(a1 + 40) credential];
  v9 = [v8 identifier];

  v10 = [[PKPaymentBackgroundRegisterCredentialRecord alloc] initWithCredentialIdentifier:v9];
  v11 = [*(*(a1 + 32) + 120) dataTaskWithRequest:v7];
  v12 = PKLogFacilityTypeGetObject(0x17uLL);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v15 = 134218242;
      v16 = [v11 taskIdentifier];
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Creating background credential registration task (%lu) for credential: %@", &v15, 0x16u);
    }

    v14 = [*(a1 + 32) backgroundContext];
    [v14 addBackgroundDownloadRecord:v10 forTaskIdentifier:{objc_msgSend(v11, "taskIdentifier")}];

    [*(a1 + 32) _archiveBackgroundContext];
    [v11 resume];
  }

  else
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create background credential registration task for credential: %@", &v15, 0xCu);
    }
  }
}

- (unint64_t)pushProvisioningSharingIdentifiersWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKWebService *)self nextTaskID];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v9 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKPaymentWebService_pushProvisioningSharingIdentifiersWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v10 completionHandler:v16];

  return v10;
}

void __80__PKPaymentWebService_pushProvisioningSharingIdentifiersWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [[PKPaymentPushProvisioningSharingIdentifiersResponse alloc] initWithData:v7];

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)pushProvisioningSharingStatusRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKWebService *)self nextTaskID];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v9 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PKPaymentWebService_pushProvisioningSharingStatusRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v10 completionHandler:v16];

  return v10;
}

void __71__PKPaymentWebService_pushProvisioningSharingStatusRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [[PKPaymentPushProvisioningSharingStatusResponse alloc] initWithData:v7];

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)provideEncryptedPushProvisioningTargetWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKWebService *)self nextTaskID];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v9 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PKPaymentWebService_provideEncryptedPushProvisioningTargetWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v10 completionHandler:v16];

  return v10;
}

- (unint64_t)contactInformationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKWebService *)self nextTaskID];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v9 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PKPaymentWebService_contactInformationWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CD770;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v10 completionHandler:v16];

  return v10;
}

void __64__PKPaymentWebService_contactInformationWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__54;
  v26 = __Block_byref_object_dispose__54;
  v27 = 0;
  v10 = *(a1 + 32);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__PKPaymentWebService_contactInformationWithRequest_completion___block_invoke_2;
  v19 = &unk_1E79C8FA8;
  v21 = &v22;
  v11 = v7;
  v20 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v16];
  if (!v9)
  {
    v13 = v12;
    if (v12 != 1)
    {
      v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v16, v17, v18, v19}];
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = [v23[5] contactInformation];
    (*(v14 + 16))(v14, v15, v9);
  }

  _Block_object_dispose(&v22, 8);
}

BOOL __64__PKPaymentWebService_contactInformationWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[PKContactInformationResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)availableProductsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = PKProductsURL();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v15 = v13;

    v16 = [(PKPaymentWebService *)self _appleAccountInformation];
    v17 = [v6 _urlRequestWithServiceURL:v15 deviceIdentifier:v10 appleAccountInformation:v16];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PKPaymentWebService_availableProductsWithRequest_completion___block_invoke;
    v19[3] = &unk_1E79CD770;
    v19[4] = self;
    v20 = v7;
    [(PKWebService *)self performRequest:v17 taskIdentifier:v8 completionHandler:v19];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v14);
  }

  return v8;
}

void __63__PKPaymentWebService_availableProductsWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__54;
  v28 = __Block_byref_object_dispose__54;
  v29 = 0;
  v10 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__PKPaymentWebService_availableProductsWithRequest_completion___block_invoke_2;
  v20[3] = &unk_1E79DBAC0;
  v11 = v8;
  v21 = v11;
  v23 = &v24;
  v12 = v7;
  v22 = v12;
  v13 = [v10 _resultForResponse:v11 error:v9 successHandler:v20];
  v14 = PKGetPaymentSetupProductState();
  v15 = PKPaymentSetupProductStateFromString(v14);

  if (!v15 || v13)
  {
    if (!v9 && v13 != 1)
    {
      v9 = [*(a1 + 32) _errorWithResult:v13 data:v12];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:&unk_1F23B6788 options:0 error:0];
    v17 = [(PKWebServiceResponse *)PKPaymentAvailableProductsResponse responseWithData:v16];
    v18 = v25[5];
    v25[5] = v17;

    v13 = 1;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v13, v25[5], v9);
  }

  _Block_object_dispose(&v24, 8);
}

BOOL __63__PKPaymentWebService_availableProductsWithRequest_completion___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) allHeaderFields];
  }

  else
  {
    v2 = 0;
  }

  v3 = [(PKWebServiceResponse *)PKPaymentAvailableProductsResponse responseWithData:*(a1 + 40) headers:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v6;
}

- (unint64_t)availableCommonProductsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v9 = [v7 _urlRequest];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPaymentWebService_availableCommonProductsWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = v6;
  v10 = v6;
  [(PKWebService *)self performRequest:v9 taskIdentifier:v8 completionHandler:v12];

  return v8;
}

void __69__PKPaymentWebService_availableCommonProductsWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentWebService_availableCommonProductsWithRequest_completion___block_invoke_2;
  v16[3] = &unk_1E79DBAC0;
  v11 = v8;
  v17 = v11;
  v19 = &v20;
  v12 = v7;
  v18 = v12;
  v13 = [v10 _resultForResponse:v11 error:v9 successHandler:v16];
  v14 = v13;
  if (!v9 && v13 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v13 response:v11 data:v12];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v14, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

BOOL __69__PKPaymentWebService_availableCommonProductsWithRequest_completion___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) allHeaderFields];
  }

  else
  {
    v2 = 0;
  }

  v3 = [(PKWebServiceResponse *)PKPaymentAvailableProductsResponse responseWithData:*(a1 + 40) headers:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v6;
}

- (unint64_t)performProductActionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = PKProductsURL();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v15 = v13;

    v16 = [(PKPaymentWebService *)self _appleAccountInformation];
    v17 = [v6 _urlRequestWithServiceURL:v15 deviceIdentifier:v10 appleAccountInformation:v16];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PKPaymentWebService_performProductActionRequest_completion___block_invoke;
    v19[3] = &unk_1E79CD770;
    v19[4] = self;
    v20 = v7;
    [(PKWebService *)self performRequest:v17 taskIdentifier:v8 completionHandler:v19];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v14);
  }

  return v8;
}

void __62__PKPaymentWebService_performProductActionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__54;
  v29 = __Block_byref_object_dispose__54;
  v30 = 0;
  v10 = *(a1 + 32);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __62__PKPaymentWebService_performProductActionRequest_completion___block_invoke_2;
  v22 = &unk_1E79C8FA8;
  v24 = &v25;
  v11 = v7;
  v23 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v19];
  v13 = PKGetPaymentSetupProductState();
  v14 = PKPaymentSetupProductStateFromString(v13);

  if (!v14 || v12)
  {
    if (!v9 && v12 != 1)
    {
      v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v19, v20, v21, v22}];
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:&unk_1F23B67B0 options:0 error:{0, v19, v20, v21, v22}];
    v16 = [(PKWebServiceResponse *)PKPaymentAvailableProductsResponse responseWithData:v15];
    v17 = v26[5];
    v26[5] = v16;

    v12 = 1;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v12, v26[5], v9);
  }

  _Block_object_dispose(&v25, 8);
}

BOOL __62__PKPaymentWebService_performProductActionRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentAvailableProductsResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)browseableBankAppsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PKPaymentWebService_browseableBankAppsWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v14);
  }

  return v8;
}

void __64__PKPaymentWebService_browseableBankAppsWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__54;
  v26 = __Block_byref_object_dispose__54;
  v27 = 0;
  v10 = *(a1 + 32);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__PKPaymentWebService_browseableBankAppsWithRequest_completion___block_invoke_2;
  v19 = &unk_1E79C8FA8;
  v21 = &v22;
  v11 = v7;
  v20 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v16];
  v13 = v12;
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v16, v17, v18, v19}];
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error retreiving partner banks: %@", buf, 0xCu);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v13, v23[5], v9);
  }

  _Block_object_dispose(&v22, 8);
}

BOOL __64__PKPaymentWebService_browseableBankAppsWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentBrowseableBankAppsResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)provisioningMethodWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PKPaymentWebService_provisioningMethodWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, 0, v14);
  }

  return v8;
}

void __64__PKPaymentWebService_provisioningMethodWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__54;
  v25 = __Block_byref_object_dispose__54;
  v26 = 0;
  v10 = *(a1 + 32);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __64__PKPaymentWebService_provisioningMethodWithRequest_completion___block_invoke_2;
  v18 = &unk_1E79C8FA8;
  v20 = &v21;
  v11 = v7;
  v19 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v15];
  v13 = v12;
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v15, v16, v17, v18}];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v13, v22[5], v9);
  }

  _Block_object_dispose(&v21, 8);
}

BOOL __64__PKPaymentWebService_provisioningMethodWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentProvisioningMethodMetadataResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)passUpgradeWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v10)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKPaymentWebService_passUpgradeWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = v7;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];
  }

  else if (v7)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, v14, 0);
  }

  return v8;
}

void __57__PKPaymentWebService_passUpgradeWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__54;
  v25 = __Block_byref_object_dispose__54;
  v26 = 0;
  v10 = *(a1 + 32);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __57__PKPaymentWebService_passUpgradeWithRequest_completion___block_invoke_2;
  v18 = &unk_1E79C8FA8;
  v20 = &v21;
  v11 = v7;
  v19 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v15];
  if (v12 != 1)
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v15, v16, v17, v18}];
    }

    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Pass update request action failed with error %@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v9, v22[5]);
  }

  _Block_object_dispose(&v21, 8);
}

BOOL __57__PKPaymentWebService_passUpgradeWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentRequestPassUpdateResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)paymentProvisioningNonceOfType:(unint64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PKWebService *)self nextTaskID];
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  if (v9)
  {
    v10 = [(PKPaymentWebService *)self primaryBrokerURL];
    v11 = [[PKPaymentProvisioningNonceRequest alloc] initWithNonceType:a3];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [(PKPaymentProvisioningNonceRequest *)v11 _urlRequestWithServiceURL:v10 deviceIdentifier:v9 appleAccountInformation:v12];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__PKPaymentWebService_paymentProvisioningNonceOfType_completion___block_invoke;
    v17[3] = &unk_1E79CD770;
    v17[4] = self;
    v18 = v6;
    [(PKWebService *)self performRequest:v13 taskIdentifier:v7 completionHandler:v17];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PKPaymentWebService *)self context];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get provisioning nonce, deviceID unavailable for context: %@", buf, 0xCu);
    }

    v10 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v6 + 2))(v6, 0, v10);
  }

  return v7;
}

void __65__PKPaymentWebService_paymentProvisioningNonceOfType_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__54;
  v19[4] = __Block_byref_object_dispose__54;
  v20 = 0;
  v10 = *(a1 + 32);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__PKPaymentWebService_paymentProvisioningNonceOfType_completion___block_invoke_2;
  v16 = &unk_1E79C8FA8;
  v18 = v19;
  v11 = v7;
  v17 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v13];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(v19, 8);
}

BOOL __65__PKPaymentWebService_paymentProvisioningNonceOfType_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentProvisioningNonceResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 forPass:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 remoteContentConfiguration];
  v12 = [v11 requiresAppletData];

  if (v12)
  {
    v13 = [(PKPaymentWebService *)self _passActionIncludingAppletDataWithRemoteContentPassAction:v10 pass:v9 completion:v8];
  }

  else
  {
    v13 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:v10 pass:v9 completion:v8];
  }

  v14 = v13;

  return v14;
}

- (unint64_t)_passActionIncludingAppletDataWithRemoteContentPassAction:(id)a3 pass:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 deviceID];

  if (v13)
  {
    targetDevice = self->_targetDevice;
    v15 = [v9 secureElementPass];
    v16 = [v8 remoteContentConfiguration];
    v17 = [v16 appletDataRequiresEncryption];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PKPaymentWebService__passActionIncludingAppletDataWithRemoteContentPassAction_pass_completion___block_invoke;
    v21[3] = &unk_1E79DB8E0;
    v24 = v10;
    v21[4] = self;
    v22 = v8;
    v23 = v9;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice serviceProviderDataForSecureElementPass:v15 encrypted:v17 completion:v21];

    v18 = v24;
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "No device identifier present - exiting early", buf, 2u);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, 0, v18);
  }

  return v11;
}

void __97__PKPaymentWebService__passActionIncludingAppletDataWithRemoteContentPassAction_pass_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _passActionWithRemoteContentPassAction:*(a1 + 40) serviceProviderData:v5 pass:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received nil service provider data with error %@", &v9, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 forDeviceIdentifier:(id)a4 passTypeIdentifier:(id)a5 passSerialNumber:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PKWebService *)self nextTaskID];
  if (v13)
  {
    v18 = objc_alloc_init(PKPaymentRemoteContentPassActionRequest);
    [(PKPaymentRemoteContentPassActionRequest *)v18 setAction:v12];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
    v19 = [(PKPaymentWebService *)self primaryBrokerURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v20 = v12;
    v22 = v21 = v17;
    [(PKPaymentRemoteContentPassActionRequest *)v18 _urlRequestWithServiceURL:v19 deviceIdentifier:v13 passTypeIdentifier:v14 passSerialNumber:v15 appleAccountInformation:v22];
    v23 = v26 = v14;

    v17 = v21;
    v12 = v20;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __128__PKPaymentWebService_passActionWithRemoteContentPassAction_forDeviceIdentifier_passTypeIdentifier_passSerialNumber_completion___block_invoke;
    v28[3] = &unk_1E79CD770;
    v29 = v20;
    v30 = v16;
    [(PKWebService *)self performRequest:v23 taskIdentifier:v17 completionHandler:v28];

    v14 = v26;
  }

  else
  {
    v24 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(v16 + 2))(v16, 0, 0);
  }

  return v17;
}

void __128__PKPaymentWebService_passActionWithRemoteContentPassAction_forDeviceIdentifier_passTypeIdentifier_passSerialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action failed with error %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [[PKPaymentRemoteContentPassActionResponse alloc] initWithExistingAction:*(a1 + 32) pass:0 data:v7];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = [(PKPaymentRemoteContentPassActionResponse *)v11 updatedAction];
    (*(v13 + 16))(v13, v14, v10);
  }
}

- (unint64_t)_passActionWithRemoteContentPassAction:(id)a3 pass:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 deviceID];

  v14 = [v9 passTypeIdentifier];
  v15 = [v9 serialNumber];
  v16 = v15;
  if (v13)
  {
    v17 = objc_alloc_init(PKPaymentRemoteContentPassActionRequest);
    [(PKPaymentRemoteContentPassActionRequest *)v17 setAction:v8];
    v30 = v9;
    v18 = v17;
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v17];
    v19 = [(PKPaymentWebService *)self primaryBrokerURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v20 = v10;
    v21 = v11;
    v23 = v22 = v8;
    [(PKPaymentRemoteContentPassActionRequest *)v18 _urlRequestWithServiceURL:v19 deviceIdentifier:v13 passTypeIdentifier:v14 passSerialNumber:v16 appleAccountInformation:v23];
    v31 = v13;
    v25 = v24 = v14;

    v8 = v22;
    v11 = v21;
    v10 = v20;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__PKPaymentWebService__passActionWithRemoteContentPassAction_pass_completion___block_invoke;
    v33[3] = &unk_1E79D1CC8;
    v34 = v8;
    v35 = v30;
    v36 = v20;
    [(PKWebService *)self performRequest:v25 taskIdentifier:v11 completionHandler:v33];

    v26 = v31;
    v9 = v30;
  }

  else
  {
    v27 = v15;
    v24 = v14;
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(v10 + 2))(v10, 0, 0);
    v26 = 0;
    v16 = v27;
  }

  return v11;
}

void __78__PKPaymentWebService__passActionWithRemoteContentPassAction_pass_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action failed with error %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [[PKPaymentRemoteContentPassActionResponse alloc] initWithExistingAction:a1[4] pass:a1[5] data:v7];
  }

  v13 = a1[6];
  if (v13)
  {
    v14 = [(PKPaymentRemoteContentPassActionResponse *)v11 updatedAction];
    (*(v13 + 16))(v13, v14, v10);
  }
}

- (unint64_t)passActionWithRemoteContentPassAction:(id)a3 serviceProviderData:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v13 remoteContentConfiguration];
  v15 = [v14 requiresAppletData];

  if (v15)
  {
    v16 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:v13 serviceProviderData:v10 pass:v12 completion:v11];
  }

  else
  {
    v16 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:v13 pass:v12 completion:v11];
  }

  v17 = v16;

  return v17;
}

- (unint64_t)_passActionWithRemoteContentPassAction:(id)a3 serviceProviderData:(id)a4 pass:(id)a5 completion:(id)a6
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKWebService *)self nextTaskID];
  if (v11)
  {
    [v10 setAppletData:v11];
    [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:v10 pass:v12 completion:v13];
    v15 = v13;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Error: Found nil encrypted service provider data.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = [v16 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v17];

    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 localizedDescription];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Found nil service provider data; returning error: %@", &v21, 0xCu);
    }

    (*(v13 + 2))(v13, 0, v15);
  }

  return v14;
}

- (unint64_t)passActionGroupWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKPaymentWebService *)self context];
  v12 = [v11 deviceID];

  v13 = [v10 remoteContentConfiguration];
  v14 = [v13 requiresAppletData];

  if (v14)
  {
    v15 = [(PKPaymentWebService *)self _passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:v10 forPass:v9 forDeviceIdentifier:v12 completion:v8];
  }

  else
  {
    v15 = [(PKPaymentWebService *)self _passActionGroupWithRemoteContentPassActionGroup:v10 forPass:v9 forDeviceIdentifier:v12 completion:v8];
  }

  v16 = v15;

  return v16;
}

- (unint64_t)_passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 forDeviceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKWebService *)self nextTaskID];
  v15 = [v11 passTypeIdentifier];
  v16 = [v11 serialNumber];
  if (!v12)
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "No device identifier present - exiting early", buf, 2u);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v13[2](v13, 0, v18);
  }

  targetDevice = self->_targetDevice;
  [v11 secureElementPass];
  v19 = v30 = v14;
  v20 = [v10 remoteContentConfiguration];
  v28 = [v20 appletDataRequiresEncryption];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __130__PKPaymentWebService__passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke;
  v31[3] = &unk_1E79DB908;
  v32 = v10;
  v33 = self;
  v34 = v12;
  v35 = v15;
  v38 = v13;
  v39 = v14;
  v36 = v16;
  v37 = v11;
  v21 = v11;
  v22 = v16;
  v23 = v15;
  v24 = v12;
  v25 = v10;
  v26 = v13;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice serviceProviderDataForSecureElementPass:v19 encrypted:v28 completion:v31];

  return v30;
}

void __130__PKPaymentWebService__passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setAppletData:v5];
    v7 = [*(a1 + 40) primaryBrokerURL];
    v8 = objc_alloc_init(PKPaymentRemoteContentPassActionGroupRequest);
    [(PKPaymentRemoteContentPassActionGroupRequest *)v8 setActionGroup:*(a1 + 32)];
    [*(a1 + 40) _updateRequestWithCurrentTargetDevice:v8];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 40) _appleAccountInformation];
    v13 = [(PKPaymentRemoteContentPassActionGroupRequest *)v8 _urlRequestWithServiceURL:v7 deviceIdentifier:v11 passTypeIdentifier:v9 passSerialNumber:v10 appleAccountInformation:v12];

    v14 = *(a1 + 88);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __130__PKPaymentWebService__passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke_768;
    v18[3] = &unk_1E79D1CC8;
    v15 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    [v15 performRequest:v13 taskIdentifier:v14 completionHandler:v18];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 localizedDescription];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Received nil service provider data with error %@", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __130__PKPaymentWebService__passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke_768(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Get pass action group with group identifier failed with error %@", &v18, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v11 = [PKPaymentRemoteContentPassActionGroupResponse alloc];
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) secureElementPass];
    v14 = [(PKPaymentRemoteContentPassActionGroupResponse *)v11 initWithExistingActionGroup:v12 data:v7 pass:v13];
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [(PKPaymentRemoteContentPassActionGroupResponse *)v14 updatedActionGroup];
    (*(v16 + 16))(v16, v17, v10);
  }
}

- (unint64_t)_passActionGroupWithRemoteContentPassActionGroup:(id)a3 forPass:(id)a4 forDeviceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKWebService *)self nextTaskID];
  v15 = [v11 passTypeIdentifier];
  v16 = [v11 serialNumber];
  v17 = [(PKPaymentWebService *)self primaryBrokerURL];
  v18 = objc_alloc_init(PKPaymentRemoteContentPassActionGroupRequest);
  [(PKPaymentRemoteContentPassActionGroupRequest *)v18 setActionGroup:v10];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
  if (v12)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v27 = v13;
    v20 = v19 = v14;
    [(PKPaymentRemoteContentPassActionGroupRequest *)v18 _urlRequestWithServiceURL:v17 deviceIdentifier:v12 passTypeIdentifier:v15 passSerialNumber:v16 appleAccountInformation:v20];
    v28 = v12;
    v22 = v21 = v15;

    v14 = v19;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __111__PKPaymentWebService__passActionGroupWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke;
    v30[3] = &unk_1E79D1CC8;
    v31 = v10;
    v32 = v11;
    v13 = v27;
    v33 = v27;
    v23 = self;
    v24 = v28;
    [(PKWebService *)v23 performRequest:v22 taskIdentifier:v14 completionHandler:v30];
  }

  else
  {
    v24 = 0;
    v21 = v15;
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(v13 + 2))(v13, 0, 0);
  }

  return v14;
}

void __111__PKPaymentWebService__passActionGroupWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Get pass action group with group identifier failed with error %@", &v18, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v11 = [PKPaymentRemoteContentPassActionGroupResponse alloc];
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) secureElementPass];
    v14 = [(PKPaymentRemoteContentPassActionGroupResponse *)v11 initWithExistingActionGroup:v12 data:v7 pass:v13];
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [(PKPaymentRemoteContentPassActionGroupResponse *)v14 updatedActionGroup];
    (*(v16 + 16))(v16, v17, v10);
  }
}

- (unint64_t)moreInfoItemAtURL:(id)a3 withMetadata:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = objc_alloc_init(PKPaymentWebServiceRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v12];
  v13 = PKURLByAppendingQueryParams(v10, v9);

  v14 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Downloading More Info Item with URL: '%@'.", buf, 0xCu);
  }

  v15 = [(PKPaymentWebService *)self _appleAccountInformation];
  v16 = [(PKWebServiceRequest *)v12 _murlRequestWithURL:v13 appleAccountInformation:v15];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PKPaymentWebService_moreInfoItemAtURL_withMetadata_completion___block_invoke;
  v19[3] = &unk_1E79CD770;
  v19[4] = self;
  v20 = v8;
  v17 = v8;
  [(PKWebService *)self performRequest:v16 taskIdentifier:v11 completionHandler:v19];

  return v11;
}

void __65__PKPaymentWebService_moreInfoItemAtURL_withMetadata_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v25 = v9;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v25];
    v11 = v25;

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [[PKPaymentSetupMoreInfoItem alloc] initWithMoreInfoDictionary:v10];
      v13 = [(PKPaymentSetupMoreInfoItem *)v12 imageURL];

      if (v13)
      {
        v14 = MEMORY[0x1E695AC68];
        v15 = [(PKPaymentSetupMoreInfoItem *)v12 imageURL];
        v16 = [v14 requestWithURL:v15];

        v17 = *(a1 + 32);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __65__PKPaymentWebService_moreInfoItemAtURL_withMetadata_completion___block_invoke_2;
        v22[3] = &unk_1E79CD770;
        v12 = v12;
        v23 = v12;
        v24 = *(a1 + 40);
        v18 = [v17 dataTaskWithRequest:v16 completionHandler:v22];
        [v18 resume];
      }

      else
      {
        v21 = *(a1 + 40);
        if (v21)
        {
          (*(v21 + 16))(v21, v12, 0);
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, 0, v11);
      }

      v12 = 0;
    }
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v9);
    }

    v11 = v9;
  }
}

void __65__PKPaymentWebService_moreInfoItemAtURL_withMetadata_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    [*(a1 + 32) setImageData:v10];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32), 0);
  }
}

- (unint64_t)cardInfoForMerchantIdentifier:(id)a3 completion:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if (v6 && v10)
  {
    v34 = v7;
    v11 = [[PKAMPCardInfoForMerchantRequest alloc] initWithMerchantIdentifier:v6];
    v12 = [(PKPaymentWebService *)self primaryBrokerURL];
    v13 = [(PKPaymentWebService *)self _appleAccountInformation];
    v33 = v10;
    v14 = [(PKAMPCardInfoForMerchantRequest *)v11 _urlRequestWithServiceURL:v12 deviceIdentifier:v10 appleAccountInformation:v13];

    v15 = [MEMORY[0x1E695AC38] sharedURLCache];
    v16 = [v15 cachedResponseForRequest:v14];
    v17 = PDLastPaymentPassInsertionOrRemovalDate();
    if (v17 && v16)
    {
      v31 = v15;
      v32 = v8;
      v18 = [v16 response];
      v19 = [v18 allHeaderFields];

      v20 = [v19 objectForKeyedSubscript:@"Date"];
      v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v21 setDateFormat:@"EEEE, dd LLL yyyy HH:mm:ss zzz"];
      v22 = [v21 dateFromString:v20];
      if (!v22)
      {

        v15 = v31;
        v8 = v32;
        goto LABEL_15;
      }

      v23 = v22;
      v30 = [v22 compare:v17];

      v15 = v31;
      v8 = v32;
      if (v30 != 1)
      {
LABEL_16:
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __64__PKPaymentWebService_cardInfoForMerchantIdentifier_completion___block_invoke;
        v36[3] = &unk_1E79CB9F0;
        v7 = v34;
        v37 = v34;
        [(PKWebService *)self performRequest:v14 taskIdentifier:v8 completionHandler:v36];

        v10 = v33;
        goto LABEL_17;
      }
    }

    v19 = [v14 mutableCopy];
    [v19 setCachePolicy:0];
    v20 = v14;
    v14 = [v19 copy];
LABEL_15:

    goto LABEL_16;
  }

  if (v6)
  {
    v24 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"Device not registered; cannot retrieve merchant info";
    v25 = MEMORY[0x1E695DF20];
    v26 = &v39;
    v27 = &v38;
  }

  else
  {
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "AMP Card Enrollment was attempted without a merchant identifier!", buf, 2u);
    }

    v24 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Cannot perform enrollment without a merchant identifier";
    v25 = MEMORY[0x1E695DF20];
    v26 = v41;
    v27 = &v40;
  }

  v11 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
  v14 = [v24 errorWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v11];
  (*(v7 + 2))(v7, 0, v14);
LABEL_17:

  return v8;
}

- (unint64_t)agreementURLForPass:(id)a3 agreement:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [v10 passTypeIdentifier];
  v13 = [PKPaymentFetchPassLegalAgreementRequest alloc];
  v14 = [v10 serialNumber];

  v15 = [(PKPaymentFetchPassLegalAgreementRequest *)v13 initPassTypeIdentifier:v12 passSerialNumber:v14 agreement:v9];
  v16 = [(PKPaymentWebService *)self _requestBuilderForRegion:v12];
  if (v16)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__PKPaymentWebService_agreementURLForPass_agreement_completion___block_invoke;
    v19[3] = &unk_1E79D1DE0;
    v19[4] = self;
    v21 = v11;
    v20 = v8;
    [v15 _urlRequestWithBuilder:v16 completion:v19];
  }

  else if (v8)
  {
    v17 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v8 + 2))(v8, 0, v17);
  }

  return v11;
}

void __64__PKPaymentWebService_agreementURLForPass_agreement_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPaymentWebService_agreementURLForPass_agreement_completion___block_invoke_2;
  v5[3] = &unk_1E79CB9F0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 performRequest:a2 taskIdentifier:v3 completionHandler:v5];
}

void __64__PKPaymentWebService_agreementURLForPass_agreement_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Get agreement url failed with error %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = [[PKPaymentFetchPassLegalAgreementResponse alloc] initWithData:v7];
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = [(PKPaymentFetchPassLegalAgreementResponse *)v11 agreementUrl];
    (*(v13 + 16))(v13, v14, v10);
  }
}

- (unint64_t)retrieveMerchantTokensUnifiedListWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v9 = dispatch_time(0, 1000000000);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C4428;
    v24 = v7;
    dispatch_after(v9, v10, block);

    v11 = v24;
  }

  else
  {
    v12 = [(PKPaymentWebService *)self context];
    v11 = [v12 secureElementID];

    if (v11)
    {
      v13 = [(PKPaymentWebService *)self context];
      v14 = [v13 primaryRegion];
      v15 = [v14 paymentServicesURL];

      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
      v16 = [(PKPaymentWebService *)self _appleAccountInformation];
      v17 = [v6 _urlRequestWithServiceURL:v15 secureElementID:v11 appleAccountInformation:v16];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke_790;
      v20[3] = &unk_1E79CB9F0;
      v21 = v7;
      [(PKWebService *)self performRequest:v17 taskIdentifier:v8 completionHandler:v20];
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AD337000, v18, OS_LOG_TYPE_ERROR, "Cannot request merchant tokens list without a Secure Element ID", buf, 2u);
      }

      if (!v7)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v15 = objc_alloc_init(PKRetrieveMerchantTokensResponse);
      (*(v7 + 2))(v7, v15, 0);
    }
  }

LABEL_10:

  return v8;
}

void __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[PKMerchantTokenDemoData responseForSinglePage];
    (*(v1 + 16))(v1, v2, 0);
  }
}

void __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke_790(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v6 = a2;
  v7 = [[PKRetrieveMerchantTokensResponse alloc] initWithData:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v9);
  }
}

- (unint64_t)retrieveMerchantTokensWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];

  v10 = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v11 = dispatch_time(0, 1000000000);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C44A0;
    v24 = v7;
    v23 = v6;
    v13 = v7;
    dispatch_after(v11, v12, block);

    v14 = v24;
  }

  else
  {
    v15 = [(PKPaymentWebService *)self context];
    v16 = [v15 primaryRegion];
    v13 = [v16 paymentServicesURL];

    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v17 = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [v6 _urlRequestWithServiceURL:v13 deviceIdentifier:v9 appleAccountInformation:v17];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke_792;
    v20[3] = &unk_1E79CB9F0;
    v21 = v7;
    v18 = v7;
    [(PKWebService *)self performRequest:v14 taskIdentifier:v10 completionHandler:v20];
  }

  return v10;
}

void __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return;
  }

  v2 = [*(a1 + 32) merchantTokenId];
  v3 = [v2 length];

  if (!v3)
  {
    if (PKMerchantTokensPagedDemoEnabled())
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) pageNumber];
      v13 = v6;
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = &unk_1F23B5348;
      }

      v8 = [PKMerchantTokenDemoData responseForPageNumber:v7];
      (*(v5 + 16))(v5, v8, 0);

      goto LABEL_17;
    }

    v12 = PKMerchantTokensCashDemoEnabled();
    v10 = *(a1 + 40);
    if (!v12)
    {
      v11 = +[PKMerchantTokenDemoData responseForSinglePage];
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!PKMerchantTokensAMPTransactionDemoEnabled())
  {
    v9 = PKMerchantTokensCashDemoEnabled();
    v10 = *(a1 + 40);
    if (!v9)
    {
      v11 = +[PKMerchantTokenDemoData responseForSingleMerchantToken];
LABEL_16:
      v13 = v11;
      (*(v10 + 16))(v10);
      goto LABEL_17;
    }

LABEL_14:
    v11 = +[PKMerchantTokenDemoData responseForSingleCashMerchantToken];
    goto LABEL_16;
  }

  v4 = *(a1 + 40);
  v13 = +[PKMerchantTokenDemoData responseForSingleAMPMerchantToken];
  (*(v4 + 16))(v4);
LABEL_17:
}

void __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke_792(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v6 = a2;
  v7 = [[PKRetrieveMerchantTokensResponse alloc] initWithData:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v9);
  }
}

- (unint64_t)registerMerchantTokenPublicKeyWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [(PKPaymentWebService *)self primaryBrokerURL];
  v11 = [v9 secureElementID];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKPaymentWebService_registerMerchantTokenPublicKeyWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79D1DE0;
  v16 = v6;
  v17 = v8;
  v15[4] = self;
  v13 = v6;
  [v7 _urlRequestWithServiceURL:v10 secureElementID:v11 appleAccountInformation:v12 webService:self completion:v15];

  return v8;
}

void __76__PKPaymentWebService_registerMerchantTokenPublicKeyWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKPaymentWebService_registerMerchantTokenPublicKeyWithRequest_completion___block_invoke_2;
  v5[3] = &unk_1E79CB9F0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 performRequest:a2 taskIdentifier:v3 completionHandler:v5];
}

void __76__PKPaymentWebService_registerMerchantTokenPublicKeyWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    if ([v10 statusCode] == 200)
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v12 = [MEMORY[0x1E695DF90] dictionary];
    v24 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v24];
    v14 = v24;
    v22 = v14;
    if (!v13)
    {
      v17 = v14;
      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v17;
        _os_log_error_impl(&dword_1AD337000, v15, OS_LOG_TYPE_ERROR, "PKPaymentWebService/registerMerchantTokenPublicKey: failed to parse JSON. decodingError=%@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v13 PKNumberForKey:{@"errorCode", v22}];
      [v12 setObject:v15 forKeyedSubscript:PKRegisterMerchantTokenPublicKeyErrorCodeKey];
      v16 = [v13 PKStringForKey:@"statusMessage"];
      [v12 setObject:v16 forKeyedSubscript:PKRegisterMerchantTokenPublicKeyErrorStatusMessageKey];
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v21 = objc_opt_class();
      v16 = NSStringFromClass(v21);
      *buf = 138412290;
      v26 = v16;
      _os_log_error_impl(&dword_1AD337000, v15, OS_LOG_TYPE_ERROR, "PKPaymentWebService/registerMerchantTokenPublicKey: expected JSON object, got %@ instead.", buf, 0xCu);
    }

LABEL_13:
    v18 = [v10 valueForHTTPHeaderField:@"Retry-After"];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:PKRetryAfterSecondsFromNow(v18)];
      [v12 setObject:v20 forKeyedSubscript:PKRegisterMerchantTokenPublicKeyErrorRetryAfterKey];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKRegisterMerchantTokenPublicKeyErrorDomain" code:0 userInfo:{v12, v22}];

    goto LABEL_16;
  }

  v11 = v9;
LABEL_17:
  (*(*(a1 + 32) + 16))();
}

- (unint64_t)deleteMerchantTokenWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v9 = dispatch_time(0, 1000000000);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C4428;
    v21 = v7;
    v11 = v7;
    dispatch_after(v9, v10, block);

    v12 = v21;
  }

  else
  {
    v13 = [(PKPaymentWebService *)self context];
    v14 = [v13 primaryRegion];
    v11 = [v14 paymentServicesURL];

    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v15 = [(PKPaymentWebService *)self _appleAccountInformation];
    v12 = [v6 _urlRequestWithServiceURL:v11 appleAccountInformation:v15];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke_2;
    v18[3] = &unk_1E79CB9F0;
    v19 = v7;
    v16 = v7;
    [(PKWebService *)self performRequest:v12 taskIdentifier:v8 completionHandler:v18];
  }

  return v8;
}

uint64_t __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = [v10 statusCode];
      if (v11 == 200)
      {
        v12 = *(*(a1 + 32) + 16);
      }

      else
      {
        v16 = v11;
        v17 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v10 URL];
          v19 = [v18 absoluteString];
          v20 = 138412802;
          v21 = v19;
          v22 = 2048;
          v23 = v16;
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Error executing request: %@ status code: %lu error: %@", &v20, 0x20u);
        }

        v12 = *(*(a1 + 32) + 16);
      }

      v12();
    }

    else if (v9)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 URL];
        v15 = [v14 absoluteString];
        v20 = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error executing request: %@ error: %@", &v20, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (unint64_t)transactionReceiptAuthorizationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self primaryBrokerURL];
  v10 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentWebService_transactionReceiptAuthorizationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E79D1DE0;
  v14 = v6;
  v15 = v8;
  v13[4] = self;
  v11 = v6;
  [v7 _urlRequestWithServiceURL:v9 appleAccountInformation:v10 webService:self completion:v13];

  return v8;
}

void __77__PKPaymentWebService_transactionReceiptAuthorizationWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPaymentWebService_transactionReceiptAuthorizationWithRequest_completion___block_invoke_2;
  v5[3] = &unk_1E79CB9F0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 performRequest:a2 taskIdentifier:v3 completionHandler:v5];
}

void __77__PKPaymentWebService_transactionReceiptAuthorizationWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0;
  if (v13)
  {
    if (!v8)
    {
      v9 = [[PKTransactionReceiptAuthorizationResponse alloc] initWithData:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v7 allHeaderFields];
        v11 = [v10 PKStringForKey:@"x-conversation-id"];

        [(PKTransactionReceiptAuthorizationResponse *)v9 setConversationIdentifier:v11];
      }
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v8);
  }
}

- (unint64_t)transactionReceiptWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [v7 _urlRequest];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentWebService_transactionReceiptWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB9F0;
  v13 = v6;
  v10 = v6;
  [(PKWebService *)self performRequest:v9 taskIdentifier:v8 completionHandler:v12];

  return v8;
}

void __64__PKPaymentWebService_transactionReceiptWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (!v13 || v8)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v8);
    }
  }

  else
  {
    v9 = PKTemporaryItemURLWithExtension(@"pkreceipt", 1);
    PKTemporaryItemPrepareDirectory();
    if (PKUnarchiverZip(v13, v9))
    {
      v10 = [[PKTransactionReceipt alloc] initWithFileURL:v9];
    }

    else
    {
      v10 = 0;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v10, 0);
    }
  }
}

- (unint64_t)createVehicleKeyShareWithRequest:(id)a3 passTypeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 deviceID];
  if (v13)
  {
    v24 = v11;
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
    v14 = [v12 regionForIdentifier:v9];
    v15 = [v14 brokerURL];
    v16 = v15;
    v17 = v9;
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v20 = v18;

    v21 = [(PKPaymentWebService *)self _appleAccountInformation];
    v22 = [v8 _urlRequestWithServiceURL:v20 deviceIdentifier:v13 appleAccountInformation:v21];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__PKPaymentWebService_createVehicleKeyShareWithRequest_passTypeIdentifier_completion___block_invoke;
    v25[3] = &unk_1E79CB9F0;
    v26 = v10;
    v11 = v24;
    [(PKWebService *)self performRequest:v22 taskIdentifier:v24 completionHandler:v25];

    v9 = v17;
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: No device identifier present - exiting early (createVehicleKeyShareWithRequest:)", buf, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, v14);
  }

  return v11;
}

void __86__PKPaymentWebService_createVehicleKeyShareWithRequest_passTypeIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (*(a1 + 32))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 statusCode] == 200)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = PKLocalizedPaymentString(&cfstr_ShareActivatio_10.isa, 0);
      v11 = PKLocalizedPaymentString(&cfstr_ShareActivatio_11.isa, 0);
      v12 = PKDisplayableErrorCustomWithType(2, v10, v11, v8, 0);
      (*(v9 + 16))(v9, v12);
    }
  }
}

- (unint64_t)vehicleManufacturerWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentWebService_vehicleManufacturerWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];

  return v8;
}

void __69__PKPaymentWebService_vehicleManufacturerWithRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    if (PKSharingForceEmptyVehicleManufacturerResponse())
    {
      v10 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKSharingForceEmptyVehicleManufacturerResponse enabled", v13, 2u);
      }

      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] == 204)
    {
LABEL_6:
      (*(*(a1 + 32) + 16))();
      goto LABEL_13;
    }

    v11 = [[PKPaymentVehicleManufacturerResponse alloc] initWithData:v7];
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v12, v9);
  }

LABEL_13:
}

- (unint64_t)registerCredentialWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__PKPaymentWebService_registerCredentialWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CDA40;
  v16[4] = self;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];

  return v8;
}

void __68__PKPaymentWebService_registerCredentialWithRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [[PKPaymentRegisterCredentialResponse alloc] initWithData:v13];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
      (*(v10 + 16))(v10, v9, 0);
    }

    else
    {
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = [*(a1 + 32) _errorWithResult:0 response:v7 data:v13];
      }

      v12 = v11;
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (unint64_t)revokeSharedCredentialWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v11 = [(PKPaymentWebService *)self primaryBrokerURL];
  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v7 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PKPaymentWebService_revokeSharedCredentialWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = v6;
  v14 = v6;
  [(PKWebService *)self performRequest:v13 taskIdentifier:v8 completionHandler:v16];

  return v8;
}

void __72__PKPaymentWebService_revokeSharedCredentialWithRequest_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v7 = a2;
    v8 = [[PKPaymentRevokeSharedCredentialResponse alloc] initWithData:v7];

    v6 = [(PKPaymentRevokeSharedCredentialResponse *)v8 passURL];
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)credentialAccountAttesationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self context];
  v10 = [v9 deviceID];

  if ([v10 length])
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v11 = [(PKPaymentWebService *)self primaryBrokerURL];
    v12 = [(PKPaymentWebService *)self _appleAccountInformation];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PKPaymentWebService_credentialAccountAttesationWithRequest_completion___block_invoke;
    v17[3] = &unk_1E79D1DE0;
    v17[4] = self;
    v19 = v8;
    v18 = v7;
    [v6 _urlRequestWithServiceURL:v11 deviceIdentifier:v10 appleAccountInformation:v12 webService:self completion:v17];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: Account Attestation failure: context missing deviceID", v16, 2u);
    }

    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v7 + 2))(v7, 0, v14);
  }

  return v8;
}

void __73__PKPaymentWebService_credentialAccountAttesationWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKPaymentWebService_credentialAccountAttesationWithRequest_completion___block_invoke_2;
  v5[3] = &unk_1E79CB9F0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 performRequest:a2 taskIdentifier:v3 completionHandler:v5];
}

void __73__PKPaymentWebService_credentialAccountAttesationWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v7 = a2;
    v8 = [[PKPaymentAccountAttesationResponse alloc] initWithData:v7];

    v6 = [(PKPaymentAccountAttesationResponse *)v8 attestation];
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)inAppPaymentNonceForPass:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PKPaymentNonceRequest);
  [(PKPaymentAugmentBaseRequest *)v8 setPass:v7];

  [(PKPaymentNonceRequest *)v8 setUseLegacyGetAPI:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKPaymentWebService_inAppPaymentNonceForPass_completion___block_invoke;
  v12[3] = &unk_1E79DB930;
  v13 = v6;
  v9 = v6;
  v10 = [(PKPaymentWebService *)self inAppPaymentNonceWithRequest:v8 serviceURL:0 completion:v12];

  return v10;
}

void __59__PKPaymentWebService_inAppPaymentNonceForPass_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 nonceData];
  (*(v4 + 16))(v4, v5, v6);
}

- (unint64_t)inAppPaymentNonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [(PKPaymentWebService *)self context];
    v12 = [v8 pass];
    v13 = [v12 passTypeIdentifier];
    v14 = [v11 regionForIdentifier:v13];

    v9 = [v14 inAppPaymentServicesURL];
    if (!v9)
    {
      v9 = PKOverrideInAppPaymentServicesURL();
    }
  }

  v15 = [(PKPaymentWebService *)self _nonceWithRequest:v8 serviceURL:v9 completion:v10];

  return v15;
}

- (unint64_t)_nonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__54;
  v34 = __Block_byref_object_dispose__54;
  v12 = [(PKPaymentWebService *)self context];
  v35 = [v12 deviceID];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke;
  aBlock[3] = &unk_1E79DB958;
  aBlock[4] = self;
  v13 = v8;
  v25 = v13;
  v14 = v9;
  v26 = v14;
  v28 = &v30;
  v29 = v11;
  v15 = v10;
  v27 = v15;
  v16 = _Block_copy(aBlock);
  if ([v31[5] length])
  {
    v16[2](v16);
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Context missing deviceID, registering", buf, 2u);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_814;
    v19[3] = &unk_1E79DB980;
    v22 = &v30;
    v19[4] = self;
    v20 = v16;
    v21 = v15;
    [(PKPaymentWebService *)self registerDeviceWithCompletion:v19];
  }

  _Block_object_dispose(&v30, 8);
  return v11;
}

void __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRequestWithCurrentTargetDevice:*(a1 + 40)];
  v2 = [*(a1 + 40) useLegacyGetAPI];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = [*(a1 + 32) _appleAccountInformation];
  if (v2)
  {
    [v4 _legacyGetURLRequestWithServiceURL:v3 deviceIdentifier:v5 appleAccountInformation:v6];
  }

  else
  {
    [v4 _urlRequestWithServiceURL:v3 deviceIdentifier:v5 appleAccountInformation:v6];
  }
  v7 = ;

  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_2;
  v10[3] = &unk_1E79CD770;
  v10[4] = v8;
  v11 = *(a1 + 56);
  [v8 performRequest:v7 taskIdentifier:v9 completionHandler:v10];
}

void __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__54;
  v19[4] = __Block_byref_object_dispose__54;
  v20 = 0;
  v10 = *(a1 + 32);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_3;
  v16 = &unk_1E79C8FA8;
  v18 = v19;
  v11 = v7;
  v17 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v13];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(v19, 8);
}

BOOL __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_3(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentNonceResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke_814(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) context];
    v4 = [v3 deviceID];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(a1 + 40) + 16);

    v7();
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) _errorWithResult:0 data:0];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (unint64_t)augmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [(PKPaymentWebService *)self context];
    v12 = [v8 pass];
    v13 = [v12 passTypeIdentifier];
    v14 = [v11 regionForIdentifier:v13];

    v9 = [v14 inAppPaymentServicesURL];
    if (!v9)
    {
      v9 = PKOverrideInAppPaymentServicesURL();
    }
  }

  v15 = [(PKPaymentWebService *)self _augmentSessionWithRequest:v8 serviceURL:v9 completion:v10];

  return v15;
}

- (unint64_t)_augmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v14 = [(PKPaymentWebService *)self _appleAccountInformation];
  v15 = [v10 _urlRequestWithServiceURL:v9 deviceIdentifier:v13 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PKPaymentWebService__augmentSessionWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [(PKWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __72__PKPaymentWebService__augmentSessionWithRequest_serviceURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__54;
  v19[4] = __Block_byref_object_dispose__54;
  v20 = 0;
  v10 = *(a1 + 32);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __72__PKPaymentWebService__augmentSessionWithRequest_serviceURL_completion___block_invoke_2;
  v16 = &unk_1E79C8FA8;
  v18 = v19;
  v11 = v7;
  v17 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v13];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v13, v14, v15, v16}];
  }

  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(v19, 8);
}

BOOL __72__PKPaymentWebService__augmentSessionWithRequest_serviceURL_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentAugmentSessionResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (unint64_t)rewrapInAppPayment:(id)a3 merchantIdentifier:(id)a4 hostApplicationIdentifier:(id)a5 applicationData:(id)a6 pass:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(PKPaymentRewrapRequest);
  [(PKPaymentRewrapRequestBase *)v20 setWrappedPayment:v19];

  v21 = [v15 devicePrimaryInAppPaymentApplication];
  [(PKPaymentRewrapRequestBase *)v20 setPaymentApplication:v21];

  [(PKPaymentRewrapRequest *)v20 setMerchantIdentifier:v18];
  [(PKPaymentRewrapRequest *)v20 setHostApplicationIdentifier:v17];

  [(PKPaymentRewrapRequestBase *)v20 setApplicationData:v16];
  [(PKPaymentRewrapRequestBase *)v20 setPass:v15];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __119__PKPaymentWebService_rewrapInAppPayment_merchantIdentifier_hostApplicationIdentifier_applicationData_pass_completion___block_invoke;
  v25[3] = &unk_1E79CE418;
  v26 = v14;
  v22 = v14;
  v23 = [(PKPaymentWebService *)self rewrapInAppPaymentWithRequest:v20 serviceURL:0 completion:v25];

  return v23;
}

uint64_t __119__PKPaymentWebService_rewrapInAppPayment_merchantIdentifier_hostApplicationIdentifier_applicationData_pass_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)rewrapInAppPaymentWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79DB9A8;
  v19 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke_2;
  v15[3] = &unk_1E79CE3C8;
  v16 = v19;
  v17 = v9;
  v11 = v9;
  v12 = v19;
  v13 = [(PKPaymentWebService *)self _performRewrapRequest:v12 serviceURL:v10 responseHandler:v18 completion:v15];

  return v13;
}

id __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 type];
  v5 = off_1E79C1C60;
  if (v4 != 1)
  {
    v5 = off_1E79C0BE0;
  }

  v6 = [(__objc2_class *)*v5 responseWithData:v3];

  return v6;
}

void __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v17 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [*(a1 + 32) pass];
  v11 = [v10 associatedApplicationIdentifiers];
  v12 = [*(a1 + 32) hostApplicationIdentifier];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [*(a1 + 32) pass];
    v15 = [v14 copy];

    [v15 sanitizePaymentApplications];
    v16 = [v8 paymentMethod];
    [v16 setPaymentPass:v15];
  }

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)completeSession:(id)a3 wrappedPayment:(id)a4 pass:(id)a5 applicationData:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(PKPaymentCompleteSessionRequest);
  [(PKPaymentRewrapRequestBase *)v17 setWrappedPayment:v15];

  [(PKPaymentRewrapRequestBase *)v17 setPass:v14];
  v18 = [v14 devicePrimaryInAppPaymentApplication];

  [(PKPaymentRewrapRequestBase *)v17 setPaymentApplication:v18];
  [(PKPaymentCompleteSessionRequest *)v17 setMerchantSession:v16];

  [(PKPaymentRewrapRequestBase *)v17 setApplicationData:v13];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__PKPaymentWebService_completeSession_wrappedPayment_pass_applicationData_completion___block_invoke;
  v22[3] = &unk_1E79DB9D0;
  v23 = v12;
  v19 = v12;
  v20 = [(PKPaymentWebService *)self completeSessionWithRequest:v17 serviceURL:0 completion:v22];

  return v20;
}

uint64_t __86__PKPaymentWebService_completeSession_wrappedPayment_pass_applicationData_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)completeSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79DB9A8;
  v19 = v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke_2;
  v15[3] = &unk_1E79CE3C8;
  v16 = v19;
  v17 = v9;
  v11 = v9;
  v12 = v19;
  v13 = [(PKPaymentWebService *)self _performRewrapRequest:v12 serviceURL:v10 responseHandler:v18 completion:v15];

  return v13;
}

id __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 type];
  v5 = off_1E79C1C60;
  if (v4 != 1)
  {
    v5 = off_1E79C05D8;
  }

  v6 = [(__objc2_class *)*v5 responseWithData:v3];

  return v6;
}

void __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) pass];
  v13 = [v12 associatedWebDomains];
  v14 = [*(a1 + 32) merchantSession];
  v15 = [v14 domain];
  v16 = [v13 containsObject:v15];

  if (v16)
  {
    v17 = [*(a1 + 32) pass];
    v18 = [v17 copy];

    [v18 sanitizePaymentApplications];
    v19 = [v9 paymentMethod];
    [v19 setPaymentPass:v18];
  }

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)_performRewrapRequest:(id)a3 serviceURL:(id)a4 responseHandler:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKWebService *)self nextTaskID];
  v15 = [(PKPaymentWebService *)self context];
  v16 = [v15 deviceID];
  if (!v11)
  {
    v17 = [v10 pass];
    v18 = [v17 passTypeIdentifier];
    v19 = [v15 regionForIdentifier:v18];

    v11 = [v19 inAppPaymentServicesURL];
    if (!v11)
    {
      v11 = PKOverrideInAppPaymentServicesURL();
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke;
  aBlock[3] = &unk_1E79DBA70;
  aBlock[4] = self;
  v20 = v10;
  v33 = v20;
  v21 = v11;
  v34 = v21;
  v22 = v16;
  v35 = v22;
  v38 = v14;
  v23 = v12;
  v36 = v23;
  v24 = v13;
  v37 = v24;
  v25 = _Block_copy(aBlock);
  if ([v22 length])
  {
    v25[2](v25);
  }

  else
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Context missing deviceID, registering", buf, 2u);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_839;
    v28[3] = &unk_1E79DBA98;
    v29 = v25;
    v30 = v24;
    v28[4] = self;
    [(PKPaymentWebService *)self registerDeviceWithCompletion:v28];
  }

  return v14;
}

void __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _paymentDevice];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_2;
  v8[3] = &unk_1E79DBA48;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v13 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v3 rewrapDataWithCompletionHandler:v8];
}

void __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = [v6 _appleAccountInformation];
  v9 = [v3 _urlRequestWithServiceURL:v4 deviceIdentifier:v5 rewrapData:v7 appleAccountInformation:v8];

  v10 = *(a1 + 56);
  v11 = *(a1 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_3;
  v12[3] = &unk_1E79DBA20;
  v12[4] = v10;
  v14 = *(a1 + 64);
  v13 = *(a1 + 32);
  v15 = *(a1 + 72);
  [v10 performRequest:v9 taskIdentifier:v11 completionHandler:v12];
}

void __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__54;
  v32 = __Block_byref_object_dispose__54;
  v33 = 0;
  v10 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_4;
  v24[3] = &unk_1E79DB9F8;
  v27 = &v28;
  v26 = *(a1 + 48);
  v11 = v7;
  v25 = v11;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:v24];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 pk_valueForHTTPHeaderField:@"X-Apple-Retry-Nonce"];
  }

  else
  {
    v13 = 0;
  }

  if (v12 == 1)
  {
    v14 = [*(a1 + 40) pass];
    v15 = [*(a1 + 40) paymentApplication];
    v16 = [[PKPaymentMethod alloc] initWithPaymentPass:v14 paymentApplication:v15 obfuscateNetworks:0];
    v17 = objc_alloc_init(PKPaymentToken);
    v23 = v14;
    v18 = [v29[5] transactionIdentifier];
    if (!v18)
    {
      v19 = [*(a1 + 40) wrappedPayment];
      v18 = [v19 transactionIdentifier];
    }

    [(PKPaymentToken *)v17 setTransactionIdentifier:v18];
    v20 = [(PKPaymentMethod *)v16 displayName];
    [(PKPaymentToken *)v17 setPaymentInstrumentName:v20];

    v21 = [(PKPaymentMethod *)v16 network];
    [(PKPaymentToken *)v17 setPaymentNetwork:v21];

    v22 = [v29[5] rewrappedPaymentData];
    [(PKPaymentToken *)v17 setPaymentData:v22];

    [(PKPaymentToken *)v17 setPaymentMethod:v16];
    AnalyticsSendEvent();
  }

  else
  {
    if (!v9)
    {
      v9 = [*(a1 + 32) _errorWithResult:v12 data:v11];
    }

    AnalyticsSendEvent();
    v17 = 0;
  }

  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(&v28, 8);
}

BOOL __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke_839(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) _errorWithResult:0 data:0];
    (*(v4 + 16))(v4, v5, 0, 0, 0);
  }
}

- (unint64_t)availableDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKWebService *)self nextTaskID];
  v6 = [(PKPaymentWebService *)self context];
  v7 = [v6 primaryRegion];

  v8 = objc_alloc_init(PKPaymentAvailableDevicesRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
  v9 = [v7 brokerURL];
  v10 = [(PKPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKPaymentAvailableDevicesRequest *)v8 _urlRequestWithServiceURL:v9 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__PKPaymentWebService_availableDevicesWithCompletion___block_invoke;
  v14[3] = &unk_1E79CB9F0;
  v15 = v4;
  v12 = v4;
  [(PKWebService *)self performRequest:v11 taskIdentifier:v5 completionHandler:v14];

  return v5;
}

void __54__PKPaymentWebService_availableDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (!v14 || v8)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v8);
    }
  }

  else
  {
    v9 = [(PKWebServiceResponse *)PKPaymentAvailableDevicesResponse responseWithData:v14];
    v10 = v9;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = [v9 devices];
      (*(v11 + 16))(v11, v12, 0);
    }
  }
}

- (unint64_t)checkMerchantStatus:(id)a3 forDomain:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = [v12 primaryRegion];

  v14 = [[PKPaymentCheckMerchantRequest alloc] initWithMerchantIdentifier:v10 domainName:v9];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v14];
  v15 = [v13 inAppPaymentServicesURL];
  v16 = [(PKPaymentCheckMerchantRequest *)v14 _urlRequestWithServiceURL:v15];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PKPaymentWebService_checkMerchantStatus_forDomain_withCompletion___block_invoke;
  v19[3] = &unk_1E79CB9F0;
  v20 = v8;
  v17 = v8;
  [(PKWebService *)self performRequest:v16 taskIdentifier:v11 completionHandler:v19];

  return v11;
}

void __68__PKPaymentWebService_checkMerchantStatus_forDomain_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (!v13 || v8)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v8);
    }
  }

  else
  {
    v9 = [(PKWebServiceResponse *)PKPaymentCheckMerchantResponse responseWithData:v13];
    v10 = v9;
    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, [v9 isRegistered], 0);
    }
  }
}

- (unint64_t)prepareTransactionDetailsForMerchantSession:(id)a3 secureElementIdentifier:(id)a4 amount:(id)a5 currencyCode:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[PKPaymentPrepareTransactionDetailsRequest alloc] initWithMerchantSession:v16 secureElementIdentifier:v15 amount:v14 currencyCode:v13];

  v18 = [(PKWebService *)self nextTaskID];
  v19 = [(PKPaymentWebService *)self context];
  v20 = [v19 primaryRegion];

  v21 = [v20 inAppPaymentServicesURL];
  v22 = [(PKPaymentWebService *)self _appleAccountInformation];
  v23 = [(PKPaymentPrepareTransactionDetailsRequest *)v17 _urlRequestWithServiceURL:v21 appleAccountInformation:v22];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __122__PKPaymentWebService_prepareTransactionDetailsForMerchantSession_secureElementIdentifier_amount_currencyCode_completion___block_invoke;
  v26[3] = &unk_1E79CD770;
  v26[4] = self;
  v27 = v12;
  v24 = v12;
  [(PKWebService *)self performRequest:v23 taskIdentifier:v18 completionHandler:v26];

  return v18;
}

void __122__PKPaymentWebService_prepareTransactionDetailsForMerchantSession_secureElementIdentifier_amount_currencyCode_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__54;
  v26 = __Block_byref_object_dispose__54;
  v27 = 0;
  v10 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__PKPaymentWebService_prepareTransactionDetailsForMerchantSession_secureElementIdentifier_amount_currencyCode_completion___block_invoke_2;
  v18[3] = &unk_1E79DBAC0;
  v11 = v7;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = &v22;
  v13 = [v10 _resultForResponse:v8 error:v12 successHandler:v18];
  if (v13 == 1)
  {
    v14 = [PKPaymentInstructions alloc];
    v15 = [v23[5] instructionsDictionary];
    v16 = [(PKPaymentInstructions *)v14 initWithDictionary:v15];
  }

  else
  {
    [*(a1 + 32) _errorWithResult:v13 data:v11];
    v16 = 0;
    v12 = v15 = v12;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v12, v16);
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t __122__PKPaymentWebService_prepareTransactionDetailsForMerchantSession_secureElementIdentifier_amount_currencyCode_completion___block_invoke_2(void *a1)
{
  if (a1[4] && !a1[5])
  {
    v3 = [(PKWebServiceResponse *)PKPaymentPrepareTransactionDetailsResponse responseWithData:?];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  AnalyticsSendEvent();
  return v2;
}

- (unint64_t)serviceProviderNonceWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [(PKPaymentWebService *)self context];
    v12 = [v8 pass];
    v13 = [v12 passTypeIdentifier];
    v14 = [v11 regionForIdentifier:v13];

    v9 = [v14 paymentServicesURL];
  }

  v15 = [(PKPaymentWebService *)self _nonceWithRequest:v8 serviceURL:v9 completion:v10];

  return v15;
}

- (unint64_t)serviceProviderAugmentSessionWithRequest:(id)a3 serviceURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = [(PKPaymentWebService *)self context];
    v12 = [v8 pass];
    v13 = [v12 passTypeIdentifier];
    v14 = [v11 regionForIdentifier:v13];

    v9 = [v14 paymentServicesURL];
  }

  v15 = [(PKPaymentWebService *)self _augmentSessionWithRequest:v8 serviceURL:v9 completion:v10];

  return v15;
}

- (unint64_t)performServiceProviderPayment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 deviceID];
  v10 = [v6 pass];
  v11 = [v10 passTypeIdentifier];
  v12 = [v8 regionForIdentifier:v11];

  v13 = [(PKWebService *)self nextTaskID];
  if (v9)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
    v14 = [v12 paymentServicesURL];
    v15 = [(PKPaymentWebService *)self _appleAccountInformation];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke;
    v19[3] = &unk_1E79D1DE0;
    v19[4] = self;
    v21 = v13;
    v20 = v7;
    [v6 _urlRequestWithServiceURL:v14 deviceIdentifier:v9 appleAccountInformation:v15 webService:self completion:v19];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Perform Payment, deviceID is nil", v18, 2u);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  return v13;
}

void __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke_2;
  v5[3] = &unk_1E79CD770;
  v5[4] = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 performRequest:a2 taskIdentifier:v4 completionHandler:v5];
}

void __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54;
  v24 = __Block_byref_object_dispose__54;
  v25 = 0;
  v10 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke_3;
  v17 = &unk_1E79DB670;
  v11 = v7;
  v18 = v11;
  v19 = &v20;
  v12 = [v10 _resultForResponse:v8 error:v9 successHandler:&v14];
  if (!v9 && v12 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v12 data:{v11, v14, v15, v16, v17}];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v21[5], v9);
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke_3(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentServiceProviderPerformPaymentResponse responseWithData:*(a1 + 32)];
  v3 = v2;
  if (v2 && ([v2 purchase], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 purchase];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)serviceProviderPurchasesWithRequest:(id)a3 inRegion:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self context];
  v13 = v12;
  if (!v9)
  {
    v9 = [v12 primaryRegionIdentifier];
  }

  v14 = [v13 regionForIdentifier:v9];
  v15 = [v13 deviceID];
  v16 = v15;
  if (v14 && v15)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
    v17 = [v14 paymentServicesURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v28 = self;
    v18 = v9;
    v19 = v14;
    v20 = v13;
    v21 = v10;
    v23 = v22 = v11;
    v24 = [v8 _urlRequestWithServiceURL:v17 deviceIdentifier:v16 appleAccountInformation:v23];

    v11 = v22;
    v10 = v21;
    v13 = v20;
    v14 = v19;
    v9 = v18;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __79__PKPaymentWebService_serviceProviderPurchasesWithRequest_inRegion_completion___block_invoke;
    v29[3] = &unk_1E79CD770;
    v30 = v18;
    v31 = v10;
    [(PKWebService *)v28 performRequest:v24 taskIdentifier:v11 completionHandler:v29];

LABEL_17:
    goto LABEL_18;
  }

  if (v14)
  {
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v9;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Can't ask for purchases, region %{public}@ unknown", buf, 0xCu);
    }

    if (v16)
    {
LABEL_8:
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v26 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Can't ask for purchases, no deviceID", buf, 2u);
  }

  if (v10)
  {
LABEL_16:
    v24 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], v24);
    goto LABEL_17;
  }

LABEL_18:

  return v11;
}

void __79__PKPaymentWebService_serviceProviderPurchasesWithRequest_inRegion_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Purchases request failed with error %@", buf, 0xCu);
    }

    v17 = 0;
    v11 = 0;
  }

  else
  {
    v11 = [(PKWebServiceResponse *)PKPaymentServiceProviderPurchasesResponse responseWithData:v7];
    [v11 purchases];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v22 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * i) setRegionIdentifier:{*(a1 + 32), v19}];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v14);
    }

    v17 = v12;
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v17, v10);
  }
}

- (unint64_t)serviceProviderPurchaseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = [(PKPaymentWebService *)self primaryBrokerURL];
  v10 = [[PKPaymentServiceProviderPurchaseRequest alloc] initWithPurchaseIdentifier:v7];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [(PKPaymentServiceProviderPurchaseRequest *)v10 _urlRequestWithServiceURL:v9 appleAccountInformation:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentWebService_serviceProviderPurchaseWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CB9F0;
  v16 = v6;
  v13 = v6;
  [(PKWebService *)self performRequest:v12 taskIdentifier:v8 completionHandler:v15];

  return v8;
}

void __72__PKPaymentWebService_serviceProviderPurchaseWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Purchase request failed with error %@", &v16, 0xCu);
    }

    v13 = 0;
    v11 = 0;
  }

  else
  {
    v11 = [(PKWebServiceResponse *)PKPaymentServiceProviderPurchasesResponse responseWithData:v7];
    v12 = [v11 purchases];
    v13 = [v12 firstObject];
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v13, v10);
  }
}

- (unint64_t)performAction:(id)a3 onServiceProviderPurchase:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKWebService *)self nextTaskID];
  v12 = [(PKPaymentWebService *)self primaryBrokerURL];
  v13 = [[PKPaymentServiceProviderPerformActionRequest alloc] initWithAction:v10 purchase:v9];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  v14 = [(PKPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPaymentServiceProviderPerformActionRequest *)v13 _urlRequestWithServiceURL:v12 appleAccountInformation:v14];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__PKPaymentWebService_performAction_onServiceProviderPurchase_completion___block_invoke;
  v18[3] = &unk_1E79CB9F0;
  v19 = v8;
  v16 = v8;
  [(PKWebService *)self performRequest:v15 taskIdentifier:v11 completionHandler:v18];

  return v11;
}

void __74__PKPaymentWebService_performAction_onServiceProviderPurchase_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Perform action request failed with error %@", &v15, 0xCu);
    }

    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = [(PKWebServiceResponse *)PKPaymentServiceProviderPerformActionResponse responseWithData:v7];
    v12 = [v11 updatedPurchase];
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v10);
  }
}

- (unint64_t)networkManifestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentWebService *)self context];
  v6 = [v5 configuration];
  v7 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
  v8 = [v6 heroImageManifestURLForRegion:v7];

  v9 = [(PKWebService *)self nextTaskID];
  if (v8)
  {
    v10 = objc_alloc_init(PKPaymentNetworkCardImagesManifestRequest);
    v11 = [(PKPaymentWebService *)self _appleAccountInformation];
    v12 = [(PKPaymentNetworkCardImagesManifestRequest *)v10 _urlRequestWithServiceURL:v8 appleAccountInformation:v11];

    [(PKWebService *)self performRequest:v12 taskIdentifier:v9 completionHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0, 0);
  }

  return v9;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task finish download: %@", buf, 0xCu);
  }

  if (self->_backgroundSession == v8)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10];
    v13 = [v9 taskIdentifier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 originalRequest];
      v15 = [v14 URL];
      *buf = 134218242;
      *&buf[4] = v13;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Finished downloading task %lu: %@", buf, 0x16u);
    }

    v16 = objc_autoreleasePoolPush();
    v17 = [(PKPaymentWebService *)self backgroundContext];
    v18 = [v17 backgroundDownloadRecordForTaskIdentifier:v13];

    if (!v18)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 taskIdentifier];
        *buf = 134217984;
        *&buf[4] = v23;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "***** No match found for task %lu *****: FILE A BUG!", buf, 0xCu);
      }

      goto LABEL_48;
    }

    v50 = v16;
    v19 = [v18 taskType];
    v20 = [v9 response];
    if (v19 > 2)
    {
      if (v19 == 4)
      {
        [(PKWebService *)self logResponse:v20 withData:v12];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v9 taskIdentifier];
          *buf = 134217984;
          *&buf[4] = v34;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling Device check in task %lu", buf, 0xCu);
        }

        [(PKPaymentWebService *)self _handleDeviceCheckInTask:v9 downloadRecord:v18 data:v12];
        goto LABEL_47;
      }

      if (v19 == 3)
      {
        v49 = v12;
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<omitted>: %lu bytes", objc_msgSend(v12, "length")];
        v25 = [v24 dataUsingEncoding:4];
        [(PKWebService *)self logResponse:v20 withData:v25];

        v26 = [v9 taskIdentifier];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v26;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling remote asset task %lu", buf, 0xCu);
        }

        v27 = v18;
        v28 = [v27 remoteAssetsByTaskIdentifier];
        v48 = v26;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
        v30 = [v28 objectForKey:v29];

        if (PKForceURLSessionRemoteAssetDownloadTaskFailure())
        {
          v16 = v50;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKForceRemoteAssetURLSessionTaskDownloadFailure enabled", buf, 2u);
          }

          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
          [v27 removeRemoteURLAssetForTaskIdentifier:v31 didFail:1];

          [(PKPaymentWebService *)self _archiveBackgroundContext];
        }

        else
        {
          v42 = [v27 passURL];
          *buf = 0;
          [(PKPaymentWebService *)self _handleRemoteAssetDownloadForManifestItem:v30 taskPassURL:v42 data:v49 shouldWriteData:1 error:buf];
          v16 = v50;
          if (*buf)
          {
            v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
            [v27 removeRemoteURLAssetForTaskIdentifier:v43 didFail:1];

            [(PKPaymentWebService *)self _archiveBackgroundContext];
          }
        }

        v12 = v49;
        goto LABEL_48;
      }
    }

    else
    {
      if (v19 == 1)
      {
        [(PKWebService *)self logResponse:v20 withData:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v18 pushTopic];
          v16 = v50;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v9 taskIdentifier];
            *buf = 134218242;
            *&buf[4] = v33;
            v52 = 2112;
            v53 = v21;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling passes query task %lu from push topic %@", buf, 0x16u);
          }

          [(PKPaymentWebService *)self _handlePassListDownloadTask:v9 data:v12 fromPushTopic:v21];
          goto LABEL_32;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v9 taskIdentifier];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 134218242;
          *&buf[4] = v44;
          v52 = 2112;
          v53 = v46;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Dropping response for task %lu of unrelated type %@", buf, 0x16u);
        }

        v47 = [(PKPaymentWebService *)self backgroundContext];
        [v47 removeBackgroundDownloadRecordForTaskIdentifier:v13];

        [(PKPaymentWebService *)self _archiveBackgroundContext];
        v39 = [(PKPaymentWebService *)self context];
        v40 = v39;
        v41 = &__block_literal_global_865;
        goto LABEL_46;
      }

      if (v19 == 2)
      {
        [(PKWebService *)self logResponse:v20 withData:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v18 pushTopic];
          v16 = v50;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v9 taskIdentifier];
            *buf = 134218242;
            *&buf[4] = v22;
            v52 = 2112;
            v53 = v21;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling pass download task %lu from push topic %@", buf, 0x16u);
          }

          [(PKPaymentWebService *)self _handlePassDownloadTask:v9 data:v12 fromPushTopic:v21];
LABEL_32:

LABEL_48:
          objc_autoreleasePoolPop(v16);

          goto LABEL_49;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v9 taskIdentifier];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 134218242;
          *&buf[4] = v35;
          v52 = 2112;
          v53 = v37;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Dropping response for task %lu of unrelated type %@", buf, 0x16u);
        }

        v38 = [(PKPaymentWebService *)self backgroundContext];
        [v38 removeBackgroundDownloadRecordForTaskIdentifier:v13];

        [(PKPaymentWebService *)self _archiveBackgroundContext];
        v39 = [(PKPaymentWebService *)self context];
        v40 = v39;
        v41 = &__block_literal_global_868;
LABEL_46:
        [v39 atomicallyUpdateEveryRegion:v41];

        [(PKPaymentWebService *)self _archiveContext];
LABEL_47:
        v16 = v50;
        goto LABEL_48;
      }
    }

    [(PKWebService *)self logResponse:v20 withData:v12];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 taskIdentifier];
      *buf = 134217984;
      *&buf[4] = v32;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Unknown task type for task %lu", buf, 0xCu);
    }

    goto LABEL_47;
  }

LABEL_49:
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_backgroundSession == v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(PKPaymentWebService *)self backgroundContext];
    v13 = [v12 backgroundDownloadRecordForTaskIdentifier:{objc_msgSend(v9, "taskIdentifier")}];

    if ([v13 taskType] == 5)
    {
      v14 = v13;
      v15 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 credentialIdentifier];
        *buf = 138412546;
        v23 = v16;
        v24 = 2048;
        v25 = [v9 taskIdentifier];
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Receiving response data for background credential registration task: %@ (%lu)", buf, 0x16u);
      }

      v17 = [v14 responseData];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 mutableCopy];
        [v19 appendData:v10];
        v20 = [v19 copy];
        [v14 setResponseData:v20];
      }

      else
      {
        [v14 setResponseData:v10];
      }

      [(PKPaymentWebService *)self _archiveContext];
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PKPaymentWebService;
    [(PKWebService *)&v21 URLSession:v8 dataTask:v9 didReceiveData:v10];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v108[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task Completed: %@", buf, 0xCu);
  }

  if (self->_backgroundSession != v8)
  {
    v84.receiver = self;
    v84.super_class = PKPaymentWebService;
    [(PKWebService *)&v84 URLSession:v8 task:v9 didCompleteWithError:v10];
    goto LABEL_65;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [v9 response];
  v80 = [v9 originalRequest];
  v14 = [(PKPaymentWebService *)self backgroundContext];
  v15 = [v14 backgroundDownloadRecordForTaskIdentifier:{objc_msgSend(v9, "taskIdentifier")}];
  objc_opt_class();
  v82 = v14;
  v83 = v15;
  if (objc_opt_isKindOfClass())
  {
    v16 = [v13 statusCode];
    v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v16 == 401)
    {
      if (v17)
      {
        v18 = [v9 taskIdentifier];
        *buf = 134217984;
        *&buf[4] = v18;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task %lu Received Status Code 401.", buf, 0xCu);
      }

      v15 = v83;
      if (v83 && [v83 retryCount] <= 1)
      {
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke;
        v102[3] = &unk_1E79DBB30;
        v102[4] = self;
        v103 = v80;
        v104 = v83;
        v105 = v14;
        [(PKPaymentWebService *)self handleAuthenticationFailureWithCompletionHandler:v102];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v83 retryCount];
          *buf = 134217984;
          *&buf[4] = v21;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request failed after %lu retries. Aborting.", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v17)
      {
        v19 = [v9 taskIdentifier];
        v20 = [v9 originalRequest];
        *buf = 134218242;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task %lu completed: %@", buf, 0x16u);

        v14 = v82;
      }

      v15 = v83;
    }
  }

  v22 = [v15 taskType];
  v23 = v22;
  v81 = v13;
  if (!v10)
  {
    if (v22 != 3)
    {
      goto LABEL_29;
    }

LABEL_27:
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "taskIdentifier")}];
    v34 = v83;
    [(PKPaymentRegisterCredentialResponse *)v34 removeRemoteURLAssetForTaskIdentifier:v33 didFail:v10 != 0];
    [(PKPaymentWebService *)self _archiveBackgroundContext];
    if (([(PKPaymentRegisterCredentialResponse *)v34 hasOutstandingRemoteAssetTasks]& 1) != 0)
    {
      v35 = v83;
LABEL_61:

      v13 = v81;
      v14 = v82;
      goto LABEL_62;
    }

    v79 = v12;
    v40 = [(PKPaymentRegisterCredentialResponse *)v34 passURL];
    v75 = [(PKPaymentWebService *)self _passWithFileURL:v40];
    v41 = [(PKPaymentRegisterCredentialResponse *)v34 hasFailedRequiredRemoteAssetDownloads];
    v42 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      if (v42)
      {
        v43 = [v75 organizationName];
        v44 = [v75 serialNumber];
        *buf = 138412546;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = v44;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "URLSession: Required remote assets failed to download for %@:%@ -- skipping pass ingestion", buf, 0x16u);
      }

      v45 = [MEMORY[0x1E696AC08] defaultManager];
      [v45 removeItemAtURL:v40 error:0];

      v46 = [(PKPaymentRegisterCredentialResponse *)v34 pushTopic];
      v47 = [(PKPaymentWebService *)self context];
      v48 = v47;
      if (v46)
      {
        [v47 atomicallyUpdateRegionWithIdentifier:v46 updateBlock:&__block_literal_global_884];
      }

      else
      {
        [v47 atomicallyUpdateEveryRegion:&__block_literal_global_887];
      }

      [(PKPaymentWebService *)self _archiveContext];
      v65 = v75;
    }

    else
    {
      if (v42)
      {
        v62 = [v75 organizationName];
        v63 = [v75 serialNumber];
        *buf = 138412546;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v63;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "URLSession: Asset downloads complete for %@:%@ -- delivering pass", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);
      queue = dispatch_get_global_queue(21, 0);
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_880;
      v97[3] = &unk_1E79C9668;
      v98 = WeakRetained;
      v99 = self;
      v65 = v75;
      v100 = v75;
      v101 = v40;
      v66 = v97;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __dispatch_async_ar_block_invoke_14;
      v107 = &unk_1E79C4428;
      v108[0] = v66;
      v46 = WeakRetained;
      dispatch_async(queue, buf);
    }

    goto LABEL_59;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v9 taskIdentifier];
    v25 = [v9 originalRequest];
    [v25 URL];
    v77 = self;
    v26 = v8;
    v28 = v27 = v12;
    v29 = [v10 localizedDescription];
    *buf = 134218498;
    *&buf[4] = v24;
    v14 = v82;
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    v107 = v29;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error performing background download task %lu: %@. %@", buf, 0x20u);

    v13 = v81;
    v12 = v27;
    v8 = v26;
    self = v77;
  }

  if (v23 == 3)
  {
    goto LABEL_27;
  }

  if (v23 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v83 pushTopic], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = v30;
      v32 = [(PKPaymentWebService *)self context];
      [v32 atomicallyUpdateRegionWithIdentifier:v31 updateBlock:&__block_literal_global_876];

      v14 = v82;
    }

    else
    {
      v31 = [(PKPaymentWebService *)self context];
      [v31 atomicallyUpdateEveryRegion:&__block_literal_global_879];
    }

    [(PKPaymentWebService *)self _archiveContext];
    v35 = v83;
    if ([v83 taskType] != 4)
    {
      goto LABEL_62;
    }

    v78 = v12;
    v61 = v83;
    v37 = objc_loadWeakRetained(&self->_backgroundDelegate);
    v38 = 0;
    v39 = 0;
    goto LABEL_53;
  }

LABEL_29:
  v35 = v83;
  if ([v83 taskType] == 4)
  {
    v78 = v12;
    v36 = v83;
    v37 = objc_loadWeakRetained(&self->_backgroundDelegate);
    if (v10 || ([v36 responseData], v67 = objc_claimAutoreleasedReturnValue(), +[PKWebServiceResponse responseWithData:](PKPaymentDeviceCheckInResponse, "responseWithData:", v67), v68 = objc_claimAutoreleasedReturnValue(), v67, !v68))
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v39 = [v68 action];

      v38 = 1;
    }

    v35 = v83;
LABEL_53:
    v69 = dispatch_get_global_queue(21, 0);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_3;
    v91[3] = &unk_1E79D0340;
    v92 = v37;
    v93 = self;
    v96 = v38;
    v94 = v35;
    v95 = v39;
    v70 = v91;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke_14;
    v107 = &unk_1E79C4428;
    v108[0] = v70;
    v34 = v37;
    v33 = v35;
    dispatch_async(v69, buf);

    v40 = v92;
    v12 = v78;
LABEL_60:

    goto LABEL_61;
  }

  if (v23 == 5)
  {
    v79 = v12;
    v33 = v83;
    v49 = [v33 credentialIdentifier];
    v50 = [PKPaymentRegisterCredentialResponse alloc];
    v51 = [v33 responseData];
    v52 = [(PKPaymentRegisterCredentialResponse *)v50 initWithData:v51];

    v53 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v9 taskIdentifier];
      *buf = 134218754;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      *&buf[22] = 2112;
      v107 = v52;
      LOWORD(v108[0]) = 2112;
      *(v108 + 2) = v10;
      _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, "Background credential registration task (%lu) for credential %@ completed with response %@, error %@", buf, 0x2Au);
    }

    oslog = v53;

    v55 = objc_loadWeakRetained(&self->_backgroundDelegate);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_888;
    aBlock[3] = &unk_1E79C7D80;
    v76 = v55;
    v86 = v76;
    v87 = self;
    v34 = v49;
    v88 = v34;
    v40 = v52;
    v89 = v40;
    v90 = v10;
    v56 = _Block_copy(aBlock);
    v57 = dispatch_get_global_queue(21, 0);
    if (PKSharingDelayAttestation())
    {
      queue = v57;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Delay attestation is enabled", buf, 2u);
      }

      v58 = dispatch_time(0, 20000000000);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __dispatch_after_ar_block_invoke;
      v107 = &unk_1E79C4428;
      v108[0] = v56;
      v59 = v56;
      v60 = v58;
      v57 = queue;
      dispatch_after(v60, queue, buf);
    }

    else
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __dispatch_async_ar_block_invoke_14;
      v107 = &unk_1E79C4428;
      v108[0] = v56;
      v59 = v56;
      dispatch_async(v57, buf);
    }

LABEL_59:
    v12 = v79;
    v35 = v83;
    goto LABEL_60;
  }

LABEL_62:
  [v14 removeBackgroundDownloadRecordForTaskIdentifier:{objc_msgSend(v9, "taskIdentifier", queue)}];
  [(PKPaymentWebService *)self _archiveBackgroundContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [(PKPaymentWebService *)self backgroundContext];
    v72 = [v71 remainingTasks];
    *buf = 138412290;
    *&buf[4] = v72;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Remaining background tasks: %@", buf, 0xCu);

    v35 = v83;
  }

  objc_autoreleasePoolPop(v12);
LABEL_65:
}

void __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 176);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_2;
  v9[3] = &unk_1E79DBB08;
  v15 = a2;
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v17 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  if (v1 == 2)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v11) = 0;
    v10 = "Credential Renewal Failed.";
    goto LABEL_13;
  }

  if (v1 == 1)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v11) = 0;
    v10 = "Credential Renewal Rejected by User.";
LABEL_13:
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, v10, &v11, 2u);
    goto LABEL_14;
  }

  if (v1)
  {
    return;
  }

  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Credentials renewed. Retrying request.", &v11, 2u);
  }

  v4 = [*(a1 + 32) mutableCopy];
  v5 = [*(a1 + 40) authorizationHeader];
  [v4 setValue:v5 forHTTPHeaderField:@"Authorization"];

  [*(a1 + 48) logRequest:v4];
  v6 = [*(*(a1 + 48) + 120) downloadTaskWithRequest:v4];
  v7 = +[PKPaymentBackgroundDownloadRecord taskWithType:](PKPaymentBackgroundDownloadRecord, "taskWithType:", [*(a1 + 56) taskType]);
  [v7 setRetryCount:{objc_msgSend(*(a1 + 56), "retryCount") + 1}];
  [*(a1 + 64) addBackgroundDownloadRecord:v7 forTaskIdentifier:{objc_msgSend(v6, "taskIdentifier")}];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 taskIdentifier];
    v9 = [v4 URL];
    v11 = 134218242;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Creating background download task %lu: %@", &v11, 0x16u);
  }

  [v6 resume];
LABEL_14:
}

void __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_2_881;
  v4[3] = &unk_1E79C4E28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 paymentWebService:v2 didDownloadPassRemoteAssets:v3 completion:v4];
}

void __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_2_881(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "URLSession: Cleaning up download cache copy of pass: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtURL:*(a1 + 32) error:0];
}

void __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v7 = [*(a1 + 48) region];
  v6 = [*(a1 + 48) identifier];
  [v2 paymentWebService:v3 deviceCheckInReturnedAction:v5 success:v4 region:v7 identifier:v6];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v11.receiver = self;
  v11.super_class = PKPaymentWebService;
  v6 = a3;
  [(PKWebService *)&v11 URLSession:v6 didBecomeInvalidWithError:a4];
  backgroundSession = self->_backgroundSession;

  if (backgroundSession == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(&self->_backgroundDelegate);
      [v9 paymentWebServiceBackgroundSessionDidBecomeInvalid:{self, v11.receiver, v11.super_class}];
    }

    v10 = self->_backgroundSession;
    self->_backgroundSession = 0;
  }
}

- (void)_startBackgroundURLSessionWithIdentifier:(id)a3 context:(id)a4 backgroundDelegate:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!self->_backgroundSession)
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Starting background URL session…", buf, 2u);
    }

    objc_storeStrong(&self->_backgroundContext, a4);
    v15 = [(PKPaymentWebService *)self canBypassTrustValidation];
    if (v15)
    {
      v16 = [v10 stringByAppendingString:@"-nonEV"];
    }

    else
    {
      v16 = v10;
    }

    v17 = v16;
    v18 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:v16];
    [v18 set_overridesBackgroundSessionAutoRedirect:1];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"YES";
      if (v15)
      {
        v19 = @"NO";
      }

      *buf = 138412546;
      v30 = v17;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Initializing background URL session: %@ with extended validation: %{public}@", buf, 0x16u);
    }

    v26 = v17;

    [v18 set_performsEVCertCheck:!v15];
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];

    v22 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:v21];
    [v18 set_appleIDContext:v22];
    if (objc_opt_respondsToSelector())
    {
      [v12 paymentWebService:self willCreateSessionWithConfiguration:{v18, v17}];
    }

    v23 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v18 delegate:self delegateQueue:{self->_backgroundSessionDelegateQueue, v26}];
    backgroundSession = self->_backgroundSession;
    self->_backgroundSession = v23;

    objc_storeWeak(&self->_backgroundDelegate, v12);
    v25 = self->_backgroundSession;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__PKPaymentWebService__startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke;
    v28[3] = &unk_1E79DBB58;
    v28[4] = self;
    [(NSURLSession *)v25 getTasksWithCompletionHandler:v28];
  }

  if (v13)
  {
    v13[2](v13);
  }
}

uint64_t __102__PKPaymentWebService__startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 count];
  if (!result)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "No pending background download tasks, cleaning up download cache", v7, 2u);
    }

    return [*(a1 + 32) _cleanupPassDownloadCache];
  }

  return result;
}

- (BOOL)_hasConfiguration
{
  v2 = [(PKPaymentWebService *)self context];
  v3 = [v2 configurationDate];

  if (v3)
  {
    v4 = [v2 configuration];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_passWithFileURL:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_passesByLocalURL objectForKey:v4];
  if (!v5)
  {
    v6 = [(PKObject *)PKPass createWithFileURL:v4 warnings:0 error:0];
    if ([v6 passType] == 1 && (v7 = v6) != 0)
    {
      v5 = v7;
      v8 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
      [v5 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v8];

      [(NSMutableDictionary *)self->_passesByLocalURL setObject:v5 forKey:v4];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "*** ERROR ***: Couldn't find local pass %@ for downloaded asset.", &v11, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)_backgroundDownloadCloudStoreAssetsForItem:(id)a3 cloudStoreCoordinatorDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(backgroundDownloadQueue, block);
}

void __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_2;
  v3[3] = &unk_1E79DBBA8;
  v3[4] = a1[6];
  v4 = v1;
  [v4 downloadAssetWithCloudStoreCoordinatorDelegate:v2 completion:v3];
}

void __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 176);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_3;
  v15[3] = &unk_1E79DBB80;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = v8;
  v19 = v7;
  v20 = a3;
  v12 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v22 = v12;
  v13 = v7;
  v14 = v8;
  dispatch_async(v9, block);
}

void __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordName];
  v3 = [*(a1 + 40) backgroundContext];
  v4 = [v3 backgroundDownloadRecordForRecordName:v2];

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 138412802;
    *&buf[4] = v2;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v34 = v6;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Finished downloading task with recordName %@, taskRecord:%@, error: %@,", buf, 0x20u);
  }

  if (v4)
  {
    v7 = *(a1 + 48);
    v32 = v7;
    if (*(a1 + 56) && !v7)
    {
      [*(a1 + 40) _handleRemoteCloudStoreAssetForRecordName:v2 taskRecord:v4 data:? shouldWriteData:? error:?];
      v7 = v32;
    }

    [v4 removeRemoteCloudStoreAssetForRecordName:v2 didFail:v7 != 0];
    [*(a1 + 40) _archiveBackgroundContext];
    if (([v4 hasOutstandingRemoteAssetTasks] & 1) == 0)
    {
      v8 = [v4 passURL];
      v9 = [*(a1 + 40) _passWithFileURL:v8];
      v10 = [v4 hasFailedRequiredRemoteAssetDownloads];
      v11 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v11)
        {
          v12 = [v9 organizationName];
          v13 = [v9 serialNumber];
          *buf = 138412546;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "CloudStore: Required remote assets failed to download for %@:%@ -- skipping pass ingestion", buf, 0x16u);
        }

        v14 = [MEMORY[0x1E696AC08] defaultManager];
        [v14 removeItemAtURL:v8 error:0];

        v15 = [v4 pushTopic];
        v16 = [*(a1 + 40) context];
        v17 = v16;
        if (v15)
        {
          [v16 atomicallyUpdateRegionWithIdentifier:v15 updateBlock:&__block_literal_global_907];
        }

        else
        {
          [v16 atomicallyUpdateEveryRegion:&__block_literal_global_910];
        }

        [*(a1 + 40) _archiveContext];
      }

      else
      {
        if (v11)
        {
          v18 = [v9 organizationName];
          v19 = [v9 serialNumber];
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "CloudStore: Asset downloads complete for %@:%@ -- delivering pass", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
        v21 = dispatch_get_global_queue(21, 0);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_903;
        v27[3] = &unk_1E79C9668;
        v22 = *(a1 + 40);
        v28 = WeakRetained;
        v29 = v22;
        v30 = v9;
        v31 = v8;
        v23 = v27;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __dispatch_async_ar_block_invoke_14;
        v34 = &unk_1E79C4428;
        v35 = v23;
        v15 = WeakRetained;
        dispatch_async(v21, buf);
      }
    }
  }

  v24 = [*(a1 + 40) backgroundContext];
  [v24 removeBackgroundDownloadRecordForRecordName:v2];

  [*(a1 + 40) _archiveBackgroundContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 40) backgroundContext];
    v26 = [v25 remainingTasks];
    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Remaining background tasks: %@", buf, 0xCu);
  }
}

void __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_903(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_2_904;
  v4[3] = &unk_1E79C4E28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 paymentWebService:v2 didDownloadPassRemoteAssets:v3 completion:v4];
}

void __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke_2_904(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "CloudStore: Cleaning up download cache copy of pass: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtURL:*(a1 + 32) error:0];
}

- (void)_handleRemoteAssetDownloadForManifestItem:(id)a3 taskPassURL:(id)a4 data:(id)a5 shouldWriteData:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  if (v12)
  {
    v14 = [(PKPaymentWebService *)self _passWithFileURL:a4];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 dataAccessor];
      v17 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
      v18 = [v16 remoteAssetManagerForSEIDs:v17];

      v27 = 0;
      LOBYTE(v17) = [v18 addRemoteAssetData:v13 shouldWriteData:v8 forManifestItem:v12 error:&v27];
      v19 = v27;
      v20 = v27;
      [v18 cacheRemoteAssetData:v13 forManifestItem:v12];
      if ((v17 & 1) == 0)
      {
        if (a7)
        {
          objc_storeStrong(a7, v19);
        }

        v21 = PKLogFacilityTypeGetObject(7uLL);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

        if (v22)
        {
          v23 = [v20 userInfo];
          v24 = [v23 objectForKey:*MEMORY[0x1E696AA08]];

          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v20;
          }

          v26 = [v25 localizedDescription];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v26;
            _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "*** ERROR ***: Could not add asset to pass: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_handleRemoteCloudStoreAssetForRecordName:(id)a3 taskRecord:(id)a4 data:(id)a5 shouldWriteData:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v13 remoteAssetsByRecordName];
  v17 = [v15 objectForKey:v14];

  v16 = [v13 passURL];

  [(PKPaymentWebService *)self _handleRemoteAssetDownloadForManifestItem:v17 taskPassURL:v16 data:v12 shouldWriteData:v8 error:a7];
}

- (void)_handlePassListDownloadTask:(id)a3 data:(id)a4 fromPushTopic:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__54;
  v45 = __Block_byref_object_dispose__54;
  v46 = 0;
  v11 = [v8 response];
  v12 = [v8 error];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke;
  v38[3] = &unk_1E79C8FA8;
  v40 = &v41;
  v13 = v9;
  v39 = v13;
  [(PKPaymentWebService *)self _resultForResponse:v11 error:v12 successHandler:v38];

  v14 = [v42[5] devicePassSerialNumbers];
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);
    v16 = dispatch_get_global_queue(21, 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke_2;
    v33[3] = &unk_1E79C9668;
    v34 = WeakRetained;
    v35 = self;
    v36 = v14;
    v37 = v10;
    v17 = v33;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v48 = v17;
    v18 = WeakRetained;
    dispatch_async(v16, block);
  }

  v19 = [v42[5] passURLs];
  if ([v19 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v49 count:16];
    if (v21)
    {
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [(PKPaymentWebService *)self _backgroundDownloadPassAtURL:*(*(&v29 + 1) + 8 * i) fromPushTopic:v10];
        }

        v21 = [v20 countByEnumeratingWithState:&v29 objects:v49 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "*** WARNING ***: No results returned for pass list", block, 2u);
    }
  }

  v24 = [v42[5] lastUpdatedTag];
  v25 = v24;
  if (v10 && v24)
  {
    v26 = [(PKPaymentWebService *)self context];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke_912;
    v27[3] = &unk_1E79DB510;
    v28 = v25;
    [v26 atomicallyUpdateRegionWithIdentifier:v10 updateBlock:v27];

    [(PKPaymentWebService *)self _archiveContext];
  }

  _Block_object_dispose(&v41, 8);
}

BOOL __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke(uint64_t a1)
{
  v2 = [(PKWebServiceResponse *)PKPaymentPassesResponse responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)_handlePassDownloadTask:(id)a3 data:(id)a4 fromPushTopic:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 response];
  v12 = [v10 error];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKPaymentWebService__handlePassDownloadTask_data_fromPushTopic___block_invoke;
  v14[3] = &unk_1E79DBBD0;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(PKPaymentWebService *)self _passWithData:v9 response:v11 error:v12 completion:v14];
}

void __66__PKPaymentWebService__handlePassDownloadTask_data_fromPushTopic___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
    v10 = dispatch_get_global_queue(21, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__PKPaymentWebService__handlePassDownloadTask_data_fromPushTopic___block_invoke_2;
    v17[3] = &unk_1E79C4E00;
    v11 = *(a1 + 32);
    v18 = WeakRetained;
    v19 = v11;
    v20 = v7;
    v12 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v22 = v12;
    v13 = WeakRetained;
    dispatch_async(v10, block);
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) context];
    v16 = v15;
    if (v14)
    {
      [v15 atomicallyUpdateRegionWithIdentifier:*(a1 + 40) updateBlock:&__block_literal_global_914];
    }

    else
    {
      [v15 atomicallyUpdateEveryRegion:&__block_literal_global_916];
    }

    [*(a1 + 32) _archiveContext];
  }
}

- (void)_handleDeviceCheckInTask:(id)a3 downloadRecord:(id)a4 data:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    backgroundDownloadQueue = self->_backgroundDownloadQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PKPaymentWebService__handleDeviceCheckInTask_downloadRecord_data___block_invoke;
    v11[3] = &unk_1E79C4E00;
    v12 = v7;
    v13 = v8;
    v14 = self;
    v10 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v16 = v10;
    dispatch_async(backgroundDownloadQueue, block);
  }
}

uint64_t __68__PKPaymentWebService__handleDeviceCheckInTask_downloadRecord_data___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setResponseData:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 _archiveBackgroundContext];
}

- (void)_handleRetryAfterTSMSyncForPushTopic:(id)a3 withRequest:(id)a4 taskIdentifier:(unint64_t)a5 completionHandler:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PKWebService *)self webServiceTaskIdentifierForTaskIdentifier:a5];
  v14 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_delegateLock);
  v15 = [(NSHashTable *)self->_delegates allObjects];
  v16 = [v15 copy];

  os_unfair_lock_unlock(&self->_delegateLock);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v29 + 1) + 8 * v21++) paymentWebService:self didQueueTSMConnectionForTaskID:v13];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v14);
  targetDevice = self->_targetDevice;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __105__PKPaymentWebService__handleRetryAfterTSMSyncForPushTopic_withRequest_taskIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E79D3B58;
  v25[4] = self;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v23 = v12;
  v24 = v11;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self queueConnectionToTrustedServiceManagerForPushTopic:v10 withCompletion:v25];
}

void __105__PKPaymentWebService__handleRetryAfterTSMSyncForPushTopic_withRequest_taskIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = @"success";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v27[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  AnalyticsSendEvent();

  v8 = [*(a1 + 32) urlRequestTaggedWithUniqueRequestIdentifier:*(a1 + 40)];
  [*(a1 + 32) logRequest:v8];
  v9 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__PKPaymentWebService__handleRetryAfterTSMSyncForPushTopic_withRequest_taskIdentifier_completionHandler___block_invoke_2;
  v23[3] = &unk_1E79CD770;
  v23[4] = v9;
  v24 = *(a1 + 48);
  v10 = [v9 dataTaskWithRequest:v8 completionHandler:v23];
  [v10 resume];

  v11 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((*(a1 + 32) + 172));
  v12 = [*(*(a1 + 32) + 192) allObjects];
  v13 = [v12 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 172));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) paymentWebService:*(a1 + 32) didCompleteTSMConnectionForTaskID:{*(a1 + 56), v19}];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v11);
}

void __105__PKPaymentWebService__handleRetryAfterTSMSyncForPushTopic_withRequest_taskIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) logResponse:v8 withData:v7];
    v10 = *(a1 + 40);
    v11.receiver = *(a1 + 32);
    v11.super_class = PKPaymentWebService;
    objc_msgSendSuper2(&v11, sel_handleResponse_withError_data_task_completionHandler_, v8, v9, v7, 0, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_handleRetryAfterRegisterWithRequest:(id)a3 response:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Registering device, and then retrying same request", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PKPaymentWebService__handleRetryAfterRegisterWithRequest_response_completionHandler___block_invoke;
  v14[3] = &unk_1E79D78E0;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  [(PKPaymentWebService *)self _registerIfNeededWithResponse:v9 task:0 isRedirect:1 completion:v14];
}

void __87__PKPaymentWebService__handleRetryAfterRegisterWithRequest_response_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Registration failed with error %@. Aborting original request.", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Registration succeeded, retrying original request", buf, 2u);
    }

    v6 = [*(a1 + 32) urlRequestTaggedWithUniqueRequestIdentifier:*(a1 + 40)];
    [*(a1 + 32) logRequest:v6];
    v7 = *(a1 + 32);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __87__PKPaymentWebService__handleRetryAfterRegisterWithRequest_response_completionHandler___block_invoke_918;
    v12 = &unk_1E79CD770;
    v13 = v7;
    v14 = *(a1 + 48);
    v8 = [v7 dataTaskWithRequest:v6 completionHandler:&v9];
    [v8 resume];
  }
}

void __87__PKPaymentWebService__handleRetryAfterRegisterWithRequest_response_completionHandler___block_invoke_918(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) logResponse:v7 withData:v9];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(0x10uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Enrolling Apple Pay Trust Key", buf, 2u);
  }

  v9 = [v6 HTTPBody];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentWebService__handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E79DBBF8;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [(PKPaymentWebService *)self performApplePayTrustRegistrationWithCompletion:v13];
}

void __101__PKPaymentWebService__handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) urlRequestTaggedWithUniqueRequestIdentifier:*(a1 + 40)];
    v9 = [v8 mutableCopy];

    v10 = *(a1 + 48);
    if (!v10)
    {
      v20 = PKLogFacilityTypeGetObject(0x10uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust registration succeded, but no request body to modify for retry", buf, 2u);
      }

      (*(*(a1 + 56) + 16))();
      *(*(a1 + 32) + 224) = 0;
      goto LABEL_21;
    }

    v25 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v25];
    v12 = v25;
    if (v12 || !v11)
    {
      if (!v11)
      {
        v13 = @"nil";
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v11 mutableCopy];
        v14 = [v5 publicKeyHash];
        v15 = [v14 hexEncoding];
        [(__CFString *)v13 setObject:v15 forKeyedSubscript:@"publicKeyHash"];

        v16 = [PKWebServiceRequest _HTTPBodyWithDictionary:v13];
        [v9 setHTTPBody:v16];

        [*(a1 + 32) logRequest:v9];
        v17 = *(a1 + 32);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __101__PKPaymentWebService__handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest_completionHandler___block_invoke_2;
        v23[3] = &unk_1E79CD770;
        v23[4] = v17;
        v24 = *(a1 + 56);
        v18 = [v17 dataTaskWithRequest:v9 completionHandler:v23];
        [v18 resume];

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }
    }

    v21 = objc_opt_class();
    v13 = NSStringFromClass(v21);
LABEL_17:
    v22 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust registration succeded, but could not retry request after Apple Pay Trust registration. Expected dictionary and received %@ with JSON error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    *(*(a1 + 32) + 224) = 0;
    goto LABEL_20;
  }

  v19 = PKLogFacilityTypeGetObject(0x10uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust enrollment failed with error: %@\n", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
  *(*(a1 + 32) + 224) = 0;
LABEL_22:
}

void __101__PKPaymentWebService__handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) logResponse:v7 withData:v9];
  }

  (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 224) = 0;
}

- (void)_registerIfNeededWithResponse:(id)a3 task:(id)a4 isRedirect:(BOOL)a5 completion:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  objc_initWeak(&location, a4);
  v11 = a6;
  os_unfair_lock_lock(&self->_lock);
  v12 = objc_loadWeakRetained(&location);

  if (v12)
  {
    v13 = objc_loadWeakRetained(&location);
    v14 = -[PKWebService webServiceTaskIdentifierForTaskIdentifier:](self, "webServiceTaskIdentifierForTaskIdentifier:", [v13 taskIdentifier]);

    activeRegistrationTasks = self->_activeRegistrationTasks;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v17 = [(NSMutableSet *)activeRegistrationTasks containsObject:v16];
  }

  else
  {
    v17 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = MEMORY[0x1E695DFF8];
  v19 = [v10 pk_valueForHTTPHeaderField:@"BrokerURL"];
  v20 = [v18 URLWithString:v19];

  if (v17)
  {
    goto LABEL_5;
  }

  if (v20 && a5)
  {
    v21 = 0;
    v22 = @"Server requested registration during HTTP Redirect";
  }

  else
  {
    v23 = MEMORY[0x1E695DFF8];
    v24 = [v10 pk_valueForHTTPHeaderField:@"regionbrokerurl"];
    v25 = [v23 URLWithString:v24];

    v26 = [v10 pk_valueForHTTPHeaderField:@"x-pod-region"];
    v27 = [(PKPaymentWebService *)self context];
    v28 = [v27 regionForIdentifier:v26];
    v21 = v28 != 0;

    v22 = @"Wallet noticed missing registration during HTTP response";
    v20 = v25;
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  if (!v21)
  {
    v29 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v22;
      _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Request device registration because: %@", buf, 0xCu);
    }

    v30 = [(PKPaymentWebService *)self targetDevice];
    if (objc_opt_respondsToSelector())
    {
      v31 = v36;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke;
      v36[3] = &unk_1E79C8E90;
      v36[4] = v11;
      [v30 performDeviceRegistrationForReason:v22 brokerURL:v20 completion:v36];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_948;
        v33[3] = &unk_1E79DBC20;
        v34 = v11;
        [(PKPaymentWebService *)self registerDeviceAtBrokerURL:v20 consistencyCheckResults:0 completion:v33];
        v32 = &v34;
        goto LABEL_19;
      }

      v31 = v35;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_946;
      v35[3] = &unk_1E79D62F0;
      v35[4] = v11;
      [v30 performDeviceRegistrationReturningContextForReason:v22 brokerURL:v20 completion:v35];
    }

    v32 = (v31 + 4);
LABEL_19:

    goto LABEL_20;
  }

LABEL_5:
  (*(v11 + 2))(v11, 0);
LABEL_20:

  objc_destroyWeak(&location);
}

void __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 0x10) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Registration failed with error %@", &v9, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = PKDisplayableErrorForCommonType(0, v5);
    (*(v7 + 16))(v7, v8);
  }
}

void __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_946(uint64_t a1, char a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 0x10) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Registration failed with error %@", &v12, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = PKDisplayableErrorForCommonType(0, v8);
    (*(v10 + 16))(v10, v11);
  }
}

void __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Registration failed with error %@", &v10, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = PKDisplayableErrorForCommonType(0, v6);
    (*(v8 + 16))(v8, v9);
  }
}

- (void)_applePayTrustPublicKeyHashWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Fetching Apple Pay Trust key from NearField", buf, 2u);
    }

    v6 = [(PKPaymentWebService *)self targetDevice];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__PKPaymentWebService__applePayTrustPublicKeyHashWithCompletion___block_invoke;
    v7[3] = &unk_1E79C4950;
    v7[4] = self;
    v8 = v4;
    [v6 applePayTrustKeyForIdentifier:@"com.apple.wallet.applepaytrust" completion:v7];
  }
}

void __65__PKPaymentWebService__applePayTrustPublicKeyHashWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a2 publicKeyHash];
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Fetched Apple Pay Trust key from with publicKeyHash: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!a2)
    {
      v6 = PKLogFacilityTypeGetObject(0x10uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Apple Pay Trust Key does not exist.", buf, 2u);
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKPaymentWebService__applePayTrustPublicKeyHashWithCompletion___block_invoke_949;
    v8[3] = &unk_1E79DBC48;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v7 performApplePayTrustRegistrationWithCompletion:v8];
  }
}

void __65__PKPaymentWebService__applePayTrustPublicKeyHashWithCompletion___block_invoke_949(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a2 publicKeyHash];
  v5 = PKLogFacilityTypeGetObject(0x10uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Created Apple Pay Trust key with publicKeyHash: %@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "Failed to create Apple Pay Trust Key.";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
}

- (id)_downloadPassesWithURLs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = dispatch_queue_create("passQueue", 0);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__PKPaymentWebService__downloadPassesWithURLs___block_invoke;
        v15[3] = &unk_1E79DBC70;
        v16 = v5;
        v17 = v6;
        v18 = v7;
        [(PKPaymentWebService *)self passAtURL:v12 completion:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  return v6;
}

void __47__PKPaymentWebService__downloadPassesWithURLs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKPaymentWebService__downloadPassesWithURLs___block_invoke_2;
    v8[3] = &unk_1E79C4E00;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v5;
    v11 = *(a1 + 48);
    v7 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v13 = v7;
    dispatch_async(v6, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __47__PKPaymentWebService__downloadPassesWithURLs___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_deviceProvisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67240192;
    v8[1] = v4;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Requesting device provisioning data including metadata: %{public}d", v8, 8u);
  }

  [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice paymentWebService:self provisioningDataIncludingDeviceMetadata:v4 withCompletionHandler:v6];
}

- (unint64_t)_downloadPassAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentWebServiceRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKWebServiceRequest *)v9 _murlRequestWithURL:v7 appleAccountInformation:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__PKPaymentWebService__downloadPassAtURL_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = v6;
  v12 = v6;
  [(PKWebService *)self performRequest:v11 taskIdentifier:v8 completionHandler:v14];

  return v8;
}

- (void)_passWithData:(id)a3 response:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__54;
  v28 = __Block_byref_object_dispose__54;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__PKPaymentWebService__passWithData_response_error_completion___block_invoke;
  v20[3] = &unk_1E79DBAC0;
  v14 = v10;
  v22 = self;
  v23 = &v24;
  v21 = v14;
  v15 = [(PKPaymentWebService *)self _resultForResponse:v11 error:v12 successHandler:v20];
  if (v15 != 1)
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v16 = [v12 domain];
    if ([v16 isEqualToString:*MEMORY[0x1E696A978]])
    {
LABEL_8:

      goto LABEL_9;
    }

    v17 = [v12 domain];
    if ([v17 isEqualToString:@"PKWebServiceErrorDomain"])
    {

      goto LABEL_8;
    }

    v18 = [v12 domain];
    v19 = [v18 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

    if ((v19 & 1) == 0)
    {
LABEL_7:
      [(PKPaymentWebService *)self _errorWithResult:v15 data:v14];
      v12 = v16 = v12;
      goto LABEL_8;
    }
  }

LABEL_9:
  v13[2](v13, v15, v25[5], v12);

  _Block_object_dispose(&v24, 8);
}

uint64_t __63__PKPaymentWebService__passWithData_response_error_completion___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v11 = 0;
  v3 = [(PKObject *)PKPass createWithData:v2 warnings:0 error:&v11];
  v4 = v11;
  if ([v3 passType] == 1)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v3);
  }

  v5 = *(*(a1[6] + 8) + 40);
  v6 = [*(a1[5] + 256) secureElementIdentifiers];
  [v5 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v6];

  if (*(*(a1[6] + 8) + 40))
  {
    v7 = 1;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 localizedDescription];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Unable to initialize pass with downloaded data: %@", buf, 0xCu);
    }

    v7 = 3;
  }

  return v7;
}

- (void)_passOwnershipTokenForPaymentCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_14;
  }

  if ([v6 isRemoteCredential])
  {
    v8 = [v6 remoteCredential];
  }

  else if ([v6 isAccountCredential])
  {
    v8 = [v6 accountCredential];
  }

  else
  {
    if (![v6 isPeerPaymentCredential])
    {
LABEL_12:
      v7[2](v7, 0);
      goto LABEL_14;
    }

    v8 = [v6 peerPaymentCredential];
  }

  v9 = v8;
  v10 = [v8 ownershipTokenIdentifier];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceName];
  v12 = [v11 isEqualToString:@"Apple Watch"];

  if (v12 && (PKRunningInPassd() & 1) == 0)
  {
    v14 = +[PKPaymentService paymentService];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke;
    v18[3] = &unk_1E79DBC98;
    v19 = v10;
    v20 = v7;
    v18[4] = self;
    v15 = v10;
    [v14 passOwnershipTokenWithIdentifier:v15 completion:v18];
  }

  else
  {
    targetDevice = self->_targetDevice;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke_3;
    v16[3] = &unk_1E79C50E0;
    v17 = v7;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self passOwnershipTokenWithIdentifier:v10 completion:v16];
  }

LABEL_14:
}

void __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 256);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke_2;
    v8[3] = &unk_1E79C50E0;
    v9 = *(a1 + 48);
    [v7 paymentWebService:v5 passOwnershipTokenWithIdentifier:v6 completion:v8];
  }
}

- (void)_storePassOwnershipToken:(id)a3 withIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice paymentWebService:self storePassOwnershipToken:v8 withIdentifier:v6];
    }

    else
    {
      v7 = +[PKPaymentService paymentService];
      [v7 storePassOwnershipToken:v8 withIdentifier:v6];
    }
  }
}

- (unint64_t)_resultForResponse:(id)a3 error:(id)a4 successHandler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 statusCode];
    if (v11 == 207 || v11 == 200)
    {
      v12 = v10[2](v10);
    }

    else
    {
      v12 = [(PKPaymentWebService *)self _resultForUnexpectedStatusCode:v11];
    }

    v14 = v12;
  }

  else
  {
    if (v9)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [v8 URL];
        v17 = [v16 absoluteString];
        v18 = 138412546;
        v19 = v17;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Error executing request: %@ error: %@", &v18, 0x16u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)_errorWithResult:(unint64_t)a3 response:(id)a4 data:(id)a5
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 3 && a3 != 1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = PKLocalizedPaymentString(&cfstr_UnexpectedErro.isa, 0);
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "statusCode")}];
        [v8 setObject:v10 forKeyedSubscript:@"PKErrorHTTPResponseStatusCodeKey"];
      }
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentWebServiceErrorDomain" code:a3 userInfo:v8];
  }

  return v7;
}

- (id)_paymentDevice
{
  paymentDevice = self->_paymentDevice;
  if (!paymentDevice)
  {
    v4 = objc_alloc_init(PKPaymentDevice);
    v5 = self->_paymentDevice;
    self->_paymentDevice = v4;

    paymentDevice = self->_paymentDevice;
  }

  return paymentDevice;
}

- (id)_movePassToDownloadCache:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a3 serializedFileWrapper];
  v5 = [objc_alloc(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:v4];
  v6 = [(PKPaymentWebService *)self _downloadCacheLocation];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = 0;
    v12 = [v11 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v23];
    v10 = v23;

    if ((v12 & 1) == 0 && v10)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Could not create download cache at %@", buf, 0xCu);
      }
    }
  }

  v14 = CFUUIDCreate(0);
  v15 = CFUUIDCreateString(*MEMORY[0x1E695E480], v14);
  v16 = [v6 URLByAppendingPathComponent:v15];
  v17 = [v16 URLByAppendingPathExtension:@"pkpass"];

  CFRelease(v15);
  CFRelease(v14);
  [v5 writeToURL:v17 options:1 originalContentsURL:0 error:0];
  v18 = [(PKObject *)PKPass createWithFileURL:v17 warnings:0 error:0];
  if ([v18 passType] == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
  [v20 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v21];

  return v20;
}

- (id)_downloadCacheLocation
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = PKCacheDirectoryPath();
  v4 = [v2 fileURLWithPath:v3];

  v5 = [v4 URLByAppendingPathComponent:@"PassDownloadCache"];

  return v5;
}

- (void)_cleanupPassDownloadCache
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PKPaymentWebService *)self _downloadCacheLocation];
  v5 = [v4 path];
  v6 = [v3 enumeratorAtPath:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [v3 removeItemAtPath:v12 error:{0, v14}];
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_archiveContext
{
  v3 = [(PKPaymentWebService *)self context];
  if (v3)
  {
    v5 = v3;
    v4 = [(PKPaymentWebService *)self archiver];
    [v4 archiveContext:v5];

    v3 = v5;
  }
}

- (void)_archiveBackgroundContext
{
  v4 = [(PKPaymentWebService *)self archiver];
  v3 = [(PKPaymentWebService *)self backgroundContext];
  [v4 archiveBackgroundContext:v3];
}

- (PKPaymentWebServiceBackgroundDelegate)backgroundDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);

  return WeakRetained;
}

- (unint64_t)_performAccountApplePayTrustProtocolRequest:(id)a3 originalRequest:(id)a4 taskID:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__PKPaymentWebService_PKAccount___performAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke;
  v18[3] = &unk_1E79DDE10;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = [(PKPaymentWebService *)self _performAccountRequest:v12 taskID:a5 responseClass:v13 completion:v18];

  return v16;
}

void __112__PKPaymentWebService_PKAccount___performAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v8 && !v5)
  {
    [*(a1 + 32) setHashResponse:?];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v6);
  }
}

- (unint64_t)_performOptionalAccountApplePayTrustProtocolRequest:(id)a3 originalRequest:(id)a4 taskID:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!a5)
  {
    a5 = [(PKWebService *)self nextTaskID];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PKPaymentWebService_PKAccount___performOptionalAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke;
  v16[3] = &unk_1E79D1CC8;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v13 = v12;
  v14 = v11;
  [(PKWebService *)self performRequest:v10 taskIdentifier:a5 completionHandler:v16];

  return a5;
}

void __120__PKPaymentWebService_PKAccount___performOptionalAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 1;
  if (v7 && !v9)
  {
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKey:@"referenceIdentifier"];
        v11 = v13 != 0;
      }
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__61;
  v34 = __Block_byref_object_dispose__61;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__61;
  v28 = __Block_byref_object_dispose__61;
  v29 = 0;
  v14 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120__PKPaymentWebService_PKAccount___performOptionalAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke_19;
  v18[3] = &unk_1E79DDE38;
  v23 = v11;
  v21 = &v30;
  v15 = v7;
  v19 = v15;
  v20 = *(a1 + 40);
  v22 = &v24;
  v16 = [v14 _resultForResponse:v8 error:v10 successHandler:v18];
  if (!v10 && v16 != 1)
  {
    v10 = [*(a1 + 32) _errorWithResult:v16 data:v15];
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v31[5], v25[5], v10);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

BOOL __120__PKPaymentWebService_PKAccount___performOptionalAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke_19(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [(PKWebServiceResponse *)PKApplePayTrustHashResponse responseWithData:*(a1 + 32)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(a1 + 40) setHashResponse:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v5 = [objc_msgSend(*(a1 + 40) "signatureResponseClass")];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return *(*(*(a1 + 48) + 8) + 40) || *(*(*(a1 + 56) + 8) + 40) != 0;
}

- (unint64_t)_performAccountRequest:(id)a3 account:(id)a4 request:(id)a5 taskID:(unint64_t)a6 responseClass:(Class)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (!a6)
  {
    a6 = [(PKWebService *)self nextTaskID];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__PKPaymentWebService_PKAccount___performAccountRequest_account_request_taskID_responseClass_completion___block_invoke;
  v22[3] = &unk_1E79DDE88;
  v22[4] = self;
  v23 = v15;
  v25 = v17;
  v26 = a7;
  v24 = v16;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  [(PKWebService *)self performRequest:v14 taskIdentifier:a6 completionHandler:v22];

  return a6;
}

void __105__PKPaymentWebService_PKAccount___performAccountRequest_account_request_taskID_responseClass_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__61;
  v25 = __Block_byref_object_dispose__61;
  v26 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__PKPaymentWebService_PKAccount___performAccountRequest_account_request_taskID_responseClass_completion___block_invoke_2;
  v15[3] = &unk_1E79DDE60;
  v10 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v11 = *(a1 + 64);
  v19 = &v21;
  v20 = v11;
  v12 = v7;
  v18 = v12;
  v13 = [v10 _resultForResponse:v8 error:v9 successHandler:v15];
  if (!v9 && v13 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v13 data:v12];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, v22[5], v9);
  }

  _Block_object_dispose(&v21, 8);
}

BOOL __105__PKPaymentWebService_PKAccount___performAccountRequest_account_request_taskID_responseClass_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = a1[6];
  if (v2 | v3)
  {
    [v4 responseWithData:v5 account:? request:?];
  }

  else
  {
    [v4 responseWithData:v5];
  }
  v6 = ;
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(a1[7] + 8) + 40) != 0;
}

- (unint64_t)_performAccountRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 taskID:[(PKWebService *)self nextTaskID] responseClass:a4 completion:v8];

  return v10;
}

- (unint64_t)_performAccountRequest:(id)a3 account:(id)a4 responseClass:(Class)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:v11 request:0 taskID:[(PKWebService *)self nextTaskID] responseClass:a5 completion:v10];

  return v13;
}

- (unint64_t)_performAccountRequest:(id)a3 request:(id)a4 responseClass:(Class)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:0 request:v11 taskID:[(PKWebService *)self nextTaskID] responseClass:a5 completion:v10];

  return v13;
}

- (unint64_t)generateTopUpTokenWithRequest:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [v10 _urlRequestWithAppleAccountInformation:v11];

  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:v9 responseClass:objc_opt_class() completion:v8];
  return v13;
}

- (unint64_t)resolveStorefrontCountryMismatchWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)_performApplyRequest:(id)a3 responseClass:(Class)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PKWebService *)self nextTaskID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PKPaymentWebService_PKApplyWebService___performApplyRequest_responseClass_completion___block_invoke;
  v13[3] = &unk_1E79C90C8;
  v14 = v8;
  v15 = a4;
  v13[4] = self;
  v11 = v8;
  [(PKWebService *)self performRequest:v9 taskIdentifier:v10 completionHandler:v13];

  return v10;
}

void __88__PKPaymentWebService_PKApplyWebService___performApplyRequest_responseClass_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__81;
  v28 = __Block_byref_object_dispose__81;
  v29 = 0;
  v10 = *(a1 + 32);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __88__PKPaymentWebService_PKApplyWebService___performApplyRequest_responseClass_completion___block_invoke_13;
  v19 = &unk_1E79E2708;
  v11 = *(a1 + 48);
  v22 = &v24;
  v23 = v11;
  v12 = v7;
  v20 = v12;
  v13 = v8;
  v21 = v13;
  v14 = [v10 _resultForResponse:v13 error:v9 successHandler:&v16];
  if (!v9 && v14 != 1)
  {
    v9 = [*(a1 + 32) _errorWithResult:v14 data:{v12, v16, v17, v18, v19, v20}];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v25[5], v9);
  }

  _Block_object_dispose(&v24, 8);
}

BOOL __88__PKPaymentWebService_PKApplyWebService___performApplyRequest_responseClass_completion___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 56) responseWithData:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 40) allHeaderFields];
    v6 = [v5 PKStringForKey:@"x-conversation-id"];

    [*(*(*(a1 + 48) + 8) + 40) setConversationIdentifier:v6];
  }

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (unint64_t)applicationsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [v7 applyServiceURL];
  v9 = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [v7 _urlRequestWithServiceURL:v8 appleAccountInformation:v9];

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKPaymentWebService_PKApplyWebService__applicationsWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79E2730;
  v16 = v6;
  v12 = v6;
  v13 = [(PKPaymentWebService *)self _performApplyRequest:v10 responseClass:v11 completion:v15];

  return v13;
}

uint64_t __77__PKPaymentWebService_PKApplyWebService__applicationsWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)deleteApplicationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)createWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [v7 applyServiceURL];
  v9 = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [v7 _urlRequestWithServiceURL:v8 appleAccountInformation:v9];

  v11 = [(PKPaymentWebService *)self _performApplyRequest:v10 responseClass:objc_opt_class() completion:v6];
  return v11;
}

- (unint64_t)applyWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)submitDocumentsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)submitVerificationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)resendVerificationRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)termsDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v6];
  v8 = [v6 baseURL];

  if (!v8)
  {
    v9 = [(PKPaymentWebService *)self context];
    v10 = [v9 primaryRegion];
    v11 = [v10 applyServiceURL];
    [v6 setBaseURL:v11];
  }

  v12 = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [v6 _urlRequestWithAppleAccountInformation:v12];

  v14 = [(PKPaymentWebService *)self _performApplyRequest:v13 responseClass:objc_opt_class() completion:v7];
  return v14;
}

- (unint64_t)featureTermsDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 primaryRegion];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [v9 applyServiceURL];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [v7 _urlRequestWithServiceURL:v10 appleAccountInformation:v11];

  v13 = [(PKPaymentWebService *)self _performApplyRequest:v12 responseClass:objc_opt_class() completion:v6];
  return v13;
}

- (unint64_t)shownTermsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)submitTermsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v8 = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [v7 _urlRequestWithAppleAccountInformation:v8];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:v6];
  return v10;
}

- (unint64_t)augmentedProductWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentWebService *)self context];
  v9 = [v8 primaryRegion];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v10 = [v9 applyServiceURL];
  v11 = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [v7 _urlRequestWithServiceURL:v10 appleAccountInformation:v11];

  v13 = [(PKPaymentWebService *)self _performApplyRequest:v12 responseClass:objc_opt_class() completion:v6];
  return v13;
}

@end