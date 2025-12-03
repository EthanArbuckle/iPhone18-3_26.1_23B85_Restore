@interface PDSharingManager
- (BOOL)hasActiveExternallySharedPasses;
- (BOOL)hasShareableEntitlementsForPassIdentifier:(id)identifier;
- (BOOL)hasSharesForPassIdentifier:(id)identifier;
- (PDSharingManager)initWithWebServiceCoordinator:(id)coordinator databaseManager:(id)manager notificationManager:(id)notificationManager pushNotificationManager:(id)pushNotificationManager cardFileManager:(id)fileManager subcredentialManager:(id)subcredentialManager remoteInterfacePresenter:(id)presenter idsSharingService:(id)self0 cloudStoreDelegate:(id)self1 delegate:(id)self2;
- (id)entitlementsForPassIdentifier:(id)identifier;
- (void)acceptCarKeyShareForMessage:(id)message activationCode:(id)code completion:(id)completion;
- (void)cacheSharingMessageFromMailboxAddress:(id)address message:(id)message;
- (void)channelWasRemotelyTerminatedWithTransportIdentifier:(id)identifier;
- (void)checkInvitationStatusForMailboxAddress:(id)address completion:(id)completion;
- (void)createShareForPartialShareInvitation:(id)invitation authorization:(id)authorization completion:(id)completion;
- (void)createShareInvitationForPartialShareInvitation:(id)invitation existingTransportIdentifier:(id)identifier authorization:(id)authorization completion:(id)completion;
- (void)createSingleUseShareURLWithMessage:(id)message timeToLive:(unint64_t)live completion:(id)completion;
- (void)deleteSharingMessage:(id)message;
- (void)displayableEntitlementsForPassIdentifier:(id)identifier completion:(id)completion;
- (void)displayableSharesForPassIdentifier:(id)identifier completion:(id)completion;
- (void)handleOutstandingShareMessage:(id)message transportIdentifier:(id)identifier;
- (void)insertPassMessage:(id)message pass:(id)pass;
- (void)passWillBeRemoved:(id)removed;
- (void)pendingCredentialsBeingProvisioned:(id)provisioned;
- (void)pendingShareActivationForShareIdentifier:(id)identifier completion:(id)completion;
- (void)prewarmCreateShareForPassIdentifier:(id)identifier completion:(id)completion;
- (void)processCLICommands:(id)commands completion:(id)completion;
- (void)rejectShareForMailboxAddress:(id)address;
- (void)relinquishInvitation:(id)invitation completion:(id)completion;
- (void)retrieveShareInvitationForMailboxAddress:(id)address completion:(id)completion;
- (void)revokePendingCredentialsForReaderIdentifier:(id)identifier completion:(id)completion;
- (void)revokeShareForPassIdentifier:(id)identifier share:(id)share shouldCascade:(BOOL)cascade completion:(id)completion;
- (void)revokeSharesForPassIdentifier:(id)identifier shares:(id)shares shouldCascade:(BOOL)cascade completion:(id)completion;
- (void)sendSharingMessageTo:(id)to message:(id)message completion:(id)completion;
- (void)sharesForPassIdentifier:(id)identifier completion:(id)completion;
- (void)updateShareForPassIdentifier:(id)identifier share:(id)share authorization:(id)authorization completion:(id)completion;
- (void)userNotificationActionPerformed:(unint64_t)performed notificationIdentifier:(id)identifier;
@end

@implementation PDSharingManager

- (PDSharingManager)initWithWebServiceCoordinator:(id)coordinator databaseManager:(id)manager notificationManager:(id)notificationManager pushNotificationManager:(id)pushNotificationManager cardFileManager:(id)fileManager subcredentialManager:(id)subcredentialManager remoteInterfacePresenter:(id)presenter idsSharingService:(id)self0 cloudStoreDelegate:(id)self1 delegate:(id)self2
{
  coordinatorCopy = coordinator;
  managerCopy = manager;
  obj = notificationManager;
  notificationManagerCopy = notificationManager;
  pushNotificationManagerCopy = pushNotificationManager;
  pushNotificationManagerCopy2 = pushNotificationManager;
  fileManagerCopy = fileManager;
  subcredentialManagerCopy = subcredentialManager;
  presenterCopy = presenter;
  serviceCopy = service;
  delegateCopy = delegate;
  v20 = fileManagerCopy;
  v21 = a12;
  v53.receiver = self;
  v53.super_class = PDSharingManager;
  v22 = [(PDSharingManager *)&v53 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_webServiceCoordinator, coordinator);
    objc_storeStrong(&v23->_databaseManager, manager);
    objc_storeStrong(&v23->_userNotificationManager, obj);
    objc_storeStrong(&v23->_pushNotificationManager, pushNotificationManagerCopy);
    objc_storeStrong(&v23->_subcredentialManager, subcredentialManager);
    objc_storeStrong(&v23->_remoteInterfacePresenter, presenter);
    objc_storeStrong(&v23->_cloudStoreDelegate, delegate);
    objc_storeWeak(&v23->_delegate, v21);
    v24 = dispatch_queue_create("com.apple.passd.sharingmanager", 0);
    queue = v23->_queue;
    v23->_queue = v24;

    v26 = dispatch_queue_create("com.apple.passd.sharingmanager", 0);
    replyQueue = v23->_replyQueue;
    v23->_replyQueue = v26;

    v28 = [[PDCarKeySharingManagementService alloc] initWithWebServiceCoordinator:v23->_webServiceCoordinator cardFileManager:v20 cloudStoreDelegate:v23->_cloudStoreDelegate delegate:v23];
    carKeyManagementService = v23->_carKeyManagementService;
    v23->_carKeyManagementService = v28;

    v30 = [[PDGeneralSharingManagementService alloc] initWithWebServiceCoordinator:v23->_webServiceCoordinator];
    sharingManagementService = v23->_sharingManagementService;
    v23->_sharingManagementService = v30;

    v32 = objc_alloc_init(PDHomeShareManagementService);
    homeManagementService = v23->_homeManagementService;
    v23->_homeManagementService = v32;

    v34 = [[PDSharingChannelManager alloc] initWithWebServiceCoordinator:v23->_webServiceCoordinator databaseManager:v23->_databaseManager pushNotificationManager:v23->_pushNotificationManager idsSharingService:serviceCopy];
    channelManager = v23->_channelManager;
    v23->_channelManager = v34;

    [(PDSharingChannelManager *)v23->_channelManager addDelegate:v23];
    v36 = [[PDSharingStatefulProvisioningManager alloc] initWithQueue:v23->_queue replyQueue:v23->_replyQueue databaseManager:v23->_databaseManager delegate:v23];
    statefulProvisioningManager = v23->_statefulProvisioningManager;
    v23->_statefulProvisioningManager = v36;

    v38 = [[PDSharingUserCommunicationManager alloc] initWithNotificationManager:notificationManagerCopy delegate:v23];
    userCommunicationManager = v23->_userCommunicationManager;
    v23->_userCommunicationManager = v38;

    v40 = objc_alloc_init(NSMutableArray);
    continuityManagers = v23->_continuityManagers;
    v23->_continuityManagers = v40;

    [(PDUserNotificationManager *)v23->_userNotificationManager removeUserNotificationsOfType:79];
  }

  return v23;
}

- (void)checkInvitationStatusForMailboxAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  if (addressCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E32BC;
    block[3] = &unk_10083D320;
    v11 = addressCopy;
    selfCopy = self;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = PDBasicError();
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (void)retrieveShareInvitationForMailboxAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  if (addressCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E3474;
    block[3] = &unk_10083D320;
    v11 = addressCopy;
    selfCopy = self;
    v13 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = PDBasicError();
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (void)relinquishInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E38BC;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = invitationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = invitationCopy;
  dispatch_async(queue, block);
}

- (void)deleteSharingMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E3BDC;
    v8[3] = &unk_10083C420;
    v8[4] = self;
    v9 = messageCopy;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: unable to delete message, missing message", buf, 2u);
    }
  }
}

- (void)rejectShareForMailboxAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E3EA4;
    v7[3] = &unk_10083C420;
    v8 = addressCopy;
    selfCopy = self;
    dispatch_async(queue, v7);
  }
}

- (void)prewarmCreateShareForPassIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4388;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)createShareForPartialShareInvitation:(id)invitation authorization:(id)authorization completion:(id)completion
{
  invitationCopy = invitation;
  authorizationCopy = authorization;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000E4B2C;
  v43[3] = &unk_1008445E8;
  v43[4] = self;
  completionCopy = completion;
  v44 = completionCopy;
  v11 = objc_retainBlock(v43);
  v12 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_100005AA0;
  v41[4] = sub_10000B15C;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100005AA0;
  v39[4] = sub_10000B15C;
  v40 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000E4C30;
  v38[3] = &unk_10083C848;
  v38[4] = self;
  [v12 addOperation:v38];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000E4D10;
  v32[3] = &unk_100844610;
  v13 = invitationCopy;
  v33 = v13;
  selfCopy = self;
  v36 = v39;
  v37 = v41;
  v14 = v11;
  v35 = v14;
  [v12 addOperation:v32];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E4F4C;
  v28[3] = &unk_100844638;
  v31 = v39;
  v15 = v13;
  v29 = v15;
  selfCopy2 = self;
  [v12 addOperation:v28];
  v16 = +[NSNull null];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E50FC;
  v21[3] = &unk_1008446B0;
  v17 = v15;
  v22 = v17;
  v26 = v41;
  v27 = v39;
  v18 = authorizationCopy;
  v23 = v18;
  v19 = v14;
  selfCopy3 = self;
  v25 = v19;
  v20 = [v12 evaluateWithInput:v16 completion:v21];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

- (void)createShareInvitationForPartialShareInvitation:(id)invitation existingTransportIdentifier:(id)identifier authorization:(id)authorization completion:(id)completion
{
  invitationCopy = invitation;
  identifierCopy = identifier;
  authorizationCopy = authorization;
  completionCopy = completion;
  v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_100005AA0;
  v55[4] = sub_10000B15C;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_100005AA0;
  v53[4] = sub_10000B15C;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = sub_100005AA0;
  v51[4] = sub_10000B15C;
  v52 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000E5D38;
  v50[3] = &unk_10083C848;
  v50[4] = self;
  [v14 addOperation:v50];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000E5E18;
  v45[3] = &unk_1008446D8;
  v47 = v53;
  v45[4] = self;
  v15 = invitationCopy;
  v46 = v15;
  v48 = v55;
  v49 = v51;
  [v14 addOperation:v45];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1005B9C00;
  v42[3] = &unk_10083EAD8;
  v42[4] = self;
  v44 = v53;
  v16 = v15;
  v43 = v16;
  [v14 addOperation:v42];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_100005AA0;
  v40[4] = sub_10000B15C;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_100005AA0;
  v38[4] = sub_10000B15C;
  v39 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000E6084;
  v29[3] = &unk_100844728;
  v17 = v16;
  v30 = v17;
  v33 = v55;
  v34 = v53;
  v18 = authorizationCopy;
  v31 = v18;
  v35 = v51;
  v36 = v38;
  v19 = identifierCopy;
  v32 = v19;
  v37 = v40;
  [v14 addOperation:v29];
  v20 = +[NSNull null];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000E6334;
  v23[3] = &unk_100844778;
  v23[4] = self;
  v25 = v40;
  v26 = v38;
  v27 = v53;
  v21 = completionCopy;
  v24 = v21;
  v28 = v51;
  v22 = [v14 evaluateWithInput:v20 completion:v23];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(v55, 8);
}

- (void)updateShareForPassIdentifier:(id)identifier share:(id)share authorization:(id)authorization completion:(id)completion
{
  identifierCopy = identifier;
  shareCopy = share;
  authorizationCopy = authorization;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7244;
  block[3] = &unk_100842440;
  block[4] = self;
  v20 = identifierCopy;
  v22 = authorizationCopy;
  v23 = completionCopy;
  v21 = shareCopy;
  v15 = authorizationCopy;
  v16 = shareCopy;
  v17 = completionCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)revokeShareForPassIdentifier:(id)identifier share:(id)share shouldCascade:(BOOL)cascade completion:(id)completion
{
  cascadeCopy = cascade;
  shareCopy = share;
  completionCopy = completion;
  shareCopy2 = share;
  identifierCopy = identifier;
  v13 = [NSArray arrayWithObjects:&shareCopy count:1];

  [(PDSharingManager *)self revokeSharesForPassIdentifier:identifierCopy shares:v13 shouldCascade:cascadeCopy completion:completionCopy, shareCopy];
}

- (void)revokeSharesForPassIdentifier:(id)identifier shares:(id)shares shouldCascade:(BOOL)cascade completion:(id)completion
{
  identifierCopy = identifier;
  sharesCopy = shares;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7948;
  block[3] = &unk_10083C678;
  block[4] = self;
  v18 = identifierCopy;
  v19 = sharesCopy;
  v20 = completionCopy;
  cascadeCopy = cascade;
  v14 = sharesCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)createSingleUseShareURLWithMessage:(id)message timeToLive:(unint64_t)live completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E823C;
  block[3] = &unk_10083D320;
  v13 = messageCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = messageCopy;
  dispatch_async(queue, block);
}

- (void)cacheSharingMessageFromMailboxAddress:(id)address message:(id)message
{
  addressCopy = address;
  messageCopy = message;
  v8 = messageCopy;
  if (addressCopy && messageCopy)
  {
    v9 = [PKSharingRelayChannelDescriptor existingChannelForURL:addressCopy];
    [(PDSharingChannelManager *)self->_channelManager cacheSharingMessageForDescriptor:v9 message:v8];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error: unable to cache message, missing mailboxAddress or message", v11, 2u);
    }
  }
}

- (BOOL)hasActiveExternallySharedPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E87A0;
  v5[3] = &unk_10083D988;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)sharesForPassIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E889C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (BOOL)hasSharesForPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8A40;
  block[3] = &unk_10083F120;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)hasShareableEntitlementsForPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8B54;
  block[3] = &unk_10083F120;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (id)entitlementsForPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100005AA0;
  v16 = sub_10000B15C;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8C9C;
  block[3] = &unk_10083F120;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)displayableSharesForPassIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8DB0;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)displayableEntitlementsForPassIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9294;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)userNotificationActionPerformed:(unint64_t)performed notificationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9514;
  block[3] = &unk_10083D690;
  v10 = identifierCopy;
  performedCopy = performed;
  block[4] = self;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)passWillBeRemoved:(id)removed
{
  removedCopy = removed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E9C68;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_async(queue, v7);
}

- (void)sendSharingMessageTo:(id)to message:(id)message completion:(id)completion
{
  toCopy = to;
  messageCopy = message;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E9FDC;
  v15[3] = &unk_10083E468;
  v16 = toCopy;
  v17 = messageCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = messageCopy;
  v14 = toCopy;
  dispatch_async(queue, v15);
}

- (void)acceptCarKeyShareForMessage:(id)message activationCode:(id)code completion:(id)completion
{
  messageCopy = message;
  codeCopy = code;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000EA3C0;
  v23[3] = &unk_100844B08;
  v23[4] = self;
  completionCopy = completion;
  v24 = completionCopy;
  v11 = objc_retainBlock(v23);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA4B4;
  block[3] = &unk_100844B58;
  v18 = messageCopy;
  selfCopy = self;
  v21 = v11;
  v22 = completionCopy;
  v20 = codeCopy;
  v13 = codeCopy;
  v14 = completionCopy;
  v15 = v11;
  v16 = messageCopy;
  dispatch_async(queue, block);
}

- (void)pendingShareActivationForShareIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EB218;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)pendingCredentialsBeingProvisioned:(id)provisioned
{
  provisionedCopy = provisioned;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EB694;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = provisionedCopy;
  v6 = provisionedCopy;
  dispatch_async(queue, v7);
}

- (void)revokePendingCredentialsForReaderIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EB8FC;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)insertPassMessage:(id)message pass:(id)pass
{
  messageCopy = message;
  databaseManager = self->_databaseManager;
  uniqueID = [pass uniqueID];
  v8 = [(PDDatabaseManager *)databaseManager insertOrUpdatePaymentMessage:messageCopy forPassUniqueIdentifier:uniqueID paymentApplication:0 performTruncation:0];
}

- (void)handleOutstandingShareMessage:(id)message transportIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  type = [messageCopy type];
  if (type != 1)
  {
    if (type == 2001)
    {
      sub_1005BA010(self, messageCopy);
    }

    else if (type == 1002)
    {
      sub_1005BAC30(self, messageCopy);
    }

    else if (type == 1001)
    {
      sub_1005BAB9C(self, messageCopy);
    }

    else
    {
      sub_1005BACC4(self, messageCopy);
    }
  }
}

- (void)channelWasRemotelyTerminatedWithTransportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EF23C;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)processCLICommands:(id)commands completion:(id)completion
{
  commandsCopy = commands;
  completionCopy = completion;
  if (os_variant_has_internal_ui())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EF708;
    block[3] = &unk_10083F418;
    v10 = commandsCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, @"Unsupported on non internal builds");
  }
}

@end