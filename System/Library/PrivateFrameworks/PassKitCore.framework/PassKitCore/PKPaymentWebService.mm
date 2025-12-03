@interface PKPaymentWebService
+ (id)remoteDeviceWebService;
+ (id)sharedService;
- (BOOL)_hasConfiguration;
- (BOOL)_isSandboxAccount;
- (BOOL)_isValidResponse:(id)response error:(id)error;
- (BOOL)_needsRegistrationForBrokerURL:(id)l shouldCheckSecureElementOwnership:(BOOL)ownership;
- (BOOL)_supportsAccounts;
- (BOOL)canBypassTrustValidation;
- (BOOL)isChinaRegionIdentifier:(id)identifier;
- (BOOL)needsConfigurationWithSupportedRegionTimeInterval:(double)interval unsupportedRegionTimeInterval:(double)timeInterval;
- (BOOL)registrationSetupSupportedInRegion;
- (NSArray)delegates;
- (NSURL)primaryBrokerURL;
- (PKPaymentWebService)initWithContext:(id)context targetDevice:(id)device archiver:(id)archiver tapToRadarDelegate:(id)delegate;
- (PKPaymentWebService)initWithContext:(id)context targetDevice:(id)device tapToRadarDelegate:(id)delegate;
- (PKPaymentWebServiceBackgroundDelegate)backgroundDelegate;
- (PKPaymentWebServiceContext)context;
- (id)_brokerUrlForRegion:(id)region regionOut:(id *)out;
- (id)_downloadCacheLocation;
- (id)_downloadPassesWithURLs:(id)ls;
- (id)_errorWithResult:(unint64_t)result response:(id)response data:(id)data;
- (id)_fakeVerificationMethodGroups;
- (id)_movePassToDownloadCache:(id)cache;
- (id)_passWithFileURL:(id)l;
- (id)_paymentDevice;
- (id)_requestBuilderForRegion:(id)region regionOut:(id *)out;
- (id)forbiddenErrorWithResponse:(id)response;
- (id)removeRedundantMethodGroupsFromMethodGroups:(id)groups;
- (id)supportedRegionFeatureOfType:(int64_t)type didFailOSVersionRequirements:(BOOL *)requirements;
- (id)verificationRecordForPass:(id)pass;
- (unint64_t)_augmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)_auxiliaryCapabilityRegisterResultForResponse:(id)response error:(id)error successHandler:(id)handler;
- (unint64_t)_downloadPassAtURL:(id)l completion:(id)completion;
- (unint64_t)_nonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)_passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:(id)group forPass:(id)pass forDeviceIdentifier:(id)identifier completion:(id)completion;
- (unint64_t)_passActionGroupWithRemoteContentPassActionGroup:(id)group forPass:(id)pass forDeviceIdentifier:(id)identifier completion:(id)completion;
- (unint64_t)_passActionIncludingAppletDataWithRemoteContentPassAction:(id)action pass:(id)pass completion:(id)completion;
- (unint64_t)_passActionWithRemoteContentPassAction:(id)action pass:(id)pass completion:(id)completion;
- (unint64_t)_passActionWithRemoteContentPassAction:(id)action serviceProviderData:(id)data pass:(id)pass completion:(id)completion;
- (unint64_t)_performAccountApplePayTrustProtocolRequest:(id)request originalRequest:(id)originalRequest taskID:(unint64_t)d completion:(id)completion;
- (unint64_t)_performAccountRequest:(id)request account:(id)account request:(id)a5 taskID:(unint64_t)d responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performAccountRequest:(id)request account:(id)account responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performAccountRequest:(id)request request:(id)a4 responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performAccountRequest:(id)request responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performApplePayTrustRegistrationWithURL:(id)l pushToken:(id)token completion:(id)completion;
- (unint64_t)_performApplyRequest:(id)request responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performOptionalAccountApplePayTrustProtocolRequest:(id)request originalRequest:(id)originalRequest taskID:(unint64_t)d completion:(id)completion;
- (unint64_t)_performPaymentOfferRequest:(id)request responseClass:(Class)class completion:(id)completion;
- (unint64_t)_performRewrapRequest:(id)request serviceURL:(id)l responseHandler:(id)handler completion:(id)completion;
- (unint64_t)_resultForResponse:(id)response error:(id)error successHandler:(id)handler;
- (unint64_t)_updateContextWithRegistrationType:(int64_t)type response:(id)response;
- (unint64_t)accountActionWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountBalanceHistoryWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountBankLookupWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountDeleteBeneficiaryWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountDocumentActionWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountPassDetailsRequest:(id)request completion:(id)completion;
- (unint64_t)accountReportDeviceEventWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountSendReportWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountServiceCertificatesWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountStatementsWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountTaxFormsWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountTermsDataWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountTermsWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountTransactionAnswerWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountUpdateUserInfoWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountUsersWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountWithRequest:(id)request completion:(id)completion;
- (unint64_t)accountsWithRequest:(id)request completion:(id)completion;
- (unint64_t)addFundingSourceWithRequest:(id)request completion:(id)completion;
- (unint64_t)agreementURLForPass:(id)pass agreement:(id)agreement completion:(id)completion;
- (unint64_t)applePayTrustSignatureRequestWithRequest:(id)request account:(id)account completion:(id)completion;
- (unint64_t)applicationsWithRequest:(id)request completion:(id)completion;
- (unint64_t)applyWithRequest:(id)request completion:(id)completion;
- (unint64_t)augmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)augmentedProductWithRequest:(id)request completion:(id)completion;
- (unint64_t)authenticationTokenWithRequest:(id)request completion:(id)completion;
- (unint64_t)auxiliaryCapabilityKeyCreationMetadataWithRequest:(id)request completion:(id)completion;
- (unint64_t)availableCommonProductsWithRequest:(id)request completion:(id)completion;
- (unint64_t)availableDevicesWithCompletion:(id)completion;
- (unint64_t)availableProductsWithRequest:(id)request completion:(id)completion;
- (unint64_t)browseableBankAppsWithRequest:(id)request completion:(id)completion;
- (unint64_t)cancelPaymentOfferWithRequest:(id)request completion:(id)completion;
- (unint64_t)cancelPaymentWithRequest:(id)request completion:(id)completion;
- (unint64_t)cardInfoForMerchantIdentifier:(id)identifier completion:(id)completion;
- (unint64_t)checkAuxiliaryCapabilityRegistrationStateWithRequest:(id)request completion:(id)completion;
- (unint64_t)checkMerchantStatus:(id)status forDomain:(id)domain withCompletion:(id)completion;
- (unint64_t)completeSession:(id)session wrappedPayment:(id)payment pass:(id)pass applicationData:(id)data completion:(id)completion;
- (unint64_t)completeSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)configurePaymentServiceWithCompletion:(id)completion;
- (unint64_t)confirmOffersWithRequest:(id)request completion:(id)completion;
- (unint64_t)contactInformationWithRequest:(id)request completion:(id)completion;
- (unint64_t)createVehicleKeyShareWithRequest:(id)request passTypeIdentifier:(id)identifier completion:(id)completion;
- (unint64_t)createVirtualCardWithRequest:(id)request completion:(id)completion;
- (unint64_t)createWithRequest:(id)request completion:(id)completion;
- (unint64_t)createdZoneWithRequest:(id)request completion:(id)completion;
- (unint64_t)credentialAccountAttesationWithRequest:(id)request completion:(id)completion;
- (unint64_t)creditAccountUserInfoWithRequest:(id)request completion:(id)completion;
- (unint64_t)creditRecoveryPaymentPlansWithRequest:(id)request completion:(id)completion;
- (unint64_t)customizePhysicalCardWithRequest:(id)request completion:(id)completion;
- (unint64_t)dailyCashEligibilityWithRequest:(id)request completion:(id)completion;
- (unint64_t)deleteAccountUserWithRequest:(id)request completion:(id)completion;
- (unint64_t)deleteAccountWithRequest:(id)request completion:(id)completion;
- (unint64_t)deleteApplicationWithRequest:(id)request completion:(id)completion;
- (unint64_t)deleteForRequest:(id)request completion:(id)completion;
- (unint64_t)deleteFundingSourceWithRequest:(id)request completion:(id)completion;
- (unint64_t)deleteMerchantTokenWithRequest:(id)request completion:(id)completion;
- (unint64_t)deprovisionForRequest:(id)request completion:(id)completion;
- (unint64_t)deviceCheckInDeviceCheckInForRegion:(id)region completion:(id)completion;
- (unint64_t)devicePassesSinceLastUpdatedTag:(BOOL)tag withCompletion:(id)completion;
- (unint64_t)discoveryBundleForURL:(id)l completion:(id)completion;
- (unint64_t)discoveryManifestWithCompletion:(id)completion;
- (unint64_t)eligibilityForRequest:(id)request completion:(id)completion;
- (unint64_t)enhancedMerchantsWithRequest:(id)request completion:(id)completion;
- (unint64_t)exportTransactionDataWithRequest:(id)request completion:(id)completion;
- (unint64_t)featureTermsDataWithRequest:(id)request completion:(id)completion;
- (unint64_t)fetchBarcodesWithRequest:(id)request completion:(id)completion;
- (unint64_t)fundingSourcesWithRequest:(id)request completion:(id)completion;
- (unint64_t)generateTopUpTokenWithRequest:(id)request forAccount:(id)account completion:(id)completion;
- (unint64_t)inAppPaymentNonceForPass:(id)pass completion:(id)completion;
- (unint64_t)inAppPaymentNonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)initiateExternalProvisioningForRequest:(id)request completion:(id)completion;
- (unint64_t)issuerProvisioningCertificatesForRequest:(id)request withCompletion:(id)completion;
- (unint64_t)merchandisingWithRequest:(id)request completion:(id)completion;
- (unint64_t)moreInfoItemAtURL:(id)l withMetadata:(id)metadata completion:(id)completion;
- (unint64_t)networkManifestWithCompletion:(id)completion;
- (unint64_t)notifyIssuerAppletStateDirtyWithRequest:(id)request completion:(id)completion;
- (unint64_t)passActionGroupWithRemoteContentPassActionGroup:(id)group forPass:(id)pass completion:(id)completion;
- (unint64_t)passActionWithRemoteContentPassAction:(id)action forDeviceIdentifier:(id)identifier passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number completion:(id)completion;
- (unint64_t)passActionWithRemoteContentPassAction:(id)action forPass:(id)pass completion:(id)completion;
- (unint64_t)passActionWithRemoteContentPassAction:(id)action serviceProviderData:(id)data pass:(id)pass completion:(id)completion;
- (unint64_t)passAtURL:(id)l completion:(id)completion;
- (unint64_t)passAtURL:(id)l completionWithError:(id)error;
- (unint64_t)passUpgradeWithRequest:(id)request completion:(id)completion;
- (unint64_t)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion;
- (unint64_t)passesWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentOfferCatalogWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentOffersDynamicContentWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentOffersWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentProvisioningNonceOfType:(unint64_t)type completion:(id)completion;
- (unint64_t)paymentRewardsBalancesWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentRewardsRedemptionsWithRequest:(id)request completion:(id)completion;
- (unint64_t)paymentSetupSupportedInRegion;
- (unint64_t)paymentsWithRequest:(id)request account:(id)account completion:(id)completion;
- (unint64_t)performAction:(id)action onServiceProviderPurchase:(id)purchase completion:(id)completion;
- (unint64_t)performApplePayTrustRegistrationWithCompletion:(id)completion;
- (unint64_t)performInstallmentAuthorizationWithRequest:(id)request completion:(id)completion;
- (unint64_t)performInstallmentBindWithRequest:(id)request completion:(id)completion;
- (unint64_t)performNotificationActionRequest:(id)request completion:(id)completion;
- (unint64_t)performProductActionRequest:(id)request completion:(id)completion;
- (unint64_t)performServiceProviderPayment:(id)payment completion:(id)completion;
- (unint64_t)physicalCardActionWithRequest:(id)request completion:(id)completion;
- (unint64_t)physicalCardsWithRequest:(id)request completion:(id)completion;
- (unint64_t)prepareToProvisionForRequest:(id)request completion:(id)completion;
- (unint64_t)prepareTransactionDetailsForMerchantSession:(id)session secureElementIdentifier:(id)identifier amount:(id)amount currencyCode:(id)code completion:(id)completion;
- (unint64_t)promotionsWithRequest:(id)request completion:(id)completion;
- (unint64_t)provideEncryptedPushProvisioningTargetWithRequest:(id)request completion:(id)completion;
- (unint64_t)provisionPassesWithRequest:(id)request completion:(id)completion;
- (unint64_t)provisionPrecursorPassForRequest:(id)request completion:(id)completion;
- (unint64_t)provisioningMethodWithRequest:(id)request completion:(id)completion;
- (unint64_t)pushProvisioningSharingIdentifiersWithRequest:(id)request completion:(id)completion;
- (unint64_t)pushProvisioningSharingStatusRequest:(id)request completion:(id)completion;
- (unint64_t)registerAuxiliaryCapabilityWithRequest:(id)request completion:(id)completion;
- (unint64_t)registerCredentialWithRequest:(id)request withCompletion:(id)completion;
- (unint64_t)registerDeviceAtBrokerURL:(id)l withConsistencyCheckResults:(id)results retries:(unint64_t)retries completion:(id)completion;
- (unint64_t)registerDeviceWithCompletion:(id)completion;
- (unint64_t)registerMerchantTokenPublicKeyWithRequest:(id)request completion:(id)completion;
- (unint64_t)remotePaymentCredentialsForRequest:(id)request completion:(id)completion;
- (unint64_t)remotePaymentCredentialsUpdateForRequest:(id)request completion:(id)completion;
- (unint64_t)repopulateZonesWithCloudStoreZoneNames:(id)names completion:(id)completion;
- (unint64_t)requestPhysicalCardWithRequest:(id)request completion:(id)completion;
- (unint64_t)requestVerificationCodeForPass:(id)pass usingChannel:(id)channel completion:(id)completion;
- (unint64_t)requirementsForRequest:(id)request completion:(id)completion;
- (unint64_t)resendVerificationRequest:(id)request completion:(id)completion;
- (unint64_t)resolveStorefrontCountryMismatchWithRequest:(id)request completion:(id)completion;
- (unint64_t)retrieveMerchantTokensUnifiedListWithRequest:(id)request completion:(id)completion;
- (unint64_t)retrieveMerchantTokensWithRequest:(id)request completion:(id)completion;
- (unint64_t)revokeSharedCredentialWithRequest:(id)request withCompletion:(id)completion;
- (unint64_t)rewrapInAppPayment:(id)payment merchantIdentifier:(id)identifier hostApplicationIdentifier:(id)applicationIdentifier applicationData:(id)data pass:(id)pass completion:(id)completion;
- (unint64_t)rewrapInAppPaymentWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)savingsAccountStatementsWithRequest:(id)request completion:(id)completion;
- (unint64_t)savingsAccountUserInfoWithRequest:(id)request completion:(id)completion;
- (unint64_t)schedulePaymentWithRequest:(id)request completion:(id)completion;
- (unint64_t)scheduleTransferWithRequest:(id)request completion:(id)completion;
- (unint64_t)selectedOffersWithRequest:(id)request completion:(id)completion;
- (unint64_t)sendOwnershipTokensForReason:(unint64_t)reason completion:(id)completion;
- (unint64_t)serviceProviderAugmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)serviceProviderNonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion;
- (unint64_t)serviceProviderPurchaseWithIdentifier:(id)identifier completion:(id)completion;
- (unint64_t)serviceProviderPurchasesWithRequest:(id)request inRegion:(id)region completion:(id)completion;
- (unint64_t)sharedAccountCloudStoreWithRequest:(id)request completion:(id)completion;
- (unint64_t)shownTermsWithRequest:(id)request completion:(id)completion;
- (unint64_t)submitDocumentsWithRequest:(id)request completion:(id)completion;
- (unint64_t)submitTermsWithRequest:(id)request completion:(id)completion;
- (unint64_t)submitVerificationCode:(id)code verificationData:(id)data forPass:(id)pass completion:(id)completion;
- (unint64_t)submitVerificationEntries:(id)entries forPass:(id)pass completion:(id)completion;
- (unint64_t)submitVerificationWithRequest:(id)request completion:(id)completion;
- (unint64_t)supportTopicsWithRequest:(id)request completion:(id)completion;
- (unint64_t)tapToProvisionConfigurationForRequest:(id)request completion:(id)completion;
- (unint64_t)termsDataWithRequest:(id)request completion:(id)completion;
- (unint64_t)transactionReceiptAuthorizationWithRequest:(id)request completion:(id)completion;
- (unint64_t)transactionReceiptWithRequest:(id)request completion:(id)completion;
- (unint64_t)transferEligibilityWithRequest:(id)request completion:(id)completion;
- (unint64_t)transfersWithRequest:(id)request completion:(id)completion;
- (unint64_t)unregisterDeviceWithCompanionSerialNumber:(id)number completion:(id)completion;
- (unint64_t)updateAccountUserPreferencesWithRequest:(id)request completion:(id)completion;
- (unint64_t)updateRegistrationDataAtBrokerURL:(id)l completion:(id)completion;
- (unint64_t)updateVerification:(id)verification completion:(id)completion;
- (unint64_t)vehicleManufacturerWithRequest:(id)request withCompletion:(id)completion;
- (unint64_t)verificationChannelsForPass:(id)pass completion:(id)completion;
- (unint64_t)verificationOptionsForRequest:(id)request completion:(id)completion;
- (unint64_t)virtualCardActionWithRequest:(id)request completion:(id)completion;
- (unint64_t)virtualCardLegacyCredentialsWithRequest:(id)request completion:(id)completion;
- (unint64_t)virtualCardListWithRequest:(id)request completion:(id)completion;
- (unint64_t)virtualCardPaymentSessionWithCompletion:(id)completion;
- (unint64_t)virtualCardSecurityCodeActivity:(id)activity completion:(id)completion;
- (unint64_t)vpanNonceForPaymentPass:(id)pass completion:(id)completion;
- (unint64_t)vpanPaymentCredentialsForPaymentPass:(id)pass vpanIdentifier:(id)identifier nonce:(id)nonce encryptionFields:(id)fields merchantHost:(id)host regenerate:(BOOL)regenerate completion:(id)completion;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_applePayTrustPublicKeyHashWithCompletion:(id)completion;
- (void)_archiveBackgroundContext;
- (void)_archiveContext;
- (void)_auxiliaryRegistrationServiceURLForRequest:(id)request completion:(id)completion;
- (void)_backgroundDownloadCloudStoreAssetsForItem:(id)item cloudStoreCoordinatorDelegate:(id)delegate;
- (void)_backgroundDownloadPassAtURL:(id)l fromPushTopic:(id)topic;
- (void)_canRegisterForPeerPaymentWithCompletion:(id)completion;
- (void)_cleanupPassDownloadCache;
- (void)_createApplePayTrustKeyWithCompletion:(id)completion;
- (void)_deviceProvisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletion:(id)completion;
- (void)_handleDeviceCheckInTask:(id)task downloadRecord:(id)record data:(id)data;
- (void)_handlePassDownloadTask:(id)task data:(id)data fromPushTopic:(id)topic;
- (void)_handlePassListDownloadTask:(id)task data:(id)data fromPushTopic:(id)topic;
- (void)_handleRemoteAssetDownloadForManifestItem:(id)item taskPassURL:(id)l data:(id)data shouldWriteData:(BOOL)writeData error:(id *)error;
- (void)_handleRemoteCloudStoreAssetForRecordName:(id)name taskRecord:(id)record data:(id)data shouldWriteData:(BOOL)writeData error:(id *)error;
- (void)_handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:(id)request completionHandler:(id)handler;
- (void)_handleRetryAfterRegisterWithRequest:(id)request response:(id)response completionHandler:(id)handler;
- (void)_handleRetryAfterTSMSyncForPushTopic:(id)topic withRequest:(id)request taskIdentifier:(unint64_t)identifier completionHandler:(id)handler;
- (void)_passOwnershipTokenForPaymentCredential:(id)credential completion:(id)completion;
- (void)_passWithData:(id)data response:(id)response error:(id)error completion:(id)completion;
- (void)_performVerificationRequest:(id)request selectedMethodGroup:(id)group selectedMethod:(id)method pass:(id)pass taskID:(unint64_t)d completion:(id)completion;
- (void)_recentConfiguration:(id)configuration;
- (void)_regionChanged;
- (void)_registerIfNeededWithResponse:(id)response task:(id)task isRedirect:(BOOL)redirect completion:(id)completion;
- (void)_renewAppleAccountWithCompletionHandler:(id)handler;
- (void)_resetSupportInRegionCache;
- (void)_secureRequestBuilderForRegion:(id)region fields:(unint64_t)fields completion:(id)completion;
- (void)_shouldPerformApplePayTrustRegistrationWithCompletion:(id)completion;
- (void)_startBackgroundURLSessionWithIdentifier:(id)identifier context:(id)context backgroundDelegate:(id)delegate completion:(id)completion;
- (void)_storePassOwnershipToken:(id)token withIdentifier:(id)identifier;
- (void)_updateSharedServiceWithContext:(id)context;
- (void)addDelegate:(id)delegate;
- (void)backgroundDownloadPassesForPushTopic:(id)topic sinceLastUpdatedTag:(BOOL)tag;
- (void)backgroundDownloadPassesSinceLastUpdatedTag:(BOOL)tag;
- (void)backgroundDownloadRemotePassAssets:(id)assets forSuffixesAndScreenScales:(id)scales cloudStoreCoordinatorDelegate:(id)delegate;
- (void)backgroundDownloadWithPassTypeIdentifier:(id)identifier serialNumber:(id)number;
- (void)backgroundPerformDeviceCheckInForRegion:(id)region identifier:(id)identifier;
- (void)backgroundRegisterCredentialWithRequest:(id)request;
- (void)dealloc;
- (void)getHasBackgroundDownloadTaskPassesForPushTopic:(id)topic completion:(id)completion;
- (void)handleResponse:(id)response withError:(id)error data:(id)data task:(id)task completionHandler:(id)handler;
- (void)handleWillPerformHTTPRedirectionWithResponse:(id)response originalRequest:(id)request redirectHandler:(id)handler;
- (void)invalidateBackgroundSession;
- (void)processRetryRequest:(id)request responseData:(id)data orginalRequest:(id)orginalRequest completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)removeVerificationRequestRecord:(id)record;
- (void)setContext:(id)context;
- (void)setSharedService:(BOOL)service;
- (void)sharedPaymentServiceChanged:(id)changed;
- (void)signNonce:(id)nonce withCompletion:(id)completion;
- (void)startBackgroundURLSessionWithIdentifier:(id)identifier context:(id)context backgroundDelegate:(id)delegate completion:(id)completion;
- (void)updateContextAndNotifyIfNeeded:(id)needed;
- (void)updateVerificationRecord:(id)record;
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
      sharedPaymentWebServiceContext = [v3 sharedPaymentWebServiceContext];
      if (sharedPaymentWebServiceContext)
      {
        v5 = [PKPaymentWebService alloc];
        v6 = +[PKPaymentWebServiceTargetDevice localTargetDevice];
        v7 = +[PKSharedPaymentWebServiceArchiver sharedPaymentWebServiceArchiver];
        v8 = [(PKPaymentWebService *)v5 initWithContext:sharedPaymentWebServiceContext targetDevice:v6 archiver:v7 tapToRadarDelegate:v3];
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
    deviceRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    context = [(PKPaymentWebService *)self context];
    v6 = [context contextMeetsProvisioningEnablementPercentageThresholdForRegion:deviceRegion];

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
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  isSandboxAccount = [_appleAccountInformation isSandboxAccount];

  return isSandboxAccount;
}

- (unint64_t)registerAuxiliaryCapabilityWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    objc_initWeak(location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__PKPaymentWebService_PKAuxiliaryCapabilityWebService__registerAuxiliaryCapabilityWithRequest_completion___block_invoke;
    v14[3] = &unk_1E79C8FF8;
    objc_copyWeak(v18, location);
    v17 = completionCopy;
    v15 = requestCopy;
    v16 = deviceID;
    v18[1] = nextTaskID;
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

    if (completionCopy)
    {
      v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v12);
    }
  }

  return nextTaskID;
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

- (unint64_t)_auxiliaryCapabilityRegisterResultForResponse:(id)response error:(id)error successHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy)
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [responseCopy URL];
        absoluteString = [v12 absoluteString];
        v15 = 138412546;
        v16 = absoluteString;
        v17 = 2112;
        v18 = errorCopy;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error executing request: %@ error: %@", &v15, 0x16u);
      }
    }

    goto LABEL_8;
  }

  if (([responseCopy statusCode] - 200) > 0x63)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = handlerCopy[2](handlerCopy);
LABEL_9:

  return v10;
}

- (unint64_t)checkAuxiliaryCapabilityRegistrationStateWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    nextTaskID = [(PKWebService *)self nextTaskID];
    context = [(PKPaymentWebService *)self context];
    deviceID = [context deviceID];
    if (deviceID)
    {
      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
      objc_initWeak(location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __120__PKPaymentWebService_PKAuxiliaryCapabilityWebService__checkAuxiliaryCapabilityRegistrationStateWithRequest_completion___block_invoke;
      v14[3] = &unk_1E79C8FF8;
      objc_copyWeak(v18, location);
      v17 = completionCopy;
      v15 = requestCopy;
      v16 = deviceID;
      v18[1] = nextTaskID;
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
      (*(completionCopy + 2))(completionCopy, 0, 0, v12);
    }
  }

  else
  {
    nextTaskID = 0;
  }

  return nextTaskID;
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

- (unint64_t)auxiliaryCapabilityKeyCreationMetadataWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    nextTaskID = [(PKWebService *)self nextTaskID];
    context = [(PKPaymentWebService *)self context];
    deviceID = [context deviceID];
    if (deviceID)
    {
      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
      objc_initWeak(location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __117__PKPaymentWebService_PKAuxiliaryCapabilityWebService__auxiliaryCapabilityKeyCreationMetadataWithRequest_completion___block_invoke;
      v14[3] = &unk_1E79C8FF8;
      objc_copyWeak(v18, location);
      v17 = completionCopy;
      v15 = requestCopy;
      v16 = deviceID;
      v18[1] = nextTaskID;
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
      (*(completionCopy + 2))(completionCopy, 0, v12);

      nextTaskID = 0;
    }
  }

  else
  {
    nextTaskID = 0;
  }

  return nextTaskID;
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

- (unint64_t)fetchBarcodesWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    objc_initWeak(&location, self);
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v13 = [context regionForIdentifier:passTypeIdentifier];
    partnerServiceURL = [v13 partnerServiceURL];

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v16 = [requestCopy _urlRequestWithServiceURL:partnerServiceURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__PKPaymentWebService_PKAuxiliaryCapabilityWebService__fetchBarcodesWithRequest_completion___block_invoke;
    v19[3] = &unk_1E79C8FD0;
    objc_copyWeak(&v21, &location);
    v20 = completionCopy;
    [(PKWebService *)self performRequest:v16 taskIdentifier:nextTaskID completionHandler:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    v17 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v17);
  }

  return nextTaskID;
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

- (void)_auxiliaryRegistrationServiceURLForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  pass = [requestCopy pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  v11 = passTypeIdentifier;
  if (passTypeIdentifier)
  {
    primaryRegionIdentifier = passTypeIdentifier;
  }

  else
  {
    primaryRegionIdentifier = [context primaryRegionIdentifier];
  }

  v13 = primaryRegionIdentifier;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v14 = [context regionForIdentifier:v13];
  partnerServiceURL = [v14 partnerServiceURL];

  v15 = v24[5];
  if (v15)
  {
    completionCopy[2](completionCopy, v15, 0);
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
    v18 = context;
    v19 = v13;
    v20 = completionCopy;
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

- (unint64_t)_performPaymentOfferRequest:(id)request responseClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKPaymentWebService_PaymentOffers___performPaymentOfferRequest_responseClass_completion___block_invoke;
  v13[3] = &unk_1E79C90C8;
  v14 = completionCopy;
  classCopy = class;
  v13[4] = self;
  v11 = completionCopy;
  [(PKWebService *)self performRequest:requestCopy taskIdentifier:nextTaskID completionHandler:v13];

  return nextTaskID;
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

- (unint64_t)paymentOfferCatalogWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)paymentOffersDynamicContentWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)paymentOffersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)selectedOffersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)confirmOffersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)cancelPaymentOfferWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)paymentRewardsBalancesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)paymentRewardsRedemptionsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performPaymentOfferRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)merchandisingWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _urlRequest = [requestCopy _urlRequest];

  v9 = [(PKPaymentWebService *)self _performPaymentOfferRequest:_urlRequest responseClass:objc_opt_class() completion:completionCopy];
  return v9;
}

- (unint64_t)transferEligibilityWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)scheduleTransferWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKPaymentWebService_Savings__scheduleTransferWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = requestCopy;
  selfCopy = self;
  v15 = completionCopy;
  v16 = nextTaskID;
  v9 = completionCopy;
  v10 = requestCopy;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return nextTaskID;
}

void __71__PKPaymentWebService_Savings__scheduleTransferWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)transfersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountBalanceHistoryWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)dailyCashEligibilityWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)savingsAccountStatementsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountTaxFormsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)savingsAccountUserInfoWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountReportDeviceEventWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)discoveryManifestWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  configuration = [context configuration];
  v8 = PKCurrentRegion();
  v9 = [configuration discoveryManifestURLForRegion:v8];

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
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v11 taskIdentifier:nextTaskID completionHandler:v15];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Discovery Manifest URL is nil. Not updating.", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)discoveryBundleForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentConfigurationRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  v10 = [(PKPaymentConfigurationRequest *)v9 _requestWithServiceURL:lCopy];

  [(PKWebService *)self performRequest:v10 taskIdentifier:nextTaskID completionHandler:completionCopy];
  return nextTaskID;
}

- (unint64_t)vpanNonceForPaymentPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  nextTaskID = [(PKWebService *)self nextTaskID];
  if (completionCopy)
  {
    if (passCopy)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (deviceID)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Getting nonce for VPAN", buf, 2u);
        }

        context2 = [(PKPaymentWebService *)self context];
        primaryRegion = [context2 primaryRegion];
        paymentServicesURL = [primaryRegion paymentServicesURL];

        v17 = [[PKPaymentCredentialNonceRequest alloc] initWithPaymentPass:passCopy deviceIdentifier:deviceID];
        v18 = [(PKPaymentCredentialNonceRequest *)v17 _urlRequestWithServiceURL:paymentServicesURL appleAccountInformation:_appleAccountInformation];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __64__PKPaymentWebService_VPAN__vpanNonceForPaymentPass_completion___block_invoke;
        v21[3] = &unk_1E79CB9F0;
        v22 = completionCopy;
        [(PKWebService *)self performRequest:v18 taskIdentifier:nextTaskID completionHandler:v21];

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

    paymentServicesURL = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, paymentServicesURL);
    goto LABEL_16;
  }

  paymentServicesURL = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(paymentServicesURL, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, paymentServicesURL, OS_LOG_TYPE_DEFAULT, "Can't retrieve VPAN nonce without a completion", buf, 2u);
  }

LABEL_16:

  return nextTaskID;
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

- (unint64_t)vpanPaymentCredentialsForPaymentPass:(id)pass vpanIdentifier:(id)identifier nonce:(id)nonce encryptionFields:(id)fields merchantHost:(id)host regenerate:(BOOL)regenerate completion:(id)completion
{
  regenerateCopy = regenerate;
  passCopy = pass;
  identifierCopy = identifier;
  nonceCopy = nonce;
  fieldsCopy = fields;
  hostCopy = host;
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  nextTaskID = [(PKWebService *)self nextTaskID];
  v22 = nextTaskID;
  if (deviceID)
  {
    v38 = nextTaskID;
    v39 = nonceCopy;
    v40 = fieldsCopy;
    context2 = [(PKPaymentWebService *)self context];
    primaryRegion = [context2 primaryRegion];
    paymentServicesURL = [primaryRegion paymentServicesURL];

    if (regenerateCopy)
    {
      v26 = objc_opt_class();

      hostCopy = 0;
    }

    else
    {
      v26 = objc_opt_class();
    }

    v37 = hostCopy;
    v30 = identifierCopy;
    v32 = [[v26 alloc] initWithPaymentPass:passCopy vpanIdentifier:identifierCopy deviceIdentifier:deviceID nonce:v39 encryptionFields:v40 merchantHost:hostCopy];
    _paymentDevice = [(PKPaymentWebService *)self _paymentDevice];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __139__PKPaymentWebService_VPAN__vpanPaymentCredentialsForPaymentPass_vpanIdentifier_nonce_encryptionFields_merchantHost_regenerate_completion___block_invoke;
    v44[3] = &unk_1E79D6158;
    v45 = v32;
    v46 = paymentServicesURL;
    v31 = _appleAccountInformation;
    v47 = _appleAccountInformation;
    selfCopy = self;
    v22 = v38;
    v50 = v38;
    v29 = completionCopy;
    v49 = completionCopy;
    v34 = paymentServicesURL;
    v35 = v32;
    nonceCopy = v39;
    v28 = v35;
    [_paymentDevice rewrapDataWithCompletionHandler:v44];

    fieldsCopy = v40;
    hostCopy = v37;
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
    v29 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v28);
    v30 = identifierCopy;
    v31 = _appleAccountInformation;
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

- (unint64_t)virtualCardPaymentSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  nextTaskID = [(PKWebService *)self nextTaskID];
  context2 = [(PKPaymentWebService *)self context];
  primaryRegion = [context2 primaryRegion];
  paymentServicesURL = [primaryRegion paymentServicesURL];

  if (deviceID)
  {
    v12 = [[PKVPANPaymentSessionRequest alloc] initWithDeviceIdentifier:deviceID];
    v13 = [(PKVPANPaymentSessionRequest *)v12 _urlRequestWithServiceURL:paymentServicesURL appleAccountInformation:_appleAccountInformation];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__PKPaymentWebService_VPAN__virtualCardPaymentSessionWithCompletion___block_invoke;
    v16[3] = &unk_1E79CB9F0;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
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
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  return nextTaskID;
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

- (unint64_t)accountsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  accountServicesURL = [requestCopy accountServicesURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [requestCopy _urlRequestWithServiceURL:accountServicesURL AppleAccountInformation:_appleAccountInformation];

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentWebService_PKAccountWebService__accountsWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79DAA98;
  v16 = completionCopy;
  v12 = completionCopy;
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

- (unint64_t)accountWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)deleteAccountWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountActionWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountTermsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountTermsDataWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountPassDetailsRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  v11 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation deviceIdentifier:deviceID];

  v12 = [(PKPaymentWebService *)self _performAccountRequest:v11 responseClass:objc_opt_class() completion:completionCopy];
  return v12;
}

- (unint64_t)accountBankLookupWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountStatementsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountDocumentActionWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)schedulePaymentWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPaymentWebService_PKAccountWebService__schedulePaymentWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = requestCopy;
  selfCopy = self;
  v15 = completionCopy;
  v16 = nextTaskID;
  v9 = completionCopy;
  v10 = requestCopy;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return nextTaskID;
}

void __82__PKPaymentWebService_PKAccountWebService__schedulePaymentWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)paymentsWithRequest:(id)request account:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:accountCopy responseClass:objc_opt_class() completion:completionCopy];
  return v13;
}

- (unint64_t)cancelPaymentWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)fundingSourcesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)addFundingSourceWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)deleteFundingSourceWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountServiceCertificatesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)customizePhysicalCardWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)requestPhysicalCardWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKPaymentWebService_PKAccountWebService__requestPhysicalCardWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = requestCopy;
  selfCopy = self;
  v15 = completionCopy;
  v16 = nextTaskID;
  v9 = completionCopy;
  v10 = requestCopy;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return nextTaskID;
}

void __86__PKPaymentWebService_PKAccountWebService__requestPhysicalCardWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performOptionalAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)physicalCardActionWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKPaymentWebService_PKAccountWebService__physicalCardActionWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = requestCopy;
  selfCopy = self;
  v15 = completionCopy;
  v16 = nextTaskID;
  v9 = completionCopy;
  v10 = requestCopy;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return nextTaskID;
}

void __85__PKPaymentWebService_PKAccountWebService__physicalCardActionWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performOptionalAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)physicalCardsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)creditAccountUserInfoWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountUpdateUserInfoWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountDeleteBeneficiaryWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)createVirtualCardWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)virtualCardActionWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)virtualCardListWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)virtualCardLegacyCredentialsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)virtualCardSecurityCodeActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  activityCopy = activity;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:activityCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [activityCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountTransactionAnswerWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)applePayTrustSignatureRequestWithRequest:(id)request account:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  responseClass = [requestCopy responseClass];
  v14 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:accountCopy responseClass:responseClass completion:completionCopy];

  return v14;
}

- (unint64_t)performInstallmentBindWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)performInstallmentAuthorizationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__PKPaymentWebService_PKAccountWebService__performInstallmentAuthorizationWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB710;
  v13 = requestCopy;
  selfCopy = self;
  v15 = completionCopy;
  v16 = nextTaskID;
  v9 = completionCopy;
  v10 = requestCopy;
  [(PKPaymentWebService *)self _applePayTrustPublicKeyHashWithCompletion:v12];

  return nextTaskID;
}

void __98__PKPaymentWebService_PKAccountWebService__performInstallmentAuthorizationWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPublicKeyHash:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _appleAccountInformation];
  v5 = [v3 _urlRequestWithAppleAccountInformation:v4];

  [*(a1 + 40) _performAccountApplePayTrustProtocolRequest:v5 originalRequest:*(a1 + 32) taskID:*(a1 + 56) completion:*(a1 + 48)];
}

- (unint64_t)exportTransactionDataWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 request:requestCopy responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountUsersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)deleteAccountUserWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)updateAccountUserPreferencesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)sharedAccountCloudStoreWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)createdZoneWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)promotionsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)enhancedMerchantsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)accountSendReportWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)supportTopicsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)creditRecoveryPaymentPlansWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)authenticationTokenWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (void)handleResponse:(id)response withError:(id)error data:(id)data task:(id)task completionHandler:(id)handler
{
  responseCopy = response;
  errorCopy = error;
  dataCopy = data;
  objc_initWeak(location, task);
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(location);
  currentRequest = [WeakRetained currentRequest];

  statusCode = [responseCopy statusCode];
  if (statusCode != 301)
  {
    if (statusCode == 412)
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Received Status Code 412.", buf, 2u);
      }

      v18 = [responseCopy pk_valueForHTTPHeaderField:@"X-Pod-Region"];
      context = [(PKPaymentWebService *)self context];
      v21 = [context regionForIdentifier:v18];
      v22 = v21;
      if (!v21 || ([v21 trustedServiceManagerPushTopic], (trustedServiceManagerPushTopic = objc_claimAutoreleasedReturnValue()) == 0))
      {
        primaryRegion = [context primaryRegion];
        trustedServiceManagerPushTopic = [primaryRegion trustedServiceManagerPushTopic];
      }

      v25 = [currentRequest mutableCopy];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke;
      v43[3] = &unk_1E79DB1F0;
      v43[4] = self;
      v26 = trustedServiceManagerPushTopic;
      v44 = v26;
      objc_copyWeak(&v46, location);
      v45 = handlerCopy;
      [(PKPaymentWebService *)self processRetryRequest:v25 responseData:dataCopy orginalRequest:currentRequest completion:v43];

      objc_destroyWeak(&v46);
    }

    else if (statusCode == 452)
    {
      if (self->_handlingApplePayTrustReRegister)
      {
        v18 = objc_loadWeakRetained(location);
        v42.receiver = self;
        v42.super_class = PKPaymentWebService;
        [(PKWebService *)&v42 handleResponse:responseCopy withError:errorCopy data:dataCopy task:v18 completionHandler:handlerCopy];
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
        originalRequest = [v18 originalRequest];
        [(PKPaymentWebService *)self _handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:originalRequest completionHandler:handlerCopy];
      }
    }

    else
    {
      v30 = objc_loadWeakRetained(location);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__PKPaymentWebService_handleResponse_withError_data_task_completionHandler___block_invoke_107;
      v35[3] = &unk_1E79DB218;
      v40 = handlerCopy;
      v36 = responseCopy;
      v37 = errorCopy;
      v38 = dataCopy;
      objc_copyWeak(&v41, location);
      selfCopy = self;
      [(PKPaymentWebService *)self _registerIfNeededWithResponse:v36 task:v30 isRedirect:0 completion:v35];

      objc_destroyWeak(&v41);
      v18 = v40;
    }

LABEL_22:

    goto LABEL_23;
  }

  v27 = [responseCopy pk_valueForHTTPHeaderField:@"Location"];

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
    [(PKWebService *)&v47 handleResponse:responseCopy withError:errorCopy data:dataCopy task:v18 completionHandler:handlerCopy];
    goto LABEL_22;
  }

  if (v29)
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Received Status Code 301.", buf, 2u);
  }

  [(PKPaymentWebService *)self _handleRetryAfterRegisterWithRequest:currentRequest response:responseCopy completionHandler:handlerCopy];
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

  context = [(PKPaymentWebService *)self context];
  devSigned = [context devSigned];

  if (devSigned)
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
    watchPaymentWebService = [v3 watchPaymentWebService];
  }

  else
  {
    watchPaymentWebService = 0;
  }

  return watchPaymentWebService;
}

- (PKPaymentWebService)initWithContext:(id)context targetDevice:(id)device tapToRadarDelegate:(id)delegate
{
  contextCopy = context;
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = PKPaymentWebService;
  v11 = [(PKWebService *)&v26 initWithTapToRadarDelegate:delegate];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, context);
    objc_storeStrong(&v12->_targetDevice, device);
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__regionChanged name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v12;
}

- (PKPaymentWebService)initWithContext:(id)context targetDevice:(id)device archiver:(id)archiver tapToRadarDelegate:(id)delegate
{
  archiverCopy = archiver;
  v12 = [(PKPaymentWebService *)self initWithContext:context targetDevice:device tapToRadarDelegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_archiver, archiver);
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_sharedService)
  {
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"PDSharedPaymentWebServiceDidChangeNotification" object:0];
  }

  v5.receiver = self;
  v5.super_class = PKPaymentWebService;
  [(PKPaymentWebService *)&v5 dealloc];
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_contextLock);
  context = self->_context;
  self->_context = contextCopy;

  self->_paymentSupportInRegion = 0;
  self->_registrationSupportInRegion = 0;

  os_unfair_lock_unlock(&self->_contextLock);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v8 = delegateCopy;
    os_unfair_lock_lock(&self->_delegateLock);
    delegates = self->_delegates;
    if (!delegates)
    {
      pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
      v7 = self->_delegates;
      self->_delegates = pk_weakObjectsHashTableUsingPointerPersonality;

      delegates = self->_delegates;
    }

    [(NSHashTable *)delegates addObject:v8];
    os_unfair_lock_unlock(&self->_delegateLock);
    delegateCopy = v8;
  }
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    os_unfair_lock_lock(&self->_delegateLock);
    [(NSHashTable *)self->_delegates removeObject:delegateCopy];

    os_unfair_lock_unlock(&self->_delegateLock);
  }
}

- (void)setSharedService:(BOOL)service
{
  self->_sharedService = service;
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sharedPaymentServiceChanged_ name:@"PDSharedPaymentWebServiceDidChangeNotification" object:0 suspensionBehavior:2];
}

- (void)sharedPaymentServiceChanged:(id)changed
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
    selfCopy = self;
    v7 = v6;
    [v7 sharedPaymentWebServiceContextWithCompletion:v8];
  }
}

- (void)updateContextAndNotifyIfNeeded:(id)needed
{
  v8 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (neededCopy)
  {
    if (self->_sharedService)
    {
      [(PKPaymentWebService *)self _updateSharedServiceWithContext:neededCopy];
    }

    else
    {
      [(PKPaymentWebService *)self setContext:neededCopy];
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

- (void)_updateSharedServiceWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  sharedService = self->_sharedService;
  if (contextCopy && sharedService)
  {
    context = [(PKPaymentWebService *)self context];
    archivedDate = [context archivedDate];
    if (archivedDate && ([contextCopy archivedDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(archivedDate, "isEqualToDate:", v8), v8, v9))
    {
      defaultCenter2 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(defaultCenter2, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PKW3CDateStringFromDate(archivedDate);
        v17 = 136315394;
        v18 = "[PKPaymentWebService _updateSharedServiceWithContext:]";
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_1AD337000, defaultCenter2, OS_LOG_TYPE_DEFAULT, "%s called, however the archivedDates matched with a value of %@. Ignoring.", &v17, 0x16u);
      }
    }

    else
    {
      [(PKPaymentWebService *)self setContext:contextCopy];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PKSharedPaymentWebServiceDidChangeNotification" object:0];

      configuration = [context configuration];
      configuration2 = [contextCopy configuration];
      v16 = [configuration isEqual:configuration2];

      if (v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"PKSharedPaymentWebServiceRegionConfigurationChangedNotification" object:0];
    }

    goto LABEL_14;
  }

  context = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_1AD337000, context, OS_LOG_TYPE_DEFAULT, "%s called %@. Ignoring.", &v17, 0x16u);
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

- (BOOL)_needsRegistrationForBrokerURL:(id)l shouldCheckSecureElementOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  v62 = *MEMORY[0x1E69E9840];
  lCopy = l;
  context = [(PKPaymentWebService *)self context];
  registrationType = [context registrationType];
  if (registrationType == 3)
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

  v9 = registrationType;
  if (!registrationType)
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

  v51 = ownershipCopy;
  selfCopy = self;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v10 addObject:@"Has Previously Registered: YES"];
  v52 = context;
  if (lCopy)
  {
    regions = [context regions];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = [regions countByEnumeratingWithState:&v53 objects:v61 count:16];
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
            objc_enumerationMutation(regions);
          }

          v19 = [regions objectForKeyedSubscript:*(*(&v53 + 1) + 8 * i)];
          brokerURL = [v19 brokerURL];
          if (brokerURL)
          {
            v21 = brokerURL;
            v22 = [lCopy isEqual:brokerURL];

            if (v22)
            {
              certificates = [v19 certificates];
              v24 = [certificates count] != 0;

              v16 |= v24;
            }
          }
        }

        v15 = [regions countByEnumeratingWithState:&v53 objects:v61 count:16];
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
    primaryRegion = [context primaryRegion];
    certificates2 = [primaryRegion certificates];
    v30 = [certificates2 count];

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
    targetDevice = [(PKPaymentWebService *)selfCopy targetDevice];
    secureElementOwnershipStateForCurrentUser = [targetDevice secureElementOwnershipStateForCurrentUser];

    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v38 = @"YES";
    if ((secureElementOwnershipStateForCurrentUser & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v38 = @"NO";
    }

    v39 = [v37 initWithFormat:@"User Owns Secure Element: %@", v38];
    [v10 addObject:v39];

    v27 |= (secureElementOwnershipStateForCurrentUser & 0xFFFFFFFFFFFFFFFELL) != 2;
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

  context = v52;
LABEL_42:

  return v12 & 1;
}

- (BOOL)needsConfigurationWithSupportedRegionTimeInterval:(double)interval unsupportedRegionTimeInterval:(double)timeInterval
{
  v30 = *MEMORY[0x1E69E9840];
  context = [(PKPaymentWebService *)self context];
  configurationDate = [context configurationDate];
  if (configurationDate)
  {
    configuration = [context configuration];
    if (!configuration)
    {
      deviceRegion = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(deviceRegion, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1AD337000, deviceRegion, OS_LOG_TYPE_DEFAULT, "Configuration parameters not set - Configuration needs update", &v26, 2u);
      }

      LOBYTE(v18) = 1;
      goto LABEL_34;
    }

    deviceRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    v11 = [configuration heroImageManifestURLForRegion:deviceRegion];
    if (v11)
    {
      v12 = v11;
      v13 = [PKPaymentHeroImageManifest manifestFileExistsForRegion:deviceRegion];

      if (!v13)
      {
        date = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
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

    configurationURL = [configuration configurationURL];
    v15 = PKStockholmForceConfigUpdate(configurationURL, [context devSigned], -[PKPaymentWebService _isSandboxAccount](self, "_isSandboxAccount"));

    if (v15)
    {
      date = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        v17 = "Forcing config update - Configuration needs update";
LABEL_21:
        _os_log_impl(&dword_1AD337000, date, OS_LOG_TYPE_DEFAULT, v17, &v26, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    date = [MEMORY[0x1E695DF00] date];
    paymentSetupSupportedInRegion = [(PKPaymentWebService *)self paymentSetupSupportedInRegion];
    if (paymentSetupSupportedInRegion)
    {
      if (paymentSetupSupportedInRegion == 1)
      {
        v20 = [configurationDate dateByAddingTimeInterval:interval];
        v21 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412546;
          v27 = v20;
          v28 = 2050;
          timeIntervalCopy = interval;
          v22 = "Region supported, next date for region configuration check: %@ used refresh interval: %{public}lu";
          goto LABEL_25;
        }

LABEL_26:

        [date timeIntervalSinceDate:v20];
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

      if (paymentSetupSupportedInRegion != 2)
      {
        v21 = PKLogFacilityTypeGetObject(7uLL);
        v18 = 0;
        goto LABEL_28;
      }
    }

    v20 = [configurationDate dateByAddingTimeInterval:timeInterval];
    v21 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v20;
      v28 = 2050;
      timeIntervalCopy = timeInterval;
      v22 = "Region unsupported, next date for region configuration check: %@ used refresh value in the configuration: %{public}lu";
LABEL_25:
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, v22, &v26, 0x16u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  configuration = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(configuration, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1AD337000, configuration, OS_LOG_TYPE_DEFAULT, "Web service never configured - Configuration needs update", &v26, 2u);
  }

  LOBYTE(v18) = 1;
LABEL_35:

  return v18;
}

- (id)supportedRegionFeatureOfType:(int64_t)type didFailOSVersionRequirements:(BOOL *)requirements
{
  if (requirements)
  {
    *requirements = 0;
  }

  context = [(PKPaymentWebService *)self context];
  configuration = [context configuration];

  if (configuration)
  {
    targetDevice = [(PKPaymentWebService *)self targetDevice];
    deviceRegion = [targetDevice deviceRegion];
    deviceClass = [targetDevice deviceClass];
    deviceVersion = [targetDevice deviceVersion];
    v13 = [configuration supportedFeatureOfType:type inRegion:deviceRegion osVersion:deviceVersion deviceClass:deviceClass didFailOSVersionRequirements:requirements];
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
  context = [(PKPaymentWebService *)self context];
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

  primaryRegion = [context primaryRegion];
  brokerURL = [primaryRegion brokerURL];

  if (!brokerURL)
  {
    configuration = [context configuration];
    deviceRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    brokerURL = [configuration brokerURLForRegion:deviceRegion];

    if (!brokerURL)
    {
      v6 = PKLocalBrokerURL([context devSigned]);
LABEL_5:
      brokerURL = v6;
    }
  }

  return brokerURL;
}

- (id)_brokerUrlForRegion:(id)region regionOut:(id *)out
{
  v16 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  context = [(PKPaymentWebService *)self context];
  v8 = context;
  if (!regionCopy)
  {
LABEL_7:
    primaryRegion = [v8 primaryRegion];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    goto LABEL_8;
  }

  primaryRegion = [context regionForIdentifier:regionCopy];
  brokerURL = [primaryRegion brokerURL];
  primaryBrokerURL = brokerURL;
  if (!primaryRegion || !brokerURL)
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = regionCopy;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: region identifier %@ provided but not registered for region.", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
  if (out)
  {
    objc_storeStrong(out, primaryRegion);
  }

  return primaryBrokerURL;
}

- (id)_requestBuilderForRegion:(id)region regionOut:(id *)out
{
  regionCopy = region;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    v9 = deviceID;
    goto LABEL_7;
  }

  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentWebService: error: failed to find deviceID when creating builder, falling back to SEID", buf, 2u);
  }

  secureElementIdentifiers = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
  firstObject = [secureElementIdentifiers firstObject];

  if (firstObject)
  {
    v9 = firstObject;
LABEL_7:
    v12 = [(PKPaymentWebService *)self _brokerUrlForRegion:regionCopy regionOut:out];
    if (v12)
    {
      _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
      if (_appleAccountInformation)
      {
        v14 = _appleAccountInformation;
        v15 = [[PKPaymentWebServiceRequestBuilder alloc] initWithBrokerURL:v12 deviceID:v9 appleAccountInformation:_appleAccountInformation];
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

- (void)_secureRequestBuilderForRegion:(id)region fields:(unint64_t)fields completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  v32 = 0;
  v10 = [(PKPaymentWebService *)self _requestBuilderForRegion:regionCopy regionOut:&v32];
  if (!v10)
  {
LABEL_8:
    completionCopy[2](completionCopy, 0);
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

  certificates = [v32 certificates];
  if (certificates)
  {
    context = [(PKPaymentWebService *)self context];
    devSigned = [context devSigned];
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
    v25[6] = fields;
    v25[4] = self;
    [(PKAsyncUnaryOperationComposer *)v14 addOperation:v25];
    null = [MEMORY[0x1E695DFB0] null];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__PKPaymentWebService__secureRequestBuilderForRegion_fields_completion___block_invoke_3;
    v19[3] = &unk_1E79DB2B8;
    v20 = v10;
    v24 = devSigned;
    v21 = certificates;
    v23 = buf;
    v22 = completionCopy;
    v16 = [(PKAsyncUnaryOperationComposer *)v14 evaluateWithInput:null completion:v19];

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

    completionCopy[2](completionCopy, 0);
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

- (void)_canRegisterForPeerPaymentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKPaymentWebService *)self _canRegisterForPeerPayment])
    {
      completionCopy[2](completionCopy, 1);
    }

    else if ([(PKPaymentWebService *)self needsRegistration])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __64__PKPaymentWebService__canRegisterForPeerPaymentWithCompletion___block_invoke;
      v5[3] = &unk_1E79DB2E0;
      v5[4] = self;
      v6 = completionCopy;
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

- (void)_recentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    if ([(PKPaymentWebService *)self needsConfiguration])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__PKPaymentWebService__recentConfiguration___block_invoke;
      v7[3] = &unk_1E79D1690;
      v7[4] = self;
      v8 = configurationCopy;
      [(PKPaymentWebService *)self configurePaymentServiceWithCompletion:v7];
    }

    else
    {
      context = [(PKPaymentWebService *)self context];
      configuration = [context configuration];
      (*(configurationCopy + 2))(configurationCopy, 1, configuration);
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

- (void)startBackgroundURLSessionWithIdentifier:(id)identifier context:(id)context backgroundDelegate:(id)delegate completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  delegateCopy = delegate;
  completionCopy = completion;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentWebService_startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke;
  block[3] = &unk_1E79C4F68;
  block[4] = self;
  v20 = identifierCopy;
  v21 = contextCopy;
  v22 = delegateCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = delegateCopy;
  v17 = contextCopy;
  v18 = identifierCopy;
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
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects copy];

  os_unfair_lock_unlock(&self->_delegateLock);

  return v4;
}

- (id)forbiddenErrorWithResponse:(id)response
{
  responseCopy = response;
  v32.receiver = self;
  v32.super_class = PKPaymentWebService;
  v5 = [(PKWebService *)&v32 forbiddenErrorWithResponse:responseCopy];
  errorCode = [responseCopy errorCode];
  integerValue = [errorCode integerValue];

  v8 = 0;
  if (integerValue <= 40402)
  {
    if (integerValue <= 40105)
    {
      if (integerValue <= 40013)
      {
        if (integerValue == 40001)
        {
          v9 = PKLocalizedPaymentString(&cfstr_InvalidPanTitl.isa, 0);
          v8 = PKLocalizedPaymentString(&cfstr_InvalidPanMess.isa, 0);
        }

        else
        {
          v9 = 0;
          if (integerValue != 40013)
          {
            goto LABEL_62;
          }

          v9 = PKLocalizedPaymentString(&cfstr_InvalidExpirat.isa, 0);
          v8 = PKLocalizedPaymentString(&cfstr_InvalidExpirat_0.isa, 0);
        }
      }

      else if (integerValue == 40014)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidNameTit.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidNameMes.isa, 0);
      }

      else if (integerValue == 40016)
      {
        v9 = PKLocalizedPaymentString(&cfstr_SecureElementL.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_SecureElementL_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (integerValue != 40102)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_ProvisioningCo_0.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_ProvisioningCo_2.isa, 0);
      }

      goto LABEL_58;
    }

    if (integerValue > 40115)
    {
      if (integerValue != 40116)
      {
        if (integerValue == 40301)
        {
          v9 = PKLocalizedPaymentString(&cfstr_IneligibleAcco.isa, 0);
          goto LABEL_56;
        }

        v9 = 0;
        if (integerValue != 40307)
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
      if (integerValue == 40106)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidCscTitl.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidCscMess.isa, 0);
        goto LABEL_58;
      }

      if (integerValue == 40107)
      {
        v9 = PKLocalizedPaymentString(&cfstr_ReaderModeErro.isa, 0);
        v10 = @"READER_MODE_ERROR_INCORRECT_CARD_DETAILS_MESSAGE";
      }

      else
      {
        v9 = 0;
        if (integerValue != 40110)
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

  if (integerValue <= 40500)
  {
    if (integerValue <= 40453)
    {
      if (integerValue == 40403)
      {
        v9 = PKLocalizedPaymentString(&cfstr_ProvisioningRe.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_ProvisioningRe_0.isa, 0);
      }

      else if (integerValue == 40421)
      {
        v9 = PKLocalizedPaymentString(&cfstr_VerificationPe.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_VerificationPe_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (integerValue != 40423)
        {
          goto LABEL_62;
        }

        v9 = PKLocalizedPaymentString(&cfstr_VerificationRe_0.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_VerificationRe_1.isa, 0);
      }

      goto LABEL_58;
    }

    if (integerValue != 40454)
    {
      if (integerValue == 40456)
      {
        v9 = PKLocalizedPaymentString(&cfstr_InvalidVerific.isa, 0);
        v8 = PKLocalizedPaymentString(&cfstr_InvalidVerific_0.isa, 0);
      }

      else
      {
        v9 = 0;
        if (integerValue != 40457)
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

  if (integerValue <= 60010)
  {
    if (integerValue != 40501)
    {
      if (integerValue != 60009)
      {
        v9 = 0;
        if (integerValue != 60010)
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

  if (integerValue == 60011)
  {
    AnalyticsSendEvent();
    v9 = PKLocalizedPaymentString(&cfstr_ProvisioningEr.isa, 0);
    v10 = @"PROVISIONING_ERROR_PIN_INCORRECT_LOCKOUT_MESSAGE";
    goto LABEL_60;
  }

  if (integerValue != 60057)
  {
    v9 = 0;
    if (integerValue != 60104)
    {
      goto LABEL_62;
    }

    v9 = PKLocalizedString(&cfstr_PassErrorManag.isa, 0);
    v11 = PKLocalizedString(&cfstr_PassErrorManag_0.isa, 0);
    goto LABEL_61;
  }

  v9 = PKLocalizedPaymentString(&cfstr_OsVersionUpdat.isa, 0);
  deviceClass = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceClass];
  v13 = deviceClass;
  if (deviceClass == @"iPhone")
  {
    goto LABEL_47;
  }

  if (!deviceClass)
  {
LABEL_75:
    v8 = 0;
    goto LABEL_76;
  }

  v14 = [(__CFString *)deviceClass isEqualToString:@"iPhone"];

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
  localizedTitle = [responseCopy localizedTitle];
  if (localizedTitle)
  {
  }

  else
  {
    localizedDescription = [responseCopy localizedDescription];

    if (!localizedDescription)
    {
      goto LABEL_66;
    }
  }

  localizedTitle2 = [responseCopy localizedTitle];

  localizedDescription2 = [responseCopy localizedDescription];

  v8 = localizedDescription2;
  v9 = localizedTitle2;
LABEL_66:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A598]];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v9, v8];
  [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v22 = MEMORY[0x1E696ABC0];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v24 = [v22 errorWithDomain:@"PKPaymentWebServiceErrorDomain" code:integerValue userInfo:v23];

  return v24;
}

- (void)signNonce:(id)nonce withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = MEMORY[0x1E695DF88];
    nonceCopy = nonce;
    v9 = objc_alloc_init(v7);
    [v9 appendData:nonceCopy];

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    primaryAppleAccountHash = [_appleAccountInformation primaryAppleAccountHash];
    [v9 appendData:primaryAppleAccountHash];

    targetDevice = self->_targetDevice;
    sHA256Hash = [v9 SHA256Hash];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PKPaymentWebService_signNonce_withCompletion___block_invoke;
    v14[3] = &unk_1E79DB330;
    v15 = completionCopy;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self signData:sHA256Hash signatureEntanglementMode:0 withCompletionHandler:v14];
  }
}

- (void)_renewAppleAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  targetDevice = self->_targetDevice;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentWebService__renewAppleAccountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E79C4680;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)processRetryRequest:(id)request responseData:(id)data orginalRequest:(id)orginalRequest completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  completionCopy = completion;
  v13 = [MEMORY[0x1E695AC60] propertyForKey:@"overlayRequest" inRequest:orginalRequest];
  v14 = MEMORY[0x1E696ACD0];
  v15 = objc_opt_class();
  data = [v13 data];
  v17 = [v14 unarchivedObjectOfClass:v15 fromData:data error:0];

  if (v17 && [v17 requiresConfigurationForRetry])
  {
    if (requestCopy && dataCopy)
    {
      v29 = 0;
      v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v29];
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
          v28 = completionCopy;
          [v17 _updateRequestForRetry:requestCopy retryFields:v18 webService:self withCompletion:v27];
          v24 = v28;
          goto LABEL_19;
        }

        if (v18)
        {
LABEL_10:
          if (!completionCopy)
          {
LABEL_20:

            goto LABEL_21;
          }

          v24 = [requestCopy copy];
          (*(completionCopy + 2))(completionCopy, v24);
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

  if (completionCopy)
  {
    v26 = [requestCopy copy];
    (*(completionCopy + 2))(completionCopy, v26);
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

- (void)handleWillPerformHTTPRedirectionWithResponse:(id)response originalRequest:(id)request redirectHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PKPaymentWebService_handleWillPerformHTTPRedirectionWithResponse_originalRequest_redirectHandler___block_invoke;
  v9[3] = &unk_1E79C4450;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(PKPaymentWebService *)self _registerIfNeededWithResponse:response task:0 isRedirect:1 completion:v9];
}

- (BOOL)isChinaRegionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  context = [(PKPaymentWebService *)self context];
  v6 = [context regionForIdentifier:identifierCopy];

  if (v6)
  {
    regionCode = [v6 regionCode];
    v8 = [regionCode caseInsensitiveCompare:@"CN"] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)configurePaymentServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKPaymentWebService_configurePaymentServiceWithCompletion___block_invoke;
  v8[3] = &unk_1E79DB3D0;
  v8[4] = self;
  v9 = completionCopy;
  v10 = nextTaskID;
  v6 = completionCopy;
  [(PKPaymentWebService *)self _deviceConfigurationDataWithCompletion:v8];

  return nextTaskID;
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

- (unint64_t)registerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  v6 = [(PKPaymentWebService *)self registerDeviceAtBrokerURL:primaryBrokerURL consistencyCheckResults:0 completion:completionCopy];

  return v6;
}

- (unint64_t)registerDeviceAtBrokerURL:(id)l withConsistencyCheckResults:(id)results retries:(unint64_t)retries completion:(id)completion
{
  lCopy = l;
  resultsCopy = results;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKPaymentWebService_registerDeviceAtBrokerURL_withConsistencyCheckResults_retries_completion___block_invoke;
  v18[3] = &unk_1E79DB498;
  v18[4] = self;
  v19 = resultsCopy;
  v20 = lCopy;
  v21 = completionCopy;
  v22 = nextTaskID;
  retriesCopy = retries;
  v14 = lCopy;
  v15 = resultsCopy;
  v16 = completionCopy;
  [(PKPaymentWebService *)self _deviceRegistrationDataWithCompletion:v18];

  return nextTaskID;
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

- (void)_shouldPerformApplePayTrustRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKCurrentPassbookState() <= 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      targetDevice = self->_targetDevice;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __77__PKPaymentWebService__shouldPerformApplePayTrustRegistrationWithCompletion___block_invoke;
      v6[3] = &unk_1E79DB4C0;
      v7 = completionCopy;
      [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice applePayTrustKeyForIdentifier:@"com.apple.wallet.applepaytrust" completion:v6];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_createApplePayTrustKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
    if (objc_opt_respondsToSelector())
    {
      _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
      aidaAlternateDSID = [_appleAccountInformation aidaAlternateDSID];
      v7 = [aidaAlternateDSID dataUsingEncoding:4];

      v8 = [PKApplePayTrustKeyRequest alloc];
      sHA256Hash = [v7 SHA256Hash];
      v10 = [(PKApplePayTrustKeyRequest *)v8 initWithKeyIdentifier:@"com.apple.wallet.applepaytrust" subjectIdentifier:sHA256Hash];

      [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice createApplePayTrustKeyWithRequest:v10 completion:v11];
    }

    else
    {
      (*(v11 + 2))(v11, 0, 0);
    }

    completionCopy = v11;
  }
}

- (unint64_t)performApplePayTrustRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  context = [(PKPaymentWebService *)self context];
  pushToken = [context pushToken];
  v8 = [(PKPaymentWebService *)self _performApplePayTrustRegistrationWithURL:primaryBrokerURL pushToken:pushToken completion:completionCopy];

  return v8;
}

- (unint64_t)_performApplePayTrustRegistrationWithURL:(id)l pushToken:(id)token completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (!deviceID)
  {
    if (!completionCopy)
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
    completionCopy[2](completionCopy, 0, v13);
LABEL_12:

    goto LABEL_13;
  }

  if (!lCopy)
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

    if (!completionCopy)
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
  v20 = lCopy;
  v21 = deviceID;
  v23 = nextTaskID;
  v22 = completionCopy;
  [(PKPaymentWebService *)self _createApplePayTrustKeyWithCompletion:v19];

LABEL_13:
  return nextTaskID;
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

- (BOOL)_isValidResponse:(id)response error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  if (responseCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = responseCopy;
    statusCode = [v7 statusCode];
    v9 = statusCode == 200;
    if (statusCode != 200)
    {
      v10 = statusCode;
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 URL];
        absoluteString = [v12 absoluteString];
        v17 = 138412802;
        v18 = absoluteString;
        v19 = 2048;
        v20 = v10;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error executing request: %@; statusCode: %ld; error: %@", &v17, 0x20u);
      }
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [errorCopy localizedDescription];
      v15 = [objc_opt_class() description];
      v17 = 138412546;
      v18 = localizedDescription;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Invalid response with error: %@; Expected 'NSHTTPURLResponse' but got '%@'", &v17, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)_updateContextWithRegistrationType:(int64_t)type response:(id)response
{
  v53 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  deviceIdentifier = [responseCopy deviceIdentifier];

  if (!deviceIdentifier)
  {
    context = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "*** ERROR ***: No Device ID";
LABEL_26:
    _os_log_impl(&dword_1AD337000, context, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    goto LABEL_27;
  }

  primaryRegion = [responseCopy primaryRegion];

  if (!primaryRegion)
  {
    context = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v31 = "*** ERROR ***: No Primary Region";
    goto LABEL_26;
  }

  regions = [responseCopy regions];
  v10 = [regions count];

  if (!v10)
  {
    context = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(context, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "*** ERROR ***: Empty Regions Dictionary";
      goto LABEL_26;
    }

LABEL_27:
    v33 = 0;
    goto LABEL_37;
  }

  selfCopy = self;
  context = [(PKPaymentWebService *)self context];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  regions2 = [responseCopy regions];
  v13 = [regions2 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(regions2);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        regions3 = [responseCopy regions];
        v19 = [regions3 objectForKeyedSubscript:v17];

        certificates = [v19 certificates];
        if ((PKPaymentCreateAndValidateTrustWithCerts(certificates, 0, [context devSigned]) & 1) == 0)
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

      v14 = [regions2 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [(PKPaymentWebService *)selfCopy _resetSupportInRegionCache];
  regions4 = [responseCopy regions];
  [context setRegions:regions4];

  deviceIdentifier2 = [responseCopy deviceIdentifier];
  [context setDeviceID:deviceIdentifier2];

  regions2 = [responseCopy primaryRegion];
  if (!regions2)
  {
    regions5 = [responseCopy regions];
    allKeys = [regions5 allKeys];
    regions2 = [allKeys lastObject];
  }

  [context setPrimaryRegionIdentifier:regions2];
  [context setRegistrationType:type];
  date = [MEMORY[0x1E695DF00] date];
  [context setRegistrationDate:date];

  v26 = PKDeviceBuildVersion();
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __67__PKPaymentWebService__updateContextWithRegistrationType_response___block_invoke;
  v44[3] = &unk_1E79DB510;
  v19 = v26;
  v45 = v19;
  [context atomicallyUpdateEveryRegion:v44];
  maxCards = [responseCopy maxCards];
  v28 = maxCards;
  if (maxCards)
  {
    v29 = maxCards;
    unsignedIntegerValue = [maxCards unsignedIntegerValue];
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentWebServiceTargetDeviceProtocol *)selfCopy->_targetDevice setMaximumPaymentCards:unsignedIntegerValue];
    }

    else
    {
      PKSetMaxPaymentCards(unsignedIntegerValue);
    }

    v28 = v29;
  }

  environmentName = [responseCopy environmentName];
  v42 = PKStockholmEnvironmentDisplayName();
  if (([environmentName isEqualToString:?] & 1) == 0)
  {
    if ([environmentName length])
    {
      v35 = environmentName;
    }

    else
    {
      v35 = 0;
    }

    PKSetStockholmEnvironmentDisplayName(v35);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKSharedPaymentWebServiceRegionConfigurationChangedNotification" object:0];
  }

  targetDevice = selfCopy->_targetDevice;
  tSMURLStringByPushTopic = [context TSMURLStringByPushTopic];
  primaryRegion2 = [context primaryRegion];
  trustedServiceManagerPushTopic = [primaryRegion2 trustedServiceManagerPushTopic];
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:selfCopy didRegisterWithRegionMap:tSMURLStringByPushTopic primaryRegionTopic:trustedServiceManagerPushTopic];

  v33 = 1;
  certificates = v45;
LABEL_36:

LABEL_37:
  return v33;
}

- (unint64_t)deviceCheckInDeviceCheckInForRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentDeviceCheckinRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    v12 = [context regionForIdentifier:regionCopy];
    brokerURL = [v12 brokerURL];

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [(PKPaymentDeviceCheckinRequest *)v9 _urlRequestWithServiceURL:brokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__PKPaymentWebService_deviceCheckInDeviceCheckInForRegion_completion___block_invoke;
    v18[3] = &unk_1E79CD770;
    v18[4] = self;
    v19 = completionCopy;
    [(PKWebService *)self performRequest:v15 taskIdentifier:nextTaskID completionHandler:v18];
  }

  else if (completionCopy)
  {
    v16 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }

  return nextTaskID;
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

- (unint64_t)sendOwnershipTokensForReason:(unint64_t)reason completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
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
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PKPaymentSendOwnershipTokensRequestReasonToString(reason);
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
    null = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PKPaymentWebService_sendOwnershipTokensForReason_completion___block_invoke_3;
    v16[3] = &unk_1E79DB580;
    reasonCopy = reason;
    v19 = v27;
    v16[4] = self;
    v17 = deviceID;
    v20 = v25;
    v22 = nextTaskID;
    v18 = completionCopy;
    v14 = [(PKAsyncUnaryOperationComposer *)v12 evaluateWithInput:null completion:v16];

    goto LABEL_7;
  }

  if (completionCopy)
  {
    v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, v12);
LABEL_7:
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);

  return nextTaskID;
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

- (unint64_t)repopulateZonesWithCloudStoreZoneNames:(id)names completion:(id)completion
{
  namesCopy = names;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  v11 = deviceID;
  if (namesCopy && deviceID && [namesCopy count])
  {
    v12 = [[PKPaymentRepopulateZonesRequest alloc] initWithCloudStoreZoneNames:namesCopy];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v12];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [(PKPaymentRepopulateZonesRequest *)v12 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:v11 appleAccountInformation:_appleAccountInformation];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__PKPaymentWebService_repopulateZonesWithCloudStoreZoneNames_completion___block_invoke;
    v18[3] = &unk_1E79CD770;
    v18[4] = self;
    v19 = completionCopy;
    [(PKWebService *)self performRequest:v15 taskIdentifier:nextTaskID completionHandler:v18];
  }

  else if (completionCopy)
  {
    v16 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, v16);
  }

  return nextTaskID;
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

- (void)backgroundPerformDeviceCheckInForRegion:(id)region identifier:(id)identifier
{
  regionCopy = region;
  identifierCopy = identifier;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKPaymentWebService_backgroundPerformDeviceCheckInForRegion_identifier___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = regionCopy;
  v14 = identifierCopy;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = identifierCopy;
  v11 = regionCopy;
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

- (unint64_t)updateRegistrationDataAtBrokerURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentUpdateRegistrationDataRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [(PKPaymentUpdateRegistrationDataRequest *)v9 _urlRequestWithServiceURL:lCopy deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__PKPaymentWebService_updateRegistrationDataAtBrokerURL_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)unregisterDeviceWithCompanionSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    v11 = objc_alloc_init(PKPaymentUnregisterRequest);
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [(PKPaymentUnregisterRequest *)v11 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID companionSerialNumber:numberCopy appleAccountInformation:_appleAccountInformation];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__PKPaymentWebService_unregisterDeviceWithCompanionSerialNumber_completion___block_invoke;
    v17[3] = &unk_1E79CD770;
    v17[4] = self;
    v18 = completionCopy;
    [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v17];
  }

  else
  {
    AnalyticsSendEvent();
    if (completionCopy)
    {
      v15 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }

  return nextTaskID;
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

- (unint64_t)issuerProvisioningCertificatesForRequest:(id)request withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  v11 = deviceID;
  if (!completionCopy || !requestCopy || !deviceID)
  {
    if (!completionCopy)
    {
      goto LABEL_15;
    }

    if (deviceID)
    {
      if (requestCopy)
      {
LABEL_14:
        (*(completionCopy + 2))(completionCopy, 0, 0);
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
        selfCopy = self;
        v25 = 2112;
        v26 = context;
        v16 = "Failed to fetch certificates because of nil deviceID. \nWebService: %@ \nContext: %@";
        v17 = v15;
        v18 = 22;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v14 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:v11 appleAccountInformation:_appleAccountInformation];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__PKPaymentWebService_issuerProvisioningCertificatesForRequest_withCompletion___block_invoke;
  v20[3] = &unk_1E79D1CC8;
  v20[4] = self;
  v21 = context;
  v22 = completionCopy;
  [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v20];

LABEL_15:
  return nextTaskID;
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

- (unint64_t)remotePaymentCredentialsForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  deviceProvisioningDataExpected = [requestCopy deviceProvisioningDataExpected];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKPaymentWebService_remotePaymentCredentialsForRequest_completion___block_invoke;
  v14[3] = &unk_1E79DB620;
  if (deviceProvisioningDataExpected)
  {
    v10 = 240;
  }

  else
  {
    v10 = 0;
  }

  v14[4] = self;
  v15 = requestCopy;
  v16 = completionCopy;
  v17 = nextTaskID;
  v11 = requestCopy;
  v12 = completionCopy;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:v10 completion:v14];

  return nextTaskID;
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

- (unint64_t)remotePaymentCredentialsUpdateForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKPaymentWebService_remotePaymentCredentialsUpdateForRequest_completion___block_invoke;
  v12[3] = &unk_1E79DB620;
  v12[4] = self;
  v13 = requestCopy;
  v14 = completionCopy;
  v15 = nextTaskID;
  v9 = requestCopy;
  v10 = completionCopy;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:0 completion:v12];

  return nextTaskID;
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

- (unint64_t)requirementsForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  paymentCredential = [requestCopy paymentCredential];
  couldSupportSuperEasyProvisioning = [paymentCredential couldSupportSuperEasyProvisioning];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PKPaymentWebService_requirementsForRequest_completion___block_invoke;
  v15[3] = &unk_1E79DB620;
  if (couldSupportSuperEasyProvisioning)
  {
    v11 = 498;
  }

  else
  {
    v11 = 256;
  }

  v15[4] = self;
  v16 = requestCopy;
  v17 = completionCopy;
  v18 = nextTaskID;
  v12 = requestCopy;
  v13 = completionCopy;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:0 fields:v11 completion:v15];

  return nextTaskID;
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

- (unint64_t)eligibilityForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  region = [requestCopy region];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKPaymentWebService_eligibilityForRequest_completion___block_invoke;
  v13[3] = &unk_1E79DB620;
  v13[4] = self;
  v14 = requestCopy;
  v15 = completionCopy;
  v16 = nextTaskID;
  v10 = requestCopy;
  v11 = completionCopy;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:region fields:256 completion:v13];

  return nextTaskID;
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

- (unint64_t)provisionPassesWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  targetDevice = self->_targetDevice;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentWebService_provisionPassesWithRequest_completion___block_invoke;
  v13[3] = &unk_1E79DB6C0;
  v13[4] = self;
  v14 = requestCopy;
  v15 = completionCopy;
  v16 = nextTaskID;
  v10 = requestCopy;
  v11 = completionCopy;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self setNewAuthRandomIfNecessaryReturningPairingState:v13];

  return nextTaskID;
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

- (unint64_t)initiateExternalProvisioningForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    region = [requestCopy region];
    v12 = [(PKPaymentWebService *)self _brokerUrlForRegion:region regionOut:0];

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [requestCopy _urlRequestWithServiceURL:v12 deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__PKPaymentWebService_initiateExternalProvisioningForRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)deprovisionForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PKPaymentWebService_deprovisionForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v15];
  }

  return nextTaskID;
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

- (unint64_t)deleteForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL appleAccountInformation:_appleAccountInformation];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__PKPaymentWebService_deleteForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v15];
  }

  return nextTaskID;
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

- (unint64_t)prepareToProvisionForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    if (v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__PKPaymentWebService_prepareToProvisionForRequest_completion___block_invoke;
      v15[3] = &unk_1E79CD770;
      v15[4] = self;
      v16 = completionCopy;
      [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v15];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)provisionPrecursorPassForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKPaymentWebService_provisionPrecursorPassForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)tapToProvisionConfigurationForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__PKPaymentWebService_tapToProvisionConfigurationForRequest_completion___block_invoke;
    v15[3] = &unk_1E79CD770;
    v15[4] = self;
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)verificationOptionsForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  pass = [requestCopy pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  v11 = [(PKPaymentWebService *)self _requestBuilderForRegion:passTypeIdentifier];

  if (v11)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    v12 = [requestCopy _urlRequestWithBuilder:v11];
    if (v12)
    {
      pass2 = [requestCopy pass];
      [(PKPaymentWebService *)self _performVerificationRequest:v12 selectedMethodGroup:0 selectedMethod:0 pass:pass2 taskID:nextTaskID completion:completionCopy];
    }

    else
    {
      if (!completionCopy)
      {
        v12 = 0;
        goto LABEL_9;
      }

      pass2 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, pass2);
    }

LABEL_9:
    goto LABEL_10;
  }

  if (completionCopy)
  {
    v12 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v12);
    goto LABEL_9;
  }

LABEL_10:

  return nextTaskID;
}

- (unint64_t)updateVerification:(id)verification completion:(id)completion
{
  verificationCopy = verification;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  pass = [verificationCopy pass];
  v10 = [(PKPaymentWebService *)self verificationRecordForPass:pass];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [PKVerificationRequestRecord verificationRequestRecordForPass:pass];
  }

  v13 = v12;

  methodGroup = [verificationCopy methodGroup];
  method = [verificationCopy method];
  if (methodGroup && ([methodGroup needsServerRequest] & 1) == 0)
  {
    [v13 setActiveMethodGroup:methodGroup];
    [v13 setVerificationStatus:4000];
    [(PKPaymentWebService *)self updateVerificationRecord:v13];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, v13, 0);
    }
  }

  else
  {
    passTypeIdentifier = [pass passTypeIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__PKPaymentWebService_updateVerification_completion___block_invoke;
    v18[3] = &unk_1E79DB710;
    v23 = completionCopy;
    v18[4] = self;
    v19 = verificationCopy;
    v20 = methodGroup;
    v21 = method;
    v22 = pass;
    v24 = nextTaskID;
    [(PKPaymentWebService *)self _secureRequestBuilderForRegion:passTypeIdentifier fields:256 completion:v18];
  }

  return nextTaskID;
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

- (void)_performVerificationRequest:(id)request selectedMethodGroup:(id)group selectedMethod:(id)method pass:(id)pass taskID:(unint64_t)d completion:(id)completion
{
  groupCopy = group;
  methodCopy = method;
  passCopy = pass;
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__PKPaymentWebService__performVerificationRequest_selectedMethodGroup_selectedMethod_pass_taskID_completion___block_invoke;
  v22[3] = &unk_1E79D1D40;
  v22[4] = self;
  v23 = passCopy;
  v24 = groupCopy;
  v25 = methodCopy;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = methodCopy;
  v20 = groupCopy;
  v21 = passCopy;
  [(PKWebService *)self performRequest:request taskIdentifier:d completionHandler:v22];
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

- (id)removeRedundantMethodGroupsFromMethodGroups:(id)groups
{
  v28 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v4 = PKEnableGroupVerificationMethods();
  v5 = groupsCopy;
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
      legacyChannelRepresentation = [v14 legacyChannelRepresentation];
      v16 = legacyChannelRepresentation;
      if (legacyChannelRepresentation)
      {
        if ([legacyChannelRepresentation type] == 5)
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

- (id)verificationRecordForPass:(id)pass
{
  passCopy = pass;
  context = [(PKPaymentWebService *)self context];
  uniqueID = [passCopy uniqueID];

  v7 = [context verificationRequestRecordForUniqueID:uniqueID];

  return v7;
}

- (void)updateVerificationRecord:(id)record
{
  v11[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if (recordCopy)
  {
    context = [(PKPaymentWebService *)self context];
    passUniqueID = [recordCopy passUniqueID];
    [context addVerificationRequestRecord:recordCopy forUniqueID:passUniqueID];

    [(PKPaymentWebService *)self _archiveContext];
  }

  if ([recordCopy verificationStatus] == 2)
  {
    channel = [recordCopy channel];
    typeDescriptionUnlocalized = [channel typeDescriptionUnlocalized];

    if (typeDescriptionUnlocalized)
    {
      v10 = @"type";
      v11[0] = typeDescriptionUnlocalized;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      AnalyticsSendEvent();
    }
  }
}

- (void)removeVerificationRequestRecord:(id)record
{
  if (record)
  {
    recordCopy = record;
    context = [(PKPaymentWebService *)self context];
    passUniqueID = [recordCopy passUniqueID];

    [context removeVerificationRequestRecordForUniqueID:passUniqueID];

    [(PKPaymentWebService *)self _archiveContext];
  }
}

- (unint64_t)submitVerificationCode:(id)code verificationData:(id)data forPass:(id)pass completion:(id)completion
{
  codeCopy = code;
  dataCopy = data;
  passCopy = pass;
  v13 = MEMORY[0x1E695DF70];
  completionCopy = completion;
  v15 = objc_alloc_init(v13);
  selfCopy = self;
  v16 = [(PKPaymentWebService *)self verificationRecordForPass:passCopy];
  methodGroups = [v16 methodGroups];

  if (codeCopy)
  {
    v18 = [methodGroups pk_firstObjectPassingTest:&__block_literal_global_682];
    v19 = objc_alloc_init(PKPaymentVerificationSubmitMethodEntry);
    identifier = [v18 identifier];
    v21 = identifier;
    if (identifier)
    {
      v22 = identifier;
    }

    else
    {
      v22 = @"otp-group";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setMethodGroupIdentifier:v22];

    onlyMethod = [v18 onlyMethod];
    identifier2 = [onlyMethod identifier];
    v25 = identifier2;
    if (identifier2)
    {
      v26 = identifier2;
    }

    else
    {
      v26 = @"otp";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setMethodIdentifier:v26];

    [(PKPaymentVerificationSubmitMethodEntry *)v19 setVerificationCode:codeCopy];
    [v15 addObject:v19];
  }

  if (dataCopy)
  {
    v27 = [methodGroups pk_firstObjectPassingTest:&__block_literal_global_691];
    v28 = objc_alloc_init(PKPaymentVerificationSubmitMethodEntry);
    identifier3 = [v27 identifier];
    v30 = identifier3;
    if (identifier3)
    {
      v31 = identifier3;
    }

    else
    {
      v31 = @"otp-group";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setMethodGroupIdentifier:v31];

    onlyMethod2 = [v27 onlyMethod];
    identifier4 = [onlyMethod2 identifier];
    v34 = identifier4;
    if (identifier4)
    {
      v35 = identifier4;
    }

    else
    {
      v35 = @"otp";
    }

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setMethodIdentifier:v35];

    [(PKPaymentVerificationSubmitMethodEntry *)v28 setVerificationData:dataCopy];
    [v15 addObject:v28];
  }

  v36 = [v15 copy];
  v37 = [(PKPaymentWebService *)selfCopy submitVerificationEntries:v36 forPass:passCopy completion:completionCopy];

  return v37;
}

BOOL __82__PKPaymentWebService_submitVerificationCode_verificationData_forPass_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 onlyMethod];
  v3 = [v2 type] == 3;

  return v3;
}

- (unint64_t)submitVerificationEntries:(id)entries forPass:(id)pass completion:(id)completion
{
  entriesCopy = entries;
  passCopy = pass;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PKPaymentWebService_submitVerificationEntries_forPass_completion___block_invoke;
  v17[3] = &unk_1E79DB7C8;
  v17[4] = self;
  v18 = passCopy;
  v19 = entriesCopy;
  v20 = completionCopy;
  v21 = nextTaskID;
  v13 = entriesCopy;
  v14 = passCopy;
  v15 = completionCopy;
  [(PKPaymentWebService *)self _secureRequestBuilderForRegion:passTypeIdentifier fields:0 completion:v17];

  return nextTaskID;
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

- (unint64_t)verificationChannelsForPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  v7 = [PKPaymentVerificationOptionsRequest requestWithPass:pass];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKPaymentWebService_verificationChannelsForPass_completion___block_invoke;
  v11[3] = &unk_1E79DB7F0;
  v12 = completionCopy;
  v8 = completionCopy;
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

- (unint64_t)requestVerificationCodeForPass:(id)pass usingChannel:(id)channel completion:(id)completion
{
  completionCopy = completion;
  channelCopy = channel;
  passCopy = pass;
  v11 = objc_alloc_init(PKPaymentVerificationUpdateRequest);
  [(PKPaymentVerificationUpdateRequest *)v11 setPass:passCopy];

  [(PKPaymentVerificationUpdateRequest *)v11 setChannel:channelCopy];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
  v12 = [(PKPaymentWebService *)self updateVerification:v11 completion:completionCopy];

  return v12;
}

- (unint64_t)devicePassesSinceLastUpdatedTag:(BOOL)tag withCompletion:(id)completion
{
  tagCopy = tag;
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    [context regions];
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
          if (tagCopy)
          {
            lastUpdatedTag = [v9 lastUpdatedTag];
            [(PKPaymentDevicePassesRequest *)v10 setUpdatedSince:lastUpdatedTag];
          }

          [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
          brokerURL = [v9 brokerURL];
          _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
          v14 = [(PKPaymentDevicePassesRequest *)v10 _urlRequestWithServiceURL:brokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __70__PKPaymentWebService_devicePassesSinceLastUpdatedTag_withCompletion___block_invoke;
          v23[3] = &unk_1E79DB3A8;
          v23[4] = self;
          v24 = context;
          v25 = v8;
          v26 = completionCopy;
          [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v23];
        }

        v21 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v15 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v15);
  }

  return nextTaskID;
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

- (unint64_t)passesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];

  brokerURL = [primaryRegion brokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:brokerURL appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__PKPaymentWebService_passesWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CD770;
  v16[4] = self;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
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

- (unint64_t)notifyIssuerAppletStateDirtyWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];

  context2 = [(PKPaymentWebService *)self context];
  deviceID = [context2 deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    brokerURL = [primaryRegion brokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v15 = [requestCopy _urlRequestWithServiceURL:brokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__PKPaymentWebService_notifyIssuerAppletStateDirtyWithRequest_completion___block_invoke;
    v17[3] = &unk_1E79CB9F0;
    v18 = completionCopy;
    [(PKWebService *)self performRequest:v15 taskIdentifier:nextTaskID retries:3 authHandling:1 completionHandler:v17];
  }

  return nextTaskID;
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

- (unint64_t)performNotificationActionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__PKPaymentWebService_performNotificationActionRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  return nextTaskID;
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

- (void)backgroundDownloadPassesSinceLastUpdatedTag:(BOOL)tag
{
  tagCopy = tag;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  context = [(PKPaymentWebService *)self context];
  regions = [context regions];

  v7 = [regions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(regions);
        }

        [(PKPaymentWebService *)self backgroundDownloadPassesForPushTopic:*(*(&v11 + 1) + 8 * v10++) sinceLastUpdatedTag:tagCopy];
      }

      while (v8 != v10);
      v8 = [regions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)backgroundDownloadPassesForPushTopic:(id)topic sinceLastUpdatedTag:(BOOL)tag
{
  topicCopy = topic;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PKPaymentWebService_backgroundDownloadPassesForPushTopic_sinceLastUpdatedTag___block_invoke;
  v10[3] = &unk_1E79C9618;
  v10[4] = self;
  v11 = topicCopy;
  tagCopy = tag;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v14 = v8;
  v9 = topicCopy;
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

- (void)getHasBackgroundDownloadTaskPassesForPushTopic:(id)topic completion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentWebService_getHasBackgroundDownloadTaskPassesForPushTopic_completion___block_invoke;
  block[3] = &unk_1E79C4D60;
  block[4] = self;
  v12 = topicCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = topicCopy;
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

- (unint64_t)passAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PKPaymentWebService_passAtURL_completion___block_invoke;
  v10[3] = &unk_1E79DB890;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = [(PKPaymentWebService *)self passAtURL:l completionWithError:v10];

  return v8;
}

- (unint64_t)passAtURL:(id)l completionWithError:(id)error
{
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKPaymentWebService_passAtURL_completionWithError___block_invoke;
  v10[3] = &unk_1E79DB890;
  v11 = errorCopy;
  v7 = errorCopy;
  v8 = [(PKPaymentWebService *)self _downloadPassAtURL:l completion:v10];

  return v8;
}

- (void)_backgroundDownloadPassAtURL:(id)l fromPushTopic:(id)topic
{
  lCopy = l;
  topicCopy = topic;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKPaymentWebService__backgroundDownloadPassAtURL_fromPushTopic___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = lCopy;
  v14 = topicCopy;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = topicCopy;
  v11 = lCopy;
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

- (void)backgroundDownloadRemotePassAssets:(id)assets forSuffixesAndScreenScales:(id)scales cloudStoreCoordinatorDelegate:(id)delegate
{
  v25[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  scalesCopy = scales;
  delegateCopy = delegate;
  if (!scalesCopy)
  {
    v24 = &stru_1F227FD28;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:PKScreenScale()];
    v25[0] = v11;
    scalesCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  }

  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__PKPaymentWebService_backgroundDownloadRemotePassAssets_forSuffixesAndScreenScales_cloudStoreCoordinatorDelegate___block_invoke;
  v17[3] = &unk_1E79C9668;
  v18 = assetsCopy;
  selfCopy = self;
  v20 = scalesCopy;
  v21 = delegateCopy;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v23 = v13;
  v14 = delegateCopy;
  v15 = scalesCopy;
  v16 = assetsCopy;
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

- (unint64_t)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  numberCopy = number;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  v13 = [context regionForIdentifier:identifierCopy];

  if (v13)
  {
    [v13 brokerURL];
  }

  else
  {
    [(PKPaymentWebService *)self primaryBrokerURL];
  }
  v14 = ;
  v15 = [[PKPaymentPassRequest alloc] initWithPassTypeID:identifierCopy serialNumber:numberCopy];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v17 = [(PKPaymentPassRequest *)v15 _urlRequestWithServiceURL:v14 appleAccountInformation:_appleAccountInformation];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__PKPaymentWebService_passWithPassTypeIdentifier_serialNumber_completion___block_invoke;
  v20[3] = &unk_1E79CD770;
  v20[4] = self;
  v21 = completionCopy;
  v18 = completionCopy;
  [(PKWebService *)self performRequest:v17 taskIdentifier:nextTaskID completionHandler:v20];

  return nextTaskID;
}

- (void)backgroundDownloadWithPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaymentWebService_backgroundDownloadWithPassTypeIdentifier_serialNumber___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = numberCopy;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = numberCopy;
  v11 = identifierCopy;
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

- (void)backgroundRegisterCredentialWithRequest:(id)request
{
  requestCopy = request;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PKPaymentWebService_backgroundRegisterCredentialWithRequest___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = requestCopy;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  v7 = requestCopy;
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

- (unint64_t)pushProvisioningSharingIdentifiersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKPaymentWebService_pushProvisioningSharingIdentifiersWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
}

void __80__PKPaymentWebService_pushProvisioningSharingIdentifiersWithRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [[PKPaymentPushProvisioningSharingIdentifiersResponse alloc] initWithData:v7];

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)pushProvisioningSharingStatusRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PKPaymentWebService_pushProvisioningSharingStatusRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
}

void __71__PKPaymentWebService_pushProvisioningSharingStatusRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [[PKPaymentPushProvisioningSharingStatusResponse alloc] initWithData:v7];

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)provideEncryptedPushProvisioningTargetWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PKPaymentWebService_provideEncryptedPushProvisioningTargetWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
}

- (unint64_t)contactInformationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PKPaymentWebService_contactInformationWithRequest_completion___block_invoke;
  v16[3] = &unk_1E79CD770;
  v16[4] = self;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
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

- (unint64_t)availableProductsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    v11 = PKProductsURL();
    v12 = v11;
    if (v11)
    {
      primaryBrokerURL = v11;
    }

    else
    {
      primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v15 = primaryBrokerURL;

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v17 = [requestCopy _urlRequestWithServiceURL:v15 deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PKPaymentWebService_availableProductsWithRequest_completion___block_invoke;
    v19[3] = &unk_1E79CD770;
    v19[4] = self;
    v20 = completionCopy;
    [(PKWebService *)self performRequest:v17 taskIdentifier:nextTaskID completionHandler:v19];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)availableCommonProductsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _urlRequest = [requestCopy _urlRequest];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPaymentWebService_availableCommonProductsWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CD770;
  v12[4] = self;
  v13 = completionCopy;
  v10 = completionCopy;
  [(PKWebService *)self performRequest:_urlRequest taskIdentifier:nextTaskID completionHandler:v12];

  return nextTaskID;
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

- (unint64_t)performProductActionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    v11 = PKProductsURL();
    v12 = v11;
    if (v11)
    {
      primaryBrokerURL = v11;
    }

    else
    {
      primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v15 = primaryBrokerURL;

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v17 = [requestCopy _urlRequestWithServiceURL:v15 deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PKPaymentWebService_performProductActionRequest_completion___block_invoke;
    v19[3] = &unk_1E79CD770;
    v19[4] = self;
    v20 = completionCopy;
    [(PKWebService *)self performRequest:v17 taskIdentifier:nextTaskID completionHandler:v19];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)browseableBankAppsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PKPaymentWebService_browseableBankAppsWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)provisioningMethodWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PKPaymentWebService_provisioningMethodWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)passUpgradeWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKPaymentWebService_passUpgradeWithRequest_completion___block_invoke;
    v16[3] = &unk_1E79CD770;
    v16[4] = self;
    v17 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];
  }

  else if (completionCopy)
  {
    v14 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, v14, 0);
  }

  return nextTaskID;
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

- (unint64_t)paymentProvisioningNonceOfType:(unint64_t)type completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    v11 = [[PKPaymentProvisioningNonceRequest alloc] initWithNonceType:type];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v11];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v13 = [(PKPaymentProvisioningNonceRequest *)v11 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__PKPaymentWebService_paymentProvisioningNonceOfType_completion___block_invoke;
    v17[3] = &unk_1E79CD770;
    v17[4] = self;
    v18 = completionCopy;
    [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v17];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      context2 = [(PKPaymentWebService *)self context];
      *buf = 138412290;
      v20 = context2;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get provisioning nonce, deviceID unavailable for context: %@", buf, 0xCu);
    }

    primaryBrokerURL = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, primaryBrokerURL);
  }

  return nextTaskID;
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

- (unint64_t)passActionWithRemoteContentPassAction:(id)action forPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  actionCopy = action;
  remoteContentConfiguration = [actionCopy remoteContentConfiguration];
  requiresAppletData = [remoteContentConfiguration requiresAppletData];

  if (requiresAppletData)
  {
    v13 = [(PKPaymentWebService *)self _passActionIncludingAppletDataWithRemoteContentPassAction:actionCopy pass:passCopy completion:completionCopy];
  }

  else
  {
    v13 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:actionCopy pass:passCopy completion:completionCopy];
  }

  v14 = v13;

  return v14;
}

- (unint64_t)_passActionIncludingAppletDataWithRemoteContentPassAction:(id)action pass:(id)pass completion:(id)completion
{
  actionCopy = action;
  passCopy = pass;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (deviceID)
  {
    targetDevice = self->_targetDevice;
    secureElementPass = [passCopy secureElementPass];
    remoteContentConfiguration = [actionCopy remoteContentConfiguration];
    appletDataRequiresEncryption = [remoteContentConfiguration appletDataRequiresEncryption];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PKPaymentWebService__passActionIncludingAppletDataWithRemoteContentPassAction_pass_completion___block_invoke;
    v21[3] = &unk_1E79DB8E0;
    v24 = completionCopy;
    v21[4] = self;
    v22 = actionCopy;
    v23 = passCopy;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice serviceProviderDataForSecureElementPass:secureElementPass encrypted:appletDataRequiresEncryption completion:v21];

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
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }

  return nextTaskID;
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

- (unint64_t)passActionWithRemoteContentPassAction:(id)action forDeviceIdentifier:(id)identifier passTypeIdentifier:(id)typeIdentifier passSerialNumber:(id)number completion:(id)completion
{
  actionCopy = action;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  numberCopy = number;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  if (identifierCopy)
  {
    v18 = objc_alloc_init(PKPaymentRemoteContentPassActionRequest);
    [(PKPaymentRemoteContentPassActionRequest *)v18 setAction:actionCopy];
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v20 = actionCopy;
    v22 = v21 = nextTaskID;
    [(PKPaymentRemoteContentPassActionRequest *)v18 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:identifierCopy passTypeIdentifier:typeIdentifierCopy passSerialNumber:numberCopy appleAccountInformation:v22];
    v23 = v26 = typeIdentifierCopy;

    nextTaskID = v21;
    actionCopy = v20;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __128__PKPaymentWebService_passActionWithRemoteContentPassAction_forDeviceIdentifier_passTypeIdentifier_passSerialNumber_completion___block_invoke;
    v28[3] = &unk_1E79CD770;
    v29 = v20;
    v30 = completionCopy;
    [(PKWebService *)self performRequest:v23 taskIdentifier:nextTaskID completionHandler:v28];

    typeIdentifierCopy = v26;
  }

  else
  {
    v24 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)_passActionWithRemoteContentPassAction:(id)action pass:(id)pass completion:(id)completion
{
  actionCopy = action;
  passCopy = pass;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  v16 = serialNumber;
  if (deviceID)
  {
    v17 = objc_alloc_init(PKPaymentRemoteContentPassActionRequest);
    [(PKPaymentRemoteContentPassActionRequest *)v17 setAction:actionCopy];
    v30 = passCopy;
    v18 = v17;
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v17];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v20 = completionCopy;
    v21 = nextTaskID;
    v23 = v22 = actionCopy;
    [(PKPaymentRemoteContentPassActionRequest *)v18 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID passTypeIdentifier:passTypeIdentifier passSerialNumber:v16 appleAccountInformation:v23];
    v31 = deviceID;
    v25 = v24 = passTypeIdentifier;

    actionCopy = v22;
    nextTaskID = v21;
    completionCopy = v20;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__PKPaymentWebService__passActionWithRemoteContentPassAction_pass_completion___block_invoke;
    v33[3] = &unk_1E79D1CC8;
    v34 = actionCopy;
    v35 = v30;
    v36 = v20;
    [(PKWebService *)self performRequest:v25 taskIdentifier:nextTaskID completionHandler:v33];

    v26 = v31;
    passCopy = v30;
  }

  else
  {
    v27 = serialNumber;
    v24 = passTypeIdentifier;
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    v26 = 0;
    v16 = v27;
  }

  return nextTaskID;
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

- (unint64_t)passActionWithRemoteContentPassAction:(id)action serviceProviderData:(id)data pass:(id)pass completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  passCopy = pass;
  actionCopy = action;
  remoteContentConfiguration = [actionCopy remoteContentConfiguration];
  requiresAppletData = [remoteContentConfiguration requiresAppletData];

  if (requiresAppletData)
  {
    v16 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:actionCopy serviceProviderData:dataCopy pass:passCopy completion:completionCopy];
  }

  else
  {
    v16 = [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:actionCopy pass:passCopy completion:completionCopy];
  }

  v17 = v16;

  return v17;
}

- (unint64_t)_passActionWithRemoteContentPassAction:(id)action serviceProviderData:(id)data pass:(id)pass completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  dataCopy = data;
  passCopy = pass;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  if (dataCopy)
  {
    [actionCopy setAppletData:dataCopy];
    [(PKPaymentWebService *)self _passActionWithRemoteContentPassAction:actionCopy pass:passCopy completion:completionCopy];
    v15 = completionCopy;
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
      localizedDescription = [v15 localizedDescription];
      v21 = 138412290;
      v22 = localizedDescription;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Found nil service provider data; returning error: %@", &v21, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  return nextTaskID;
}

- (unint64_t)passActionGroupWithRemoteContentPassActionGroup:(id)group forPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  groupCopy = group;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  remoteContentConfiguration = [groupCopy remoteContentConfiguration];
  requiresAppletData = [remoteContentConfiguration requiresAppletData];

  if (requiresAppletData)
  {
    v15 = [(PKPaymentWebService *)self _passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:groupCopy forPass:passCopy forDeviceIdentifier:deviceID completion:completionCopy];
  }

  else
  {
    v15 = [(PKPaymentWebService *)self _passActionGroupWithRemoteContentPassActionGroup:groupCopy forPass:passCopy forDeviceIdentifier:deviceID completion:completionCopy];
  }

  v16 = v15;

  return v16;
}

- (unint64_t)_passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup:(id)group forPass:(id)pass forDeviceIdentifier:(id)identifier completion:(id)completion
{
  groupCopy = group;
  passCopy = pass;
  identifierCopy = identifier;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  if (!identifierCopy)
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "No device identifier present - exiting early", buf, 2u);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    completionCopy[2](completionCopy, 0, v18);
  }

  targetDevice = self->_targetDevice;
  [passCopy secureElementPass];
  v19 = v30 = nextTaskID;
  remoteContentConfiguration = [groupCopy remoteContentConfiguration];
  appletDataRequiresEncryption = [remoteContentConfiguration appletDataRequiresEncryption];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __130__PKPaymentWebService__passActionGroupIncludingAppletDataWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke;
  v31[3] = &unk_1E79DB908;
  v32 = groupCopy;
  selfCopy = self;
  v34 = identifierCopy;
  v35 = passTypeIdentifier;
  v38 = completionCopy;
  v39 = nextTaskID;
  v36 = serialNumber;
  v37 = passCopy;
  v21 = passCopy;
  v22 = serialNumber;
  v23 = passTypeIdentifier;
  v24 = identifierCopy;
  v25 = groupCopy;
  v26 = completionCopy;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice serviceProviderDataForSecureElementPass:v19 encrypted:appletDataRequiresEncryption completion:v31];

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

- (unint64_t)_passActionGroupWithRemoteContentPassActionGroup:(id)group forPass:(id)pass forDeviceIdentifier:(id)identifier completion:(id)completion
{
  groupCopy = group;
  passCopy = pass;
  identifierCopy = identifier;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  v18 = objc_alloc_init(PKPaymentRemoteContentPassActionGroupRequest);
  [(PKPaymentRemoteContentPassActionGroupRequest *)v18 setActionGroup:groupCopy];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
  if (identifierCopy)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v18];
    [(PKPaymentWebService *)self _appleAccountInformation];
    v27 = completionCopy;
    v20 = v19 = nextTaskID;
    [(PKPaymentRemoteContentPassActionGroupRequest *)v18 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:identifierCopy passTypeIdentifier:passTypeIdentifier passSerialNumber:serialNumber appleAccountInformation:v20];
    v28 = identifierCopy;
    v22 = v21 = passTypeIdentifier;

    nextTaskID = v19;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __111__PKPaymentWebService__passActionGroupWithRemoteContentPassActionGroup_forPass_forDeviceIdentifier_completion___block_invoke;
    v30[3] = &unk_1E79D1CC8;
    v31 = groupCopy;
    v32 = passCopy;
    completionCopy = v27;
    v33 = v27;
    selfCopy = self;
    v24 = v28;
    [(PKWebService *)selfCopy performRequest:v22 taskIdentifier:nextTaskID completionHandler:v30];
  }

  else
  {
    v24 = 0;
    v21 = passTypeIdentifier;
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Get pass action with remote content pass action, deviceID is nil", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)moreInfoItemAtURL:(id)l withMetadata:(id)metadata completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  metadataCopy = metadata;
  lCopy = l;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v12 = objc_alloc_init(PKPaymentWebServiceRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v12];
  v13 = PKURLByAppendingQueryParams(lCopy, metadataCopy);

  v14 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Downloading More Info Item with URL: '%@'.", buf, 0xCu);
  }

  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v16 = [(PKWebServiceRequest *)v12 _murlRequestWithURL:v13 appleAccountInformation:_appleAccountInformation];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__PKPaymentWebService_moreInfoItemAtURL_withMetadata_completion___block_invoke;
  v19[3] = &unk_1E79CD770;
  v19[4] = self;
  v20 = completionCopy;
  v17 = completionCopy;
  [(PKWebService *)self performRequest:v16 taskIdentifier:nextTaskID completionHandler:v19];

  return nextTaskID;
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

- (unint64_t)cardInfoForMerchantIdentifier:(id)identifier completion:(id)completion
{
  v41[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if (identifierCopy && deviceID)
  {
    v34 = completionCopy;
    v11 = [[PKAMPCardInfoForMerchantRequest alloc] initWithMerchantIdentifier:identifierCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v33 = deviceID;
    v14 = [(PKAMPCardInfoForMerchantRequest *)v11 _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    mEMORY[0x1E695AC38] = [MEMORY[0x1E695AC38] sharedURLCache];
    v16 = [mEMORY[0x1E695AC38] cachedResponseForRequest:v14];
    v17 = PDLastPaymentPassInsertionOrRemovalDate();
    if (v17 && v16)
    {
      v31 = mEMORY[0x1E695AC38];
      v32 = nextTaskID;
      response = [v16 response];
      allHeaderFields = [response allHeaderFields];

      v20 = [allHeaderFields objectForKeyedSubscript:@"Date"];
      v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v21 setDateFormat:@"EEEE, dd LLL yyyy HH:mm:ss zzz"];
      v22 = [v21 dateFromString:v20];
      if (!v22)
      {

        mEMORY[0x1E695AC38] = v31;
        nextTaskID = v32;
        goto LABEL_15;
      }

      v23 = v22;
      v30 = [v22 compare:v17];

      mEMORY[0x1E695AC38] = v31;
      nextTaskID = v32;
      if (v30 != 1)
      {
LABEL_16:
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __64__PKPaymentWebService_cardInfoForMerchantIdentifier_completion___block_invoke;
        v36[3] = &unk_1E79CB9F0;
        completionCopy = v34;
        v37 = v34;
        [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v36];

        deviceID = v33;
        goto LABEL_17;
      }
    }

    allHeaderFields = [v14 mutableCopy];
    [allHeaderFields setCachePolicy:0];
    v20 = v14;
    v14 = [allHeaderFields copy];
LABEL_15:

    goto LABEL_16;
  }

  if (identifierCopy)
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
  (*(completionCopy + 2))(completionCopy, 0, v14);
LABEL_17:

  return nextTaskID;
}

- (unint64_t)agreementURLForPass:(id)pass agreement:(id)agreement completion:(id)completion
{
  completionCopy = completion;
  agreementCopy = agreement;
  passCopy = pass;
  nextTaskID = [(PKWebService *)self nextTaskID];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  v13 = [PKPaymentFetchPassLegalAgreementRequest alloc];
  serialNumber = [passCopy serialNumber];

  v15 = [(PKPaymentFetchPassLegalAgreementRequest *)v13 initPassTypeIdentifier:passTypeIdentifier passSerialNumber:serialNumber agreement:agreementCopy];
  v16 = [(PKPaymentWebService *)self _requestBuilderForRegion:passTypeIdentifier];
  if (v16)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v15];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__PKPaymentWebService_agreementURLForPass_agreement_completion___block_invoke;
    v19[3] = &unk_1E79D1DE0;
    v19[4] = self;
    v21 = nextTaskID;
    v20 = completionCopy;
    [v15 _urlRequestWithBuilder:v16 completion:v19];
  }

  else if (completionCopy)
  {
    v17 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

  return nextTaskID;
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

- (unint64_t)retrieveMerchantTokensUnifiedListWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v9 = dispatch_time(0, 1000000000);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C4428;
    v24 = completionCopy;
    dispatch_after(v9, v10, block);

    secureElementID = v24;
  }

  else
  {
    context = [(PKPaymentWebService *)self context];
    secureElementID = [context secureElementID];

    if (secureElementID)
    {
      context2 = [(PKPaymentWebService *)self context];
      primaryRegion = [context2 primaryRegion];
      paymentServicesURL = [primaryRegion paymentServicesURL];

      [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
      _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
      v17 = [requestCopy _urlRequestWithServiceURL:paymentServicesURL secureElementID:secureElementID appleAccountInformation:_appleAccountInformation];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __79__PKPaymentWebService_retrieveMerchantTokensUnifiedListWithRequest_completion___block_invoke_790;
      v20[3] = &unk_1E79CB9F0;
      v21 = completionCopy;
      [(PKWebService *)self performRequest:v17 taskIdentifier:nextTaskID completionHandler:v20];
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AD337000, v18, OS_LOG_TYPE_ERROR, "Cannot request merchant tokens list without a Secure Element ID", buf, 2u);
      }

      if (!completionCopy)
      {
        secureElementID = 0;
        goto LABEL_10;
      }

      paymentServicesURL = objc_alloc_init(PKRetrieveMerchantTokensResponse);
      (*(completionCopy + 2))(completionCopy, paymentServicesURL, 0);
    }
  }

LABEL_10:

  return nextTaskID;
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

- (unint64_t)retrieveMerchantTokensWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  nextTaskID = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v11 = dispatch_time(0, 1000000000);
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C44A0;
    v24 = completionCopy;
    v23 = requestCopy;
    paymentServicesURL = completionCopy;
    dispatch_after(v11, v12, block);

    v14 = v24;
  }

  else
  {
    context2 = [(PKPaymentWebService *)self context];
    primaryRegion = [context2 primaryRegion];
    paymentServicesURL = [primaryRegion paymentServicesURL];

    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v14 = [requestCopy _urlRequestWithServiceURL:paymentServicesURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__PKPaymentWebService_retrieveMerchantTokensWithRequest_completion___block_invoke_792;
    v20[3] = &unk_1E79CB9F0;
    v21 = completionCopy;
    v18 = completionCopy;
    [(PKWebService *)self performRequest:v14 taskIdentifier:nextTaskID completionHandler:v20];
  }

  return nextTaskID;
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

- (unint64_t)registerMerchantTokenPublicKeyWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  secureElementID = [context secureElementID];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKPaymentWebService_registerMerchantTokenPublicKeyWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79D1DE0;
  v16 = completionCopy;
  v17 = nextTaskID;
  v15[4] = self;
  v13 = completionCopy;
  [requestCopy _urlRequestWithServiceURL:primaryBrokerURL secureElementID:secureElementID appleAccountInformation:_appleAccountInformation webService:self completion:v15];

  return nextTaskID;
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

- (unint64_t)deleteMerchantTokenWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  if (PKMerchantTokensDemoModeEnabled())
  {
    v9 = dispatch_time(0, 1000000000);
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke;
    block[3] = &unk_1E79C4428;
    v21 = completionCopy;
    paymentServicesURL = completionCopy;
    dispatch_after(v9, v10, block);

    v12 = v21;
  }

  else
  {
    context = [(PKPaymentWebService *)self context];
    primaryRegion = [context primaryRegion];
    paymentServicesURL = [primaryRegion paymentServicesURL];

    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v12 = [requestCopy _urlRequestWithServiceURL:paymentServicesURL appleAccountInformation:_appleAccountInformation];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PKPaymentWebService_deleteMerchantTokenWithRequest_completion___block_invoke_2;
    v18[3] = &unk_1E79CB9F0;
    v19 = completionCopy;
    v16 = completionCopy;
    [(PKWebService *)self performRequest:v12 taskIdentifier:nextTaskID completionHandler:v18];
  }

  return nextTaskID;
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

- (unint64_t)transactionReceiptAuthorizationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPaymentWebService_transactionReceiptAuthorizationWithRequest_completion___block_invoke;
  v13[3] = &unk_1E79D1DE0;
  v14 = completionCopy;
  v15 = nextTaskID;
  v13[4] = self;
  v11 = completionCopy;
  [requestCopy _urlRequestWithServiceURL:primaryBrokerURL appleAccountInformation:_appleAccountInformation webService:self completion:v13];

  return nextTaskID;
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

- (unint64_t)transactionReceiptWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  _urlRequest = [requestCopy _urlRequest];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKPaymentWebService_transactionReceiptWithRequest_completion___block_invoke;
  v12[3] = &unk_1E79CB9F0;
  v13 = completionCopy;
  v10 = completionCopy;
  [(PKWebService *)self performRequest:_urlRequest taskIdentifier:nextTaskID completionHandler:v12];

  return nextTaskID;
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

- (unint64_t)createVehicleKeyShareWithRequest:(id)request passTypeIdentifier:(id)identifier completion:(id)completion
{
  requestCopy = request;
  identifierCopy = identifier;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (deviceID)
  {
    v24 = nextTaskID;
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    v14 = [context regionForIdentifier:identifierCopy];
    brokerURL = [v14 brokerURL];
    v16 = brokerURL;
    v17 = identifierCopy;
    if (brokerURL)
    {
      primaryBrokerURL = brokerURL;
    }

    else
    {
      primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    }

    v20 = primaryBrokerURL;

    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v22 = [requestCopy _urlRequestWithServiceURL:v20 deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__PKPaymentWebService_createVehicleKeyShareWithRequest_passTypeIdentifier_completion___block_invoke;
    v25[3] = &unk_1E79CB9F0;
    v26 = completionCopy;
    nextTaskID = v24;
    [(PKWebService *)self performRequest:v22 taskIdentifier:v24 completionHandler:v25];

    identifierCopy = v17;
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
    (*(completionCopy + 2))(completionCopy, v14);
  }

  return nextTaskID;
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

- (unint64_t)vehicleManufacturerWithRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKPaymentWebService_vehicleManufacturerWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
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

- (unint64_t)registerCredentialWithRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__PKPaymentWebService_registerCredentialWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CDA40;
  v16[4] = self;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
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

- (unint64_t)revokeSharedCredentialWithRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PKPaymentWebService_revokeSharedCredentialWithRequest_withCompletion___block_invoke;
  v16[3] = &unk_1E79CB9F0;
  v17 = completionCopy;
  v14 = completionCopy;
  [(PKWebService *)self performRequest:v13 taskIdentifier:nextTaskID completionHandler:v16];

  return nextTaskID;
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

- (unint64_t)credentialAccountAttesationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  if ([deviceID length])
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PKPaymentWebService_credentialAccountAttesationWithRequest_completion___block_invoke;
    v17[3] = &unk_1E79D1DE0;
    v17[4] = self;
    v19 = nextTaskID;
    v18 = completionCopy;
    [requestCopy _urlRequestWithServiceURL:primaryBrokerURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation webService:self completion:v17];
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
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }

  return nextTaskID;
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

- (unint64_t)inAppPaymentNonceForPass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  v8 = objc_alloc_init(PKPaymentNonceRequest);
  [(PKPaymentAugmentBaseRequest *)v8 setPass:passCopy];

  [(PKPaymentNonceRequest *)v8 setUseLegacyGetAPI:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PKPaymentWebService_inAppPaymentNonceForPass_completion___block_invoke;
  v12[3] = &unk_1E79DB930;
  v13 = completionCopy;
  v9 = completionCopy;
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

- (unint64_t)inAppPaymentNonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    context = [(PKPaymentWebService *)self context];
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v14 = [context regionForIdentifier:passTypeIdentifier];

    lCopy = [v14 inAppPaymentServicesURL];
    if (!lCopy)
    {
      lCopy = PKOverrideInAppPaymentServicesURL();
    }
  }

  v15 = [(PKPaymentWebService *)self _nonceWithRequest:requestCopy serviceURL:lCopy completion:completionCopy];

  return v15;
}

- (unint64_t)_nonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__54;
  v34 = __Block_byref_object_dispose__54;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentWebService__nonceWithRequest_serviceURL_completion___block_invoke;
  aBlock[3] = &unk_1E79DB958;
  aBlock[4] = self;
  v13 = requestCopy;
  v25 = v13;
  v14 = lCopy;
  v26 = v14;
  v28 = &v30;
  v29 = nextTaskID;
  v15 = completionCopy;
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
  return nextTaskID;
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

- (unint64_t)augmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    context = [(PKPaymentWebService *)self context];
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v14 = [context regionForIdentifier:passTypeIdentifier];

    lCopy = [v14 inAppPaymentServicesURL];
    if (!lCopy)
    {
      lCopy = PKOverrideInAppPaymentServicesURL();
    }
  }

  v15 = [(PKPaymentWebService *)self _augmentSessionWithRequest:requestCopy serviceURL:lCopy completion:completionCopy];

  return v15;
}

- (unint64_t)_augmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v15 = [requestCopy _urlRequestWithServiceURL:lCopy deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PKPaymentWebService__augmentSessionWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79CD770;
  v18[4] = self;
  v19 = completionCopy;
  v16 = completionCopy;
  [(PKWebService *)self performRequest:v15 taskIdentifier:nextTaskID completionHandler:v18];

  return nextTaskID;
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

- (unint64_t)rewrapInAppPayment:(id)payment merchantIdentifier:(id)identifier hostApplicationIdentifier:(id)applicationIdentifier applicationData:(id)data pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  dataCopy = data;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  paymentCopy = payment;
  v20 = objc_alloc_init(PKPaymentRewrapRequest);
  [(PKPaymentRewrapRequestBase *)v20 setWrappedPayment:paymentCopy];

  devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
  [(PKPaymentRewrapRequestBase *)v20 setPaymentApplication:devicePrimaryInAppPaymentApplication];

  [(PKPaymentRewrapRequest *)v20 setMerchantIdentifier:identifierCopy];
  [(PKPaymentRewrapRequest *)v20 setHostApplicationIdentifier:applicationIdentifierCopy];

  [(PKPaymentRewrapRequestBase *)v20 setApplicationData:dataCopy];
  [(PKPaymentRewrapRequestBase *)v20 setPass:passCopy];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __119__PKPaymentWebService_rewrapInAppPayment_merchantIdentifier_hostApplicationIdentifier_applicationData_pass_completion___block_invoke;
  v25[3] = &unk_1E79CE418;
  v26 = completionCopy;
  v22 = completionCopy;
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

- (unint64_t)rewrapInAppPaymentWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  lCopy = l;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79DB9A8;
  v19 = requestCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentWebService_rewrapInAppPaymentWithRequest_serviceURL_completion___block_invoke_2;
  v15[3] = &unk_1E79CE3C8;
  v16 = v19;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = v19;
  v13 = [(PKPaymentWebService *)self _performRewrapRequest:v12 serviceURL:lCopy responseHandler:v18 completion:v15];

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

- (unint64_t)completeSession:(id)session wrappedPayment:(id)payment pass:(id)pass applicationData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  passCopy = pass;
  paymentCopy = payment;
  sessionCopy = session;
  v17 = objc_alloc_init(PKPaymentCompleteSessionRequest);
  [(PKPaymentRewrapRequestBase *)v17 setWrappedPayment:paymentCopy];

  [(PKPaymentRewrapRequestBase *)v17 setPass:passCopy];
  devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];

  [(PKPaymentRewrapRequestBase *)v17 setPaymentApplication:devicePrimaryInAppPaymentApplication];
  [(PKPaymentCompleteSessionRequest *)v17 setMerchantSession:sessionCopy];

  [(PKPaymentRewrapRequestBase *)v17 setApplicationData:dataCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__PKPaymentWebService_completeSession_wrappedPayment_pass_applicationData_completion___block_invoke;
  v22[3] = &unk_1E79DB9D0;
  v23 = completionCopy;
  v19 = completionCopy;
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

- (unint64_t)completeSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  lCopy = l;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke;
  v18[3] = &unk_1E79DB9A8;
  v19 = requestCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentWebService_completeSessionWithRequest_serviceURL_completion___block_invoke_2;
  v15[3] = &unk_1E79CE3C8;
  v16 = v19;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = v19;
  v13 = [(PKPaymentWebService *)self _performRewrapRequest:v12 serviceURL:lCopy responseHandler:v18 completion:v15];

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

- (unint64_t)_performRewrapRequest:(id)request serviceURL:(id)l responseHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  handlerCopy = handler;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  if (!lCopy)
  {
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v19 = [context regionForIdentifier:passTypeIdentifier];

    lCopy = [v19 inAppPaymentServicesURL];
    if (!lCopy)
    {
      lCopy = PKOverrideInAppPaymentServicesURL();
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentWebService__performRewrapRequest_serviceURL_responseHandler_completion___block_invoke;
  aBlock[3] = &unk_1E79DBA70;
  aBlock[4] = self;
  v20 = requestCopy;
  v33 = v20;
  v21 = lCopy;
  v34 = v21;
  v22 = deviceID;
  v35 = v22;
  v38 = nextTaskID;
  v23 = handlerCopy;
  v36 = v23;
  v24 = completionCopy;
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

  return nextTaskID;
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

- (unint64_t)availableDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];

  v8 = objc_alloc_init(PKPaymentAvailableDevicesRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v8];
  brokerURL = [primaryRegion brokerURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKPaymentAvailableDevicesRequest *)v8 _urlRequestWithServiceURL:brokerURL appleAccountInformation:_appleAccountInformation];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__PKPaymentWebService_availableDevicesWithCompletion___block_invoke;
  v14[3] = &unk_1E79CB9F0;
  v15 = completionCopy;
  v12 = completionCopy;
  [(PKWebService *)self performRequest:v11 taskIdentifier:nextTaskID completionHandler:v14];

  return nextTaskID;
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

- (unint64_t)checkMerchantStatus:(id)status forDomain:(id)domain withCompletion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  statusCopy = status;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];

  v14 = [[PKPaymentCheckMerchantRequest alloc] initWithMerchantIdentifier:statusCopy domainName:domainCopy];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v14];
  inAppPaymentServicesURL = [primaryRegion inAppPaymentServicesURL];
  v16 = [(PKPaymentCheckMerchantRequest *)v14 _urlRequestWithServiceURL:inAppPaymentServicesURL];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__PKPaymentWebService_checkMerchantStatus_forDomain_withCompletion___block_invoke;
  v19[3] = &unk_1E79CB9F0;
  v20 = completionCopy;
  v17 = completionCopy;
  [(PKWebService *)self performRequest:v16 taskIdentifier:nextTaskID completionHandler:v19];

  return nextTaskID;
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

- (unint64_t)prepareTransactionDetailsForMerchantSession:(id)session secureElementIdentifier:(id)identifier amount:(id)amount currencyCode:(id)code completion:(id)completion
{
  completionCopy = completion;
  codeCopy = code;
  amountCopy = amount;
  identifierCopy = identifier;
  sessionCopy = session;
  v17 = [[PKPaymentPrepareTransactionDetailsRequest alloc] initWithMerchantSession:sessionCopy secureElementIdentifier:identifierCopy amount:amountCopy currencyCode:codeCopy];

  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];

  inAppPaymentServicesURL = [primaryRegion inAppPaymentServicesURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v23 = [(PKPaymentPrepareTransactionDetailsRequest *)v17 _urlRequestWithServiceURL:inAppPaymentServicesURL appleAccountInformation:_appleAccountInformation];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __122__PKPaymentWebService_prepareTransactionDetailsForMerchantSession_secureElementIdentifier_amount_currencyCode_completion___block_invoke;
  v26[3] = &unk_1E79CD770;
  v26[4] = self;
  v27 = completionCopy;
  v24 = completionCopy;
  [(PKWebService *)self performRequest:v23 taskIdentifier:nextTaskID completionHandler:v26];

  return nextTaskID;
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

- (unint64_t)serviceProviderNonceWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    context = [(PKPaymentWebService *)self context];
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v14 = [context regionForIdentifier:passTypeIdentifier];

    lCopy = [v14 paymentServicesURL];
  }

  v15 = [(PKPaymentWebService *)self _nonceWithRequest:requestCopy serviceURL:lCopy completion:completionCopy];

  return v15;
}

- (unint64_t)serviceProviderAugmentSessionWithRequest:(id)request serviceURL:(id)l completion:(id)completion
{
  requestCopy = request;
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    context = [(PKPaymentWebService *)self context];
    pass = [requestCopy pass];
    passTypeIdentifier = [pass passTypeIdentifier];
    v14 = [context regionForIdentifier:passTypeIdentifier];

    lCopy = [v14 paymentServicesURL];
  }

  v15 = [(PKPaymentWebService *)self _augmentSessionWithRequest:requestCopy serviceURL:lCopy completion:completionCopy];

  return v15;
}

- (unint64_t)performServiceProviderPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  deviceID = [context deviceID];
  pass = [paymentCopy pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  v12 = [context regionForIdentifier:passTypeIdentifier];

  nextTaskID = [(PKWebService *)self nextTaskID];
  if (deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:paymentCopy];
    paymentServicesURL = [v12 paymentServicesURL];
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__PKPaymentWebService_performServiceProviderPayment_completion___block_invoke;
    v19[3] = &unk_1E79D1DE0;
    v19[4] = self;
    v21 = nextTaskID;
    v20 = completionCopy;
    [paymentCopy _urlRequestWithServiceURL:paymentServicesURL deviceIdentifier:deviceID appleAccountInformation:_appleAccountInformation webService:self completion:v19];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Perform Payment, deviceID is nil", v18, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return nextTaskID;
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

- (unint64_t)serviceProviderPurchasesWithRequest:(id)request inRegion:(id)region completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  regionCopy = region;
  completionCopy = completion;
  nextTaskID = [(PKWebService *)self nextTaskID];
  context = [(PKPaymentWebService *)self context];
  v13 = context;
  if (!regionCopy)
  {
    regionCopy = [context primaryRegionIdentifier];
  }

  v14 = [v13 regionForIdentifier:regionCopy];
  deviceID = [v13 deviceID];
  v16 = deviceID;
  if (v14 && deviceID)
  {
    [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
    paymentServicesURL = [v14 paymentServicesURL];
    [(PKPaymentWebService *)self _appleAccountInformation];
    selfCopy = self;
    v18 = regionCopy;
    v19 = v14;
    v20 = v13;
    v21 = completionCopy;
    v23 = v22 = nextTaskID;
    v24 = [requestCopy _urlRequestWithServiceURL:paymentServicesURL deviceIdentifier:v16 appleAccountInformation:v23];

    nextTaskID = v22;
    completionCopy = v21;
    v13 = v20;
    v14 = v19;
    regionCopy = v18;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __79__PKPaymentWebService_serviceProviderPurchasesWithRequest_inRegion_completion___block_invoke;
    v29[3] = &unk_1E79CD770;
    v30 = v18;
    v31 = completionCopy;
    [(PKWebService *)selfCopy performRequest:v24 taskIdentifier:nextTaskID completionHandler:v29];

LABEL_17:
    goto LABEL_18;
  }

  if (v14)
  {
    if (deviceID)
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
      v33 = regionCopy;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Can't ask for purchases, region %{public}@ unknown", buf, 0xCu);
    }

    if (v16)
    {
LABEL_8:
      if (!completionCopy)
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

  if (completionCopy)
  {
LABEL_16:
    v24 = [(PKPaymentWebService *)self _errorWithResult:0 data:0];
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], v24);
    goto LABEL_17;
  }

LABEL_18:

  return nextTaskID;
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

- (unint64_t)serviceProviderPurchaseWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  v10 = [[PKPaymentServiceProviderPurchaseRequest alloc] initWithPurchaseIdentifier:identifierCopy];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v10];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [(PKPaymentServiceProviderPurchaseRequest *)v10 _urlRequestWithServiceURL:primaryBrokerURL appleAccountInformation:_appleAccountInformation];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentWebService_serviceProviderPurchaseWithIdentifier_completion___block_invoke;
  v15[3] = &unk_1E79CB9F0;
  v16 = completionCopy;
  v13 = completionCopy;
  [(PKWebService *)self performRequest:v12 taskIdentifier:nextTaskID completionHandler:v15];

  return nextTaskID;
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

- (unint64_t)performAction:(id)action onServiceProviderPurchase:(id)purchase completion:(id)completion
{
  completionCopy = completion;
  purchaseCopy = purchase;
  actionCopy = action;
  nextTaskID = [(PKWebService *)self nextTaskID];
  primaryBrokerURL = [(PKPaymentWebService *)self primaryBrokerURL];
  v13 = [[PKPaymentServiceProviderPerformActionRequest alloc] initWithAction:actionCopy purchase:purchaseCopy];

  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v13];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v15 = [(PKPaymentServiceProviderPerformActionRequest *)v13 _urlRequestWithServiceURL:primaryBrokerURL appleAccountInformation:_appleAccountInformation];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__PKPaymentWebService_performAction_onServiceProviderPurchase_completion___block_invoke;
  v18[3] = &unk_1E79CB9F0;
  v19 = completionCopy;
  v16 = completionCopy;
  [(PKWebService *)self performRequest:v15 taskIdentifier:nextTaskID completionHandler:v18];

  return nextTaskID;
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

- (unint64_t)networkManifestWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(PKPaymentWebService *)self context];
  configuration = [context configuration];
  deviceRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
  v8 = [configuration heroImageManifestURLForRegion:deviceRegion];

  nextTaskID = [(PKWebService *)self nextTaskID];
  if (v8)
  {
    v10 = objc_alloc_init(PKPaymentNetworkCardImagesManifestRequest);
    _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
    v12 = [(PKPaymentNetworkCardImagesManifestRequest *)v10 _urlRequestWithServiceURL:v8 appleAccountInformation:_appleAccountInformation];

    [(PKWebService *)self performRequest:v12 taskIdentifier:nextTaskID completionHandler:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  return nextTaskID;
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v54 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = taskCopy;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task finish download: %@", buf, 0xCu);
  }

  if (self->_backgroundSession == sessionCopy)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
    taskIdentifier = [taskCopy taskIdentifier];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      originalRequest = [taskCopy originalRequest];
      v15 = [originalRequest URL];
      *buf = 134218242;
      *&buf[4] = taskIdentifier;
      v52 = 2112;
      v53 = v15;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Finished downloading task %lu: %@", buf, 0x16u);
    }

    v16 = objc_autoreleasePoolPush();
    backgroundContext = [(PKPaymentWebService *)self backgroundContext];
    v18 = [backgroundContext backgroundDownloadRecordForTaskIdentifier:taskIdentifier];

    if (!v18)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        taskIdentifier2 = [taskCopy taskIdentifier];
        *buf = 134217984;
        *&buf[4] = taskIdentifier2;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "***** No match found for task %lu *****: FILE A BUG!", buf, 0xCu);
      }

      goto LABEL_48;
    }

    v50 = v16;
    taskType = [v18 taskType];
    response = [taskCopy response];
    if (taskType > 2)
    {
      if (taskType == 4)
      {
        [(PKWebService *)self logResponse:response withData:v12];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier3 = [taskCopy taskIdentifier];
          *buf = 134217984;
          *&buf[4] = taskIdentifier3;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling Device check in task %lu", buf, 0xCu);
        }

        [(PKPaymentWebService *)self _handleDeviceCheckInTask:taskCopy downloadRecord:v18 data:v12];
        goto LABEL_47;
      }

      if (taskType == 3)
      {
        v49 = v12;
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<omitted>: %lu bytes", objc_msgSend(v12, "length")];
        v25 = [v24 dataUsingEncoding:4];
        [(PKWebService *)self logResponse:response withData:v25];

        taskIdentifier4 = [taskCopy taskIdentifier];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = taskIdentifier4;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling remote asset task %lu", buf, 0xCu);
        }

        v27 = v18;
        remoteAssetsByTaskIdentifier = [v27 remoteAssetsByTaskIdentifier];
        v48 = taskIdentifier4;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:taskIdentifier4];
        v30 = [remoteAssetsByTaskIdentifier objectForKey:v29];

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
          passURL = [v27 passURL];
          *buf = 0;
          [(PKPaymentWebService *)self _handleRemoteAssetDownloadForManifestItem:v30 taskPassURL:passURL data:v49 shouldWriteData:1 error:buf];
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
      if (taskType == 1)
      {
        [(PKWebService *)self logResponse:response withData:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pushTopic = [v18 pushTopic];
          v16 = v50;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            taskIdentifier5 = [taskCopy taskIdentifier];
            *buf = 134218242;
            *&buf[4] = taskIdentifier5;
            v52 = 2112;
            v53 = pushTopic;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling passes query task %lu from push topic %@", buf, 0x16u);
          }

          [(PKPaymentWebService *)self _handlePassListDownloadTask:taskCopy data:v12 fromPushTopic:pushTopic];
          goto LABEL_32;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier6 = [taskCopy taskIdentifier];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 134218242;
          *&buf[4] = taskIdentifier6;
          v52 = 2112;
          v53 = v46;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Dropping response for task %lu of unrelated type %@", buf, 0x16u);
        }

        backgroundContext2 = [(PKPaymentWebService *)self backgroundContext];
        [backgroundContext2 removeBackgroundDownloadRecordForTaskIdentifier:taskIdentifier];

        [(PKPaymentWebService *)self _archiveBackgroundContext];
        context = [(PKPaymentWebService *)self context];
        v40 = context;
        v41 = &__block_literal_global_865;
        goto LABEL_46;
      }

      if (taskType == 2)
      {
        [(PKWebService *)self logResponse:response withData:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pushTopic = [v18 pushTopic];
          v16 = v50;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            taskIdentifier7 = [taskCopy taskIdentifier];
            *buf = 134218242;
            *&buf[4] = taskIdentifier7;
            v52 = 2112;
            v53 = pushTopic;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Handling pass download task %lu from push topic %@", buf, 0x16u);
          }

          [(PKPaymentWebService *)self _handlePassDownloadTask:taskCopy data:v12 fromPushTopic:pushTopic];
LABEL_32:

LABEL_48:
          objc_autoreleasePoolPop(v16);

          goto LABEL_49;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier8 = [taskCopy taskIdentifier];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 134218242;
          *&buf[4] = taskIdentifier8;
          v52 = 2112;
          v53 = v37;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Dropping response for task %lu of unrelated type %@", buf, 0x16u);
        }

        backgroundContext3 = [(PKPaymentWebService *)self backgroundContext];
        [backgroundContext3 removeBackgroundDownloadRecordForTaskIdentifier:taskIdentifier];

        [(PKPaymentWebService *)self _archiveBackgroundContext];
        context = [(PKPaymentWebService *)self context];
        v40 = context;
        v41 = &__block_literal_global_868;
LABEL_46:
        [context atomicallyUpdateEveryRegion:v41];

        [(PKPaymentWebService *)self _archiveContext];
LABEL_47:
        v16 = v50;
        goto LABEL_48;
      }
    }

    [(PKWebService *)self logResponse:response withData:v12];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier9 = [taskCopy taskIdentifier];
      *buf = 134217984;
      *&buf[4] = taskIdentifier9;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Unknown task type for task %lu", buf, 0xCu);
    }

    goto LABEL_47;
  }

LABEL_49:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  if (self->_backgroundSession == sessionCopy)
  {
    v11 = objc_autoreleasePoolPush();
    backgroundContext = [(PKPaymentWebService *)self backgroundContext];
    v13 = [backgroundContext backgroundDownloadRecordForTaskIdentifier:{objc_msgSend(taskCopy, "taskIdentifier")}];

    if ([v13 taskType] == 5)
    {
      v14 = v13;
      v15 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        credentialIdentifier = [v14 credentialIdentifier];
        *buf = 138412546;
        v23 = credentialIdentifier;
        v24 = 2048;
        taskIdentifier = [taskCopy taskIdentifier];
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Receiving response data for background credential registration task: %@ (%lu)", buf, 0x16u);
      }

      responseData = [v14 responseData];
      v18 = responseData;
      if (responseData)
      {
        v19 = [responseData mutableCopy];
        [v19 appendData:dataCopy];
        v20 = [v19 copy];
        [v14 setResponseData:v20];
      }

      else
      {
        [v14 setResponseData:dataCopy];
      }

      [(PKPaymentWebService *)self _archiveContext];
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PKPaymentWebService;
    [(PKWebService *)&v21 URLSession:sessionCopy dataTask:taskCopy didReceiveData:dataCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v108[3] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = taskCopy;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task Completed: %@", buf, 0xCu);
  }

  if (self->_backgroundSession != sessionCopy)
  {
    v84.receiver = self;
    v84.super_class = PKPaymentWebService;
    [(PKWebService *)&v84 URLSession:sessionCopy task:taskCopy didCompleteWithError:errorCopy];
    goto LABEL_65;
  }

  v12 = objc_autoreleasePoolPush();
  response = [taskCopy response];
  originalRequest = [taskCopy originalRequest];
  backgroundContext = [(PKPaymentWebService *)self backgroundContext];
  v15 = [backgroundContext backgroundDownloadRecordForTaskIdentifier:{objc_msgSend(taskCopy, "taskIdentifier")}];
  objc_opt_class();
  v82 = backgroundContext;
  v83 = v15;
  if (objc_opt_isKindOfClass())
  {
    statusCode = [response statusCode];
    v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (statusCode == 401)
    {
      if (v17)
      {
        taskIdentifier = [taskCopy taskIdentifier];
        *buf = 134217984;
        *&buf[4] = taskIdentifier;
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
        v103 = originalRequest;
        v104 = v83;
        v105 = backgroundContext;
        [(PKPaymentWebService *)self handleAuthenticationFailureWithCompletionHandler:v102];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          retryCount = [v83 retryCount];
          *buf = 134217984;
          *&buf[4] = retryCount;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request failed after %lu retries. Aborting.", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v17)
      {
        taskIdentifier2 = [taskCopy taskIdentifier];
        originalRequest2 = [taskCopy originalRequest];
        *buf = 134218242;
        *&buf[4] = taskIdentifier2;
        *&buf[12] = 2112;
        *&buf[14] = originalRequest2;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Task %lu completed: %@", buf, 0x16u);

        backgroundContext = v82;
      }

      v15 = v83;
    }
  }

  taskType = [v15 taskType];
  v23 = taskType;
  v81 = response;
  if (!errorCopy)
  {
    if (taskType != 3)
    {
      goto LABEL_29;
    }

LABEL_27:
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
    v34 = v83;
    [(PKPaymentRegisterCredentialResponse *)v34 removeRemoteURLAssetForTaskIdentifier:v33 didFail:errorCopy != 0];
    [(PKPaymentWebService *)self _archiveBackgroundContext];
    if (([(PKPaymentRegisterCredentialResponse *)v34 hasOutstandingRemoteAssetTasks]& 1) != 0)
    {
      v35 = v83;
LABEL_61:

      response = v81;
      backgroundContext = v82;
      goto LABEL_62;
    }

    v79 = v12;
    passURL = [(PKPaymentRegisterCredentialResponse *)v34 passURL];
    v75 = [(PKPaymentWebService *)self _passWithFileURL:passURL];
    hasFailedRequiredRemoteAssetDownloads = [(PKPaymentRegisterCredentialResponse *)v34 hasFailedRequiredRemoteAssetDownloads];
    v42 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (hasFailedRequiredRemoteAssetDownloads)
    {
      if (v42)
      {
        organizationName = [v75 organizationName];
        serialNumber = [v75 serialNumber];
        *buf = 138412546;
        *&buf[4] = organizationName;
        *&buf[12] = 2112;
        *&buf[14] = serialNumber;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "URLSession: Required remote assets failed to download for %@:%@ -- skipping pass ingestion", buf, 0x16u);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtURL:passURL error:0];

      pushTopic = [(PKPaymentRegisterCredentialResponse *)v34 pushTopic];
      context = [(PKPaymentWebService *)self context];
      v48 = context;
      if (pushTopic)
      {
        [context atomicallyUpdateRegionWithIdentifier:pushTopic updateBlock:&__block_literal_global_884];
      }

      else
      {
        [context atomicallyUpdateEveryRegion:&__block_literal_global_887];
      }

      [(PKPaymentWebService *)self _archiveContext];
      v65 = v75;
    }

    else
    {
      if (v42)
      {
        organizationName2 = [v75 organizationName];
        serialNumber2 = [v75 serialNumber];
        *buf = 138412546;
        *&buf[4] = organizationName2;
        *&buf[12] = 2112;
        *&buf[14] = serialNumber2;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "URLSession: Asset downloads complete for %@:%@ -- delivering pass", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);
      queue = dispatch_get_global_queue(21, 0);
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __60__PKPaymentWebService_URLSession_task_didCompleteWithError___block_invoke_880;
      v97[3] = &unk_1E79C9668;
      v98 = WeakRetained;
      selfCopy = self;
      v65 = v75;
      v100 = v75;
      v101 = passURL;
      v66 = v97;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __dispatch_async_ar_block_invoke_14;
      v107 = &unk_1E79C4428;
      v108[0] = v66;
      pushTopic = WeakRetained;
      dispatch_async(queue, buf);
    }

    goto LABEL_59;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    taskIdentifier3 = [taskCopy taskIdentifier];
    originalRequest3 = [taskCopy originalRequest];
    [originalRequest3 URL];
    selfCopy2 = self;
    v26 = sessionCopy;
    v28 = v27 = v12;
    localizedDescription = [errorCopy localizedDescription];
    *buf = 134218498;
    *&buf[4] = taskIdentifier3;
    backgroundContext = v82;
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    v107 = localizedDescription;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error performing background download task %lu: %@. %@", buf, 0x20u);

    response = v81;
    v12 = v27;
    sessionCopy = v26;
    self = selfCopy2;
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
      context3 = v30;
      context2 = [(PKPaymentWebService *)self context];
      [context2 atomicallyUpdateRegionWithIdentifier:context3 updateBlock:&__block_literal_global_876];

      backgroundContext = v82;
    }

    else
    {
      context3 = [(PKPaymentWebService *)self context];
      [context3 atomicallyUpdateEveryRegion:&__block_literal_global_879];
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
    action = 0;
    goto LABEL_53;
  }

LABEL_29:
  v35 = v83;
  if ([v83 taskType] == 4)
  {
    v78 = v12;
    v36 = v83;
    v37 = objc_loadWeakRetained(&self->_backgroundDelegate);
    if (errorCopy || ([v36 responseData], v67 = objc_claimAutoreleasedReturnValue(), +[PKWebServiceResponse responseWithData:](PKPaymentDeviceCheckInResponse, "responseWithData:", v67), v68 = objc_claimAutoreleasedReturnValue(), v67, !v68))
    {
      v38 = 0;
      action = 0;
    }

    else
    {
      action = [v68 action];

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
    selfCopy3 = self;
    v96 = v38;
    v94 = v35;
    v95 = action;
    v70 = v91;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke_14;
    v107 = &unk_1E79C4428;
    v108[0] = v70;
    v34 = v37;
    v33 = v35;
    dispatch_async(v69, buf);

    passURL = v92;
    v12 = v78;
LABEL_60:

    goto LABEL_61;
  }

  if (v23 == 5)
  {
    v79 = v12;
    v33 = v83;
    credentialIdentifier = [v33 credentialIdentifier];
    v50 = [PKPaymentRegisterCredentialResponse alloc];
    responseData = [v33 responseData];
    v52 = [(PKPaymentRegisterCredentialResponse *)v50 initWithData:responseData];

    v53 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier4 = [taskCopy taskIdentifier];
      *buf = 134218754;
      *&buf[4] = taskIdentifier4;
      *&buf[12] = 2112;
      *&buf[14] = credentialIdentifier;
      *&buf[22] = 2112;
      v107 = v52;
      LOWORD(v108[0]) = 2112;
      *(v108 + 2) = errorCopy;
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
    selfCopy4 = self;
    v34 = credentialIdentifier;
    v88 = v34;
    passURL = v52;
    v89 = passURL;
    v90 = errorCopy;
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
  [backgroundContext removeBackgroundDownloadRecordForTaskIdentifier:{objc_msgSend(taskCopy, "taskIdentifier", queue)}];
  [(PKPaymentWebService *)self _archiveBackgroundContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    backgroundContext2 = [(PKPaymentWebService *)self backgroundContext];
    remainingTasks = [backgroundContext2 remainingTasks];
    *buf = 138412290;
    *&buf[4] = remainingTasks;
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

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v11.receiver = self;
  v11.super_class = PKPaymentWebService;
  sessionCopy = session;
  [(PKWebService *)&v11 URLSession:sessionCopy didBecomeInvalidWithError:error];
  backgroundSession = self->_backgroundSession;

  if (backgroundSession == sessionCopy)
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

- (void)_startBackgroundURLSessionWithIdentifier:(id)identifier context:(id)context backgroundDelegate:(id)delegate completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  delegateCopy = delegate;
  completionCopy = completion;
  if (!self->_backgroundSession)
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Starting background URL session…", buf, 2u);
    }

    objc_storeStrong(&self->_backgroundContext, context);
    canBypassTrustValidation = [(PKPaymentWebService *)self canBypassTrustValidation];
    if (canBypassTrustValidation)
    {
      v16 = [identifierCopy stringByAppendingString:@"-nonEV"];
    }

    else
    {
      v16 = identifierCopy;
    }

    v17 = v16;
    v18 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:v16];
    [v18 set_overridesBackgroundSessionAutoRedirect:1];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"YES";
      if (canBypassTrustValidation)
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

    [v18 set_performsEVCertCheck:!canBypassTrustValidation];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v22 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:bundleIdentifier];
    [v18 set_appleIDContext:v22];
    if (objc_opt_respondsToSelector())
    {
      [delegateCopy paymentWebService:self willCreateSessionWithConfiguration:{v18, v17}];
    }

    v23 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v18 delegate:self delegateQueue:{self->_backgroundSessionDelegateQueue, v26}];
    backgroundSession = self->_backgroundSession;
    self->_backgroundSession = v23;

    objc_storeWeak(&self->_backgroundDelegate, delegateCopy);
    v25 = self->_backgroundSession;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __102__PKPaymentWebService__startBackgroundURLSessionWithIdentifier_context_backgroundDelegate_completion___block_invoke;
    v28[3] = &unk_1E79DBB58;
    v28[4] = self;
    [(NSURLSession *)v25 getTasksWithCompletionHandler:v28];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  context = [(PKPaymentWebService *)self context];
  configurationDate = [context configurationDate];

  if (configurationDate)
  {
    configuration = [context configuration];
    v5 = configuration == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_passWithFileURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [(NSMutableDictionary *)self->_passesByLocalURL objectForKey:lCopy];
  if (!v5)
  {
    v6 = [(PKObject *)PKPass createWithFileURL:lCopy warnings:0 error:0];
    if ([v6 passType] == 1 && (v7 = v6) != 0)
    {
      v5 = v7;
      secureElementIdentifiers = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
      [v5 updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];

      [(NSMutableDictionary *)self->_passesByLocalURL setObject:v5 forKey:lCopy];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = lCopy;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "*** ERROR ***: Couldn't find local pass %@ for downloaded asset.", &v11, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)_backgroundDownloadCloudStoreAssetsForItem:(id)item cloudStoreCoordinatorDelegate:(id)delegate
{
  itemCopy = item;
  delegateCopy = delegate;
  backgroundDownloadQueue = self->_backgroundDownloadQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKPaymentWebService__backgroundDownloadCloudStoreAssetsForItem_cloudStoreCoordinatorDelegate___block_invoke;
  v12[3] = &unk_1E79C4E00;
  v13 = itemCopy;
  v14 = delegateCopy;
  selfCopy = self;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_14;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = delegateCopy;
  v11 = itemCopy;
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

- (void)_handleRemoteAssetDownloadForManifestItem:(id)item taskPassURL:(id)l data:(id)data shouldWriteData:(BOOL)writeData error:(id *)error
{
  writeDataCopy = writeData;
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dataCopy = data;
  if (itemCopy)
  {
    v14 = [(PKPaymentWebService *)self _passWithFileURL:l];
    v15 = v14;
    if (v14)
    {
      dataAccessor = [v14 dataAccessor];
      secureElementIdentifiers = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
      v18 = [dataAccessor remoteAssetManagerForSEIDs:secureElementIdentifiers];

      v27 = 0;
      LOBYTE(secureElementIdentifiers) = [v18 addRemoteAssetData:dataCopy shouldWriteData:writeDataCopy forManifestItem:itemCopy error:&v27];
      v19 = v27;
      v20 = v27;
      [v18 cacheRemoteAssetData:dataCopy forManifestItem:itemCopy];
      if ((secureElementIdentifiers & 1) == 0)
      {
        if (error)
        {
          objc_storeStrong(error, v19);
        }

        v21 = PKLogFacilityTypeGetObject(7uLL);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

        if (v22)
        {
          userInfo = [v20 userInfo];
          v24 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v20;
          }

          localizedDescription = [v25 localizedDescription];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = localizedDescription;
            _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "*** ERROR ***: Could not add asset to pass: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_handleRemoteCloudStoreAssetForRecordName:(id)name taskRecord:(id)record data:(id)data shouldWriteData:(BOOL)writeData error:(id *)error
{
  writeDataCopy = writeData;
  dataCopy = data;
  recordCopy = record;
  nameCopy = name;
  remoteAssetsByRecordName = [recordCopy remoteAssetsByRecordName];
  v17 = [remoteAssetsByRecordName objectForKey:nameCopy];

  passURL = [recordCopy passURL];

  [(PKPaymentWebService *)self _handleRemoteAssetDownloadForManifestItem:v17 taskPassURL:passURL data:dataCopy shouldWriteData:writeDataCopy error:error];
}

- (void)_handlePassListDownloadTask:(id)task data:(id)data fromPushTopic:(id)topic
{
  v50 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dataCopy = data;
  topicCopy = topic;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__54;
  v45 = __Block_byref_object_dispose__54;
  v46 = 0;
  response = [taskCopy response];
  error = [taskCopy error];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke;
  v38[3] = &unk_1E79C8FA8;
  v40 = &v41;
  v13 = dataCopy;
  v39 = v13;
  [(PKPaymentWebService *)self _resultForResponse:response error:error successHandler:v38];

  devicePassSerialNumbers = [v42[5] devicePassSerialNumbers];
  if (devicePassSerialNumbers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);
    v16 = dispatch_get_global_queue(21, 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke_2;
    v33[3] = &unk_1E79C9668;
    v34 = WeakRetained;
    selfCopy = self;
    v36 = devicePassSerialNumbers;
    v37 = topicCopy;
    v17 = v33;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_14;
    block[3] = &unk_1E79C4428;
    v48 = v17;
    v18 = WeakRetained;
    dispatch_async(v16, block);
  }

  passURLs = [v42[5] passURLs];
  if ([passURLs count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = passURLs;
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

          [(PKPaymentWebService *)self _backgroundDownloadPassAtURL:*(*(&v29 + 1) + 8 * i) fromPushTopic:topicCopy];
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

  lastUpdatedTag = [v42[5] lastUpdatedTag];
  v25 = lastUpdatedTag;
  if (topicCopy && lastUpdatedTag)
  {
    context = [(PKPaymentWebService *)self context];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__PKPaymentWebService__handlePassListDownloadTask_data_fromPushTopic___block_invoke_912;
    v27[3] = &unk_1E79DB510;
    v28 = v25;
    [context atomicallyUpdateRegionWithIdentifier:topicCopy updateBlock:v27];

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

- (void)_handlePassDownloadTask:(id)task data:(id)data fromPushTopic:(id)topic
{
  topicCopy = topic;
  dataCopy = data;
  taskCopy = task;
  response = [taskCopy response];
  error = [taskCopy error];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKPaymentWebService__handlePassDownloadTask_data_fromPushTopic___block_invoke;
  v14[3] = &unk_1E79DBBD0;
  v14[4] = self;
  v15 = topicCopy;
  v13 = topicCopy;
  [(PKPaymentWebService *)self _passWithData:dataCopy response:response error:error completion:v14];
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

- (void)_handleDeviceCheckInTask:(id)task downloadRecord:(id)record data:(id)data
{
  recordCopy = record;
  dataCopy = data;
  if (dataCopy)
  {
    backgroundDownloadQueue = self->_backgroundDownloadQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PKPaymentWebService__handleDeviceCheckInTask_downloadRecord_data___block_invoke;
    v11[3] = &unk_1E79C4E00;
    v12 = recordCopy;
    v13 = dataCopy;
    selfCopy = self;
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

- (void)_handleRetryAfterTSMSyncForPushTopic:(id)topic withRequest:(id)request taskIdentifier:(unint64_t)identifier completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  requestCopy = request;
  handlerCopy = handler;
  v13 = [(PKWebService *)self webServiceTaskIdentifierForTaskIdentifier:identifier];
  v14 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_delegateLock);
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v16 = [allObjects copy];

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
  v26 = requestCopy;
  v27 = handlerCopy;
  v28 = v13;
  v23 = handlerCopy;
  v24 = requestCopy;
  [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self queueConnectionToTrustedServiceManagerForPushTopic:topicCopy withCompletion:v25];
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

- (void)_handleRetryAfterRegisterWithRequest:(id)request response:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
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
  v15 = requestCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  [(PKPaymentWebService *)self _registerIfNeededWithResponse:responseCopy task:0 isRedirect:1 completion:v14];
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

- (void)_handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = PKLogFacilityTypeGetObject(0x10uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Enrolling Apple Pay Trust Key", buf, 2u);
  }

  hTTPBody = [requestCopy HTTPBody];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentWebService__handleRetryAfterApplePayTrustEnrollmentWithOriginalRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E79DBBF8;
  v13[4] = self;
  v14 = requestCopy;
  v15 = hTTPBody;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = hTTPBody;
  v12 = requestCopy;
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

- (void)_registerIfNeededWithResponse:(id)response task:(id)task isRedirect:(BOOL)redirect completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  objc_initWeak(&location, task);
  completionCopy = completion;
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
  v19 = [responseCopy pk_valueForHTTPHeaderField:@"BrokerURL"];
  v20 = [v18 URLWithString:v19];

  if (v17)
  {
    goto LABEL_5;
  }

  if (v20 && redirect)
  {
    v21 = 0;
    v22 = @"Server requested registration during HTTP Redirect";
  }

  else
  {
    v23 = MEMORY[0x1E695DFF8];
    v24 = [responseCopy pk_valueForHTTPHeaderField:@"regionbrokerurl"];
    v25 = [v23 URLWithString:v24];

    v26 = [responseCopy pk_valueForHTTPHeaderField:@"x-pod-region"];
    context = [(PKPaymentWebService *)self context];
    v28 = [context regionForIdentifier:v26];
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

    targetDevice = [(PKPaymentWebService *)self targetDevice];
    if (objc_opt_respondsToSelector())
    {
      v31 = v36;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke;
      v36[3] = &unk_1E79C8E90;
      v36[4] = completionCopy;
      [targetDevice performDeviceRegistrationForReason:v22 brokerURL:v20 completion:v36];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_948;
        v33[3] = &unk_1E79DBC20;
        v34 = completionCopy;
        [(PKPaymentWebService *)self registerDeviceAtBrokerURL:v20 consistencyCheckResults:0 completion:v33];
        v32 = &v34;
        goto LABEL_19;
      }

      v31 = v35;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __80__PKPaymentWebService__registerIfNeededWithResponse_task_isRedirect_completion___block_invoke_946;
      v35[3] = &unk_1E79D62F0;
      v35[4] = completionCopy;
      [targetDevice performDeviceRegistrationReturningContextForReason:v22 brokerURL:v20 completion:v35];
    }

    v32 = (v31 + 4);
LABEL_19:

    goto LABEL_20;
  }

LABEL_5:
  (*(completionCopy + 2))(completionCopy, 0);
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

- (void)_applePayTrustPublicKeyHashWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Fetching Apple Pay Trust key from NearField", buf, 2u);
    }

    targetDevice = [(PKPaymentWebService *)self targetDevice];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__PKPaymentWebService__applePayTrustPublicKeyHashWithCompletion___block_invoke;
    v7[3] = &unk_1E79C4950;
    v7[4] = self;
    v8 = completionCopy;
    [targetDevice applePayTrustKeyForIdentifier:@"com.apple.wallet.applepaytrust" completion:v7];
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

- (id)_downloadPassesWithURLs:(id)ls
{
  v24 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v5 = dispatch_queue_create("passQueue", 0);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = lsCopy;
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

- (void)_deviceProvisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletion:(id)completion
{
  metadataCopy = metadata;
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67240192;
    v8[1] = metadataCopy;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Requesting device provisioning data including metadata: %{public}d", v8, 8u);
  }

  [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice paymentWebService:self provisioningDataIncludingDeviceMetadata:metadataCopy withCompletionHandler:completionCopy];
}

- (unint64_t)_downloadPassAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v9 = objc_alloc_init(PKPaymentWebServiceRequest);
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:v9];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v11 = [(PKWebServiceRequest *)v9 _murlRequestWithURL:lCopy appleAccountInformation:_appleAccountInformation];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__PKPaymentWebService__downloadPassAtURL_completion___block_invoke;
  v14[3] = &unk_1E79CD770;
  v14[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  [(PKWebService *)self performRequest:v11 taskIdentifier:nextTaskID completionHandler:v14];

  return nextTaskID;
}

- (void)_passWithData:(id)data response:(id)response error:(id)error completion:(id)completion
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
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
  v14 = dataCopy;
  selfCopy = self;
  v23 = &v24;
  v21 = v14;
  v15 = [(PKPaymentWebService *)self _resultForResponse:responseCopy error:errorCopy successHandler:v20];
  if (v15 != 1)
  {
    if (!errorCopy)
    {
      goto LABEL_7;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A978]])
    {
LABEL_8:

      goto LABEL_9;
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"PKWebServiceErrorDomain"])
    {

      goto LABEL_8;
    }

    domain3 = [errorCopy domain];
    v19 = [domain3 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

    if ((v19 & 1) == 0)
    {
LABEL_7:
      [(PKPaymentWebService *)self _errorWithResult:v15 data:v14];
      errorCopy = domain = errorCopy;
      goto LABEL_8;
    }
  }

LABEL_9:
  completionCopy[2](completionCopy, v15, v25[5], errorCopy);

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

- (void)_passOwnershipTokenForPaymentCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  if (!completionCopy)
  {
    goto LABEL_14;
  }

  if ([credentialCopy isRemoteCredential])
  {
    remoteCredential = [credentialCopy remoteCredential];
  }

  else if ([credentialCopy isAccountCredential])
  {
    remoteCredential = [credentialCopy accountCredential];
  }

  else
  {
    if (![credentialCopy isPeerPaymentCredential])
    {
LABEL_12:
      completionCopy[2](completionCopy, 0);
      goto LABEL_14;
    }

    remoteCredential = [credentialCopy peerPaymentCredential];
  }

  v9 = remoteCredential;
  ownershipTokenIdentifier = [remoteCredential ownershipTokenIdentifier];

  if (!ownershipTokenIdentifier)
  {
    goto LABEL_12;
  }

  deviceName = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceName];
  v12 = [deviceName isEqualToString:@"Apple Watch"];

  if (v12 && (PKRunningInPassd() & 1) == 0)
  {
    v14 = +[PKPaymentService paymentService];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke;
    v18[3] = &unk_1E79DBC98;
    v19 = ownershipTokenIdentifier;
    v20 = completionCopy;
    v18[4] = self;
    v15 = ownershipTokenIdentifier;
    [v14 passOwnershipTokenWithIdentifier:v15 completion:v18];
  }

  else
  {
    targetDevice = self->_targetDevice;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PKPaymentWebService__passOwnershipTokenForPaymentCredential_completion___block_invoke_3;
    v16[3] = &unk_1E79C50E0;
    v17 = completionCopy;
    [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice paymentWebService:self passOwnershipTokenWithIdentifier:ownershipTokenIdentifier completion:v16];
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

- (void)_storePassOwnershipToken:(id)token withIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  if (tokenCopy && identifierCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice paymentWebService:self storePassOwnershipToken:tokenCopy withIdentifier:identifierCopy];
    }

    else
    {
      v7 = +[PKPaymentService paymentService];
      [v7 storePassOwnershipToken:tokenCopy withIdentifier:identifierCopy];
    }
  }
}

- (unint64_t)_resultForResponse:(id)response error:(id)error successHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusCode = [responseCopy statusCode];
    if (statusCode == 207 || statusCode == 200)
    {
      v12 = handlerCopy[2](handlerCopy);
    }

    else
    {
      v12 = [(PKPaymentWebService *)self _resultForUnexpectedStatusCode:statusCode];
    }

    v14 = v12;
  }

  else
  {
    if (errorCopy)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [responseCopy URL];
        absoluteString = [v16 absoluteString];
        v18 = 138412546;
        v19 = absoluteString;
        v20 = 2112;
        v21 = errorCopy;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Error executing request: %@ error: %@", &v18, 0x16u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)_errorWithResult:(unint64_t)result response:(id)response data:(id)data
{
  responseCopy = response;
  v7 = 0;
  if (result <= 3 && result != 1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = PKLocalizedPaymentString(&cfstr_UnexpectedErro.isa, 0);
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];

    if (responseCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
        [v8 setObject:v10 forKeyedSubscript:@"PKErrorHTTPResponseStatusCodeKey"];
      }
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentWebServiceErrorDomain" code:result userInfo:v8];
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

- (id)_movePassToDownloadCache:(id)cache
{
  v26 = *MEMORY[0x1E69E9840];
  serializedFileWrapper = [cache serializedFileWrapper];
  v5 = [objc_alloc(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:serializedFileWrapper];
  _downloadCacheLocation = [(PKPaymentWebService *)self _downloadCacheLocation];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [_downloadCacheLocation path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = 0;
    v12 = [defaultManager2 createDirectoryAtURL:_downloadCacheLocation withIntermediateDirectories:1 attributes:0 error:&v23];
    v10 = v23;

    if ((v12 & 1) == 0 && v10)
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = _downloadCacheLocation;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Could not create download cache at %@", buf, 0xCu);
      }
    }
  }

  v14 = CFUUIDCreate(0);
  v15 = CFUUIDCreateString(*MEMORY[0x1E695E480], v14);
  v16 = [_downloadCacheLocation URLByAppendingPathComponent:v15];
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
  secureElementIdentifiers = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice secureElementIdentifiers];
  [v20 updateDevicePaymentApplicationsWithSecureElementIdentifiers:secureElementIdentifiers];

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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _downloadCacheLocation = [(PKPaymentWebService *)self _downloadCacheLocation];
  path = [_downloadCacheLocation path];
  v6 = [defaultManager enumeratorAtPath:path];

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
        [defaultManager removeItemAtPath:v12 error:{0, v14}];
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
  context = [(PKPaymentWebService *)self context];
  if (context)
  {
    v5 = context;
    archiver = [(PKPaymentWebService *)self archiver];
    [archiver archiveContext:v5];

    context = v5;
  }
}

- (void)_archiveBackgroundContext
{
  archiver = [(PKPaymentWebService *)self archiver];
  backgroundContext = [(PKPaymentWebService *)self backgroundContext];
  [archiver archiveBackgroundContext:backgroundContext];
}

- (PKPaymentWebServiceBackgroundDelegate)backgroundDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);

  return WeakRetained;
}

- (unint64_t)_performAccountApplePayTrustProtocolRequest:(id)request originalRequest:(id)originalRequest taskID:(unint64_t)d completion:(id)completion
{
  originalRequestCopy = originalRequest;
  completionCopy = completion;
  requestCopy = request;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__PKPaymentWebService_PKAccount___performAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke;
  v18[3] = &unk_1E79DDE10;
  v19 = originalRequestCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = originalRequestCopy;
  v16 = [(PKPaymentWebService *)self _performAccountRequest:requestCopy taskID:d responseClass:v13 completion:v18];

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

- (unint64_t)_performOptionalAccountApplePayTrustProtocolRequest:(id)request originalRequest:(id)originalRequest taskID:(unint64_t)d completion:(id)completion
{
  requestCopy = request;
  originalRequestCopy = originalRequest;
  completionCopy = completion;
  if (!d)
  {
    d = [(PKWebService *)self nextTaskID];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PKPaymentWebService_PKAccount___performOptionalAccountApplePayTrustProtocolRequest_originalRequest_taskID_completion___block_invoke;
  v16[3] = &unk_1E79D1CC8;
  v16[4] = self;
  v17 = originalRequestCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = originalRequestCopy;
  [(PKWebService *)self performRequest:requestCopy taskIdentifier:d completionHandler:v16];

  return d;
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

- (unint64_t)_performAccountRequest:(id)request account:(id)account request:(id)a5 taskID:(unint64_t)d responseClass:(Class)class completion:(id)completion
{
  requestCopy = request;
  accountCopy = account;
  v16 = a5;
  completionCopy = completion;
  if (!d)
  {
    d = [(PKWebService *)self nextTaskID];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__PKPaymentWebService_PKAccount___performAccountRequest_account_request_taskID_responseClass_completion___block_invoke;
  v22[3] = &unk_1E79DDE88;
  v22[4] = self;
  v23 = accountCopy;
  v25 = completionCopy;
  classCopy = class;
  v24 = v16;
  v18 = completionCopy;
  v19 = v16;
  v20 = accountCopy;
  [(PKWebService *)self performRequest:requestCopy taskIdentifier:d completionHandler:v22];

  return d;
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

- (unint64_t)_performAccountRequest:(id)request responseClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = [(PKPaymentWebService *)self _performAccountRequest:requestCopy taskID:[(PKWebService *)self nextTaskID] responseClass:class completion:completionCopy];

  return v10;
}

- (unint64_t)_performAccountRequest:(id)request account:(id)account responseClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  requestCopy = request;
  v13 = [(PKPaymentWebService *)self _performAccountRequest:requestCopy account:accountCopy request:0 taskID:[(PKWebService *)self nextTaskID] responseClass:class completion:completionCopy];

  return v13;
}

- (unint64_t)_performAccountRequest:(id)request request:(id)a4 responseClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  v11 = a4;
  requestCopy = request;
  v13 = [(PKPaymentWebService *)self _performAccountRequest:requestCopy account:0 request:v11 taskID:[(PKWebService *)self nextTaskID] responseClass:class completion:completionCopy];

  return v13;
}

- (unint64_t)generateTopUpTokenWithRequest:(id)request forAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v13 = [(PKPaymentWebService *)self _performAccountRequest:v12 account:accountCopy responseClass:objc_opt_class() completion:completionCopy];
  return v13;
}

- (unint64_t)resolveStorefrontCountryMismatchWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performAccountRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)_performApplyRequest:(id)request responseClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  nextTaskID = [(PKWebService *)self nextTaskID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PKPaymentWebService_PKApplyWebService___performApplyRequest_responseClass_completion___block_invoke;
  v13[3] = &unk_1E79C90C8;
  v14 = completionCopy;
  classCopy = class;
  v13[4] = self;
  v11 = completionCopy;
  [(PKWebService *)self performRequest:requestCopy taskIdentifier:nextTaskID completionHandler:v13];

  return nextTaskID;
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

- (unint64_t)applicationsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  applyServiceURL = [requestCopy applyServiceURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [requestCopy _urlRequestWithServiceURL:applyServiceURL appleAccountInformation:_appleAccountInformation];

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PKPaymentWebService_PKApplyWebService__applicationsWithRequest_completion___block_invoke;
  v15[3] = &unk_1E79E2730;
  v16 = completionCopy;
  v12 = completionCopy;
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

- (unint64_t)deleteApplicationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)createWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  applyServiceURL = [requestCopy applyServiceURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v10 = [requestCopy _urlRequestWithServiceURL:applyServiceURL appleAccountInformation:_appleAccountInformation];

  v11 = [(PKPaymentWebService *)self _performApplyRequest:v10 responseClass:objc_opt_class() completion:completionCopy];
  return v11;
}

- (unint64_t)applyWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)submitDocumentsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)submitVerificationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)resendVerificationRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)termsDataWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  baseURL = [requestCopy baseURL];

  if (!baseURL)
  {
    context = [(PKPaymentWebService *)self context];
    primaryRegion = [context primaryRegion];
    applyServiceURL = [primaryRegion applyServiceURL];
    [requestCopy setBaseURL:applyServiceURL];
  }

  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v13 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v14 = [(PKPaymentWebService *)self _performApplyRequest:v13 responseClass:objc_opt_class() completion:completionCopy];
  return v14;
}

- (unint64_t)featureTermsDataWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  applyServiceURL = [primaryRegion applyServiceURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [requestCopy _urlRequestWithServiceURL:applyServiceURL appleAccountInformation:_appleAccountInformation];

  v13 = [(PKPaymentWebService *)self _performApplyRequest:v12 responseClass:objc_opt_class() completion:completionCopy];
  return v13;
}

- (unint64_t)shownTermsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)submitTermsWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v9 = [requestCopy _urlRequestWithAppleAccountInformation:_appleAccountInformation];

  v10 = [(PKPaymentWebService *)self _performApplyRequest:v9 responseClass:objc_opt_class() completion:completionCopy];
  return v10;
}

- (unint64_t)augmentedProductWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  context = [(PKPaymentWebService *)self context];
  primaryRegion = [context primaryRegion];
  [(PKPaymentWebService *)self _updateRequestWithCurrentTargetDevice:requestCopy];
  applyServiceURL = [primaryRegion applyServiceURL];
  _appleAccountInformation = [(PKPaymentWebService *)self _appleAccountInformation];
  v12 = [requestCopy _urlRequestWithServiceURL:applyServiceURL appleAccountInformation:_appleAccountInformation];

  v13 = [(PKPaymentWebService *)self _performApplyRequest:v12 responseClass:objc_opt_class() completion:completionCopy];
  return v13;
}

@end