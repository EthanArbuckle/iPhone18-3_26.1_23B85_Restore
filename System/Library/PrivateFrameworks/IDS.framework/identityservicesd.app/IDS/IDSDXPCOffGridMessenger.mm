@interface IDSDXPCOffGridMessenger
- (BOOL)isCTClientActive;
- (IDSDXPCOffGridMessenger)initWithQueue:(id)queue;
- (id)identifierFromMessage:(id)message senderURI:(id)i receiverURI:(id)rI senderKey:(id)key ratchetCounter:(unsigned int)counter authTag:(id)tag;
- (void)decryptOffGridMessage:(id)message completion:(id)completion;
- (void)donateHandlesForMessagingKeys:(id)keys fromURI:(id)i options:(id)options completion:(id)completion;
- (void)encryptOffGridMessage:(id)message completion:(id)completion;
- (void)incomingOffGridMessage:(id)message messageContext:(id)context completion:(id)completion;
- (void)incomingOffGridSummaryMessage:(id)message messageContext:(id)context completion:(id)completion;
- (void)monitorConnection:(id)connection;
- (void)resultsForDestinationURIs:(id)is senderURI:(id)i service:(id)service options:(id)options completion:(id)completion;
- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendFetchRequestForHandles:(id)handles fromHandle:(id)handle completion:(id)completion;
- (void)setupOffGridMessengerClient:(id)client withUUID:(id)d forServiceType:(int64_t)type;
@end

@implementation IDSDXPCOffGridMessenger

- (IDSDXPCOffGridMessenger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = IDSDXPCOffGridMessenger;
  v6 = [(IDSDXPCOffGridMessenger *)&v13 init];
  if (v6)
  {
    v7 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created IDSDXPCOffGridMessenger {self: %p}", buf, 0xCu);
    }

    v8 = +[IDSStewieCTMessagingClient sharedInstance];
    ctClient = v6->_ctClient;
    v6->_ctClient = v8;

    [(IDSStewieCTMessagingClient *)v6->_ctClient setMessagingDelegate:v6];
    objc_storeStrong(&v6->_queue, queue);
    v10 = [[IMNetworkConnectionMonitor alloc] initWithRemoteHost:0 delegate:0];
    connectionMonitor = v6->_connectionMonitor;
    v6->_connectionMonitor = v10;
  }

  return v6;
}

- (void)monitorConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDXPCOffGridMessenger monitoring new connection {self: %p, connection: %@}", &v6, 0x16u);
  }
}

- (BOOL)isCTClientActive
{
  isActiveForIML = [(IDSStewieCTMessagingClient *)self->_ctClient isActiveForIML];
  v3 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (isActiveForIML)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CT Data client is active? %@", &v6, 0xCu);
  }

  return isActiveForIML;
}

- (void)setupOffGridMessengerClient:(id)client withUUID:(id)d forServiceType:(int64_t)type
{
  dCopy = d;
  if (client)
  {
    remoteObjectProxy = [client remoteObjectProxy];
    v10 = +[IDSFoundationLog IDSOffGridMessenger];
    clientRemoteObjectsByService4 = v10;
    if (remoteObjectProxy)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134218498;
        selfCopy3 = self;
        v36 = 2112;
        v37 = dCopy;
        v38 = 2048;
        typeCopy3 = type;
        _os_log_impl(&_mh_execute_header, clientRemoteObjectsByService4, OS_LOG_TYPE_DEFAULT, "Adding OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
      }

      clientRemoteObjectsByService = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];

      if (!clientRemoteObjectsByService)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCOffGridMessenger *)self setClientRemoteObjectsByService:v13];
      }

      clientRemoteObjectsByService2 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v15 = [NSNumber numberWithInteger:type];
      v16 = [clientRemoteObjectsByService2 objectForKeyedSubscript:v15];

      if (!v16)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        clientRemoteObjectsByService3 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
        v19 = [NSNumber numberWithInteger:type];
        [clientRemoteObjectsByService3 setObject:v17 forKeyedSubscript:v19];
      }

      clientRemoteObjectsByService4 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v20 = [NSNumber numberWithInteger:type];
      v21 = [clientRemoteObjectsByService4 objectForKeyedSubscript:v20];
      [v21 setObject:remoteObjectProxy forKeyedSubscript:dCopy];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v34 = 134218498;
      selfCopy3 = self;
      v36 = 2112;
      v37 = dCopy;
      v38 = 2048;
      typeCopy3 = type;
      _os_log_error_impl(&_mh_execute_header, clientRemoteObjectsByService4, OS_LOG_TYPE_ERROR, "Error creating proxy for OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
    }
  }

  else
  {
    v22 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 134218498;
      selfCopy3 = self;
      v36 = 2112;
      v37 = dCopy;
      v38 = 2048;
      typeCopy3 = type;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
    }

    clientRemoteObjectsByService5 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v24 = [NSNumber numberWithInteger:type];
    v25 = [clientRemoteObjectsByService5 objectForKeyedSubscript:v24];
    [v25 setObject:0 forKeyedSubscript:dCopy];

    clientRemoteObjectsByService6 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v27 = [NSNumber numberWithInteger:type];
    v28 = [clientRemoteObjectsByService6 objectForKeyedSubscript:v27];
    v29 = [v28 count];

    if (!v29)
    {
      clientRemoteObjectsByService7 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v31 = [NSNumber numberWithInteger:type];
      [clientRemoteObjectsByService7 setObject:0 forKeyedSubscript:v31];
    }

    clientRemoteObjectsByService8 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v33 = [clientRemoteObjectsByService8 count];

    if (!v33)
    {
      [(IDSDXPCOffGridMessenger *)self setClientRemoteObjectsByService:0];
    }
  }
}

- (void)donateHandlesForMessagingKeys:(id)keys fromURI:(id)i options:(id)options completion:(id)completion
{
  keysCopy = keys;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  v13 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = keysCopy;
    v35 = 2112;
    v36 = iCopy;
    v37 = 2112;
    v38 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client request to donate handles for messaging keys { destinationURIs: %@ fromURI: %@ options: %@ }", buf, 0x20u);
  }

  if (!keysCopy || ![keysCopy count])
  {
    v20 = IDSOffGridDeliveryErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"DestinationURIs cannot be nil or empty";
    v21 = &v32;
    v22 = &v31;
LABEL_10:
    v23 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
    senderKeyDistributionManager = [NSError errorWithDomain:v20 code:1 userInfo:v23];

    completionCopy[2](completionCopy, 0, senderKeyDistributionManager);
    goto LABEL_11;
  }

  if (!iCopy || ([iCopy prefixedURI], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, !v15))
  {
    v20 = IDSOffGridDeliveryErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"FromURI cannot be nil or empty";
    v21 = &v30;
    v22 = &v29;
    goto LABEL_10;
  }

  v16 = +[IDSDaemon sharedInstance];
  senderKeyDistributionManager = [v16 senderKeyDistributionManager];

  priority = [optionsCopy priority];
  isInitialDonation = [optionsCopy isInitialDonation];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005B6334;
  v24[3] = &unk_100BDA308;
  v25 = keysCopy;
  v26 = iCopy;
  v27 = optionsCopy;
  v28 = completionCopy;
  [senderKeyDistributionManager processDonatedHandlesForMessagingKeysWithUris:v25 fromURI:v26 priority:priority isInitialDonation:isInitialDonation completion:v24];

LABEL_11:
}

- (void)resultsForDestinationURIs:(id)is senderURI:(id)i service:(id)service options:(id)options completion:(id)completion
{
  isCopy = is;
  iCopy = i;
  serviceCopy = service;
  optionsCopy = options;
  completionCopy = completion;
  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v88 = iCopy;
    v89 = 2112;
    v90 = isCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "resultsForDestinationURIs called for senderURI %@ destinationURIs {%@}", buf, 0x16u);
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  allObjects = [isCopy allObjects];
  v74 = [NSMutableArray arrayWithArray:allObjects];

  cached = [optionsCopy cached];
  if ([(IDSDXPCOffGridMessenger *)self _isDeviceOnline])
  {
    v70 = cached;
  }

  else
  {
    v20 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Forcing cached results as we are offline", buf, 2u);
    }

    v70 = 1;
  }

  v21 = +[IDSDAccountController sharedInstance];
  v22 = +[IDSDServiceController sharedInstance];
  v23 = [v22 serviceWithIdentifier:serviceCopy];
  v24 = [v21 registeredAccountsOnService:v23];

  allObjects2 = [isCopy allObjects];
  v26 = [IDSQueryUtilities accountToQueryFrom:v24 fromURI:iCopy destinationURIs:allObjects2 allowLocalAccount:0 respectFromURI:1];

  if (v26)
  {
    v69 = v24;
    [v26 primaryRegistration];
    v28 = v27 = v26;
    registrationCert = [v28 registrationCert];

    v68 = v27;
    v30 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v27 withPreferredFromURI:iCopy];
    v31 = [IDSURI URIWithPrefixedURI:v30 withServiceLoggingHint:serviceCopy];

    v71 = registrationCert;
    if (v31 && registrationCert)
    {
      v75 = v17;
      v64 = optionsCopy;
      v65 = serviceCopy;
      v66 = iCopy;
      v32 = +[IDSDaemon sharedInstance];
      senderKeyDistributionManager = [v32 senderKeyDistributionManager];

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v67 = isCopy;
      obj = isCopy;
      v34 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v81;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v81 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v80 + 1) + 8 * i);
            if ([v38 isTokenURI])
            {
              tokenFreeURI = [v38 tokenFreeURI];
            }

            else
            {
              tokenFreeURI = v38;
            }

            v40 = tokenFreeURI;
            v41 = objc_alloc_init(IDSOffGridDeliveryQueryResult);
            [v41 setUri:v38];
            if ([v38 isTokenURI])
            {
              pushToken = [v38 pushToken];
              tokenFreeURI2 = [v38 tokenFreeURI];
              [senderKeyDistributionManager markLastActivePeerToken:pushToken localURI:v31 remoteURI:tokenFreeURI2];
            }

            [v41 setHasUsableSenderKey:{objc_msgSend(senderKeyDistributionManager, "hasUsableSenderKeyFor:from:", v40, v31)}];
            v44 = +[IDSPeerIDManager sharedInstance];
            v45 = [v44 shortHandleForURI:v40 fromURI:v31];

            if (v45)
            {
              [v41 setShortHandle:v45];
              [v41 setStatus:1];
              [v74 removeObject:v38];
            }

            else
            {
              v46 = +[IDSFoundationLog IDSOffGridMessenger];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v88 = v38;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Missing short handle for %@ - returning status invalid", buf, 0xCu);
              }

              [v41 setStatus:2];
            }

            [v75 setObject:v41 forKey:v38];
          }

          v35 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
        }

        while (v35);
      }

      v47 = v71;
      if ((v70 & 1) != 0 || ![v74 count])
      {
        v53 = completionCopy;
        v17 = v75;
        (*(completionCopy + 2))(completionCopy, v75, 0);
      }

      else
      {
        v48 = +[IDSFoundationLog IDSOffGridMessenger];
        v17 = v75;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v88 = v74;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Still need to query shortHandles for uris {%@}", buf, 0xCu);
        }

        v49 = [v74 __imArrayByApplyingBlock:&stru_100BE0F68];
        v50 = +[IDSPeerIDManager sharedInstance];
        v51 = IDSServiceNameiMessage;
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1005B6E5C;
        v76[3] = &unk_100BE0F90;
        v79 = completionCopy;
        v77 = v75;
        v78 = v74;
        LOBYTE(v63) = 0;
        v52 = v51;
        v53 = completionCopy;
        [v50 startQueryForURIs:v49 fromIdentity:v71 fromURI:v31 fromService:v52 forSending:0 forceToServer:0 clientRequestedForceQuery:v63 reason:@"ShortHandles" completionBlock:v76];

        v47 = v71;
      }

      iCopy = v66;
      isCopy = v67;
      optionsCopy = v64;
      serviceCopy = v65;
      v54 = v68;
      v24 = v69;
    }

    else
    {
      v58 = +[IDSFoundationLog IDSOffGridMessenger];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = @"NO";
        *buf = 136315906;
        v88 = "[IDSDXPCOffGridMessenger resultsForDestinationURIs:senderURI:service:options:completion:]";
        if (registrationCert)
        {
          v59 = @"YES";
        }

        v89 = 2112;
        v90 = serviceCopy;
        v91 = 2112;
        v92 = v31;
        v93 = 2112;
        v94 = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s: No registered account found for service %@. localURI {%@} cert {%@}", buf, 0x2Au);
      }

      v60 = IDSOffGridDeliveryErrorDomain;
      v85 = NSLocalizedDescriptionKey;
      v86 = @"Failed to query due to nil local uri or cert";
      v61 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v62 = [NSError errorWithDomain:v60 code:6 userInfo:v61];

      v53 = completionCopy;
      (*(completionCopy + 2))(completionCopy, v17, v62);

      v54 = v68;
      v24 = v69;
      v47 = v71;
    }
  }

  else
  {
    v54 = 0;
    v55 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v88 = "[IDSDXPCOffGridMessenger resultsForDestinationURIs:senderURI:service:options:completion:]";
      v89 = 2112;
      v90 = iCopy;
      v91 = 2112;
      v92 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s: No account matching senderURI %@ found for service %@.", buf, 0x20u);
    }

    v56 = IDSOffGridDeliveryErrorDomain;
    v95 = NSLocalizedDescriptionKey;
    v96 = @"Failed to as there was no account found";
    v57 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v47 = [NSError errorWithDomain:v56 code:6 userInfo:v57];

    v53 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v17, v47);
  }
}

- (void)encryptOffGridMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v7 = objc_alloc_init(IDSOffGridEncryptionProperties);
  v8 = +[IDSDaemon sharedInstance];
  persistenceManager = [v8 persistenceManager];

  v48 = persistenceManager;
  v10 = [[IDSSenderKeyEncryptionController alloc] initWithPersistenceManager:persistenceManager];
  message = [messageCopy message];
  recipientURI = [messageCopy recipientURI];
  senderURI = [messageCopy senderURI];
  v47 = v10;
  v14 = [(IDSSenderKeyEncryptionController *)v10 paddyEncryptData:message to:recipientURI from:senderURI];

  encryptedData = [v14 encryptedData];
  if (!encryptedData || (v16 = encryptedData, [v14 error], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    error = [v14 error];
    (*(completionCopy + 2))(completionCopy, 0, 0, error);
  }

  v49 = completionCopy;
  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 keyIndex]);
  [v7 setRatchetCounter:v19];

  keyID = [v14 keyID];
  v21 = [keyID subdataWithRange:{0, 1}];

  v50 = v21;
  [v7 setEncryptionKeyID:v21];
  authTag = [v14 authTag];
  [v7 setAuthTag:authTag];

  [v7 setSegmentNumber:&off_100C3CCE8];
  [v7 setTotalSegments:&off_100C3CCE8];
  v23 = [IDSOffGridEncryptedMessage alloc];
  encryptedData2 = [v14 encryptedData];
  senderURI2 = [messageCopy senderURI];
  recipientURI2 = [messageCopy recipientURI];
  v27 = [v23 initWithMessage:encryptedData2 senderURI:senderURI2 recipientURI:recipientURI2 encryptionProperties:v7];

  message2 = [messageCopy message];
  senderURI3 = [messageCopy senderURI];
  recipientURI3 = [messageCopy recipientURI];
  v31 = [v14 key];
  keyIndex = [v14 keyIndex];
  authTag2 = [v14 authTag];
  v34 = [(IDSDXPCOffGridMessenger *)self identifierFromMessage:message2 senderURI:senderURI3 receiverURI:recipientURI3 senderKey:v31 ratchetCounter:keyIndex authTag:authTag2];
  [v27 setIdentifier:v34];

  service = [messageCopy service];
  [v27 setService:service];

  v36 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    senderURI4 = [messageCopy senderURI];
    [messageCopy recipientURI];
    v38 = v46 = v7;
    encryptedData3 = [v14 encryptedData];
    v39 = [encryptedData3 debugDescription];
    v40 = [v50 debugDescription];
    authTag3 = [v14 authTag];
    v42 = [authTag3 debugDescription];
    *buf = 138413314;
    v52 = senderURI4;
    v53 = 2112;
    v54 = v38;
    v55 = 2112;
    v56 = v39;
    v57 = 2112;
    v58 = v40;
    v59 = 2112;
    v60 = v42;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Encrypted off grid message {sURI: %@, rURI: %@, data: %@, kID: %@, (aTag: %@)}", buf, 0x34u);

    v7 = v46;
  }

  identifier = [v27 identifier];
  (v49)[2](v49, v27, identifier, 0);
}

- (void)decryptOffGridMessage:(id)message completion:(id)completion
{
  selfCopy = self;
  messageCopy = message;
  completionCopy = completion;
  v6 = +[IDSDaemon sharedInstance];
  persistenceManager = [v6 persistenceManager];

  v37 = persistenceManager;
  v8 = [[IDSSenderKeyEncryptionController alloc] initWithPersistenceManager:persistenceManager];
  encryptionProperties = [messageCopy encryptionProperties];
  authTag = [encryptionProperties authTag];

  encryptionProperties2 = [messageCopy encryptionProperties];
  ratchetCounter = [encryptionProperties2 ratchetCounter];

  encryptionProperties3 = [messageCopy encryptionProperties];
  encryptionKeyID = [encryptionProperties3 encryptionKeyID];

  message = [messageCopy message];
  unsignedIntValue = [ratchetCounter unsignedIntValue];
  senderURI = [messageCopy senderURI];
  recipientURI = [messageCopy recipientURI];
  v36 = v8;
  v19 = [(IDSSenderKeyEncryptionController *)v8 paddyDecryptData:message keyIndex:unsignedIntValue keyIDByte:encryptionKeyID from:senderURI to:recipientURI];

  decryptedData = [v19 decryptedData];
  if (!decryptedData || (v21 = decryptedData, [v19 error], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    error = [v19 error];
    (*(completionCopy + 2))(completionCopy, 0, 0, error);
  }

  decryptedData2 = [v19 decryptedData];
  senderURI2 = [messageCopy senderURI];
  originalRecipientURI = [v19 originalRecipientURI];
  v27 = [v19 key];
  v28 = [v35 identifierFromMessage:decryptedData2 senderURI:senderURI2 receiverURI:originalRecipientURI senderKey:v27 ratchetCounter:objc_msgSend(ratchetCounter authTag:{"unsignedIntValue"), authTag}];

  v29 = [IDSOffGridMessage alloc];
  decryptedData3 = [v19 decryptedData];
  senderURI3 = [messageCopy senderURI];
  originalRecipientURI2 = [v19 originalRecipientURI];
  v33 = [v29 initWithMessage:decryptedData3 senderURI:senderURI3 recipientURI:originalRecipientURI2];

  (*(completionCopy + 2))(completionCopy, v33, v28, 0);
}

- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion
{
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  if ([(IDSDXPCOffGridMessenger *)self isCTClientActive])
  {
    v11 = objc_alloc_init(IDSOffGridDeliveryQueryOptions);
    [v11 setCached:{objc_msgSend(optionsCopy, "transportType") == 2}];
    v12 = [NSSet alloc];
    senderURI = [messageCopy senderURI];
    recipientURI = [messageCopy recipientURI];
    v15 = [v12 initWithObjects:{senderURI, recipientURI, 0}];

    senderURI2 = [messageCopy senderURI];
    service = [messageCopy service];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1005B7C04;
    v21[3] = &unk_100BE0FE0;
    v22 = messageCopy;
    v25 = completionCopy;
    selfCopy = self;
    v24 = optionsCopy;
    [(IDSDXPCOffGridMessenger *)self resultsForDestinationURIs:v15 senderURI:senderURI2 service:service options:v11 completion:v21];

    v18 = v22;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Core Telephony Client is not active"];
    v19 = [NSError alloc];
    v20 = IDSOffGridDeliveryErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = v11;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [v19 initWithDomain:v20 code:10 userInfo:v15];
    (*(completionCopy + 2))(completionCopy, 0, 0, v18);
  }
}

- (void)sendFetchRequestForHandles:(id)handles fromHandle:(id)handle completion:(id)completion
{
  handlesCopy = handles;
  handleCopy = handle;
  completionCopy = completion;
  if ([(IDSDXPCOffGridMessenger *)self isCTClientActive])
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = IDSServiceNameiMessageLite;
    v13 = objc_alloc_init(IDSOffGridDeliveryQueryOptions);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1005B8528;
    v19[3] = &unk_100BE1008;
    v20 = handlesCopy;
    v21 = v11;
    selfCopy = self;
    v23 = completionCopy;
    v14 = v11;
    [(IDSDXPCOffGridMessenger *)self resultsForDestinationURIs:v20 senderURI:handleCopy service:v12 options:v13 completion:v19];

    v15 = v20;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Core Telephony Client is not active"];
    v16 = [NSError alloc];
    v17 = IDSOffGridDeliveryErrorDomain;
    v24 = NSLocalizedDescriptionKey;
    v25 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [v16 initWithDomain:v17 code:10 userInfo:v15];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }
}

- (void)incomingOffGridMessage:(id)message messageContext:(id)context completion:(id)completion
{
  messageCopy = message;
  contextCopy = context;
  completionCopy = completion;
  serviceType = [contextCopy serviceType];
  if (_os_feature_enabled_impl())
  {
    v12 = serviceType;
  }

  else
  {
    v12 = 1;
  }

  clientRemoteObjectsByService = self->_clientRemoteObjectsByService;
  v14 = [NSNumber numberWithInteger:v12];
  v15 = [(NSMutableDictionary *)clientRemoteObjectsByService objectForKeyedSubscript:v14];

  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    *buf = 138412802;
    v30 = identifier;
    v31 = 2112;
    v32 = contextCopy;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting iMessage Lite {messageContext.identifier: %@, messageContext: %@, clientRemoteObjects: %@}", buf, 0x20u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v22), v24}];
        [v23 incomingOffGridMessage:messageCopy messageContext:contextCopy completion:completionCopy];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (void)incomingOffGridSummaryMessage:(id)message messageContext:(id)context completion:(id)completion
{
  messageCopy = message;
  contextCopy = context;
  completionCopy = completion;
  serviceType = [contextCopy serviceType];
  if (_os_feature_enabled_impl())
  {
    v12 = serviceType;
  }

  else
  {
    v12 = 1;
  }

  clientRemoteObjectsByService = self->_clientRemoteObjectsByService;
  v14 = [NSNumber numberWithInteger:v12];
  v15 = [(NSMutableDictionary *)clientRemoteObjectsByService objectForKeyedSubscript:v14];

  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [contextCopy identifier];
    *buf = 138412802;
    v30 = identifier;
    v31 = 2112;
    v32 = contextCopy;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting iMessage Lite Summary {messageContext.identifier: %@, messageContext: %@, clientRemoteObjects: %@}", buf, 0x20u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v22), v24}];
        [v23 incomingOffGridSummaryMessage:messageCopy messageContext:contextCopy completion:completionCopy];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (id)identifierFromMessage:(id)message senderURI:(id)i receiverURI:(id)rI senderKey:(id)key ratchetCounter:(unsigned int)counter authTag:(id)tag
{
  messageCopy = message;
  iCopy = i;
  rICopy = rI;
  keyCopy = key;
  counterCopy = counter;
  tagCopy = tag;
  v18 = +[IDSFoundationLog IDSOffGridMessenger];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (messageCopy && iCopy && rICopy && keyCopy && tagCopy)
  {
    if (v19)
    {
      *buf = 138413058;
      *&buf[4] = iCopy;
      *&buf[12] = 2112;
      *&buf[14] = rICopy;
      *&buf[22] = 2112;
      *&buf[24] = tagCopy;
      v35 = 2048;
      counterCopy2 = counter;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will generate offgrid message identifier from senderURI: %@, receiverURI: %@, authTag: %@, ratchetCounter: %ld", buf, 0x2Au);
    }

    v18 = +[NSMutableData data];
    [v18 appendData:messageCopy];
    unprefixedURI = [iCopy unprefixedURI];
    v21 = [unprefixedURI dataUsingEncoding:4];
    [v18 appendData:v21];

    unprefixedURI2 = [rICopy unprefixedURI];
    v23 = [unprefixedURI2 dataUsingEncoding:4];
    [v18 appendData:v23];

    [v18 appendData:keyCopy];
    [v18 appendData:tagCopy];
    [v18 appendBytes:&counterCopy length:4];
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v24;
    *&buf[16] = v24;
    CC_SHA256([v18 bytes], [v18 length], buf);
    v25 = [NSData dataWithBytes:&buf[16] length:16];
    v33[0] = 0xAAAAAAAAAAAAAAAALL;
    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    [v25 getBytes:v33 length:16];
    v26 = [[NSUUID alloc] initWithUUIDBytes:v33];
    uUIDString = [v26 UUIDString];
    v28 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138412290;
      v32 = uUIDString;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Generated offgrid message identifier: %@", v31, 0xCu);
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error: cannot generate offgrid message identifier - one or more fields are null.", buf, 2u);
    }

    uUIDString = 0;
  }

  return uUIDString;
}

@end