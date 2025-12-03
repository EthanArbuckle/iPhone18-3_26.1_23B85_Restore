@interface PDPushProvisioningManager
- (BOOL)_companionHasProvisionedPassForCredentialHash:(id)hash;
- (BOOL)_hasProvisionedPassForCredentialHash:(id)hash;
- (BOOL)_isPushProvisioningSupportedForCurrentDeviceRequiresSimultaneousRequestRouting:(BOOL)routing checkPassCount:(BOOL)count passCount:(unint64_t)passCount;
- (PDPushProvisioningManager)initWithDataBaseManager:(id)manager cardFileManager:(id)fileManager userNotificationManager:(id)notificationManager paymentWebServiceCoordinator:(id)coordinator familyCircleManager:(id)circleManager secureElement:(id)element assertionManager:(id)assertionManager deviceRegistrationServiceCoordinator:(id)self0 notificationStreamManager:(id)self1 pendingProvisioningManager:(id)self2;
- (id)_encryptProvisioningTarget:(id)target devSigned:(BOOL)signed certificateChain:(id)chain error:(id *)error;
- (void)_handleExpectedPassUpdateForEligibilityResponse:(id)response completion:(id)completion;
- (void)_handleUnsupportedDeviceResponse:(id)response completion:(id)completion;
- (void)_isPushProvisioningSupportedForConfiguration:(id)configuration completion:(id)completion;
- (void)_prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle determineTargetDevice:(BOOL)device completion:(id)completion;
- (void)_queue_checkAvailablePushProvisioningSharingIdentifiersAndProvisionWithCompletion:(id)completion;
- (void)_queue_insertOrUpdatePushProvisioningSharingMetadata:(id)metadata;
- (void)_queue_performBackgroundPushProvisioningWithTransaction:(id)transaction;
- (void)_webServiceForTargetDevice:(unint64_t)device completion:(id)completion;
- (void)configurePushProvisioningConfiguration:(id)configuration completion:(id)completion;
- (void)encryptProvisioningTarget:(id)target completion:(id)completion;
- (void)isPushProvisioningSupportedForConfiguration:(id)configuration completion:(id)completion;
- (void)provideEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier withCompletion:(id)completion;
- (void)provisionAvailablePushProvisioningSharingIdentifiers;
- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion;
- (void)pushProvisioningSharingIdentifiers:(id)identifiers;
- (void)redeemPaymentShareableCredential:(id)credential completion:(id)completion;
- (void)redeemPaymentShareableCredential:(id)credential provisioningRequestForEligibilityResponse:(id)response completion:(id)completion;
- (void)redeemProvisioningMetadata:(id)metadata completion:(id)completion;
- (void)redeemProvisioningSharingIdentifier:(id)identifier completion:(id)completion;
- (void)statusForShareableCredentials:(id)credentials completion:(id)completion;
@end

@implementation PDPushProvisioningManager

- (PDPushProvisioningManager)initWithDataBaseManager:(id)manager cardFileManager:(id)fileManager userNotificationManager:(id)notificationManager paymentWebServiceCoordinator:(id)coordinator familyCircleManager:(id)circleManager secureElement:(id)element assertionManager:(id)assertionManager deviceRegistrationServiceCoordinator:(id)self0 notificationStreamManager:(id)self1 pendingProvisioningManager:(id)self2
{
  managerCopy = manager;
  obj = fileManager;
  fileManagerCopy = fileManager;
  notificationManagerCopy = notificationManager;
  coordinatorCopy = coordinator;
  circleManagerCopy = circleManager;
  elementCopy = element;
  assertionManagerCopy = assertionManager;
  serviceCoordinatorCopy = serviceCoordinator;
  streamManagerCopy = streamManager;
  provisioningManagerCopy = provisioningManager;
  v43.receiver = self;
  v43.super_class = PDPushProvisioningManager;
  v18 = [(PDPushProvisioningManager *)&v43 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_databaseManager, manager);
    objc_storeStrong(&v19->_cardFileManager, obj);
    objc_storeStrong(&v19->_webServiceCoordinator, coordinator);
    objc_storeStrong(&v19->_secureElement, element);
    objc_storeStrong(&v19->_userNotificationManager, notificationManager);
    objc_storeStrong(&v19->_familyCircleManager, circleManager);
    objc_storeStrong(&v19->_deviceRegistrationServiceCoordinator, serviceCoordinator);
    objc_storeStrong(&v19->_notificationStreamManager, streamManager);
    objc_storeStrong(&v19->_pendingProvisioningManager, provisioningManager);
    objc_storeStrong(&v19->_assertionManager, assertionManager);
    v19->_companionWebServiceLock._os_unfair_lock_opaque = 0;
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.passd.pushprovisioningmanager.work", v20);
    workQueue = v19->_workQueue;
    v19->_workQueue = v21;

    v23 = dispatch_queue_create("com.apple.passd.pushprovisioningmanager.reply", v20);
    replyQueue = v19->_replyQueue;
    v19->_replyQueue = v23;

    v25 = v19->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FA7B4;
    block[3] = &unk_10083C470;
    v42 = v19;
    v26 = v25;
    v27 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
    dispatch_async(v26, v27);
  }

  return v19;
}

- (void)isPushProvisioningSupportedForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FA86C;
    v8[3] = &unk_100845898;
    v8[4] = self;
    v9 = completionCopy;
    [(PDPushProvisioningManager *)self _isPushProvisioningSupportedForConfiguration:configuration completion:v8];
  }
}

- (void)_isPushProvisioningSupportedForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  secureElementPassConfiguration = [configurationCopy secureElementPassConfiguration];
  v9 = objc_alloc_init(PKProvisioningRequirementOracle);
  v10 = [v9 requirementsForAddSecureElementPassConfiguration:secureElementPassConfiguration];
  recoverableRequirements = [v9 recoverableRequirements];
  v12 = [v10 requirementsByRemovingRequirements:recoverableRequirements];

  v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000FAC80;
  v34[3] = &unk_10083C848;
  v34[4] = self;
  [v13 addOperation:v34];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000FAD60;
  v31[3] = &unk_10083E620;
  v31[4] = self;
  v14 = v12;
  v32 = v14;
  v33 = v37;
  [v13 addOperation:v31];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000FAF64;
  v25[3] = &unk_100845960;
  v15 = configurationCopy;
  v26 = v15;
  selfCopy = self;
  v16 = v14;
  v28 = v16;
  v30 = v35;
  v17 = secureElementPassConfiguration;
  v29 = v17;
  [v13 addOperation:v25];
  v18 = +[NSNull null];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000FB2FC;
  v21[3] = &unk_100845988;
  v23 = v37;
  v24 = v35;
  v19 = completionCopy;
  v22 = v19;
  v20 = [v13 evaluateWithInput:v18 completion:v21];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
}

- (BOOL)_isPushProvisioningSupportedForCurrentDeviceRequiresSimultaneousRequestRouting:(BOOL)routing checkPassCount:(BOOL)count passCount:(unint64_t)passCount
{
  countCopy = count;
  routingCopy = routing;
  if (!PKSecureElementIsAvailable())
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v10 = "Push provisioning: Device does not support push provisioning.";
      v11 = &v19;
      goto LABEL_10;
    }

LABEL_11:

    return 0;
  }

  if (PKIsSRD())
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v10 = "Push provisioning: Device does not support push provisioning - is SRD";
      v11 = &v18;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (PKIsBeneficiaryAccount())
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Push provisioning: Device does not support push provisioning - is beneficiary account";
      v11 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (routingCopy && (PKNearFieldSupportsSimultaneousRequestRouting() & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = 0;
    v10 = "Push provisioning: Device does not support push provisioning - device doesn't support unified access";
    v11 = &v16;
    goto LABEL_10;
  }

  if (!countCopy || !PKDisableDynamicSEAllocation())
  {
    return 1;
  }

  countActiveSecureElementPasses = [(PDDatabaseManager *)self->_databaseManager countActiveSecureElementPasses];
  v14 = PKMaxPaymentCards();
  result = 1;
  if (v14 && countActiveSecureElementPasses + passCount > v14)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 0;
    v10 = "Push provisioning: Device does not support push provisioning - max pass count reached";
    v11 = &v15;
    goto LABEL_10;
  }

  return result;
}

- (void)pushProvisioningSharingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  webServiceCoordinator = self->_webServiceCoordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FB748;
  v7[3] = &unk_1008459D8;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v7];
}

- (void)statusForShareableCredentials:(id)credentials completion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = credentialsCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * v12) status];
        if (!PKPushProvisioningSharingStatusIsTerminal())
        {

          webServiceCoordinator = self->_webServiceCoordinator;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1000FBA80;
          v16[3] = &unk_100845A28;
          v17 = v8;
          selfCopy = self;
          v19 = completionCopy;
          [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v16];

          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already at final state: completing", buf, 2u);
  }

  v14 = PKAggregateSharingStatusForShareableCredentials();
  (*(completionCopy + 2))(completionCopy, v14, v8, 0);
LABEL_13:
}

- (void)provideEncryptedPushProvisioningTarget:(id)target sharingInstanceIdentifier:(id)identifier withCompletion:(id)completion
{
  targetCopy = target;
  identifierCopy = identifier;
  completionCopy = completion;
  webServiceCoordinator = self->_webServiceCoordinator;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000FC250;
  v15[3] = &unk_100845A28;
  v16 = targetCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = targetCopy;
  [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v15];
}

- (void)pushProvisioningNoncesWithCredentialCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  webServiceCoordinator = self->_webServiceCoordinator;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FC3CC;
  v9[3] = &unk_100845B18;
  v10 = completionCopy;
  countCopy = count;
  v9[4] = self;
  v8 = completionCopy;
  [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v9];
}

- (void)configurePushProvisioningConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_100005AB0;
  v56[4] = sub_10000B164;
  v57 = 0;
  identityDocumentConfiguration = [configurationCopy identityDocumentConfiguration];
  selfCopy = self;
  v25 = v7;

  if (identityDocumentConfiguration)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000FCCFC;
    v53[3] = &unk_10083E620;
    v53[4] = self;
    v54 = configurationCopy;
    v55 = v56;
    [v7 addOperation:v53];
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000FCE08;
  v52[3] = &unk_10083EC68;
  v52[4] = self;
  v52[5] = v56;
  [v7 addOperation:v52];
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000FD008;
  v43[3] = &unk_10083F7B0;
  v43[4] = self;
  v9 = configurationCopy;
  v44 = v9;
  v45 = v50;
  v46 = v48;
  v47 = v56;
  [v7 addOperation:v43];
  shareablePassConfiguration = [v9 shareablePassConfiguration];
  v22 = shareablePassConfiguration;
  if (shareablePassConfiguration)
  {
    v11 = [shareablePassConfiguration primaryAction] == 1;
  }

  else
  {
    v11 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  metadataProviders = [v9 metadataProviders];
  v13 = [metadataProviders countByEnumeratingWithState:&v39 objects:v58 count:16];
  if (v13)
  {
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(metadataProviders);
        }

        provisioningTarget = [*(*(&v39 + 1) + 8 * i) provisioningTarget];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000FD22C;
        v31[3] = &unk_100845C08;
        v38 = v11;
        v35 = v50;
        v36 = v48;
        v17 = provisioningTarget;
        v32 = v17;
        v33 = selfCopy;
        v37 = v56;
        v34 = v9;
        [v25 addOperation:v31];
      }

      v13 = [metadataProviders countByEnumeratingWithState:&v39 objects:v58 count:16];
    }

    while (v13);
  }

  v18 = +[NSNull null];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000FD7E8;
  v26[3] = &unk_100845C58;
  v19 = v9;
  v30 = v56;
  v27 = v19;
  v28 = selfCopy;
  v20 = completionCopy;
  v29 = v20;
  v21 = [v25 evaluateWithInput:v18 completion:v26];

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v56, 8);
}

- (void)_queue_insertOrUpdatePushProvisioningSharingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [metadataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(metadataCopy);
        }

        v9 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePushProvisioningSharingMetadata:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [metadataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)provisionAvailablePushProvisioningSharingIdentifiers
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Push provisioning: provisioning pending sharing instance identifiers", buf, 2u);
  }

  v4 = PDOSTransactionCreate("PDPushProvisioningManager");
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FDB48;
  v7[3] = &unk_10083C420;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)_queue_performBackgroundPushProvisioningWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_isUpdatingPushProvisioningSharingIdentifier)
  {
    self->_didDeferUpdatingSharingIdentifiers = 1;
  }

  else
  {
    self->_isUpdatingPushProvisioningSharingIdentifier = 1;
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push provisioning: Performing background push provisioning", buf, 2u);
    }

    if (!transactionCopy)
    {
      transactionCopy = PDOSTransactionCreate("PDPushProvisioningManager.updating_sharing_identifier");
    }

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000FDD00;
    v14 = &unk_100845C80;
    selfCopy = self;
    transactionCopy = transactionCopy;
    v16 = transactionCopy;
    v6 = objc_retainBlock(&v11);
    v7 = [NSMutableSet alloc];
    selfCopy = [(PDDatabaseManager *)self->_databaseManager pushProvisioningSharingMetadataWithStatus:1, v11, v12, v13, v14, selfCopy];
    v9 = [v7 initWithSet:selfCopy];
    availableSharingMetaData = self->_availableSharingMetaData;
    self->_availableSharingMetaData = v9;

    if (self->_shouldFetchSharingIdentifiersFromServer || [(NSMutableSet *)self->_availableSharingMetaData count])
    {
      [(PDPushProvisioningManager *)self _queue_checkAvailablePushProvisioningSharingIdentifiersAndProvisionWithCompletion:v6];
    }

    else
    {
      (v6[2])(v6, 1);
    }
  }
}

- (void)_queue_checkAvailablePushProvisioningSharingIdentifiersAndProvisionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push provisioning: using new provisioning coordinatoor", buf, 2u);
  }

  shouldFetchSharingIdentifiersFromServer = self->_shouldFetchSharingIdentifiersFromServer;
  self->_shouldFetchSharingIdentifiersFromServer = 0;
  if (shouldFetchSharingIdentifiersFromServer)
  {
    v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = sub_100005AB0;
    v19 = sub_10000B164;
    v20 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FE078;
    v14[3] = &unk_10083C848;
    v14[4] = self;
    [v7 addOperation:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000FE22C;
    v13[3] = &unk_10083EC68;
    v13[4] = self;
    v13[5] = buf;
    [v7 addOperation:v13];
    v8 = +[NSNull null];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FE6C8;
    v10[3] = &unk_100845D70;
    v10[4] = self;
    v12 = buf;
    v11 = completionCopy;
    v9 = [v7 evaluateWithInput:v8 completion:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push provisioning: skipping check because pending push provisioning credentials are handled by the pending provisioning manager", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)encryptProvisioningTarget:(id)target completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FE830;
  v7[3] = &unk_100845D98;
  completionCopy = completion;
  v6 = completionCopy;
  [(PDPushProvisioningManager *)self _prepareProvisioningTarget:target checkFamilyCircle:0 determineTargetDevice:0 completion:v7];
}

- (void)_prepareProvisioningTarget:(id)target checkFamilyCircle:(BOOL)circle determineTargetDevice:(BOOL)device completion:(id)completion
{
  targetCopy = target;
  completionCopy = completion;
  targetDevice = [targetCopy targetDevice];
  v12 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100005AB0;
  v48[4] = sub_10000B164;
  v49 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000FECAC;
  v47[3] = &unk_10083C848;
  v47[4] = self;
  [v12 addOperation:v47];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000FED8C;
  v41[3] = &unk_100845E10;
  circleCopy = circle;
  v41[4] = self;
  v13 = targetCopy;
  v42 = v13;
  v43 = v45;
  [v12 addOperation:v41];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100005AB0;
  v39[4] = sub_10000B164;
  v40 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000FF3E0;
  v38[3] = &unk_100845E60;
  v38[5] = v39;
  v38[6] = targetDevice;
  v38[4] = self;
  [v12 addOperation:v38];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000FF548;
  v34[3] = &unk_100844D98;
  v14 = v13;
  v35 = v14;
  v36 = v39;
  v37 = v48;
  [v12 addOperation:v34];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100005AB0;
  v32[4] = sub_10000B164;
  v33 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000FF7BC;
  v25[3] = &unk_100845EB0;
  v27 = v39;
  v28 = v32;
  v25[4] = self;
  v15 = v14;
  v26 = v15;
  v31 = targetDevice;
  v29 = v48;
  v30 = v45;
  [v12 addOperation:v25];
  v16 = +[NSNull null];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000FFAE0;
  v19[3] = &unk_100845F00;
  v24 = targetDevice;
  v21 = v48;
  v17 = completionCopy;
  v19[4] = self;
  v20 = v17;
  v22 = v32;
  v23 = v45;
  v18 = [v12 evaluateWithInput:v16 completion:v19];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v48, 8);
}

- (id)_encryptProvisioningTarget:(id)target devSigned:(BOOL)signed certificateChain:(id)chain error:(id *)error
{
  targetCopy = target;
  chainCopy = chain;
  PKPaymentCreateAndValidateTrustWithCerts();
  if (error)
  {
    *error = [NSError errorWithDomain:PKEncryptionErrorDomain code:1 userInfo:0];
  }

  return 0;
}

- (void)redeemPaymentShareableCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  encryptedProvisioningTarget = [credentialCopy encryptedProvisioningTarget];
  targetDevice = [encryptedProvisioningTarget targetDevice];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100100050;
  v12[3] = &unk_100845F50;
  v13 = credentialCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = credentialCopy;
  [(PDPushProvisioningManager *)self _webServiceForTargetDevice:targetDevice completion:v12];
}

- (void)redeemProvisioningSharingIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning starting redeem with sharingIdentifier: %@", buf, 0xCu);
  }

  v9 = [[PKPaymentShareableCredential alloc] initWithProvisioningSharingIdentifier:identifierCopy isBackgroundProvisioning:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100100504;
  v11[3] = &unk_100845F78;
  v12 = completionCopy;
  v10 = completionCopy;
  [(PDPushProvisioningManager *)self redeemPaymentShareableCredential:v9 completion:v11];
}

- (void)redeemProvisioningMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning starting redeem with metadata: %@", buf, 0xCu);
  }

  v9 = [PKPaymentShareableCredential alloc];
  sharingInstanceIdentifier = [metadataCopy sharingInstanceIdentifier];
  v11 = [v9 initWithProvisioningSharingIdentifier:sharingInstanceIdentifier isBackgroundProvisioning:1];

  [v11 setSource:{objc_msgSend(metadataCopy, "source")}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001006AC;
  v13[3] = &unk_100845F78;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PDPushProvisioningManager *)self redeemPaymentShareableCredential:v11 completion:v13];
}

- (void)redeemPaymentShareableCredential:(id)credential provisioningRequestForEligibilityResponse:(id)response completion:(id)completion
{
  credentialCopy = credential;
  responseCopy = response;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = credentialCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Push provisioning starting redeeme with credential: %@", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = sub_100005AB0;
  v45 = sub_10000B164;
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100100A8C;
  v39[3] = &unk_100845FA0;
  objc_copyWeak(&v40, &location);
  v39[4] = &buf;
  v13 = objc_retainBlock(v39);
  v14 = PDOSTransactionCreate("PDPushProvisioningManager");
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100100B10;
  v35[3] = &unk_100845FC8;
  v15 = completionCopy;
  v37 = v15;
  v16 = v13;
  v38 = v16;
  v17 = v14;
  v36 = v17;
  v18 = objc_retainBlock(v35);
  assertionManager = self->_assertionManager;
  v20 = *(*(&buf + 1) + 40);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100100B60;
  v26[3] = &unk_100846068;
  v21 = credentialCopy;
  p_buf = &buf;
  v27 = v21;
  selfCopy = self;
  v22 = v18;
  v29 = v22;
  objc_copyWeak(&v34, &location);
  v23 = v15;
  v30 = v23;
  v24 = v16;
  v31 = v24;
  v25 = responseCopy;
  v32 = v25;
  [(PDAssertionManager *)assertionManager acquireAssertionOfType:1 withIdentifier:v20 reason:@"Push provisioning request" handler:v26];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v40);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (void)_handleUnsupportedDeviceResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  eligibilityStatus = [response eligibilityStatus];
  if (eligibilityStatus == 4)
  {
    v22 = NSDebugDescriptionErrorKey;
    v23 = @"Newer OS version required";
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = PKAddSecureElementPassErrorDomain;
    v11 = 6;
    goto LABEL_5;
  }

  v8 = eligibilityStatus;
  if (eligibilityStatus == 5)
  {
    v24 = NSDebugDescriptionErrorKey;
    v25 = @"Hardware not supported";
    v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v10 = PKAddSecureElementPassErrorDomain;
    v11 = 4;
LABEL_5:
    v12 = [NSError errorWithDomain:v10 code:v11 userInfo:v9];

    goto LABEL_9;
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error: Unsupported eligibility status: %ul", buf, 8u);
  }

  v12 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:0];
LABEL_9:
  replyQueue = self->_replyQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100101670;
  v17[3] = &unk_10083C820;
  v18 = v12;
  v19 = completionCopy;
  v15 = v12;
  v16 = completionCopy;
  dispatch_async(replyQueue, v17);
}

- (void)_handleExpectedPassUpdateForEligibilityResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning: Received pass update eligibility status, waiting for pass update", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001018AC;
  v18[3] = &unk_100846090;
  v18[4] = self;
  v9 = completionCopy;
  v19 = v9;
  v10 = objc_retainBlock(v18);
  dpanIdentifier = [responseCopy dpanIdentifier];
  v12 = dpanIdentifier;
  if (dpanIdentifier)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100101A44;
    block[3] = &unk_10083D320;
    block[4] = self;
    v16 = dpanIdentifier;
    v17 = v10;
    dispatch_async(workQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push provisioning: Missing DPAN identifier, unable to wait for pass update.", buf, 2u);
    }

    v14 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:2 userInfo:0];
    (v10[2])(v10, 0, v14);
  }
}

- (BOOL)_hasProvisionedPassForCredentialHash:(id)hash
{
  v3 = [(PDDatabaseManager *)self->_databaseManager passWithProvisioningCredentialHash:hash];
  secureElementPass = [v3 secureElementPass];

  if (secureElementPass)
  {
    v5 = [secureElementPass passActivationState] != 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_companionHasProvisionedPassForCredentialHash:(id)hash
{
  hashCopy = hash;
  v4 = +[PKPassLibrary sharedInstanceWithRemoteLibrary];
  _remoteLibrary = [v4 _remoteLibrary];

  v6 = [_remoteLibrary passesOfType:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100101D18;
  v10[3] = &unk_1008460B8;
  v11 = hashCopy;
  v7 = hashCopy;
  v8 = [v6 pk_containsObjectPassingTest:v10];

  return v8;
}

- (void)_webServiceForTargetDevice:(unint64_t)device completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (device == 2)
  {
    os_unfair_lock_lock(&self->_companionWebServiceLock);
    companionWebServiceProvider = self->_companionWebServiceProvider;
    if (!companionWebServiceProvider)
    {
      v9 = objc_alloc_init(off_10091E988());
      v10 = self->_companionWebServiceProvider;
      self->_companionWebServiceProvider = v9;

      [(NPKSharedWebServiceProvider *)self->_companionWebServiceProvider loadWebService];
      companionWebServiceProvider = self->_companionWebServiceProvider;
      ++self->_companionWebServiceUseCounter;
    }

    webService = [(NPKSharedWebServiceProvider *)companionWebServiceProvider webService];
    os_unfair_lock_unlock(&self->_companionWebServiceLock);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100101F54;
    v15[3] = &unk_10083C470;
    v15[4] = self;
    (v7)[2](v7, webService, v15);
  }

  else
  {
    webServiceCoordinator = self->_webServiceCoordinator;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100101FC0;
    v13[3] = &unk_1008459D8;
    v14 = completionCopy;
    [(PDPaymentWebServiceCoordinator *)webServiceCoordinator performHandlerOnSharedWebServiceQueue:v13];
    webService = v14;
  }
}

@end