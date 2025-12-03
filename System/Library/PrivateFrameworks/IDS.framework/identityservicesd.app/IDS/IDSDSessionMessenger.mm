@interface IDSDSessionMessenger
- (BOOL)_canSendMessageLocally:(id)locally toDestinations:(id)destinations withCommand:(id)command;
- (IDSDSession)delegate;
- (IDSDSessionMessenger)initWithDictionary:(id)dictionary sharedState:(id)state accountController:(id)controller;
- (void)_sendSinglePathMessage:(id)message toDestinations:(id)destinations withCommand:(id)command forceLocalDelivery:(BOOL)delivery messageGUID:(id)d fromURI:(id)i willSendBlock:(id)block completionBlock:(id)self0;
- (void)receivedEndMessage:(id)message fromURI:(id)i;
- (void)receivedSessionMessage:(id)message fromURI:(id)i;
- (void)sendMessage:(id)message toDestinations:(id)destinations withCommand:(id)command fromURI:(id)i willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)sendMessage:(id)message withCommand:(id)command;
- (void)sendReinitiateMessageWithSubcommand:(int64_t)subcommand;
- (void)sendSessionMessage:(id)message toDestinations:(id)destinations;
@end

@implementation IDSDSessionMessenger

- (IDSDSessionMessenger)initWithDictionary:(id)dictionary sharedState:(id)state accountController:(id)controller
{
  dictionaryCopy = dictionary;
  stateCopy = state;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = IDSDSessionMessenger;
  v11 = [(IDSDSessionMessenger *)&v20 init];
  if (v11)
  {
    v19 = 0;
    IMGetConferenceSettings();
    v12 = 0;
    v13 = +[IDSPushHandler sharedInstance];
    pushHandler = v11->_pushHandler;
    v11->_pushHandler = v13;

    objc_storeStrong(&v11->_accountController, controller);
    if (!v11->_pushHandler)
    {
      v15 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not create IDSPushHandler for session", v18, 2u);
      }
    }

    v16 = [dictionaryCopy objectForKey:IDSSessionAlwaysSkipSelfKey];
    v11->_alwaysSkipSelf = [v16 BOOLValue];

    objc_storeStrong(&v11->_sharedState, state);
  }

  return v11;
}

- (void)sendSessionMessage:(id)message toDestinations:(id)destinations
{
  messageCopy = message;
  destinationsCopy = destinations;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = _IDSSessionProtocolVersionNumber();
  if (v9)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageVersion, v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917318();
  }

  sharedState = [(IDSDSessionMessenger *)self sharedState];
  uniqueID = [sharedState uniqueID];

  if (uniqueID)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageSessionID, uniqueID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  sharedState2 = [(IDSDSessionMessenger *)self sharedState];
  participantID = [sharedState2 participantID];

  if (participantID)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageParticipantID, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (messageCopy)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageInfo, messageCopy);
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sharedState3 = [(IDSDSessionMessenger *)self sharedState];
    uniqueID2 = [sharedState3 uniqueID];
    *buf = 138412802;
    v24 = destinationsCopy;
    v25 = 2112;
    v26 = uniqueID2;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending MESSAGE to %@, %@ <%@>", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      sharedState4 = [(IDSDSessionMessenger *)self sharedState];
      uniqueID3 = [sharedState4 uniqueID];
      v22 = v8;
      v20 = destinationsCopy;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v18 = [(IDSDSessionMessenger *)self sharedState:destinationsCopy];
        uniqueID3 = [v18 uniqueID];
        v22 = v8;
        v20 = destinationsCopy;
        _IDSLogV();
      }
    }
  }

  v19 = [NSNumber numberWithInteger:236, v20, uniqueID3, v22];
  [(IDSDSessionMessenger *)self sendMessage:v8 toDestinations:destinationsCopy withCommand:v19];
}

- (void)sendMessage:(id)message withCommand:(id)command
{
  commandCopy = command;
  messageCopy = message;
  sharedState = [(IDSDSessionMessenger *)self sharedState];
  destinations = [sharedState destinations];
  [(IDSDSessionMessenger *)self sendMessage:messageCopy toDestinations:destinations withCommand:commandCopy];
}

- (void)sendMessage:(id)message toDestinations:(id)destinations withCommand:(id)command fromURI:(id)i willSendBlock:(id)block completionBlock:(id)completionBlock
{
  messageCopy = message;
  destinationsCopy = destinations;
  commandCopy = command;
  iCopy = i;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (!iCopy)
  {
    sharedState = [(IDSDSessionMessenger *)self sharedState];
    iCopy = [sharedState fromURI];
  }

  v35 = completionBlockCopy;
  v36 = iCopy;
  v37 = blockCopy;
  v38 = commandCopy;
  v39 = messageCopy;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = destinationsCopy;
  v21 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v41 = 0;
    v42 = 0;
    v43 = *v45;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        prefixedURI = [v24 prefixedURI];
        sharedState2 = [(IDSDSessionMessenger *)self sharedState];
        accountID = [sharedState2 accountID];
        sharedState3 = [(IDSDSessionMessenger *)self sharedState];
        serviceName = [sharedState3 serviceName];
        v30 = [IDSDAccountController isDefaultPairedDeviceFromID:prefixedURI accountUniqueID:accountID serviceName:serviceName];

        if (v30)
        {
          v31 = v42;
          if (!v42)
          {
            v31 = objc_alloc_init(NSMutableSet);
            v42 = v31;
          }
        }

        else
        {
          v31 = v41;
          if (!v41)
          {
            v31 = objc_alloc_init(NSMutableSet);
            v41 = v31;
          }
        }

        [v31 addObject:v24];
      }

      v22 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v22);
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  if ([v42 count])
  {
    v32 = +[NSString stringGUID];
    [(IDSDSessionMessenger *)self _sendSinglePathMessage:v39 toDestinations:v42 withCommand:v38 forceLocalDelivery:0 messageGUID:v32 fromURI:v36 willSendBlock:v37 completionBlock:v35];
  }

  v33 = v41;
  if ([v41 count])
  {
    v34 = +[NSString stringGUID];
    [(IDSDSessionMessenger *)self _sendSinglePathMessage:v39 toDestinations:v41 withCommand:v38 forceLocalDelivery:0 messageGUID:v34 fromURI:v36 willSendBlock:v37 completionBlock:v35];
    if ([(IDSDSessionMessenger *)self _canSendMessageLocally:v39 toDestinations:obj withCommand:v38])
    {
      [(IDSDSessionMessenger *)self _sendSinglePathMessage:v39 toDestinations:v41 withCommand:v38 forceLocalDelivery:1 messageGUID:v34 fromURI:v36 willSendBlock:v37 completionBlock:v35];
    }

    v33 = v41;
  }
}

- (void)_sendSinglePathMessage:(id)message toDestinations:(id)destinations withCommand:(id)command forceLocalDelivery:(BOOL)delivery messageGUID:(id)d fromURI:(id)i willSendBlock:(id)block completionBlock:(id)self0
{
  deliveryCopy = delivery;
  messageCopy = message;
  destinationsCopy = destinations;
  commandCopy = command;
  dCopy = d;
  iCopy = i;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  selfCopy = self;
  accountController = [(IDSDSessionMessenger *)self accountController];
  sharedState = [(IDSDSessionMessenger *)self sharedState];
  accountID = [sharedState accountID];
  v90 = [accountController accountWithUniqueID:accountID];

  if (v90)
  {
    pushHandler = [(IDSDSessionMessenger *)self pushHandler];
    pushToken = [pushHandler pushToken];

    v20 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v103 = pushToken;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "My token -> %@", buf, 0xCu);
    }

    v21 = objc_alloc_init(NSMutableSet);
    v100 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v22 = destinationsCopy;
    accountID6 = 0;
    v24 = [v22 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v24)
    {
      v25 = *v98;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v98 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v97 + 1) + 8 * i);
          pushToken2 = [v27 pushToken];

          accountID6 = pushToken2;
          rawToken = [pushToken2 rawToken];
          v30 = [rawToken isEqualToData:pushToken];

          if ((v30 & 1) == 0)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v24);
    }

    if ([v21 count])
    {
      v31 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        unprefixedURIStringsFromRegistration = [v90 unprefixedURIStringsFromRegistration];
        allObjects = [v21 allObjects];
        v34 = IMLoggingStringForArray();
        *buf = 138412802;
        v103 = iCopy;
        v104 = 2112;
        v105 = unprefixedURIStringsFromRegistration;
        v106 = 2112;
        v107 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "sendMessage - using fromID %@ given aliases %@  destinations: %@", buf, 0x20u);
      }

      anyObject = [v22 anyObject];
      prefixedURI = [anyObject prefixedURI];
      sharedState2 = [(IDSDSessionMessenger *)selfCopy sharedState];
      accountID2 = [sharedState2 accountID];
      sharedState3 = [(IDSDSessionMessenger *)selfCopy sharedState];
      serviceName = [sharedState3 serviceName];
      v80 = [IDSDAccountController isDefaultPairedDeviceFromID:prefixedURI accountUniqueID:accountID2 serviceName:serviceName];

      anyObject2 = [v22 anyObject];
      prefixedURI2 = [anyObject2 prefixedURI];
      LODWORD(sharedState2) = [prefixedURI2 hasPrefix:@"guest-device:"];

      if ((v80 | deliveryCopy | sharedState2))
      {
        sharedState4 = [(IDSDSessionMessenger *)selfCopy sharedState];
        if ([sharedState4 forceInternetInvitation])
        {
          allowLocalDelivery = 0;
        }

        else
        {
          service = [v90 service];
          allowLocalDelivery = [service allowLocalDelivery];
        }
      }

      else
      {
        allowLocalDelivery = 0;
      }

      v51 = objc_alloc_init(IDSSendParameters);
      [v51 setPriority:300];
      v52 = [IDSDestination destinationWithDestinations:v21];
      [v51 setDestinations:v52];

      [v51 setMessage:messageCopy];
      [v51 setCommand:commandCopy];
      unprefixedURI = [(__CFString *)iCopy unprefixedURI];
      [v51 setFromID:unprefixedURI];

      [v51 setEncryptPayload:1];
      [v51 setIdentifier:dCopy];
      v54 = IDSGetUUIDData();
      [v51 setMessageUUID:v54];

      [v51 setFireAndForget:1];
      [v51 setLocalDelivery:allowLocalDelivery];
      [v51 setAlwaysSkipSelf:{-[IDSDSessionMessenger alwaysSkipSelf](selfCopy, "alwaysSkipSelf")}];
      v101 = IDSRegistrationPropertyIsC2KEquipment;
      v55 = [NSArray arrayWithObjects:&v101 count:1];
      [v51 setInterestingRegistrationProperties:v55];

      sharedState5 = [(IDSDSessionMessenger *)selfCopy sharedState];
      [v51 setSessionForceInternetInvitation:{objc_msgSend(sharedState5, "forceInternetInvitation")}];

      if ([commandCopy integerValue] == 232)
      {
        sharedState6 = [(IDSDSessionMessenger *)selfCopy sharedState];
        [sharedState6 inviteTimeout];
        v59 = v58;

        [v51 setTimeout:v59];
        [v51 setEnforceRemoteTimeouts:1];
      }

      sharedState7 = [(IDSDSessionMessenger *)selfCopy sharedState];
      requiredLackOfCapabilities = [sharedState7 requiredLackOfCapabilities];
      v62 = [requiredLackOfCapabilities count];

      if (v62)
      {
        v63 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          sharedState8 = [(IDSDSessionMessenger *)selfCopy sharedState];
          requiredLackOfCapabilities2 = [sharedState8 requiredLackOfCapabilities];
          *buf = 138412290;
          v103 = requiredLackOfCapabilities2;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "sendMessage - requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        sharedState9 = [(IDSDSessionMessenger *)selfCopy sharedState];
        requiredLackOfCapabilities3 = [sharedState9 requiredLackOfCapabilities];
        [v51 setRequireLackOfRegistrationProperties:requiredLackOfCapabilities3];
      }

      sharedState10 = [(IDSDSessionMessenger *)selfCopy sharedState];
      requiredCapabilities = [sharedState10 requiredCapabilities];
      v70 = [requiredCapabilities count];

      if (v70)
      {
        v71 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          sharedState11 = [(IDSDSessionMessenger *)selfCopy sharedState];
          requiredCapabilities2 = [sharedState11 requiredCapabilities];
          *buf = 138412290;
          v103 = requiredCapabilities2;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "sendMessage - requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        sharedState12 = [(IDSDSessionMessenger *)selfCopy sharedState];
        requiredCapabilities3 = [sharedState12 requiredCapabilities];
        [v51 setRequireAllRegistrationProperties:requiredCapabilities3];
      }

      if (!(v80 & 1 | !deliveryCopy) && [commandCopy integerValue] == 236)
      {
        sharedState13 = [(IDSDSessionMessenger *)selfCopy sharedState];
        uniqueID = [sharedState13 uniqueID];
        [v51 setSessionID:uniqueID];
      }

      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_1003551CC;
      v95[3] = &unk_100BD8D50;
      v96 = blockCopy;
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_1003551E4;
      v92[3] = &unk_100BD8D78;
      v93 = dCopy;
      v94 = completionBlockCopy;
      [v90 sendMessageWithSendParameters:v51 willSendBlock:v95 completionBlock:v92];
    }

    else
    {
      v49 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "No destinations to send message to, ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    goto LABEL_45;
  }

  v44 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sharedState14 = [(IDSDSessionMessenger *)self sharedState];
    accountID3 = [sharedState14 accountID];
    *buf = 138412546;
    v103 = @"IDSDSession";
    v104 = 2112;
    v105 = accountID3;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@ - No account with unique ID %@ found to send a message, bailing...", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    sharedState15 = [(IDSDSessionMessenger *)self sharedState];
    accountID4 = [sharedState15 accountID];
    _IDSWarnV();

    v48 = [(IDSDSessionMessenger *)self sharedState:@"IDSDSession"];
    accountID5 = [v48 accountID];
    _IDSLogV();

    pushToken = [(IDSDSessionMessenger *)self sharedState:@"IDSDSession"];
    accountID6 = [(__CFString *)pushToken accountID];
    _IDSLogTransport();
LABEL_45:
  }
}

- (BOOL)_canSendMessageLocally:(id)locally toDestinations:(id)destinations withCommand:(id)command
{
  locallyCopy = locally;
  destinationsCopy = destinations;
  commandCopy = command;
  sharedState = [(IDSDSessionMessenger *)self sharedState];
  if ([sharedState clientType] != 4)
  {
    goto LABEL_14;
  }

  v12 = [NSNumber numberWithInt:236];
  if (([commandCopy isEqualToNumber:v12] & 1) == 0)
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  sharedState2 = [(IDSDSessionMessenger *)self sharedState];
  if ([sharedState2 state] != 5)
  {

    goto LABEL_13;
  }

  remoteUsePhoneContinuityLocalMessage = [(IDSDSessionMessenger *)self remoteUsePhoneContinuityLocalMessage];

  if (!remoteUsePhoneContinuityLocalMessage)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "This Phone Continuity session supports the local message. Trying the local...", v18, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)receivedSessionMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionMessenger *)self sharedState];
    uniqueID = [sharedState uniqueID];
    v24 = 138412802;
    v25 = messageCopy;
    v26 = 2112;
    v27 = iCopy;
    v28 = 2112;
    v29 = uniqueID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received MESSAGE %@ from %@, %@", &v24, 0x20u);
  }

  v11 = IDSDSessionMessageInfo;
  v12 = [messageCopy objectForKey:IDSDSessionMessageInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [messageCopy objectForKey:v11];
    v14 = [NSData _IDSDataFromBase64String:v13];
  }

  else
  {
    v13 = [messageCopy objectForKey:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v14 = [messageCopy objectForKey:v11];
  }

  v15 = v14;
LABEL_9:

  v16 = objc_alloc_init(IMMessageContext);
  [v16 setShouldBoost:1];
  v17 = +[IDSDaemon sharedInstance];
  sharedState2 = [(IDSDSessionMessenger *)self sharedState];
  pushTopic = [sharedState2 pushTopic];
  v20 = [v17 broadcasterForTopic:pushTopic entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v16];

  sharedState3 = [(IDSDSessionMessenger *)self sharedState];
  uniqueID2 = [sharedState3 uniqueID];
  prefixedURI = [iCopy prefixedURI];
  [v20 sessionMessageReceived:uniqueID2 fromID:prefixedURI withData:v15];
}

- (void)receivedEndMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionMessenger *)self sharedState];
    uniqueID = [sharedState uniqueID];
    v25 = 138412802;
    v26 = messageCopy;
    v27 = 2112;
    v28 = iCopy;
    v29 = 2112;
    v30 = uniqueID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received END %@ from %@, %@", &v25, 0x20u);
  }

  v11 = IDSDSessionMessageContext;
  v12 = [messageCopy objectForKey:IDSDSessionMessageContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [messageCopy objectForKey:v11];
    v14 = [NSData _IDSDataFromBase64String:v13];
  }

  else
  {
    v13 = [messageCopy objectForKey:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v14 = [messageCopy objectForKey:v11];
  }

  v15 = v14;
LABEL_9:

  v16 = objc_alloc_init(IMMessageContext);
  [v16 setShouldBoost:1];
  v17 = +[IDSDaemon sharedInstance];
  sharedState2 = [(IDSDSessionMessenger *)self sharedState];
  pushTopic = [sharedState2 pushTopic];
  v20 = [v17 broadcasterForTopic:pushTopic entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v16];

  sharedState3 = [(IDSDSessionMessenger *)self sharedState];
  uniqueID2 = [sharedState3 uniqueID];
  prefixedURI = [iCopy prefixedURI];
  [v20 sessionEndReceived:uniqueID2 fromID:prefixedURI withData:v15];

  delegate = [(IDSDSessionMessenger *)self delegate];
  [delegate endSessionWithReason:7];
}

- (void)sendReinitiateMessageWithSubcommand:(int64_t)subcommand
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = _IDSSessionProtocolVersionNumber();
  if (v6)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageVersion, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917318();
  }

  sharedState = [(IDSDSessionMessenger *)self sharedState];
  uniqueID = [sharedState uniqueID];

  if (uniqueID)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageSessionID, uniqueID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  sharedState2 = [(IDSDSessionMessenger *)self sharedState];
  participantID = [sharedState2 participantID];

  if (participantID)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageParticipantID, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  v11 = [NSNumber numberWithInteger:subcommand];
  if (v11)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageReinitiateSubcommand, v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009174B0();
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithInteger:subcommand];
    sharedState3 = [(IDSDSessionMessenger *)self sharedState];
    destinations = [sharedState3 destinations];
    sharedState4 = [(IDSDSessionMessenger *)self sharedState];
    uniqueID2 = [sharedState4 uniqueID];
    *buf = 138413058;
    v33 = v13;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = destinations;
    v38 = 2112;
    v39 = uniqueID2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending REINITIATE (subcommand %@) %@ to %@, %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = [NSNumber numberWithInteger:subcommand];
      sharedState5 = [(IDSDSessionMessenger *)self sharedState];
      destinations2 = [sharedState5 destinations];
      sharedState6 = [(IDSDSessionMessenger *)self sharedState];
      [sharedState6 uniqueID];
      v31 = v30 = destinations2;
      v28 = v18;
      v29 = v5;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v22 = [NSNumber numberWithInteger:subcommand, v18, v5, destinations2, v31];
        sharedState7 = [(IDSDSessionMessenger *)self sharedState];
        destinations3 = [sharedState7 destinations];
        sharedState8 = [(IDSDSessionMessenger *)self sharedState];
        [sharedState8 uniqueID];
        v31 = v30 = destinations3;
        v28 = v22;
        v29 = v5;
        _IDSLogV();
      }
    }
  }

  v26 = [(IDSDSessionMessenger *)self sharedState:v28];
  destinations4 = [v26 destinations];
  [(IDSDSessionMessenger *)self sendMessage:v5 toDestinations:destinations4 withCommand:&off_100C3BAB8];
}

- (IDSDSession)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end