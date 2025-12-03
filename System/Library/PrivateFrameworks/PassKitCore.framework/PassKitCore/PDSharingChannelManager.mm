@interface PDSharingChannelManager
- (BOOL)_lock_canTrackHandleForTransportIdentifier:(id)identifier descriptor:(id)descriptor existing:(id *)existing;
- (BOOL)canHandleOutstandingMessagesOnEndpoint:(id)endpoint;
- (BOOL)configureHandle:(id)handle forDescriptor:(id)descriptor;
- (BOOL)isDescriptorValid:(id)valid;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PDSharingChannelManager)initWithWebServiceCoordinator:(id)coordinator databaseManager:(id)manager pushNotificationManager:(id)notificationManager idsSharingService:(id)service;
- (id)_createHandleForEndpoint:(id)endpoint descriptor:(id)descriptor queue:(id)queue;
- (id)_endpointForDescriptor:(id)descriptor;
- (id)_lock_sharingChannelHandleForEndpoint:(id)endpoint;
- (id)channelForEndpoint:(id)endpoint;
- (id)handleForDescriptor:(id)descriptor queue:(id)queue;
- (void)_handleDidInvalidateForTransportIdentifier:(id)identifier;
- (void)_handleWasInvalidatedForTransportIdentifier:(id)identifier triggeredByClient:(BOOL)client;
- (void)_lock_addAncillaryService:(id)service forTracker:(id)tracker;
- (void)_lock_removeAncillaryService:(id)service;
- (void)_lock_removeAncillaryService:(id)service forTracker:(id)tracker;
- (void)_lock_removeAncillaryServiceForTracker:(id)tracker;
- (void)_notifyDelegatesWithBlock:(id)block;
- (void)_sendMessage:(id)message toEndpoint:(id)endpoint completion:(id)completion;
- (void)addDelegate:(id)delegate;
- (void)ancillaryServiceDidTerminate:(id)terminate;
- (void)attachForHandle:(id)handle completion:(id)completion;
- (void)bootstrapProximityChannelForHandle:(id)handle templateSession:(id)session group:(id)group completion:(id)completion;
- (void)cacheSharingMessageForDescriptor:(id)descriptor message:(id)message;
- (void)closeForHandle:(id)handle completion:(id)completion;
- (void)descriptorsForAccountDevicesForHandle:(id)handle completion:(id)completion;
- (void)didHandleMessageForHandle:(id)handle message:(id)message completion:(id)completion;
- (void)didReceiveIDSShareMessage:(id)message endpoint:(id)endpoint;
- (void)didReceiveLocalShareMessage:(id)message endpoint:(id)endpoint;
- (void)didReceiveProximityShareMessage:(id)message endpoint:(id)endpoint;
- (void)endpointGroupWasRemotelyTerminated:(id)terminated;
- (void)endpointWasRemotelyTerminated:(id)terminated;
- (void)endpointWasUpdated:(id)updated oldTransportIdentifier:(id)identifier allowCreation:(BOOL)creation;
- (void)fetchHandleTransferTokenForHandle:(id)handle completion:(id)completion;
- (void)handleOutstandingShareMessage:(id)message endpoint:(id)endpoint;
- (void)pingForHandle:(id)handle completion:(id)completion;
- (void)prewarmEndpointCreationForDescriptor:(id)descriptor count:(unint64_t)count completion:(id)completion;
- (void)relinquishForHandle:(id)handle completion:(id)completion;
- (void)remoteDeviceInformationForHandle:(id)handle completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)sendMessageTo:(id)to message:(id)message completion:(id)completion;
- (void)sendMessageToDescriptor:(id)descriptor message:(id)message completion:(id)completion;
- (void)sharingChannelHandle:(id)handle wasInvalidatedRemotelyForEndpoint:(id)endpoint;
- (void)start;
- (void)startProximityAdvertisementForHandle:(id)handle type:(unint64_t)type completion:(id)completion;
- (void)startProximityDetectionForHandle:(id)handle advertisement:(id)advertisement completion:(id)completion;
- (void)universalShareURLForHandle:(id)handle urlDecoration:(id)decoration completion:(id)completion;
@end

@implementation PDSharingChannelManager

- (PDSharingChannelManager)initWithWebServiceCoordinator:(id)coordinator databaseManager:(id)manager pushNotificationManager:(id)notificationManager idsSharingService:(id)service
{
  coordinatorCopy = coordinator;
  managerCopy = manager;
  notificationManagerCopy = notificationManager;
  serviceCopy = service;
  v42.receiver = self;
  v42.super_class = PDSharingChannelManager;
  v15 = [(PDSharingChannelManager *)&v42 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_webServiceCoordinator, coordinator);
    objc_storeStrong(&v16->_databaseManager, manager);
    v17 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    delegates = v16->_delegates;
    v16->_delegates = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    trackedHandles = v16->_trackedHandles;
    v16->_trackedHandles = v19;

    v21 = +[NSMapTable pk_createStrongPointerPersonalityToStrongObjects];
    trackedAncillaryServices = v16->_trackedAncillaryServices;
    v16->_trackedAncillaryServices = v21;

    v23 = dispatch_queue_create("com.apple.passd.sharingchannelmanager", 0);
    queue = v16->_queue;
    v16->_queue = v23;

    v25 = dispatch_queue_create("com.apple.passd.sharingchannelmanager.reply", 0);
    replyQueue = v16->_replyQueue;
    v16->_replyQueue = v25;

    v16->_lock._os_unfair_lock_opaque = 0;
    v27 = [[PDDynamicAssociatedDomainService alloc] initDatabaseManager:managerCopy];
    v28 = [[PDSharingRelayServerService alloc] initWithWebServiceCoordinator:v16->_webServiceCoordinator domainService:v27 pushNotificationManager:notificationManagerCopy delegate:v16];
    relayService = v16->_relayService;
    v16->_relayService = v28;

    v30 = [[PDAccessPassSharingIDSService alloc] initWithIDSSharingService:serviceCopy delegate:v16];
    idsService = v16->_idsService;
    v16->_idsService = v30;

    v32 = [[PDSharingLocalOnDeviceService alloc] initWithDelegate:v16];
    localOnDeviceService = v16->_localOnDeviceService;
    v16->_localOnDeviceService = v32;

    v34 = [[PDSharingProximityChannelService alloc] initWithDelegate:v16];
    proximityService = v16->_proximityService;
    v16->_proximityService = v34;

    v36 = [[PDSharingChannelMonitor alloc] initWithQueue:v16->_queue webServiceCoordinator:v16->_webServiceCoordinator databaseManager:v16->_databaseManager pushNotificationManager:notificationManagerCopy delegate:v16];
    monitor = v16->_monitor;
    v16->_monitor = v36;

    v38 = [NSXPCListener alloc];
    v39 = [v38 initWithMachServiceName:PKSharingChannelServiceMachServiceName];
    coordinatorListener = v16->_coordinatorListener;
    v16->_coordinatorListener = v39;

    [(NSXPCListener *)v16->_coordinatorListener setDelegate:v16];
    [(NSXPCListener *)v16->_coordinatorListener resume];
  }

  return v16;
}

- (void)start
{
  [(PDSharingChannelMonitor *)self->_monitor start];
  idsService = self->_idsService;

  [(PDAccessPassSharingIDSService *)idsService start];
}

- (BOOL)isDescriptorValid:(id)valid
{
  v3 = [(PDSharingChannelManager *)self _endpointForDescriptor:valid];
  v4 = v3 != 0;

  return v4;
}

- (id)handleForDescriptor:(id)descriptor queue:(id)queue
{
  descriptorCopy = descriptor;
  queueCopy = queue;
  v8 = [(PDSharingChannelManager *)self _endpointForDescriptor:descriptorCopy];
  if (!v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = descriptorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get endpoint for descriptor: %@", &v12, 0xCu);
    }
  }

  v10 = [(PDSharingChannelManager *)self _createHandleForEndpoint:v8 descriptor:descriptorCopy queue:queueCopy];

  return v10;
}

- (void)sendMessageToDescriptor:(id)descriptor message:(id)message completion:(id)completion
{
  descriptorCopy = descriptor;
  messageCopy = message;
  completionCopy = completion;
  v11 = [(PDSharingChannelManager *)self _endpointForDescriptor:descriptorCopy];
  if (v11)
  {
    os_unfair_lock_lock(&self->_lock);
    trackedHandles = self->_trackedHandles;
    transportIdentifier = [v11 transportIdentifier];
    v14 = [(NSMutableDictionary *)trackedHandles objectForKeyedSubscript:transportIdentifier];

    if (v14)
    {
      isServerForRemoteHandle = [v14 isServerForRemoteHandle];
      os_unfair_lock_unlock(&self->_lock);
      if (isServerForRemoteHandle)
      {
        v16 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          transportIdentifier2 = [v11 transportIdentifier];
          v18 = PKSharingLoggableMailboxAddress();
          *buf = 138412546;
          v31 = v18;
          v32 = 2112;
          v33 = messageCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WARNING: Blocking message from being sent on channel %@ because active handle owned by remote process. \n\n message: %@", buf, 0x16u);
        }

        completionCopy[2](completionCopy, 1, 0);
        goto LABEL_20;
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      transportIdentifier3 = [v11 transportIdentifier];
      v22 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Allowing message to be sent on channel %@ without checking handle.", buf, 0xCu);
    }

    payload = [messageCopy payload];
    displayInformation = [messageCopy displayInformation];
    v29 = 0;
    v25 = [PKSharingMessage specializedMessageFromPayload:payload displayInformation:displayInformation outError:&v29];
    v26 = v29;

    if (v26)
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = messageCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to create specialized message from %@", buf, 0xCu);
      }

      v28 = PDBasicError();
      (completionCopy)[2](completionCopy, 0, v28);
    }

    else
    {
      [(PDSharingChannelManager *)self _sendMessage:v25 toEndpoint:v11 completion:completionCopy];
    }
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = descriptorCopy;
      v32 = 2112;
      v33 = messageCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to send message because unable to get endpoint for descriptor: %@ \n\n message: %@", buf, 0x16u);
    }

    v14 = PDBasicError();
    (completionCopy)[2](completionCopy, 0, v14);
  }

LABEL_20:
}

- (id)_endpointForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  type = [descriptorCopy type];
  endpoint = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      transportIdentifier3 = descriptorCopy;
      deviceIdentifier = [transportIdentifier3 deviceIdentifier];
      subtype = [transportIdentifier3 subtype];
      if (subtype == 2)
      {
        goto LABEL_21;
      }

      if (subtype == 1)
      {
        sessionIdentifier = [(PDAccessPassSharingIDSService *)self->_idsService resolveRemoteAddressForDeviceIdentifier:deviceIdentifier];
        endpoint = [[PDSharingIDSEndpoint alloc] initWithDeviceIdentifier:sessionIdentifier];
        [(PDSharingIDSEndpoint *)endpoint setIsDeviceOnSameIDSAccount:2];
        goto LABEL_65;
      }

      if (!subtype)
      {
LABEL_21:
        sessionIdentifier = [transportIdentifier3 sessionIdentifier];
        if (sessionIdentifier)
        {
          v17 = [[PDSharingIDSEndpoint alloc] initWithSessionIdentifier:sessionIdentifier deviceIdentifier:deviceIdentifier];
LABEL_50:
          v38 = v17;
          databaseManager = self->_databaseManager;
          transportIdentifier = [(PDSharingIDSEndpoint *)v17 transportIdentifier];
          v41 = [(PDDatabaseManager *)databaseManager sharingEndpointForTransportIdentifier:transportIdentifier];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v38;
          }

          endpoint = v43;

          goto LABEL_65;
        }

        if (!deviceIdentifier)
        {
          goto LABEL_64;
        }

        v14 = [[PDSharingIDSEndpoint alloc] initWithDeviceIdentifier:deviceIdentifier];
LABEL_16:
        endpoint = v14;
LABEL_65:

        goto LABEL_66;
      }

LABEL_43:
      endpoint = 0;
LABEL_66:

      goto LABEL_67;
    }

    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_68;
      }

      transportIdentifier3 = descriptorCopy;
      [transportIdentifier3 group];
      deviceIdentifier = PKSharingProximityChannelDescriptorGroupToString();
      if ([(PDSharingProximityChannelService *)self->_proximityService hasConfiguredSessionForGroup:deviceIdentifier])
      {
        v12 = [PDSharingProximityEndpoint alloc];
        sessionIdentifier = [transportIdentifier3 sessionIdentifier];
        v14 = [(PDSharingProximityEndpoint *)v12 initWithSessionIdentifier:sessionIdentifier group:deviceIdentifier];
        goto LABEL_16;
      }

      v35 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = deviceIdentifier;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Failed to create endpoint for group %@ because group not tracked", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v26 = descriptorCopy;
    subtype2 = [v26 subtype];
    if (subtype2 == 1)
    {
      v44 = [PDSharingLocalOnDeviceEndpoint alloc];
      contraChannelTransportIdentifier = [v26 contraChannelTransportIdentifier];
      transportIdentifier2 = [v26 transportIdentifier];
      v31 = v44;
      v32 = contraChannelTransportIdentifier;
      v33 = transportIdentifier2;
      v34 = 0;
    }

    else
    {
      if (subtype2)
      {
        endpoint = 0;
        goto LABEL_58;
      }

      v28 = [PDSharingLocalOnDeviceEndpoint alloc];
      contraChannelTransportIdentifier = [v26 transportIdentifier];
      transportIdentifier2 = [v26 contraChannelTransportIdentifier];
      v31 = v28;
      v32 = contraChannelTransportIdentifier;
      v33 = transportIdentifier2;
      v34 = 1;
    }

    endpoint = [(PDSharingLocalOnDeviceEndpoint *)v31 initWithSourceTransportIdentifier:v32 destinationTransportIdentifier:v33 isSource:v34];

LABEL_58:
    goto LABEL_68;
  }

  if (type == 1)
  {
    v15 = self->_databaseManager;
    transportIdentifier3 = [descriptorCopy transportIdentifier];
    endpoint = [(PDDatabaseManager *)v15 sharingEndpointForTransportIdentifier:transportIdentifier3];
    goto LABEL_67;
  }

  if (type == 2)
  {
    transportIdentifier3 = [descriptorCopy transferToken];
    os_unfair_lock_lock(&self->_lock);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = self->_trackedHandles;
    endpoint = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (endpoint)
    {
      v46 = descriptorCopy;
      v19 = *v48;
      while (2)
      {
        for (i = 0; i != endpoint; i = (i + 1))
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v18);
          }

          v21 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
          transferToken = [v21 transferToken];
          v23 = transportIdentifier3;
          v24 = v23;
          if (transferToken == v23)
          {

LABEL_45:
            handle = [v21 handle];
            endpoint = [handle endpoint];

            goto LABEL_46;
          }

          if (transportIdentifier3 && transferToken)
          {
            v25 = [transferToken isEqualToString:v23];

            if (v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
          }
        }

        endpoint = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (endpoint)
        {
          continue;
        }

        break;
      }

LABEL_46:
      descriptorCopy = v46;
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_67;
  }

  if (type != 3)
  {
    goto LABEL_68;
  }

  transportIdentifier3 = descriptorCopy;
  subtype3 = [transportIdentifier3 subtype];
  if (subtype3 == 2)
  {
    deviceIdentifier = [transportIdentifier3 existingChannelURL];
    existingMailboxIdentifier = [transportIdentifier3 existingMailboxIdentifier];
    sessionIdentifier = existingMailboxIdentifier;
    if (deviceIdentifier)
    {
      v17 = [(PDSharingRelayServerService *)self->_relayService relayEndpointForMailboxAddress:deviceIdentifier];
      goto LABEL_50;
    }

    if (existingMailboxIdentifier)
    {
      v14 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:existingMailboxIdentifier];
      goto LABEL_16;
    }

LABEL_64:
    endpoint = 0;
    goto LABEL_65;
  }

  if (subtype3 == 1)
  {
    if ([transportIdentifier3 stateful])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    relayService = self->_relayService;
    deviceIdentifier = [transportIdentifier3 region];
    endpoint = [(PDSharingRelayServerService *)relayService endpointOfType:v9 region:deviceIdentifier];
    goto LABEL_66;
  }

  endpoint = 0;
LABEL_67:

LABEL_68:

  return endpoint;
}

- (id)_createHandleForEndpoint:(id)endpoint descriptor:(id)descriptor queue:(id)queue
{
  endpointCopy = endpoint;
  descriptorCopy = descriptor;
  queueCopy = queue;
  transportIdentifier = [endpointCopy transportIdentifier];
  if (!transportIdentifier)
  {
    v23 = 0;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock);
  v27 = 0;
  v12 = [(PDSharingChannelManager *)self _lock_canTrackHandleForTransportIdentifier:transportIdentifier descriptor:descriptorCopy existing:&v27];
  v13 = v27;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      handle = [v13 handle];
      [handle invalidateForTransfer];
    }

    v16 = [[PDSharingChannelHandle alloc] initWithEndpoint:endpointCopy queue:queueCopy delegate:self dataSource:self];
    v17 = v16;
    if (!v16)
    {
      goto LABEL_14;
    }

    databaseManager = self->_databaseManager;
    transportIdentifier2 = [(PDSharingChannelHandle *)v16 transportIdentifier];
    v20 = [(PDDatabaseManager *)databaseManager sharingMessagesForTransportIdentifier:transportIdentifier2];

    [(PDSharingChannelHandle *)v17 didReceiveMessages:v20];
    v21 = [[PDSharingChannelHandleTracker alloc] initWithHandle:v17];
    [(NSMutableDictionary *)self->_trackedHandles setObject:v21 forKeyedSubscript:transportIdentifier];
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v29 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Handle<%@> Tracking ", buf, 0xCu);
    }
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Handle<%@> Attempted to use channel, but channel already in use.", buf, 0xCu);
    }

    v17 = 0;
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_lock);
  v23 = v17;

LABEL_15:

  return v23;
}

- (id)_lock_sharingChannelHandleForEndpoint:(id)endpoint
{
  transportIdentifier = [endpoint transportIdentifier];
  v5 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:transportIdentifier];
  handle = [v5 handle];

  return handle;
}

- (void)cacheSharingMessageForDescriptor:(id)descriptor message:(id)message
{
  messageCopy = message;
  v7 = [(PDSharingChannelManager *)self _endpointForDescriptor:descriptor];
  if (v7)
  {
    databaseManager = self->_databaseManager;
    v11 = messageCopy;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    transportIdentifier = [v7 transportIdentifier];
    [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v9 storePayloads:1 transportIdentifier:transportIdentifier];
  }
}

- (void)prewarmEndpointCreationForDescriptor:(id)descriptor count:(unint64_t)count completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  if ([descriptorCopy type] == 3)
  {
    v9 = descriptorCopy;
    if ([v9 subtype] == 1)
    {
      if ([v9 stateful])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      [(PDSharingRelayServerService *)self->_relayService prewarmEndpointCreationOfType:v10 count:count completion:completionCopy];

      goto LABEL_9;
    }
  }

  completionCopy[2](completionCopy, 1);
LABEL_9:
}

- (void)_handleWasInvalidatedForTransportIdentifier:(id)identifier triggeredByClient:(BOOL)client
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:identifierCopy];
    handle = [v7 handle];
    os_unfair_lock_unlock(&self->_lock);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018ACFC;
    v12[3] = &unk_10083C4C0;
    v12[4] = self;
    v13 = identifierCopy;
    v14 = v7;
    v9 = v7;
    v10 = objc_retainBlock(v12);
    v11 = v10;
    if (client || !handle)
    {
      (v10[2])(v10);
    }

    else
    {
      [handle invalidate];
    }
  }
}

- (void)_handleDidInvalidateForTransportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:identifierCopy];
  v6 = v5;
  if (v5 && [v5 channelType] == 1)
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager sharingMessagesForTransportIdentifier:identifierCopy];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10018AEF0;
      v9[3] = &unk_10084A3E8;
      v10 = firstObject;
      v11 = identifierCopy;
      [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v9];
    }
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates addObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates removeObject:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_notifyDelegatesWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_delegates copy];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        replyQueue = self->_replyQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10018B138;
        block[3] = &unk_10083C820;
        v12 = blockCopy;
        block[4] = v10;
        v15 = v12;
        dispatch_async(replyQueue, block);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_lock_addAncillaryService:(id)service forTracker:(id)tracker
{
  serviceCopy = service;
  trackerCopy = tracker;
  v7 = [(NSMapTable *)self->_trackedAncillaryServices objectForKey:serviceCopy];
  if (!v7)
  {
    v7 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    [(NSMapTable *)self->_trackedAncillaryServices setObject:v7 forKey:serviceCopy];
  }

  [v7 addObject:trackerCopy];
}

- (void)_lock_removeAncillaryService:(id)service forTracker:(id)tracker
{
  serviceCopy = service;
  trackerCopy = tracker;
  v8 = [(NSMapTable *)self->_trackedAncillaryServices objectForKey:serviceCopy];
  v9 = v8;
  if (v8)
  {
    [v8 removeObject:trackerCopy];
    if (![v9 count])
    {
      [(NSMapTable *)self->_trackedAncillaryServices removeObjectForKey:serviceCopy];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018B2E4;
      block[3] = &unk_10083C470;
      v12 = serviceCopy;
      dispatch_async(queue, block);
    }
  }
}

- (void)_lock_removeAncillaryServiceForTracker:(id)tracker
{
  trackerCopy = tracker;
  keyEnumerator = [(NSMapTable *)self->_trackedAncillaryServices keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDSharingChannelManager *)self _lock_removeAncillaryService:*(*(&v12 + 1) + 8 * v11) forTracker:trackerCopy, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_lock_removeAncillaryService:(id)service
{
  serviceCopy = service;
  [(NSMapTable *)self->_trackedAncillaryServices removeObjectForKey:serviceCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B4C0;
  block[3] = &unk_10083C470;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, block);
}

- (id)channelForEndpoint:(id)endpoint
{
  channelType = [endpoint channelType];
  if (channelType > 2)
  {
    if (channelType == 3)
    {
      localOnDeviceService = self->_localOnDeviceService;
      goto LABEL_11;
    }

    if (channelType == 4)
    {
      localOnDeviceService = self->_proximityService;
      goto LABEL_11;
    }

LABEL_8:
    [NSException raise:NSInternalInconsistencyException format:@"Sharing channel requested for endpoint, but none found"];
    v6 = 0;
    goto LABEL_12;
  }

  if (channelType == 1)
  {
    localOnDeviceService = self->_relayService;
    goto LABEL_11;
  }

  if (channelType != 2)
  {
    goto LABEL_8;
  }

  localOnDeviceService = self->_idsService;
LABEL_11:
  v6 = localOnDeviceService;
LABEL_12:

  return v6;
}

- (BOOL)canHandleOutstandingMessagesOnEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PDSharingChannelManager *)self _lock_sharingChannelHandleForEndpoint:endpointCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    databaseManager = self->_databaseManager;
    transportIdentifier = [endpointCopy transportIdentifier];
    v9 = [(PDDatabaseManager *)databaseManager passShareForTransportIdentifier:transportIdentifier];

    v6 = v9 != 0;
    if (!v9)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        transportIdentifier2 = [endpointCopy transportIdentifier];
        v12 = PKSharingLoggableMailboxAddress();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Unable to find active share for endpoint %{public}@", &v14, 0xCu);
      }
    }
  }

  return v6;
}

- (void)handleOutstandingShareMessage:(id)message endpoint:(id)endpoint
{
  messageCopy = message;
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(PDSharingChannelManager *)self _lock_sharingChannelHandleForEndpoint:endpointCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v13 = messageCopy;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    [v8 didReceiveMessages:v9];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018B818;
    v10[3] = &unk_10084A3E8;
    v11 = messageCopy;
    v12 = endpointCopy;
    [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v10];

    v9 = v11;
  }
}

- (void)endpointWasRemotelyTerminated:(id)terminated
{
  terminatedCopy = terminated;
  transportIdentifier = [terminatedCopy transportIdentifier];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PKSharingLoggableMailboxAddress();
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting endpoint %@ because it was terminated remotely.", buf, 0xCu);
  }

  [(PDDatabaseManager *)self->_databaseManager deleteSharingEndpoint:terminatedCopy];
  [(PDSharingChannelManager *)self _handleWasInvalidatedForTransportIdentifier:transportIdentifier triggeredByClient:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B9F0;
  v9[3] = &unk_10084A410;
  v10 = transportIdentifier;
  v8 = transportIdentifier;
  [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v9];
}

- (void)endpointWasUpdated:(id)updated oldTransportIdentifier:(id)identifier allowCreation:(BOOL)creation
{
  updatedCopy = updated;
  identifierCopy = identifier;
  transportIdentifier = [updatedCopy transportIdentifier];
  v11 = transportIdentifier;
  if (identifierCopy)
  {
    v12 = transportIdentifier;
    v13 = identifierCopy;
    if (v12 == v13)
    {
      v14 = 0;
    }

    else if (v12)
    {
      v14 = [v12 isEqualToString:v13] ^ 1;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v13 = transportIdentifier;
  }

  v15 = v13;
  if (creation || ([(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v15], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    os_unfair_lock_lock(&self->_lock);
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:updatedCopy];
    v17 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v15];
    handle = [v17 handle];
    [handle setEndpoint:updatedCopy];

    if (v14)
    {
      [(PDDatabaseManager *)self->_databaseManager deleteSharingEndpointForTransportIdentifier:identifierCopy];
      [(NSMutableDictionary *)self->_trackedHandles setObject:0 forKeyedSubscript:identifierCopy];
      [(NSMutableDictionary *)self->_trackedHandles setObject:v17 forKeyedSubscript:v11];
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = PKSharingLoggableMailboxAddress();
        v21 = PKSharingLoggableMailboxAddress();
        v23 = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handle<%@> Changed to %@", &v23, 0x16u);
      }

      os_unfair_lock_unlock(&self->_lock);
      if (v17 && [v17 isServerForRemoteHandle])
      {
        handle2 = [v17 handle];
        [handle2 didReceiveUpdatedTransportIdentifier:v11 reply:0];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)didReceiveIDSShareMessage:(id)message endpoint:(id)endpoint
{
  messageCopy = message;
  endpointCopy = endpoint;
  transportIdentifier = [endpointCopy transportIdentifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:transportIdentifier];
  v10 = v9;
  if (!v9)
  {
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:endpointCopy];
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:transportIdentifier];
    handle = [v11 handle];
    [handle setEndpoint:endpointCopy];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_7;
  }

  if ([v9 channelType] == 2)
  {
    if ([(PDAccessPassSharingIDSService *)self->_idsService isEndpoint:endpointCopy forSameDeviceIn:v10])
    {
LABEL_8:
      databaseManager = self->_databaseManager;
      v17 = messageCopy;
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v14 storePayloads:1 transportIdentifier:transportIdentifier];

      [(PDSharingChannelManager *)self handleOutstandingShareMessage:messageCopy endpoint:endpointCopy];
      goto LABEL_12;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Received IDS message, but existing channel is for different device. Ignoring conflict.", v16, 2u);
    }

LABEL_7:

    goto LABEL_8;
  }

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WARNING: Received IDS message, but existing channel is not IDS. Ignoring message.", v16, 2u);
  }

LABEL_12:
}

- (void)didReceiveLocalShareMessage:(id)message endpoint:(id)endpoint
{
  databaseManager = self->_databaseManager;
  messageCopy = message;
  endpointCopy = endpoint;
  messageCopy2 = message;
  v9 = [NSArray arrayWithObjects:&messageCopy count:1];
  transportIdentifier = [endpointCopy transportIdentifier];
  [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v9 storePayloads:1 transportIdentifier:transportIdentifier];

  [(PDSharingChannelManager *)self handleOutstandingShareMessage:messageCopy2 endpoint:endpointCopy];
}

- (void)didReceiveProximityShareMessage:(id)message endpoint:(id)endpoint
{
  messageCopy = message;
  endpointCopy = endpoint;
  transportIdentifier = [endpointCopy transportIdentifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:transportIdentifier];
  v10 = v9;
  if (!v9)
  {
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:endpointCopy];
    goto LABEL_7;
  }

  if ([v9 channelType] == 4)
  {
LABEL_7:
    databaseManager = self->_databaseManager;
    v15 = messageCopy;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v13 storePayloads:1 transportIdentifier:transportIdentifier];

    [(PDSharingChannelManager *)self handleOutstandingShareMessage:messageCopy endpoint:endpointCopy];
    goto LABEL_8;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Received IDS message, but existing channel is not IDS. Ignoring message.", v14, 2u);
  }

LABEL_8:
}

- (void)endpointGroupWasRemotelyTerminated:(id)terminated
{
  terminatedCopy = terminated;
  sharingEndpoints = [(PDDatabaseManager *)self->_databaseManager sharingEndpoints];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [sharingEndpoints countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(sharingEndpoints);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 channelType] == 4)
        {
          v11 = v10;
          group = [v11 group];
          v13 = terminatedCopy;
          v14 = v13;
          if (group != v13)
          {
            if (terminatedCopy && group)
            {
              v15 = [group isEqualToString:v13];

              if (!v15)
              {
                goto LABEL_15;
              }

LABEL_13:
              [(PDSharingChannelManager *)self endpointWasRemotelyTerminated:v11];
            }

            else
            {
            }

LABEL_15:

            continue;
          }

          goto LABEL_13;
        }
      }

      v7 = [sharingEndpoints countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)sharingChannelHandle:(id)handle wasInvalidatedRemotelyForEndpoint:(id)endpoint
{
  transportIdentifier = [endpoint transportIdentifier];
  [(PDSharingChannelManager *)self _handleWasInvalidatedForTransportIdentifier:transportIdentifier triggeredByClient:1];
}

- (BOOL)configureHandle:(id)handle forDescriptor:(id)descriptor
{
  handleCopy = handle;
  descriptorCopy = descriptor;
  v8 = [(PDSharingChannelManager *)self _endpointForDescriptor:descriptorCopy];
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    transportIdentifier = [v8 transportIdentifier];
    v20 = 0;
    v10 = [(PDSharingChannelManager *)self _lock_canTrackHandleForTransportIdentifier:transportIdentifier descriptor:descriptorCopy existing:&v20];
    v11 = v20;
    v12 = v11;
    if (!v10)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, &v17->super, OS_LOG_TYPE_DEFAULT, "Handle<%@> Attempted to use channel, but channel already in use.", buf, 0xCu);
      }

      goto LABEL_15;
    }

    if (v11)
    {
      handle = [v11 handle];
      [handle invalidateForTransfer];

      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v22 = v15;
        v16 = "Handle<%@> Transferring";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v22 = v15;
        v16 = "Handle<%@> Tracking";
        goto LABEL_13;
      }
    }

    v17 = [[PDSharingChannelHandleTracker alloc] initWithHandle:handleCopy];
    [(PDSharingChannelHandleTracker *)v17 setIsServerForRemoteHandle:1];
    [(NSMutableDictionary *)self->_trackedHandles setObject:v17 forKeyedSubscript:transportIdentifier];
    [handleCopy setEndpoint:v8];
LABEL_15:

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  transportIdentifier = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(transportIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, transportIdentifier, OS_LOG_TYPE_DEFAULT, "Failed to get endpoint to configure handled for descriptor: %@", buf, 0xCu);
  }

  LOBYTE(v10) = 0;
LABEL_16:

  return v10;
}

- (BOOL)_lock_canTrackHandleForTransportIdentifier:(id)identifier descriptor:(id)descriptor existing:(id *)existing
{
  descriptorCopy = descriptor;
  v9 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:identifier];
  v10 = v9;
  if (v9)
  {
    if (existing)
    {
      v11 = v9;
      *existing = v10;
    }

    if ([descriptorCopy type] == 2)
    {
      transferToken = [descriptorCopy transferToken];
      transferToken2 = [v10 transferToken];
      v14 = transferToken;
      v15 = v14;
      if (transferToken2 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0;
        if (v14 && transferToken2)
        {
          v16 = [transferToken2 isEqualToString:v14];
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)ancillaryServiceDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  os_unfair_lock_lock(&self->_lock);
  [(PDSharingChannelManager *)self _lock_removeAncillaryService:terminateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pingForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  endpoint = [handle endpoint];
  v8 = [(PDSharingChannelManager *)self channelForEndpoint:endpoint];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C7B0;
  v10[3] = &unk_10083C7F8;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 pingEndpoint:endpoint completion:v10];
}

- (void)sendMessageTo:(id)to message:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  endpoint = [to endpoint];
  [(PDSharingChannelManager *)self _sendMessage:messageCopy toEndpoint:endpoint completion:completionCopy];
}

- (void)_sendMessage:(id)message toEndpoint:(id)endpoint completion:(id)completion
{
  messageCopy = message;
  endpointCopy = endpoint;
  completionCopy = completion;
  [(PDSharingChannelManager *)self channelForEndpoint:endpointCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018C95C;
  v15[3] = &unk_10084A438;
  v15[4] = self;
  v18 = v16 = messageCopy;
  v19 = completionCopy;
  v17 = endpointCopy;
  v11 = v18;
  v12 = completionCopy;
  v13 = endpointCopy;
  v14 = messageCopy;
  [v11 sendMessageTo:v13 message:v14 completion:v15];
}

- (void)attachForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  endpoint = [handleCopy endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:endpoint];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018CB90;
  v12[3] = &unk_10084A460;
  v13 = handleCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = handleCopy;
  v11 = completionCopy;
  [v9 checkOutstandingMessagesOn:endpoint completion:v12];
}

- (void)closeForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  endpoint = [handleCopy endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:endpoint];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018CE64;
  v12[3] = &unk_10084A488;
  v13 = handleCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = handleCopy;
  [v9 closeEndpoint:endpoint completion:v12];
}

- (void)relinquishForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  endpoint = [handleCopy endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:endpoint];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018D010;
  v12[3] = &unk_10084A488;
  v12[4] = self;
  v13 = handleCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = handleCopy;
  [v9 relinquishEndpoint:endpoint completion:v12];
}

- (void)didHandleMessageForHandle:(id)handle message:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  endpoint = [handle endpoint];
  transportIdentifier = [endpoint transportIdentifier];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PKSharingLoggableMailboxAddress();
    *buf = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = messageCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle<%@> Handled message %@", buf, 0x16u);
  }

  databaseManager = self->_databaseManager;
  v16 = messageCopy;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v15 storePayloads:0 transportIdentifier:transportIdentifier];

  completionCopy[2](completionCopy);
}

- (void)universalShareURLForHandle:(id)handle urlDecoration:(id)decoration completion:(id)completion
{
  completionCopy = completion;
  decorationCopy = decoration;
  endpoint = [handle endpoint];
  v10 = [(PDSharingChannelManager *)self channelForEndpoint:endpoint];
  [v10 universalShareURLForEndpoint:endpoint urlDecoration:decorationCopy completion:completionCopy];
}

- (void)fetchHandleTransferTokenForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  handleCopy = handle;
  os_unfair_lock_lock(&self->_lock);
  transportIdentifier = [handleCopy transportIdentifier];

  v9 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:transportIdentifier];
  if (v9)
  {
    v10 = objc_alloc_init(NSUUID);
    uUIDString = [v10 UUIDString];

    [v9 setTransferToken:uUIDString];
    os_unfair_lock_unlock(&self->_lock);
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PKSharingLoggableMailboxAddress();
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = uUIDString;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle<%@> Created transfer token: '%@'", &v16, 0x16u);
    }

    completionCopy[2](completionCopy, uUIDString);
    completionCopy = uUIDString;
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PKSharingLoggableMailboxAddress();
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Handle<%@> Failed create transfer token", &v16, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)descriptorsForAccountDevicesForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  idsService = self->_idsService;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018D550;
  v8[3] = &unk_100844A90;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PDAccessPassSharingIDSService *)idsService devicesWithCompletion:v8];
}

- (void)bootstrapProximityChannelForHandle:(id)handle templateSession:(id)session group:(id)group completion:(id)completion
{
  completionCopy = completion;
  if ([(PDSharingProximityChannelService *)self->_proximityService configureWithTemplateSession:session group:group])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v9 = PDBasicError();
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)remoteDeviceInformationForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  endpoint = [handle endpoint];
  channelType = [endpoint channelType];
  if (channelType > 2)
  {
    if (channelType == 4)
    {
      v8 = objc_alloc_init(PKRemoteDevice);
      transportIdentifier = [endpoint transportIdentifier];
      [v8 setUniqueID:transportIdentifier];

      completionCopy[2](completionCopy, v8);
      goto LABEL_9;
    }

    if (channelType != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    completionCopy[2](completionCopy, 0);
    goto LABEL_9;
  }

  if (channelType < 2)
  {
    goto LABEL_7;
  }

  if (channelType == 2)
  {
    [(PDAccessPassSharingIDSService *)self->_idsService remoteDeviceInformationForEndpoint:endpoint completion:completionCopy];
  }

LABEL_9:
}

- (void)startProximityAdvertisementForHandle:(id)handle type:(unint64_t)type completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  v9 = completionCopy;
  if (type == 2)
  {
    v15 = [[NSString alloc] initWithFormat:@"%li", PKRandomNumberOfLength()];
    v19 = [PKContinuityProximityNWAdvertisement alloc];
    v20 = objc_alloc_init(NSUUID);
    uUIDString = [v20 UUIDString];
    v17 = [v19 initWithIdentifier:uUIDString pin:v15];

    v12 = [[PDSharingChannel_NWProximityVerificationAncillaryService alloc] initAdvertiserWithAdvertisement:v17 delegate:self completion:&stru_10084A548];
    os_unfair_lock_lock(&self->_lock);
    trackedHandles = self->_trackedHandles;
    transportIdentifier = [handleCopy transportIdentifier];
    v24 = [(NSMutableDictionary *)trackedHandles objectForKeyedSubscript:transportIdentifier];

    if (v24)
    {
      [(PDSharingChannelManager *)self _lock_addAncillaryService:v12 forTracker:v24];
      os_unfair_lock_unlock(&self->_lock);
      v25 = v17;
      if (v12)
      {
LABEL_17:
        (v9)[2](v9, v25);

        goto LABEL_18;
      }
    }

    else
    {

      os_unfair_lock_unlock(&self->_lock);
    }

    v25 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  if (type != 1)
  {
    if (!type)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    goto LABEL_21;
  }

  os_unfair_lock_lock(&self->_lock);
  keyEnumerator = [(NSMapTable *)self->_trackedAncillaryServices keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v12 = [allObjects pk_firstObjectPassingTest:&stru_10084A508];

  if (!v12)
  {
    v12 = [[PDSharingChannel_BLEProximityVerificationAncillaryService alloc] initAdvertiserDelegate:self completion:&stru_10084A528];
  }

  v13 = self->_trackedHandles;
  transportIdentifier2 = [handleCopy transportIdentifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:transportIdentifier2];

  if (!v15)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_14;
  }

  [(PDSharingChannelManager *)self _lock_addAncillaryService:v12 forTracker:v15];
  os_unfair_lock_unlock(&self->_lock);
  if (!v12)
  {
LABEL_14:
    v9[2](v9, 0);
    v12 = 0;
    goto LABEL_19;
  }

  v16 = [PKContinuityProximityBLEAdvertisement alloc];
  v17 = PKSerialNumber();
  v18 = [v16 initWithIdentifier:v17];
  (v9)[2](v9, v18);

LABEL_18:
LABEL_19:

  if (v12)
  {
    [v12 start];
  }

LABEL_21:
}

- (void)startProximityDetectionForHandle:(id)handle advertisement:(id)advertisement completion:(id)completion
{
  handleCopy = handle;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018DC24;
  v12[3] = &unk_10084A570;
  advertisementCopy = advertisement;
  selfCopy = self;
  v15 = handleCopy;
  completionCopy = completion;
  v9 = handleCopy;
  v10 = completionCopy;
  v11 = advertisementCopy;
  [v9 remoteDeviceInformation:v12];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
  if (([v7 sharingAllAccess] & 1) != 0 || objc_msgSend(v7, "paymentAllAccess"))
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = processIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSharingChannelManager: Adding connection from pid: %d", &v14, 8u);
    }

    v9 = [[PDSharingChannelHandle_Server alloc] initWithConnection:connectionCopy queue:self->_replyQueue delegate:self dataSource:self];
    v10 = PDSharingChannelServiceInterface_Server();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:v9];
    v11 = PKSharingChannelServiceInterface_Client();
    [connectionCopy setRemoteObjectInterface:v11];

    [connectionCopy resume];
    v12 = 1;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = connectionCopy;
      v16 = 2048;
      v17 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDSharingChannelManager: rejecting connection %p - remote process %ld missing entitlement com.apple.wallet.application-authorization.", &v14, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

@end