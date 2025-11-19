@interface PDSharingChannelManager
- (BOOL)_lock_canTrackHandleForTransportIdentifier:(id)a3 descriptor:(id)a4 existing:(id *)a5;
- (BOOL)canHandleOutstandingMessagesOnEndpoint:(id)a3;
- (BOOL)configureHandle:(id)a3 forDescriptor:(id)a4;
- (BOOL)isDescriptorValid:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PDSharingChannelManager)initWithWebServiceCoordinator:(id)a3 databaseManager:(id)a4 pushNotificationManager:(id)a5 idsSharingService:(id)a6;
- (id)_createHandleForEndpoint:(id)a3 descriptor:(id)a4 queue:(id)a5;
- (id)_endpointForDescriptor:(id)a3;
- (id)_lock_sharingChannelHandleForEndpoint:(id)a3;
- (id)channelForEndpoint:(id)a3;
- (id)handleForDescriptor:(id)a3 queue:(id)a4;
- (void)_handleDidInvalidateForTransportIdentifier:(id)a3;
- (void)_handleWasInvalidatedForTransportIdentifier:(id)a3 triggeredByClient:(BOOL)a4;
- (void)_lock_addAncillaryService:(id)a3 forTracker:(id)a4;
- (void)_lock_removeAncillaryService:(id)a3;
- (void)_lock_removeAncillaryService:(id)a3 forTracker:(id)a4;
- (void)_lock_removeAncillaryServiceForTracker:(id)a3;
- (void)_notifyDelegatesWithBlock:(id)a3;
- (void)_sendMessage:(id)a3 toEndpoint:(id)a4 completion:(id)a5;
- (void)addDelegate:(id)a3;
- (void)ancillaryServiceDidTerminate:(id)a3;
- (void)attachForHandle:(id)a3 completion:(id)a4;
- (void)bootstrapProximityChannelForHandle:(id)a3 templateSession:(id)a4 group:(id)a5 completion:(id)a6;
- (void)cacheSharingMessageForDescriptor:(id)a3 message:(id)a4;
- (void)closeForHandle:(id)a3 completion:(id)a4;
- (void)descriptorsForAccountDevicesForHandle:(id)a3 completion:(id)a4;
- (void)didHandleMessageForHandle:(id)a3 message:(id)a4 completion:(id)a5;
- (void)didReceiveIDSShareMessage:(id)a3 endpoint:(id)a4;
- (void)didReceiveLocalShareMessage:(id)a3 endpoint:(id)a4;
- (void)didReceiveProximityShareMessage:(id)a3 endpoint:(id)a4;
- (void)endpointGroupWasRemotelyTerminated:(id)a3;
- (void)endpointWasRemotelyTerminated:(id)a3;
- (void)endpointWasUpdated:(id)a3 oldTransportIdentifier:(id)a4 allowCreation:(BOOL)a5;
- (void)fetchHandleTransferTokenForHandle:(id)a3 completion:(id)a4;
- (void)handleOutstandingShareMessage:(id)a3 endpoint:(id)a4;
- (void)pingForHandle:(id)a3 completion:(id)a4;
- (void)prewarmEndpointCreationForDescriptor:(id)a3 count:(unint64_t)a4 completion:(id)a5;
- (void)relinquishForHandle:(id)a3 completion:(id)a4;
- (void)remoteDeviceInformationForHandle:(id)a3 completion:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)sendMessageTo:(id)a3 message:(id)a4 completion:(id)a5;
- (void)sendMessageToDescriptor:(id)a3 message:(id)a4 completion:(id)a5;
- (void)sharingChannelHandle:(id)a3 wasInvalidatedRemotelyForEndpoint:(id)a4;
- (void)start;
- (void)startProximityAdvertisementForHandle:(id)a3 type:(unint64_t)a4 completion:(id)a5;
- (void)startProximityDetectionForHandle:(id)a3 advertisement:(id)a4 completion:(id)a5;
- (void)universalShareURLForHandle:(id)a3 urlDecoration:(id)a4 completion:(id)a5;
@end

@implementation PDSharingChannelManager

- (PDSharingChannelManager)initWithWebServiceCoordinator:(id)a3 databaseManager:(id)a4 pushNotificationManager:(id)a5 idsSharingService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v42.receiver = self;
  v42.super_class = PDSharingChannelManager;
  v15 = [(PDSharingChannelManager *)&v42 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_webServiceCoordinator, a3);
    objc_storeStrong(&v16->_databaseManager, a4);
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
    v27 = [[PDDynamicAssociatedDomainService alloc] initDatabaseManager:v12];
    v28 = [[PDSharingRelayServerService alloc] initWithWebServiceCoordinator:v16->_webServiceCoordinator domainService:v27 pushNotificationManager:v13 delegate:v16];
    relayService = v16->_relayService;
    v16->_relayService = v28;

    v30 = [[PDAccessPassSharingIDSService alloc] initWithIDSSharingService:v14 delegate:v16];
    idsService = v16->_idsService;
    v16->_idsService = v30;

    v32 = [[PDSharingLocalOnDeviceService alloc] initWithDelegate:v16];
    localOnDeviceService = v16->_localOnDeviceService;
    v16->_localOnDeviceService = v32;

    v34 = [[PDSharingProximityChannelService alloc] initWithDelegate:v16];
    proximityService = v16->_proximityService;
    v16->_proximityService = v34;

    v36 = [[PDSharingChannelMonitor alloc] initWithQueue:v16->_queue webServiceCoordinator:v16->_webServiceCoordinator databaseManager:v16->_databaseManager pushNotificationManager:v13 delegate:v16];
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

- (BOOL)isDescriptorValid:(id)a3
{
  v3 = [(PDSharingChannelManager *)self _endpointForDescriptor:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)handleForDescriptor:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDSharingChannelManager *)self _endpointForDescriptor:v6];
  if (!v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get endpoint for descriptor: %@", &v12, 0xCu);
    }
  }

  v10 = [(PDSharingChannelManager *)self _createHandleForEndpoint:v8 descriptor:v6 queue:v7];

  return v10;
}

- (void)sendMessageToDescriptor:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PDSharingChannelManager *)self _endpointForDescriptor:v8];
  if (v11)
  {
    os_unfair_lock_lock(&self->_lock);
    trackedHandles = self->_trackedHandles;
    v13 = [v11 transportIdentifier];
    v14 = [(NSMutableDictionary *)trackedHandles objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = [v14 isServerForRemoteHandle];
      os_unfair_lock_unlock(&self->_lock);
      if (v15)
      {
        v16 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v11 transportIdentifier];
          v18 = PKSharingLoggableMailboxAddress();
          *buf = 138412546;
          v31 = v18;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WARNING: Blocking message from being sent on channel %@ because active handle owned by remote process. \n\n message: %@", buf, 0x16u);
        }

        v10[2](v10, 1, 0);
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
      v21 = [v11 transportIdentifier];
      v22 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Allowing message to be sent on channel %@ without checking handle.", buf, 0xCu);
    }

    v23 = [v9 payload];
    v24 = [v9 displayInformation];
    v29 = 0;
    v25 = [PKSharingMessage specializedMessageFromPayload:v23 displayInformation:v24 outError:&v29];
    v26 = v29;

    if (v26)
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to create specialized message from %@", buf, 0xCu);
      }

      v28 = PDBasicError();
      (v10)[2](v10, 0, v28);
    }

    else
    {
      [(PDSharingChannelManager *)self _sendMessage:v25 toEndpoint:v11 completion:v10];
    }
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to send message because unable to get endpoint for descriptor: %@ \n\n message: %@", buf, 0x16u);
    }

    v14 = PDBasicError();
    (v10)[2](v10, 0, v14);
  }

LABEL_20:
}

- (id)_endpointForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v7 = v4;
      v11 = [v7 deviceIdentifier];
      v16 = [v7 subtype];
      if (v16 == 2)
      {
        goto LABEL_21;
      }

      if (v16 == 1)
      {
        v13 = [(PDAccessPassSharingIDSService *)self->_idsService resolveRemoteAddressForDeviceIdentifier:v11];
        v6 = [[PDSharingIDSEndpoint alloc] initWithDeviceIdentifier:v13];
        [(PDSharingIDSEndpoint *)v6 setIsDeviceOnSameIDSAccount:2];
        goto LABEL_65;
      }

      if (!v16)
      {
LABEL_21:
        v13 = [v7 sessionIdentifier];
        if (v13)
        {
          v17 = [[PDSharingIDSEndpoint alloc] initWithSessionIdentifier:v13 deviceIdentifier:v11];
LABEL_50:
          v38 = v17;
          databaseManager = self->_databaseManager;
          v40 = [(PDSharingIDSEndpoint *)v17 transportIdentifier];
          v41 = [(PDDatabaseManager *)databaseManager sharingEndpointForTransportIdentifier:v40];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v38;
          }

          v6 = v43;

          goto LABEL_65;
        }

        if (!v11)
        {
          goto LABEL_64;
        }

        v14 = [[PDSharingIDSEndpoint alloc] initWithDeviceIdentifier:v11];
LABEL_16:
        v6 = v14;
LABEL_65:

        goto LABEL_66;
      }

LABEL_43:
      v6 = 0;
LABEL_66:

      goto LABEL_67;
    }

    if (v5 != 5)
    {
      if (v5 != 6)
      {
        goto LABEL_68;
      }

      v7 = v4;
      [v7 group];
      v11 = PKSharingProximityChannelDescriptorGroupToString();
      if ([(PDSharingProximityChannelService *)self->_proximityService hasConfiguredSessionForGroup:v11])
      {
        v12 = [PDSharingProximityEndpoint alloc];
        v13 = [v7 sessionIdentifier];
        v14 = [(PDSharingProximityEndpoint *)v12 initWithSessionIdentifier:v13 group:v11];
        goto LABEL_16;
      }

      v35 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v11;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Failed to create endpoint for group %@ because group not tracked", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v26 = v4;
    v27 = [v26 subtype];
    if (v27 == 1)
    {
      v44 = [PDSharingLocalOnDeviceEndpoint alloc];
      v29 = [v26 contraChannelTransportIdentifier];
      v30 = [v26 transportIdentifier];
      v31 = v44;
      v32 = v29;
      v33 = v30;
      v34 = 0;
    }

    else
    {
      if (v27)
      {
        v6 = 0;
        goto LABEL_58;
      }

      v28 = [PDSharingLocalOnDeviceEndpoint alloc];
      v29 = [v26 transportIdentifier];
      v30 = [v26 contraChannelTransportIdentifier];
      v31 = v28;
      v32 = v29;
      v33 = v30;
      v34 = 1;
    }

    v6 = [(PDSharingLocalOnDeviceEndpoint *)v31 initWithSourceTransportIdentifier:v32 destinationTransportIdentifier:v33 isSource:v34];

LABEL_58:
    goto LABEL_68;
  }

  if (v5 == 1)
  {
    v15 = self->_databaseManager;
    v7 = [v4 transportIdentifier];
    v6 = [(PDDatabaseManager *)v15 sharingEndpointForTransportIdentifier:v7];
    goto LABEL_67;
  }

  if (v5 == 2)
  {
    v7 = [v4 transferToken];
    os_unfair_lock_lock(&self->_lock);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = self->_trackedHandles;
    v6 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v6)
    {
      v46 = v4;
      v19 = *v48;
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v18);
          }

          v21 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
          v22 = [v21 transferToken];
          v23 = v7;
          v24 = v23;
          if (v22 == v23)
          {

LABEL_45:
            v36 = [v21 handle];
            v6 = [v36 endpoint];

            goto LABEL_46;
          }

          if (v7 && v22)
          {
            v25 = [v22 isEqualToString:v23];

            if (v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
          }
        }

        v6 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

LABEL_46:
      v4 = v46;
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_67;
  }

  if (v5 != 3)
  {
    goto LABEL_68;
  }

  v7 = v4;
  v8 = [v7 subtype];
  if (v8 == 2)
  {
    v11 = [v7 existingChannelURL];
    v37 = [v7 existingMailboxIdentifier];
    v13 = v37;
    if (v11)
    {
      v17 = [(PDSharingRelayServerService *)self->_relayService relayEndpointForMailboxAddress:v11];
      goto LABEL_50;
    }

    if (v37)
    {
      v14 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v37];
      goto LABEL_16;
    }

LABEL_64:
    v6 = 0;
    goto LABEL_65;
  }

  if (v8 == 1)
  {
    if ([v7 stateful])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    relayService = self->_relayService;
    v11 = [v7 region];
    v6 = [(PDSharingRelayServerService *)relayService endpointOfType:v9 region:v11];
    goto LABEL_66;
  }

  v6 = 0;
LABEL_67:

LABEL_68:

  return v6;
}

- (id)_createHandleForEndpoint:(id)a3 descriptor:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 transportIdentifier];
  if (!v11)
  {
    v23 = 0;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock);
  v27 = 0;
  v12 = [(PDSharingChannelManager *)self _lock_canTrackHandleForTransportIdentifier:v11 descriptor:v9 existing:&v27];
  v13 = v27;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      v15 = [v13 handle];
      [v15 invalidateForTransfer];
    }

    v16 = [[PDSharingChannelHandle alloc] initWithEndpoint:v8 queue:v10 delegate:self dataSource:self];
    v17 = v16;
    if (!v16)
    {
      goto LABEL_14;
    }

    databaseManager = self->_databaseManager;
    v19 = [(PDSharingChannelHandle *)v16 transportIdentifier];
    v20 = [(PDDatabaseManager *)databaseManager sharingMessagesForTransportIdentifier:v19];

    [(PDSharingChannelHandle *)v17 didReceiveMessages:v20];
    v21 = [[PDSharingChannelHandleTracker alloc] initWithHandle:v17];
    [(NSMutableDictionary *)self->_trackedHandles setObject:v21 forKeyedSubscript:v11];
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

- (id)_lock_sharingChannelHandleForEndpoint:(id)a3
{
  v4 = [a3 transportIdentifier];
  v5 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v4];
  v6 = [v5 handle];

  return v6;
}

- (void)cacheSharingMessageForDescriptor:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = [(PDSharingChannelManager *)self _endpointForDescriptor:a3];
  if (v7)
  {
    databaseManager = self->_databaseManager;
    v11 = v6;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = [v7 transportIdentifier];
    [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v9 storePayloads:1 transportIdentifier:v10];
  }
}

- (void)prewarmEndpointCreationForDescriptor:(id)a3 count:(unint64_t)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a5;
  if ([v11 type] == 3)
  {
    v9 = v11;
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

      [(PDSharingRelayServerService *)self->_relayService prewarmEndpointCreationOfType:v10 count:a4 completion:v8];

      goto LABEL_9;
    }
  }

  v8[2](v8, 1);
LABEL_9:
}

- (void)_handleWasInvalidatedForTransportIdentifier:(id)a3 triggeredByClient:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v6];
    v8 = [v7 handle];
    os_unfair_lock_unlock(&self->_lock);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018ACFC;
    v12[3] = &unk_10083C4C0;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    v9 = v7;
    v10 = objc_retainBlock(v12);
    v11 = v10;
    if (a4 || !v8)
    {
      (v10[2])(v10);
    }

    else
    {
      [v8 invalidate];
    }
  }
}

- (void)_handleDidInvalidateForTransportIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v4];
  v6 = v5;
  if (v5 && [v5 channelType] == 1)
  {
    v7 = [(PDDatabaseManager *)self->_databaseManager sharingMessagesForTransportIdentifier:v4];
    v8 = [v7 firstObject];

    if (v8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10018AEF0;
      v9[3] = &unk_10084A3E8;
      v10 = v8;
      v11 = v4;
      [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v9];
    }
  }
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_delegates removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_notifyDelegatesWithBlock:(id)a3
{
  v4 = a3;
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
        v12 = v4;
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

- (void)_lock_addAncillaryService:(id)a3 forTracker:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_trackedAncillaryServices objectForKey:v8];
  if (!v7)
  {
    v7 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    [(NSMapTable *)self->_trackedAncillaryServices setObject:v7 forKey:v8];
  }

  [v7 addObject:v6];
}

- (void)_lock_removeAncillaryService:(id)a3 forTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_trackedAncillaryServices objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    [v8 removeObject:v7];
    if (![v9 count])
    {
      [(NSMapTable *)self->_trackedAncillaryServices removeObjectForKey:v6];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018B2E4;
      block[3] = &unk_10083C470;
      v12 = v6;
      dispatch_async(queue, block);
    }
  }
}

- (void)_lock_removeAncillaryServiceForTracker:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_trackedAncillaryServices keyEnumerator];
  v6 = [v5 allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

        [(PDSharingChannelManager *)self _lock_removeAncillaryService:*(*(&v12 + 1) + 8 * v11) forTracker:v4, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_lock_removeAncillaryService:(id)a3
{
  v4 = a3;
  [(NSMapTable *)self->_trackedAncillaryServices removeObjectForKey:v4];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B4C0;
  block[3] = &unk_10083C470;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (id)channelForEndpoint:(id)a3
{
  v4 = [a3 channelType];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      localOnDeviceService = self->_localOnDeviceService;
      goto LABEL_11;
    }

    if (v4 == 4)
    {
      localOnDeviceService = self->_proximityService;
      goto LABEL_11;
    }

LABEL_8:
    [NSException raise:NSInternalInconsistencyException format:@"Sharing channel requested for endpoint, but none found"];
    v6 = 0;
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    localOnDeviceService = self->_relayService;
    goto LABEL_11;
  }

  if (v4 != 2)
  {
    goto LABEL_8;
  }

  localOnDeviceService = self->_idsService;
LABEL_11:
  v6 = localOnDeviceService;
LABEL_12:

  return v6;
}

- (BOOL)canHandleOutstandingMessagesOnEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PDSharingChannelManager *)self _lock_sharingChannelHandleForEndpoint:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    databaseManager = self->_databaseManager;
    v8 = [v4 transportIdentifier];
    v9 = [(PDDatabaseManager *)databaseManager passShareForTransportIdentifier:v8];

    v6 = v9 != 0;
    if (!v9)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 transportIdentifier];
        v12 = PKSharingLoggableMailboxAddress();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Error: Unable to find active share for endpoint %{public}@", &v14, 0xCu);
      }
    }
  }

  return v6;
}

- (void)handleOutstandingShareMessage:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(PDSharingChannelManager *)self _lock_sharingChannelHandleForEndpoint:v7];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v13 = v6;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    [v8 didReceiveMessages:v9];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10018B818;
    v10[3] = &unk_10084A3E8;
    v11 = v6;
    v12 = v7;
    [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v10];

    v9 = v11;
  }
}

- (void)endpointWasRemotelyTerminated:(id)a3
{
  v4 = a3;
  v5 = [v4 transportIdentifier];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PKSharingLoggableMailboxAddress();
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting endpoint %@ because it was terminated remotely.", buf, 0xCu);
  }

  [(PDDatabaseManager *)self->_databaseManager deleteSharingEndpoint:v4];
  [(PDSharingChannelManager *)self _handleWasInvalidatedForTransportIdentifier:v5 triggeredByClient:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B9F0;
  v9[3] = &unk_10084A410;
  v10 = v5;
  v8 = v5;
  [(PDSharingChannelManager *)self _notifyDelegatesWithBlock:v9];
}

- (void)endpointWasUpdated:(id)a3 oldTransportIdentifier:(id)a4 allowCreation:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 transportIdentifier];
  v11 = v10;
  if (v9)
  {
    v12 = v10;
    v13 = v9;
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
    v13 = v10;
  }

  v15 = v13;
  if (a5 || ([(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v15], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    os_unfair_lock_lock(&self->_lock);
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:v8];
    v17 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v15];
    v18 = [v17 handle];
    [v18 setEndpoint:v8];

    if (v14)
    {
      [(PDDatabaseManager *)self->_databaseManager deleteSharingEndpointForTransportIdentifier:v9];
      [(NSMutableDictionary *)self->_trackedHandles setObject:0 forKeyedSubscript:v9];
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
        v22 = [v17 handle];
        [v22 didReceiveUpdatedTransportIdentifier:v11 reply:0];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)didReceiveIDSShareMessage:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 transportIdentifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v8];
  v10 = v9;
  if (!v9)
  {
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:v7];
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v8];
    v12 = [v11 handle];
    [v12 setEndpoint:v7];

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_7;
  }

  if ([v9 channelType] == 2)
  {
    if ([(PDAccessPassSharingIDSService *)self->_idsService isEndpoint:v7 forSameDeviceIn:v10])
    {
LABEL_8:
      databaseManager = self->_databaseManager;
      v17 = v6;
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v14 storePayloads:1 transportIdentifier:v8];

      [(PDSharingChannelManager *)self handleOutstandingShareMessage:v6 endpoint:v7];
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

- (void)didReceiveLocalShareMessage:(id)a3 endpoint:(id)a4
{
  databaseManager = self->_databaseManager;
  v11 = a3;
  v7 = a4;
  v8 = a3;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [v7 transportIdentifier];
  [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v9 storePayloads:1 transportIdentifier:v10];

  [(PDSharingChannelManager *)self handleOutstandingShareMessage:v8 endpoint:v7];
}

- (void)didReceiveProximityShareMessage:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 transportIdentifier];
  v9 = [(PDDatabaseManager *)self->_databaseManager sharingEndpointForTransportIdentifier:v8];
  v10 = v9;
  if (!v9)
  {
    [(PDDatabaseManager *)self->_databaseManager insertSharingEndpoint:v7];
    goto LABEL_7;
  }

  if ([v9 channelType] == 4)
  {
LABEL_7:
    databaseManager = self->_databaseManager;
    v15 = v6;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
    [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v13 storePayloads:1 transportIdentifier:v8];

    [(PDSharingChannelManager *)self handleOutstandingShareMessage:v6 endpoint:v7];
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

- (void)endpointGroupWasRemotelyTerminated:(id)a3
{
  v4 = a3;
  v5 = [(PDDatabaseManager *)self->_databaseManager sharingEndpoints];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 channelType] == 4)
        {
          v11 = v10;
          v12 = [v11 group];
          v13 = v4;
          v14 = v13;
          if (v12 != v13)
          {
            if (v4 && v12)
            {
              v15 = [v12 isEqualToString:v13];

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

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)sharingChannelHandle:(id)a3 wasInvalidatedRemotelyForEndpoint:(id)a4
{
  v5 = [a4 transportIdentifier];
  [(PDSharingChannelManager *)self _handleWasInvalidatedForTransportIdentifier:v5 triggeredByClient:1];
}

- (BOOL)configureHandle:(id)a3 forDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDSharingChannelManager *)self _endpointForDescriptor:v7];
  if (v8)
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [v8 transportIdentifier];
    v20 = 0;
    v10 = [(PDSharingChannelManager *)self _lock_canTrackHandleForTransportIdentifier:v9 descriptor:v7 existing:&v20];
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
      v13 = [v11 handle];
      [v13 invalidateForTransfer];

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

    v17 = [[PDSharingChannelHandleTracker alloc] initWithHandle:v6];
    [(PDSharingChannelHandleTracker *)v17 setIsServerForRemoteHandle:1];
    [(NSMutableDictionary *)self->_trackedHandles setObject:v17 forKeyedSubscript:v9];
    [v6 setEndpoint:v8];
LABEL_15:

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get endpoint to configure handled for descriptor: %@", buf, 0xCu);
  }

  LOBYTE(v10) = 0;
LABEL_16:

  return v10;
}

- (BOOL)_lock_canTrackHandleForTransportIdentifier:(id)a3 descriptor:(id)a4 existing:(id *)a5
{
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:a3];
  v10 = v9;
  if (v9)
  {
    if (a5)
    {
      v11 = v9;
      *a5 = v10;
    }

    if ([v8 type] == 2)
    {
      v12 = [v8 transferToken];
      v13 = [v10 transferToken];
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0;
        if (v14 && v13)
        {
          v16 = [v13 isEqualToString:v14];
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

- (void)ancillaryServiceDidTerminate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PDSharingChannelManager *)self _lock_removeAncillaryService:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pingForHandle:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 endpoint];
  v8 = [(PDSharingChannelManager *)self channelForEndpoint:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C7B0;
  v10[3] = &unk_10083C7F8;
  v11 = v6;
  v9 = v6;
  [v8 pingEndpoint:v7 completion:v10];
}

- (void)sendMessageTo:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 endpoint];
  [(PDSharingChannelManager *)self _sendMessage:v9 toEndpoint:v10 completion:v8];
}

- (void)_sendMessage:(id)a3 toEndpoint:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PDSharingChannelManager *)self channelForEndpoint:v9];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018C95C;
  v15[3] = &unk_10084A438;
  v15[4] = self;
  v18 = v16 = v8;
  v19 = v10;
  v17 = v9;
  v11 = v18;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 sendMessageTo:v13 message:v14 completion:v15];
}

- (void)attachForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018CB90;
  v12[3] = &unk_10084A460;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v9 checkOutstandingMessagesOn:v8 completion:v12];
}

- (void)closeForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018CE64;
  v12[3] = &unk_10084A488;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [v9 closeEndpoint:v8 completion:v12];
}

- (void)relinquishForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endpoint];
  v9 = [(PDSharingChannelManager *)self channelForEndpoint:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018D010;
  v12[3] = &unk_10084A488;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 relinquishEndpoint:v8 completion:v12];
}

- (void)didHandleMessageForHandle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 endpoint];
  v11 = [v10 transportIdentifier];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PKSharingLoggableMailboxAddress();
    *buf = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle<%@> Handled message %@", buf, 0x16u);
  }

  databaseManager = self->_databaseManager;
  v16 = v8;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  [(PDDatabaseManager *)databaseManager insertOrUpdateSharingMessages:v15 storePayloads:0 transportIdentifier:v11];

  v9[2](v9);
}

- (void)universalShareURLForHandle:(id)a3 urlDecoration:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 endpoint];
  v10 = [(PDSharingChannelManager *)self channelForEndpoint:v11];
  [v10 universalShareURLForEndpoint:v11 urlDecoration:v9 completion:v8];
}

- (void)fetchHandleTransferTokenForHandle:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 transportIdentifier];

  v9 = [(NSMutableDictionary *)self->_trackedHandles objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = objc_alloc_init(NSUUID);
    v11 = [v10 UUIDString];

    [v9 setTransferToken:v11];
    os_unfair_lock_unlock(&self->_lock);
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PKSharingLoggableMailboxAddress();
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle<%@> Created transfer token: '%@'", &v16, 0x16u);
    }

    v6[2](v6, v11);
    v6 = v11;
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

    v6[2](v6, 0);
  }
}

- (void)descriptorsForAccountDevicesForHandle:(id)a3 completion:(id)a4
{
  v5 = a4;
  idsService = self->_idsService;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018D550;
  v8[3] = &unk_100844A90;
  v9 = v5;
  v7 = v5;
  [(PDAccessPassSharingIDSService *)idsService devicesWithCompletion:v8];
}

- (void)bootstrapProximityChannelForHandle:(id)a3 templateSession:(id)a4 group:(id)a5 completion:(id)a6
{
  v10 = a6;
  if ([(PDSharingProximityChannelService *)self->_proximityService configureWithTemplateSession:a4 group:a5])
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v9 = PDBasicError();
    (v10)[2](v10, 0, v9);
  }
}

- (void)remoteDeviceInformationForHandle:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = [a3 endpoint];
  v7 = [v6 channelType];
  if (v7 > 2)
  {
    if (v7 == 4)
    {
      v8 = objc_alloc_init(PKRemoteDevice);
      v9 = [v6 transportIdentifier];
      [v8 setUniqueID:v9];

      v10[2](v10, v8);
      goto LABEL_9;
    }

    if (v7 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10[2](v10, 0);
    goto LABEL_9;
  }

  if (v7 < 2)
  {
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    [(PDAccessPassSharingIDSService *)self->_idsService remoteDeviceInformationForEndpoint:v6 completion:v10];
  }

LABEL_9:
}

- (void)startProximityAdvertisementForHandle:(id)a3 type:(unint64_t)a4 completion:(id)a5
{
  v26 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 == 2)
  {
    v15 = [[NSString alloc] initWithFormat:@"%li", PKRandomNumberOfLength()];
    v19 = [PKContinuityProximityNWAdvertisement alloc];
    v20 = objc_alloc_init(NSUUID);
    v21 = [v20 UUIDString];
    v17 = [v19 initWithIdentifier:v21 pin:v15];

    v12 = [[PDSharingChannel_NWProximityVerificationAncillaryService alloc] initAdvertiserWithAdvertisement:v17 delegate:self completion:&stru_10084A548];
    os_unfair_lock_lock(&self->_lock);
    trackedHandles = self->_trackedHandles;
    v23 = [v26 transportIdentifier];
    v24 = [(NSMutableDictionary *)trackedHandles objectForKeyedSubscript:v23];

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

  if (a4 != 1)
  {
    if (!a4)
    {
      (*(v8 + 2))(v8, 0);
    }

    goto LABEL_21;
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMapTable *)self->_trackedAncillaryServices keyEnumerator];
  v11 = [v10 allObjects];
  v12 = [v11 pk_firstObjectPassingTest:&stru_10084A508];

  if (!v12)
  {
    v12 = [[PDSharingChannel_BLEProximityVerificationAncillaryService alloc] initAdvertiserDelegate:self completion:&stru_10084A528];
  }

  v13 = self->_trackedHandles;
  v14 = [v26 transportIdentifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];

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

- (void)startProximityDetectionForHandle:(id)a3 advertisement:(id)a4 completion:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018DC24;
  v12[3] = &unk_10084A570;
  v13 = a4;
  v14 = self;
  v15 = v8;
  v16 = a5;
  v9 = v8;
  v10 = v16;
  v11 = v13;
  [v9 remoteDeviceInformation:v12];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 processIdentifier];
  v7 = [[PKEntitlementWhitelist alloc] initWithConnection:v5];
  if (([v7 sharingAllAccess] & 1) != 0 || objc_msgSend(v7, "paymentAllAccess"))
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSharingChannelManager: Adding connection from pid: %d", &v14, 8u);
    }

    v9 = [[PDSharingChannelHandle_Server alloc] initWithConnection:v5 queue:self->_replyQueue delegate:self dataSource:self];
    v10 = PDSharingChannelServiceInterface_Server();
    [v5 setExportedInterface:v10];

    [v5 setExportedObject:v9];
    v11 = PKSharingChannelServiceInterface_Client();
    [v5 setRemoteObjectInterface:v11];

    [v5 resume];
    v12 = 1;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDSharingChannelManager: rejecting connection %p - remote process %ld missing entitlement com.apple.wallet.application-authorization.", &v14, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

@end