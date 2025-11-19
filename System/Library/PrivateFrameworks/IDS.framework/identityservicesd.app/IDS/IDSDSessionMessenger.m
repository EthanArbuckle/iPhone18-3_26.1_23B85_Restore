@interface IDSDSessionMessenger
- (BOOL)_canSendMessageLocally:(id)a3 toDestinations:(id)a4 withCommand:(id)a5;
- (IDSDSession)delegate;
- (IDSDSessionMessenger)initWithDictionary:(id)a3 sharedState:(id)a4 accountController:(id)a5;
- (void)_sendSinglePathMessage:(id)a3 toDestinations:(id)a4 withCommand:(id)a5 forceLocalDelivery:(BOOL)a6 messageGUID:(id)a7 fromURI:(id)a8 willSendBlock:(id)a9 completionBlock:(id)a10;
- (void)receivedEndMessage:(id)a3 fromURI:(id)a4;
- (void)receivedSessionMessage:(id)a3 fromURI:(id)a4;
- (void)sendMessage:(id)a3 toDestinations:(id)a4 withCommand:(id)a5 fromURI:(id)a6 willSendBlock:(id)a7 completionBlock:(id)a8;
- (void)sendMessage:(id)a3 withCommand:(id)a4;
- (void)sendReinitiateMessageWithSubcommand:(int64_t)a3;
- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4;
@end

@implementation IDSDSessionMessenger

- (IDSDSessionMessenger)initWithDictionary:(id)a3 sharedState:(id)a4 accountController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    objc_storeStrong(&v11->_accountController, a5);
    if (!v11->_pushHandler)
    {
      v15 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not create IDSPushHandler for session", v18, 2u);
      }
    }

    v16 = [v8 objectForKey:IDSSessionAlwaysSkipSelfKey];
    v11->_alwaysSkipSelf = [v16 BOOLValue];

    objc_storeStrong(&v11->_sharedState, a4);
  }

  return v11;
}

- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(IDSDSessionMessenger *)self sharedState];
  v11 = [v10 uniqueID];

  if (v11)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageSessionID, v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  v12 = [(IDSDSessionMessenger *)self sharedState];
  v13 = [v12 participantID];

  if (v13)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageParticipantID, v13);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (v6)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageInfo, v6);
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(IDSDSessionMessenger *)self sharedState];
    v16 = [v15 uniqueID];
    *buf = 138412802;
    v24 = v7;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending MESSAGE to %@, %@ <%@>", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = [(IDSDSessionMessenger *)self sharedState];
      v21 = [v17 uniqueID];
      v22 = v8;
      v20 = v7;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v18 = [(IDSDSessionMessenger *)self sharedState:v7];
        v21 = [v18 uniqueID];
        v22 = v8;
        v20 = v7;
        _IDSLogV();
      }
    }
  }

  v19 = [NSNumber numberWithInteger:236, v20, v21, v22];
  [(IDSDSessionMessenger *)self sendMessage:v8 toDestinations:v7 withCommand:v19];
}

- (void)sendMessage:(id)a3 withCommand:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(IDSDSessionMessenger *)self sharedState];
  v8 = [v9 destinations];
  [(IDSDSessionMessenger *)self sendMessage:v7 toDestinations:v8 withCommand:v6];
}

- (void)sendMessage:(id)a3 toDestinations:(id)a4 withCommand:(id)a5 fromURI:(id)a6 willSendBlock:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v17)
  {
    v20 = [(IDSDSessionMessenger *)self sharedState];
    v17 = [v20 fromURI];
  }

  v35 = v19;
  v36 = v17;
  v37 = v18;
  v38 = v16;
  v39 = v14;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v15;
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
        v25 = [v24 prefixedURI];
        v26 = [(IDSDSessionMessenger *)self sharedState];
        v27 = [v26 accountID];
        v28 = [(IDSDSessionMessenger *)self sharedState];
        v29 = [v28 serviceName];
        v30 = [IDSDAccountController isDefaultPairedDeviceFromID:v25 accountUniqueID:v27 serviceName:v29];

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

- (void)_sendSinglePathMessage:(id)a3 toDestinations:(id)a4 withCommand:(id)a5 forceLocalDelivery:(BOOL)a6 messageGUID:(id)a7 fromURI:(id)a8 willSendBlock:(id)a9 completionBlock:(id)a10
{
  v82 = a6;
  v85 = a3;
  v87 = a4;
  v88 = a5;
  v89 = a7;
  v86 = a8;
  v83 = a9;
  v84 = a10;
  v91 = self;
  v15 = [(IDSDSessionMessenger *)self accountController];
  v16 = [(IDSDSessionMessenger *)self sharedState];
  v17 = [v16 accountID];
  v90 = [v15 accountWithUniqueID:v17];

  if (v90)
  {
    v18 = [(IDSDSessionMessenger *)self pushHandler];
    v19 = [v18 pushToken];

    v20 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v103 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "My token -> %@", buf, 0xCu);
    }

    v21 = objc_alloc_init(NSMutableSet);
    v100 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v22 = v87;
    v23 = 0;
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
          v28 = [v27 pushToken];

          v23 = v28;
          v29 = [v28 rawToken];
          v30 = [v29 isEqualToData:v19];

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
        v32 = [v90 unprefixedURIStringsFromRegistration];
        v33 = [v21 allObjects];
        v34 = IMLoggingStringForArray();
        *buf = 138412802;
        v103 = v86;
        v104 = 2112;
        v105 = v32;
        v106 = 2112;
        v107 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "sendMessage - using fromID %@ given aliases %@  destinations: %@", buf, 0x20u);
      }

      v81 = [v22 anyObject];
      v35 = [v81 prefixedURI];
      v36 = [(IDSDSessionMessenger *)v91 sharedState];
      v37 = [v36 accountID];
      v38 = [(IDSDSessionMessenger *)v91 sharedState];
      v39 = [v38 serviceName];
      v80 = [IDSDAccountController isDefaultPairedDeviceFromID:v35 accountUniqueID:v37 serviceName:v39];

      v40 = [v22 anyObject];
      v41 = [v40 prefixedURI];
      LODWORD(v36) = [v41 hasPrefix:@"guest-device:"];

      if ((v80 | v82 | v36))
      {
        v42 = [(IDSDSessionMessenger *)v91 sharedState];
        if ([v42 forceInternetInvitation])
        {
          v43 = 0;
        }

        else
        {
          v50 = [v90 service];
          v43 = [v50 allowLocalDelivery];
        }
      }

      else
      {
        v43 = 0;
      }

      v51 = objc_alloc_init(IDSSendParameters);
      [v51 setPriority:300];
      v52 = [IDSDestination destinationWithDestinations:v21];
      [v51 setDestinations:v52];

      [v51 setMessage:v85];
      [v51 setCommand:v88];
      v53 = [(__CFString *)v86 unprefixedURI];
      [v51 setFromID:v53];

      [v51 setEncryptPayload:1];
      [v51 setIdentifier:v89];
      v54 = IDSGetUUIDData();
      [v51 setMessageUUID:v54];

      [v51 setFireAndForget:1];
      [v51 setLocalDelivery:v43];
      [v51 setAlwaysSkipSelf:{-[IDSDSessionMessenger alwaysSkipSelf](v91, "alwaysSkipSelf")}];
      v101 = IDSRegistrationPropertyIsC2KEquipment;
      v55 = [NSArray arrayWithObjects:&v101 count:1];
      [v51 setInterestingRegistrationProperties:v55];

      v56 = [(IDSDSessionMessenger *)v91 sharedState];
      [v51 setSessionForceInternetInvitation:{objc_msgSend(v56, "forceInternetInvitation")}];

      if ([v88 integerValue] == 232)
      {
        v57 = [(IDSDSessionMessenger *)v91 sharedState];
        [v57 inviteTimeout];
        v59 = v58;

        [v51 setTimeout:v59];
        [v51 setEnforceRemoteTimeouts:1];
      }

      v60 = [(IDSDSessionMessenger *)v91 sharedState];
      v61 = [v60 requiredLackOfCapabilities];
      v62 = [v61 count];

      if (v62)
      {
        v63 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [(IDSDSessionMessenger *)v91 sharedState];
          v65 = [v64 requiredLackOfCapabilities];
          *buf = 138412290;
          v103 = v65;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "sendMessage - requires lack of properties {requiredLackOfCapabilities: %@}", buf, 0xCu);
        }

        v66 = [(IDSDSessionMessenger *)v91 sharedState];
        v67 = [v66 requiredLackOfCapabilities];
        [v51 setRequireLackOfRegistrationProperties:v67];
      }

      v68 = [(IDSDSessionMessenger *)v91 sharedState];
      v69 = [v68 requiredCapabilities];
      v70 = [v69 count];

      if (v70)
      {
        v71 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = [(IDSDSessionMessenger *)v91 sharedState];
          v73 = [v72 requiredCapabilities];
          *buf = 138412290;
          v103 = v73;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "sendMessage - requires properties {requiredCapabilities: %@}", buf, 0xCu);
        }

        v74 = [(IDSDSessionMessenger *)v91 sharedState];
        v75 = [v74 requiredCapabilities];
        [v51 setRequireAllRegistrationProperties:v75];
      }

      if (!(v80 & 1 | !v82) && [v88 integerValue] == 236)
      {
        v76 = [(IDSDSessionMessenger *)v91 sharedState];
        v77 = [v76 uniqueID];
        [v51 setSessionID:v77];
      }

      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_1003551CC;
      v95[3] = &unk_100BD8D50;
      v96 = v83;
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_1003551E4;
      v92[3] = &unk_100BD8D78;
      v93 = v89;
      v94 = v84;
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
    v45 = [(IDSDSessionMessenger *)self sharedState];
    v46 = [v45 accountID];
    *buf = 138412546;
    v103 = @"IDSDSession";
    v104 = 2112;
    v105 = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%@ - No account with unique ID %@ found to send a message, bailing...", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v47 = [(IDSDSessionMessenger *)self sharedState];
    v78 = [v47 accountID];
    _IDSWarnV();

    v48 = [(IDSDSessionMessenger *)self sharedState:@"IDSDSession"];
    v79 = [v48 accountID];
    _IDSLogV();

    v19 = [(IDSDSessionMessenger *)self sharedState:@"IDSDSession"];
    v23 = [(__CFString *)v19 accountID];
    _IDSLogTransport();
LABEL_45:
  }
}

- (BOOL)_canSendMessageLocally:(id)a3 toDestinations:(id)a4 withCommand:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDSessionMessenger *)self sharedState];
  if ([v11 clientType] != 4)
  {
    goto LABEL_14;
  }

  v12 = [NSNumber numberWithInt:236];
  if (([v10 isEqualToNumber:v12] & 1) == 0)
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v13 = [(IDSDSessionMessenger *)self sharedState];
  if ([v13 state] != 5)
  {

    goto LABEL_13;
  }

  v14 = [(IDSDSessionMessenger *)self remoteUsePhoneContinuityLocalMessage];

  if (!v14)
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

- (void)receivedSessionMessage:(id)a3 fromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSDSessionMessenger *)self sharedState];
    v10 = [v9 uniqueID];
    v24 = 138412802;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received MESSAGE %@ from %@, %@", &v24, 0x20u);
  }

  v11 = IDSDSessionMessageInfo;
  v12 = [v6 objectForKey:IDSDSessionMessageInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 objectForKey:v11];
    v14 = [NSData _IDSDataFromBase64String:v13];
  }

  else
  {
    v13 = [v6 objectForKey:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v14 = [v6 objectForKey:v11];
  }

  v15 = v14;
LABEL_9:

  v16 = objc_alloc_init(IMMessageContext);
  [v16 setShouldBoost:1];
  v17 = +[IDSDaemon sharedInstance];
  v18 = [(IDSDSessionMessenger *)self sharedState];
  v19 = [v18 pushTopic];
  v20 = [v17 broadcasterForTopic:v19 entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v16];

  v21 = [(IDSDSessionMessenger *)self sharedState];
  v22 = [v21 uniqueID];
  v23 = [v7 prefixedURI];
  [v20 sessionMessageReceived:v22 fromID:v23 withData:v15];
}

- (void)receivedEndMessage:(id)a3 fromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSDSessionMessenger *)self sharedState];
    v10 = [v9 uniqueID];
    v25 = 138412802;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received END %@ from %@, %@", &v25, 0x20u);
  }

  v11 = IDSDSessionMessageContext;
  v12 = [v6 objectForKey:IDSDSessionMessageContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 objectForKey:v11];
    v14 = [NSData _IDSDataFromBase64String:v13];
  }

  else
  {
    v13 = [v6 objectForKey:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v14 = [v6 objectForKey:v11];
  }

  v15 = v14;
LABEL_9:

  v16 = objc_alloc_init(IMMessageContext);
  [v16 setShouldBoost:1];
  v17 = +[IDSDaemon sharedInstance];
  v18 = [(IDSDSessionMessenger *)self sharedState];
  v19 = [v18 pushTopic];
  v20 = [v17 broadcasterForTopic:v19 entitlement:kIDSSessionPrivateEntitlement command:0 messageContext:v16];

  v21 = [(IDSDSessionMessenger *)self sharedState];
  v22 = [v21 uniqueID];
  v23 = [v7 prefixedURI];
  [v20 sessionEndReceived:v22 fromID:v23 withData:v15];

  v24 = [(IDSDSessionMessenger *)self delegate];
  [v24 endSessionWithReason:7];
}

- (void)sendReinitiateMessageWithSubcommand:(int64_t)a3
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

  v7 = [(IDSDSessionMessenger *)self sharedState];
  v8 = [v7 uniqueID];

  if (v8)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageSessionID, v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  v9 = [(IDSDSessionMessenger *)self sharedState];
  v10 = [v9 participantID];

  if (v10)
  {
    CFDictionarySetValue(v5, IDSDSessionMessageParticipantID, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  v11 = [NSNumber numberWithInteger:a3];
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
    v13 = [NSNumber numberWithInteger:a3];
    v14 = [(IDSDSessionMessenger *)self sharedState];
    v15 = [v14 destinations];
    v16 = [(IDSDSessionMessenger *)self sharedState];
    v17 = [v16 uniqueID];
    *buf = 138413058;
    v33 = v13;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending REINITIATE (subcommand %@) %@ to %@, %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v18 = [NSNumber numberWithInteger:a3];
      v19 = [(IDSDSessionMessenger *)self sharedState];
      v20 = [v19 destinations];
      v21 = [(IDSDSessionMessenger *)self sharedState];
      [v21 uniqueID];
      v31 = v30 = v20;
      v28 = v18;
      v29 = v5;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v22 = [NSNumber numberWithInteger:a3, v18, v5, v20, v31];
        v23 = [(IDSDSessionMessenger *)self sharedState];
        v24 = [v23 destinations];
        v25 = [(IDSDSessionMessenger *)self sharedState];
        [v25 uniqueID];
        v31 = v30 = v24;
        v28 = v22;
        v29 = v5;
        _IDSLogV();
      }
    }
  }

  v26 = [(IDSDSessionMessenger *)self sharedState:v28];
  v27 = [v26 destinations];
  [(IDSDSessionMessenger *)self sendMessage:v5 toDestinations:v27 withCommand:&off_100C3BAB8];
}

- (IDSDSession)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end