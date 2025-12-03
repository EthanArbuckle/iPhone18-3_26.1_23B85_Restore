@interface IDSDSessionInvitationManager
- (BOOL)_isValidDestination:(id)destination;
- (IDSDSession)delegate;
- (IDSDSessionInvitationManager)initWithDictionary:(id)dictionary sharedState:(id)state messenger:(id)messenger;
- (id)_acceptedDeviceToken;
- (id)_acceptedDeviceUniqueID;
- (id)publicIdentityDataFromLocalFullIdentity;
- (void)_sendAcceptMessageWithContext:(id)context connectionData:(id)data;
- (void)_sendInvitationMessageToDestinations:(id)destinations withOptions:(id)options contextData:(id)data declineOnError:(BOOL)error connectionData:(id)connectionData;
- (void)_sendInvitationWithOptions:(id)options data:(id)data declineOnError:(BOOL)error;
- (void)acceptInvitationWithData:(id)data;
- (void)cancelInvitation;
- (void)cancelInvitationWithData:(id)data;
- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)override;
- (void)declineInvitationWithData:(id)data forceFromURI:(id)i additionalMessageAttributes:(id)attributes;
- (void)receivedAcceptMessage:(id)message fromURI:(id)i;
- (void)receivedCancelMessage:(id)message fromURI:(id)i;
- (void)receivedDeclineMessage:(id)message fromURI:(id)i;
- (void)sendCancelInvitationToDestinations:(id)destinations remoteEndReason:(unsigned int)reason data:(id)data;
@end

@implementation IDSDSessionInvitationManager

- (IDSDSessionInvitationManager)initWithDictionary:(id)dictionary sharedState:(id)state messenger:(id)messenger
{
  dictionaryCopy = dictionary;
  stateCopy = state;
  messengerCopy = messenger;
  v15.receiver = self;
  v15.super_class = IDSDSessionInvitationManager;
  v11 = [(IDSDSessionInvitationManager *)&v15 init];
  if (v11)
  {
    v12 = [dictionaryCopy objectForKey:IDSSessionUseStunMessageIntegrityKey];
    v11->_useStunMICheck = [v12 BOOLValue];

    v13 = [dictionaryCopy objectForKey:IDSDSessionMessageAssumeRemoteDeviceEncryption];
    v11->_remoteAssumeRemoteDeviceEncryption = [v13 BOOLValue];

    objc_storeStrong(&v11->_sharedState, state);
    objc_storeStrong(&v11->_messenger, messenger);
  }

  return v11;
}

- (void)_sendInvitationWithOptions:(id)options data:(id)data declineOnError:(BOOL)error
{
  errorCopy = error;
  optionsCopy = options;
  dataCopy = data;
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  connection = [sharedState connection];
  if (connection)
  {

LABEL_6:
    v74 = errorCopy;
    v75 = dataCopy;
    v76 = optionsCopy;
    v15 = +[IDSDAccountController sharedInstance];
    sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
    accountID = [sharedState2 accountID];
    v18 = [v15 accountWithUniqueID:accountID];

    v80 = v18;
    accountType = [v18 accountType];
    v19 = [NSMutableSet alloc];
    sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
    destinations = [sharedState3 destinations];
    v22 = [v19 initWithSet:destinations];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
    destinations2 = [sharedState4 destinations];

    obj = destinations2;
    v83 = [destinations2 countByEnumeratingWithState:&v90 objects:v102 count:16];
    v25 = 0;
    v14 = 0;
    if (!v83)
    {
      goto LABEL_33;
    }

    v82 = *v91;
    v77 = IDSDevicePropertyIsActivePairedDevice;
    v78 = IDSDevicePropertyDefaultLocalDevice;
    v26 = accountType;
    while (1)
    {
      for (i = 0; i != v83; i = i + 1)
      {
        if (*v91 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v90 + 1) + 8 * i);
        sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
        v30 = [sharedState5 destinationIsDefaultPairedDevice:v28];

        if (v30)
        {
          if (!v14)
          {
            v14 = objc_alloc_init(NSMutableSet);
          }

          v31 = v14;
          goto LABEL_30;
        }

        if (v26 == 2)
        {
          v32 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Using local account, can only send invitation to active device, ignoring %@...", buf, 0xCu);
          }

          [(__CFString *)v22 removeObject:v28];
        }

        else
        {
          prefixedURI = [v28 prefixedURI];
          v34 = [prefixedURI hasPrefix:@"device:"];

          if (!v34)
          {
            goto LABEL_27;
          }

          unprefixedURI = [v28 unprefixedURI];
          v36 = [v80 dependentRegistrationMatchingUUID:unprefixedURI];

          if (!v36 || ([v36 objectForKey:v78], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "BOOLValue"), v37, objc_msgSend(v36, "objectForKey:", v77), v39 = v25, v40 = v14, v41 = v22, v42 = self, v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "BOOLValue"), v43, self = v42, v22 = v41, v14 = v40, v25 = v39, !v38) || (v44 & 1) != 0)
          {

            v26 = accountType;
LABEL_27:
            if (!v25)
            {
              v25 = objc_alloc_init(NSMutableSet);
            }

            v31 = v25;
LABEL_30:
            [v31 addObject:v28];
            continue;
          }

          v45 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v28;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Trying to send invite to inactive device, ignoring %@...", buf, 0xCu);
          }

          [(__CFString *)v22 removeObject:v28];
          v26 = accountType;
        }
      }

      v83 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (!v83)
      {
LABEL_33:

        v46 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
          destinations3 = [sharedState6 destinations];
          *buf = 138413058;
          v95 = destinations3;
          v96 = 2112;
          v97 = v22;
          v98 = 2112;
          v99 = v14;
          v100 = 2112;
          v101 = v25;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Send invitation with destinations %@ newDestinations %@ pairedDestinations %@ allOtherDestinations %@", buf, 0x2Au);
        }

        v49 = v25;

        sharedState7 = [(IDSDSessionInvitationManager *)self sharedState];
        [sharedState7 setDestinations:v22];

        dataCopy = v75;
        optionsCopy = v76;
        if ([v14 count])
        {
          sharedState8 = [(IDSDSessionInvitationManager *)self sharedState];
          forceInternetInvitation = [sharedState8 forceInternetInvitation];

          if ((forceInternetInvitation & 1) == 0)
          {
            v53 = +[NSData data];
            v54 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              sharedState9 = [(IDSDSessionInvitationManager *)self sharedState];
              isScreenSharingSession = [sharedState9 isScreenSharingSession];
              v57 = @"NO";
              if (isScreenSharingSession)
              {
                v57 = @"YES";
              }

              *buf = 138412546;
              v95 = v53;
              v96 = 2112;
              v97 = v57;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Got connection data %@, isScreenSharingSession %@", buf, 0x16u);
            }

            [(IDSDSessionInvitationManager *)self _sendInvitationMessageToDestinations:v14 withOptions:v76 contextData:v75 declineOnError:v74 connectionData:v53];
            sharedState10 = [(IDSDSessionInvitationManager *)self sharedState];
            [sharedState10 setInvitationTimer];
          }
        }

        if (-[NSObject count](v25, "count") || (-[IDSDSessionInvitationManager sharedState](self, "sharedState"), v59 = objc_claimAutoreleasedReturnValue(), v60 = [v59 forceInternetInvitation], v59, v60))
        {
          v61 = v25;
          sharedState11 = [(IDSDSessionInvitationManager *)self sharedState];
          forceInternetInvitation2 = [sharedState11 forceInternetInvitation];

          if (forceInternetInvitation2)
          {
            v64 = v14;

            v61 = v64;
          }

          delegate = [(IDSDSessionInvitationManager *)self delegate];
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_1005CEF40;
          v84[3] = &unk_100BE13E0;
          v84[4] = self;
          v85 = v61;
          v86 = v76;
          v87 = v75;
          v89 = v74;
          v88 = v14;
          v66 = v61;
          [delegate networkingIsAvailable:v84];
        }

        sharedState12 = [(IDSDSessionInvitationManager *)self sharedState];
        [sharedState12 setState:3];

        preferences = [(IDSDSessionInvitationManager *)self preferences];
        [(IDSDSessionInvitationManager *)self _setLinkPreferences:preferences];

        delegate2 = [(IDSDSessionInvitationManager *)self delegate];
        sharedState13 = [(IDSDSessionInvitationManager *)self sharedState];
        destinations4 = [sharedState13 destinations];
        v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [destinations4 count]);
        [delegate2 submitAWDMetricsForIDSSessionInvitationSentWithNumberOfRecipients:v72];

        v73 = +[IDSDSessionController sharedInstance];
        [v73 updateCriticalReliabilityState];

        goto LABEL_48;
      }
    }
  }

  sharedState14 = [(IDSDSessionInvitationManager *)self sharedState];
  isScreenSharingSession2 = [sharedState14 isScreenSharingSession];

  if (!isScreenSharingSession2)
  {
    goto LABEL_6;
  }

  v14 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No legacy connection, bailing...", buf, 2u);
  }

LABEL_48:
}

- (void)_sendInvitationMessageToDestinations:(id)destinations withOptions:(id)options contextData:(id)data declineOnError:(BOOL)error connectionData:(id)connectionData
{
  errorCopy = error;
  destinationsCopy = destinations;
  optionsCopy = options;
  dataCopy = data;
  connectionDataCopy = connectionData;
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  uniqueID = [sharedState uniqueID];

  if (uniqueID)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = _IDSSessionProtocolVersionNumber();
    if (v17)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageVersion, v17);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917318();
    }

    v19 = connectionDataCopy;
    if (v19)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageBlob, v19);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C180();
    }

    sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID2 = [sharedState2 uniqueID];

    if (uniqueID2)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageSessionID, uniqueID2);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
    participantID = [sharedState3 participantID];

    if (participantID)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageParticipantID, participantID);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917428();
    }

    sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sharedState4 transportType]);

    if (v25)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageTransportType, v25);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C208();
    }

    v26 = [NSNumber numberWithBool:errorCopy];
    if (v26)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageDeclineOnNetworkError, v26);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C290();
    }

    if (optionsCopy)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageInviteOptions, optionsCopy);
    }

    if (dataCopy)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageContext, dataCopy);
    }

    quickRelaySessionToken = [(IDSDSessionInvitationManager *)self quickRelaySessionToken];
    if (quickRelaySessionToken)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageQuickRelaySessionToken, quickRelaySessionToken);
    }

    sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState5 enableSKE]);

    if (v29)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageNeedsToWaitForPreConnectionData, v29);
    }

    sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState6 disableEncryption]);

    if (v31)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageDisableEncryption, v31);
    }

    sharedState7 = [(IDSDSessionInvitationManager *)self sharedState];
    v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState7 enableSingleChannelDirectMode]);

    if (v33)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageSingleChannelDirectMode, v33);
    }

    CFDictionarySetValue(v16, IDSDSessionMessageUseStunMessageIntegrity, &__kCFBooleanTrue);
    CFDictionarySetValue(v16, IDSDSessionMessageUseSecureQRControlMessage, &__kCFBooleanTrue);
    sharedState8 = [(IDSDSessionInvitationManager *)self sharedState];
    v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState8 useBTDatagramPipe]);

    if (v35)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageIsRealTime, v35);
    }

    sharedState9 = [(IDSDSessionInvitationManager *)self sharedState];
    localUnauthenticatedFullIdentity = [sharedState9 localUnauthenticatedFullIdentity];

    if (localUnauthenticatedFullIdentity)
    {
      publicIdentityDataFromLocalFullIdentity = [(IDSDSessionInvitationManager *)self publicIdentityDataFromLocalFullIdentity];
      if (!publicIdentityDataFromLocalFullIdentity)
      {
        v56 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to send invitation because failed to create unauthenticated public key", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }

        goto LABEL_80;
      }

      CFDictionarySetValue(v16, IDSSessionUnauthenticatedPublicKey, publicIdentityDataFromLocalFullIdentity);
    }

    sharedState10 = [(IDSDSessionInvitationManager *)self sharedState];
    v40 = [sharedState10 connectionCountHint] == 0;

    if (!v40)
    {
      sharedState11 = [(IDSDSessionInvitationManager *)self sharedState];
      v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [sharedState11 connectionCountHint]);

      if (v42)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageConnectionCountHint, v42);
      }
    }

    sharedState12 = [(IDSDSessionInvitationManager *)self sharedState];
    isScreenSharingSession = [sharedState12 isScreenSharingSession];

    if (isScreenSharingSession)
    {
      if (SecRandomCopyBytes(kSecRandomDefault, 0x3CuLL, self->keyMaterial))
      {
        v45 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = *__error();
          v47 = __error();
          v48 = strerror(*v47);
          *buf = 67109378;
          *&buf[4] = v46;
          *&buf[8] = 2080;
          *&buf[10] = v48;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "SecRandomCopyBytes failed %d (%s), bailing...", buf, 0x12u);
        }

        sharedState13 = [(IDSDSessionInvitationManager *)self sharedState];
        serviceName = [sharedState13 serviceName];
        v51 = *__error();
        v52 = __error();
        v80 = strerror(*v52);
        DLCWarn();

        v53 = [(IDSDSessionInvitationManager *)self delegate:v51];
        [v53 endSessionWithReason:17];

LABEL_80:
        goto LABEL_81;
      }

      v57 = [[NSData alloc] initWithBytesNoCopy:self->keyMaterial length:60 freeWhenDone:0];
      if (v57)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageKeyMaterial, v57);
      }

      [(IDSDSessionInvitationManager *)self setSSRCSend:arc4random()];
      v58 = [NSNumber numberWithUnsignedInt:[(IDSDSessionInvitationManager *)self SSRCSend]];
      if (v58)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageSelfSSRC, v58);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092C318();
      }

      v59 = arc4random();
      [(IDSDSessionInvitationManager *)self setSeqSendStart:v59];
      sharedState14 = [(IDSDSessionInvitationManager *)self sharedState];
      [sharedState14 setSeqSend:v59];

      v61 = [NSNumber numberWithUnsignedShort:[(IDSDSessionInvitationManager *)self seqSendStart]];
      if (v61)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageSelfSeqStart, v61);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092C3A0();
      }
    }

    else
    {
      CFDictionarySetValue(v16, IDSDSessionMessageUseCloudPairedControlChannel, &__kCFBooleanTrue);
      CFDictionarySetValue(v16, IDSDSessionMessageUsePhoneContinuityLocalMessage, &__kCFBooleanTrue);
      delegate = [(IDSDSessionInvitationManager *)self delegate];
      isWithDefaultPairedDevice = [delegate isWithDefaultPairedDevice];

      if ((isWithDefaultPairedDevice & 1) == 0)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageAssumeRemoteDeviceEncryption, &__kCFBooleanTrue);
      }
    }

    delegate2 = [(IDSDSessionInvitationManager *)self delegate];
    [delegate2 registerClientChannel];

    sharedState15 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState15 inviteSentTime];
    v65 = v64 == 0.0;

    if (v65)
    {
      ids_monotonic_time();
      v67 = v66;
      sharedState16 = [(IDSDSessionInvitationManager *)self sharedState];
      [sharedState16 setInviteSentTime:v67];
    }

    v69 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      sharedState17 = [(IDSDSessionInvitationManager *)self sharedState];
      uniqueID3 = [sharedState17 uniqueID];
      *buf = 138412802;
      *&buf[4] = destinationsCopy;
      *&buf[12] = 2112;
      *&buf[14] = uniqueID3;
      *&buf[22] = 2112;
      v93 = v16;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Sending invitation to %@, %@ <%@>", buf, 0x20u);
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v93) = 0;
    v72 = objc_alloc_init(IMMessageContext);
    [v72 setShouldBoost:1];
    v73 = +[IDSDaemon sharedInstance];
    sharedState18 = [(IDSDSessionInvitationManager *)self sharedState];
    pushTopic = [sharedState18 pushTopic];
    v76 = [v73 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v72];

    messenger = [(IDSDSessionInvitationManager *)self messenger];
    v78 = [NSNumber numberWithInteger:232];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_1005D09F8;
    v87[3] = &unk_100BE1428;
    objc_copyWeak(&v90, &location);
    v87[4] = self;
    v88 = v76;
    v89 = buf;
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1005D0F84;
    v83[3] = &unk_100BE1450;
    v86 = buf;
    v79 = v88;
    v84 = v79;
    selfCopy = self;
    [messenger sendMessage:v16 toDestinations:destinationsCopy withCommand:v78 fromURI:0 willSendBlock:v87 completionBlock:v83];

    objc_destroyWeak(&v90);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
    goto LABEL_80;
  }

  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not sending invitation because of missing uniqueID", buf, 2u);
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

LABEL_81:
}

- (void)sendCancelInvitationToDestinations:(id)destinations remoteEndReason:(unsigned int)reason data:(id)data
{
  v6 = *&reason;
  destinationsCopy = destinations;
  dataCopy = data;
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  isInitiator = [sharedState isInitiator];

  if (isInitiator)
  {
    sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState2 clearAllTimers];

    if (v6)
    {
      v13 = [NSNumber numberWithInt:v6];
    }

    else
    {
      v13 = 0;
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = _IDSSessionProtocolVersionNumber();
    if (v16)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageVersion, v16);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917318();
    }

    sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID = [sharedState3 uniqueID];

    if (uniqueID)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageSessionID, uniqueID);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
    participantID = [sharedState4 participantID];

    if (participantID)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageParticipantID, participantID);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917428();
    }

    if (v13)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageRemoteEndReason, v13);
    }

    if (dataCopy)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageContext, dataCopy);
    }

    if (![destinationsCopy count])
    {
      sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
      destinations = [sharedState5 destinations];

      destinationsCopy = destinations;
    }

    v23 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
      uniqueID2 = [sharedState6 uniqueID];
      v30 = 138412802;
      v31 = destinationsCopy;
      v32 = 2112;
      v33 = uniqueID2;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending CANCEL %@, %@ <%@>", &v30, 0x20u);
    }

    messenger = [(IDSDSessionInvitationManager *)self messenger];
    v27 = [NSNumber numberWithInteger:235];
    [messenger sendMessage:v15 toDestinations:destinationsCopy withCommand:v27];

    delegate = [(IDSDSessionInvitationManager *)self delegate];
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [destinationsCopy count]);
    [delegate submitAWDMetricsForIDSSessionCancelSentWithRemoteEndReason:v6 numberOfRecipients:v29];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "We are the receiver, we can only DECLINE the invite, not CANCEL", &v30, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    [(IDSDSessionInvitationManager *)self declineInvitationWithData:dataCopy];
  }
}

- (id)_acceptedDeviceUniqueID
{
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionInvitationManager *)self sharedState];
    destinations = [sharedState destinations];
    *buf = 138412290;
    v27 = destinations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device unique ID in: %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
  destinations2 = [sharedState2 destinations];

  v8 = [destinations2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138412290;
    v20 = v9;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(destinations2);
        }

        pushToken = [*(*(&v21 + 1) + 8 * i) pushToken];
        v14 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v27 = pushToken;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
        }

        if (pushToken)
        {
          v15 = +[IDSDAccountController sharedInstance];
          rawToken = [pushToken rawToken];
          v17 = [v15 deviceIDForPushToken:rawToken];

          v18 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "    => Found unique ID: %@", buf, 0xCu);
          }

          if ([v17 length])
          {

            goto LABEL_21;
          }
        }
      }

      v10 = [destinations2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  destinations2 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(destinations2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, destinations2, OS_LOG_TYPE_DEFAULT, "  => No unique ID found", buf, 2u);
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (id)_acceptedDeviceToken
{
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionInvitationManager *)self sharedState];
    destinations = [sharedState destinations];
    *buf = 138412290;
    v23 = destinations;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device token in: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
  destinations2 = [sharedState2 destinations];

  v8 = [destinations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    *&v9 = 138412290;
    v16 = v9;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(destinations2);
      }

      pushToken = [*(*(&v17 + 1) + 8 * v12) pushToken];
      v14 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v23 = pushToken;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
      }

      if (pushToken)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [destinations2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    destinations2 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(destinations2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, destinations2, OS_LOG_TYPE_DEFAULT, "  => No token found", buf, 2u);
    }

    pushToken = 0;
  }

  return pushToken;
}

- (void)cancelInvitation
{
  [(IDSDSessionInvitationManager *)self _sendCancelInvitationToDestinations:0 withData:0];
  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate endSessionWithReason:5];
}

- (void)cancelInvitationWithData:(id)data
{
  [(IDSDSessionInvitationManager *)self _sendCancelInvitationToDestinations:0 withData:data];
  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate endSessionWithReason:5];
}

- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)override
{
  [(IDSDSessionInvitationManager *)self sendCancelInvitationToDestinations:0 remoteEndReason:*&override data:0];
  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate endSessionWithReason:5];
}

- (void)acceptInvitationWithData:(id)data
{
  value = data;
  v4 = objc_alloc_init(NSDate);
  selfCopy = self;
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  [sharedState setStartConnectingDate:v4];

  delegate = [(IDSDSessionInvitationManager *)self delegate];
  isWithDefaultPairedDevice = [delegate isWithDefaultPairedDevice];

  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (isWithDefaultPairedDevice)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    sharedState2 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    if ([sharedState2 enableQuickRelay])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    sharedState3 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    if (![sharedState3 useQRDirectly])
    {
      v8 = @"NO";
    }

    sharedState4 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    clientType = [sharedState4 clientType];
    if (clientType == 1)
    {
      v15 = 0;
      v16 = @"YES";
    }

    else
    {
      sharedState5 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      v16 = @"YES";
      if ([sharedState5 clientType] == 5)
      {
        v15 = 0;
      }

      else
      {
        sharedState6 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        if ([sharedState6 clientType] != 6)
        {
          v16 = @"NO";
        }

        v15 = 1;
      }
    }

    *buf = 138413058;
    v131 = v9;
    v132 = 2112;
    v133 = v11;
    v134 = 2112;
    v135 = v8;
    v136 = 2112;
    v137 = v16;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "acceptInvitationWithData isWithDefaultDevice (%@) enableQuickRelay (%@), useQRDirectly (%@), isFaceTime(%@)", buf, 0x2Au);
    if (v15)
    {
    }

    if (clientType != 1)
    {
    }
  }

  remoteBlob = [(IDSDSessionInvitationManager *)selfCopy remoteBlob];
  if ((remoteBlob != 0) | isWithDefaultPairedDevice & 1)
  {
  }

  else
  {
    sharedState7 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    enableQuickRelay = [sharedState7 enableQuickRelay];

    if ((enableQuickRelay & 1) == 0)
    {
      v39 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No remote blob, bailing...", buf, 2u);
      }

      delegate2 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate2 endSessionWithReason:9];
      goto LABEL_117;
    }
  }

  sharedState8 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  [sharedState8 clearAllTimers];

  sharedState9 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  [sharedState9 setConnectionTimer];

  sharedState10 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  [sharedState10 setState:4];

  delegate3 = [(IDSDSessionInvitationManager *)selfCopy delegate];
  [delegate3 registerClientChannel];

  sharedState11 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  isScreenSharingSession = [sharedState11 isScreenSharingSession];

  if (isScreenSharingSession)
  {
    v26 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      remoteBlob2 = [(IDSDSessionInvitationManager *)selfCopy remoteBlob];
      *buf = 138412290;
      v131 = remoteBlob2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "acceptInvitationWithData remoteBlob %@", buf, 0xCu);
    }

    sharedState12 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    connection = [sharedState12 connection];
    remoteBlob3 = [(IDSDSessionInvitationManager *)selfCopy remoteBlob];
    [connection receivedRemoteConnectionData:remoteBlob3];

    sharedState13 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    connection2 = [sharedState13 connection];
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_1005D2DF8;
    v128[3] = &unk_100BE0858;
    v128[4] = selfCopy;
    v129 = value;
    [connection2 createConnectionData:0 handler:v128];

LABEL_116:
    preferences = [(IDSDSessionInvitationManager *)selfCopy preferences];
    [(IDSDSessionInvitationManager *)selfCopy _setLinkPreferences:preferences];

    delegate2 = [(IDSDSessionInvitationManager *)selfCopy delegate];
    [delegate2 submitAWDMetricsForIDSSessionAcceptSent];
    goto LABEL_117;
  }

  if (isWithDefaultPairedDevice)
  {
    sharedState14 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    forceInternetInvitation = [sharedState14 forceInternetInvitation];

    if (!forceInternetInvitation)
    {
      delegate4 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate4 openSocketToDevice:kIDSDefaultPairedDeviceID];

      v62 = objc_alloc_init(NSMutableDictionary);
      v63 = _IDSSessionProtocolVersionNumber();
      if (v63)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageVersion, v63);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100917318();
      }

      v87 = +[NSData data];
      if (v87)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageBlob, v87);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092C180();
      }

      sharedState15 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      uniqueID = [sharedState15 uniqueID];

      if (uniqueID)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageSessionID, uniqueID);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009173A0();
      }

      sharedState16 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      participantID = [sharedState16 participantID];

      if (participantID)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageParticipantID, participantID);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100917428();
      }

      if (value)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageContext, value);
      }

      CFDictionarySetValue(v62, IDSDSessionMessageUseCloudPairedControlChannel, &__kCFBooleanTrue);
      CFDictionarySetValue(v62, IDSDSessionMessageUseStunMessageIntegrity, &__kCFBooleanTrue);
      CFDictionarySetValue(v62, IDSDSessionMessageUseSecureQRControlMessage, &__kCFBooleanTrue);
      v92 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        sharedState17 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        destinations = [sharedState17 destinations];
        sharedState18 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        uniqueID2 = [sharedState18 uniqueID];
        *buf = 138412802;
        v131 = destinations;
        v132 = 2112;
        v133 = uniqueID2;
        v134 = 2112;
        v135 = v62;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@ <%@>", buf, 0x20u);
      }

      messenger = [(IDSDSessionInvitationManager *)selfCopy messenger];
      v98 = [NSNumber numberWithInteger:233];
      [messenger sendMessage:v62 withCommand:v98];

      goto LABEL_116;
    }
  }

  _acceptedDeviceUniqueID = [(IDSDSessionInvitationManager *)selfCopy _acceptedDeviceUniqueID];

  v36 = _acceptedDeviceUniqueID == 0;
  sharedState19 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  v38 = sharedState19;
  if (v36)
  {
    useQRDirectly = [sharedState19 useQRDirectly];

    if ((useQRDirectly & 1) == 0 && ![(IDSDSessionInvitationManager *)selfCopy remoteAssumeRemoteDeviceEncryption])
    {
      v110 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        sharedState20 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        fromURI = [sharedState20 fromURI];
        sharedState21 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        uniqueID3 = [sharedState21 uniqueID];
        *buf = 138412546;
        v131 = fromURI;
        v132 = 2112;
        v133 = uniqueID3;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "At ACCEPT invitaion - from %@, session %@, expecting remote device encryption but remote does not specify", buf, 0x16u);
      }

      delegate2 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate2 endSessionWithReason:17];
      goto LABEL_117;
    }
  }

  else
  {
    [sharedState19 setDisableRemoteDeviceEncryption:1];
  }

  sharedState22 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  enableQuickRelay2 = [sharedState22 enableQuickRelay];

  if (enableQuickRelay2)
  {
    sharedState23 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    if (([sharedState23 useQRDirectly] & 1) == 0)
    {
      sharedState24 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      if ([sharedState24 clientType] != 1)
      {
        sharedState25 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        if ([sharedState25 clientType] != 5)
        {
          sharedState26 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
          v116 = [sharedState26 clientType] == 6;

          if (!v116)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    delegate5 = [(IDSDSessionInvitationManager *)selfCopy delegate];
    [delegate5 startQRSession];

LABEL_46:
    v48 = +[IDSQuickRelayAllocator sharedInstance];
    sharedState27 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    uniqueID4 = [sharedState27 uniqueID];
    [v48 requestAllocationForRecipient:uniqueID4];
    goto LABEL_51;
  }

  v51 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    remoteBlob4 = [(IDSDSessionInvitationManager *)selfCopy remoteBlob];
    *buf = 138412290;
    v131 = remoteBlob4;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "acceptInvitationWithData remoteBlob %@", buf, 0xCu);
  }

  sharedState28 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  localBlob = [sharedState28 localBlob];
  v55 = localBlob == 0;

  if (!v55)
  {
    delegate6 = [(IDSDSessionInvitationManager *)selfCopy delegate];
    sharedState29 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    uniqueID5 = [sharedState29 uniqueID];
    [delegate6 openSocketToDevice:uniqueID5];

    v48 = +[IDSUTunController sharedInstance];
    sharedState27 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    uniqueID4 = [sharedState27 uniqueID];
    [v48 startConnectionForDevice:uniqueID4 isInitiator:0 remotePartyID:0 useStunMICheck:{-[IDSDSessionInvitationManager useStunMICheck](selfCopy, "useStunMICheck")}];
LABEL_51:

    v59 = objc_alloc_init(NSMutableDictionary);
    v60 = _IDSSessionProtocolVersionNumber();
    if (v60)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageVersion, v60);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917318();
    }

    sharedState30 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    localBlob2 = [sharedState30 localBlob];

    if (localBlob2)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageBlob, localBlob2);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C180();
    }

    sharedState31 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    uniqueID6 = [sharedState31 uniqueID];

    if (uniqueID6)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageSessionID, uniqueID6);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    sharedState32 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    participantID2 = [sharedState32 participantID];

    if (participantID2)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageParticipantID, participantID2);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917428();
    }

    if (value)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageContext, value);
    }

    CFDictionarySetValue(v59, IDSDSessionMessageUseStunMessageIntegrity, &__kCFBooleanTrue);
    CFDictionarySetValue(v59, IDSDSessionMessageUseSecureQRControlMessage, &__kCFBooleanTrue);
    _acceptedDeviceUniqueID2 = [(IDSDSessionInvitationManager *)selfCopy _acceptedDeviceUniqueID];
    v71 = _acceptedDeviceUniqueID2 == 0;

    if (v71)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageAssumeRemoteDeviceEncryption, &__kCFBooleanTrue);
    }

    sharedState33 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    localUnauthenticatedFullIdentity = [sharedState33 localUnauthenticatedFullIdentity];

    if (!localUnauthenticatedFullIdentity)
    {
      goto LABEL_111;
    }

    sharedState34 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    localUnauthenticatedFullIdentity2 = [sharedState34 localUnauthenticatedFullIdentity];
    v127 = 0;
    v76 = [localUnauthenticatedFullIdentity2 publicIdentityWithError:&v127];
    v77 = v127;

    if (v76)
    {
      v126 = v77;
      v78 = [(__CFString *)v76 dataRepresentationWithError:&v126];
      v79 = v126;

      if (v78)
      {
        CFDictionarySetValue(v59, IDSSessionUnauthenticatedPublicKey, v78);
        v80 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v131 = v76;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Sending unauthenticated public identity {publicIdentity: %{private}@}", buf, 0xCu);
        }
      }

      else
      {
        v99 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v131 = v79;
          v132 = 2113;
          v133 = v76;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Failed to create data from public public identity {error: %{public}@, publicIdentity: %{private}@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v117 = v79;
          v118 = v76;
          _IDSLogTransport();
        }
      }
    }

    else
    {
      v81 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sharedState35 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        localUnauthenticatedFullIdentity3 = [sharedState35 localUnauthenticatedFullIdentity];
        *buf = 138543619;
        v131 = v77;
        v132 = 2113;
        v133 = localUnauthenticatedFullIdentity3;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to create public identity from full identity {error: %{public}@, fullIdentity: %{private}@}", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        v79 = v77;
        goto LABEL_110;
      }

      sharedState36 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      localUnauthenticatedFullIdentity4 = [sharedState36 localUnauthenticatedFullIdentity];
      _IDSWarnV();

      v85 = [(IDSDSessionInvitationManager *)selfCopy sharedState:v77];
      localUnauthenticatedFullIdentity5 = [v85 localUnauthenticatedFullIdentity];
      _IDSLogV();

      v78 = [(IDSDSessionInvitationManager *)selfCopy sharedState:v77];
      [v78 localUnauthenticatedFullIdentity];
      v118 = v117 = v77;
      _IDSLogTransport();

      v79 = v77;
    }

LABEL_110:
LABEL_111:
    v100 = [(IDSDSessionInvitationManager *)selfCopy sharedState:v117];
    isScreenSharingSession2 = [v100 isScreenSharingSession];

    if ((isScreenSharingSession2 & 1) == 0)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageUseCloudPairedControlChannel, &__kCFBooleanTrue);
      CFDictionarySetValue(v59, IDSDSessionMessageUsePhoneContinuityLocalMessage, &__kCFBooleanTrue);
    }

    v102 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      sharedState37 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      destinations2 = [sharedState37 destinations];
      sharedState38 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      uniqueID7 = [sharedState38 uniqueID];
      *buf = 138412802;
      v131 = destinations2;
      v132 = 2112;
      v133 = uniqueID7;
      v134 = 2112;
      v135 = v59;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@ <%@>", buf, 0x20u);
    }

    messenger2 = [(IDSDSessionInvitationManager *)selfCopy messenger];
    v108 = [NSNumber numberWithInteger:233];
    [messenger2 sendMessage:v59 withCommand:v108];

    goto LABEL_116;
  }

  v86 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Failed to get local connection data, bailing...", buf, 2u);
  }

  delegate2 = [(IDSDSessionInvitationManager *)selfCopy delegate];
  [delegate2 endSessionWithReason:8];
LABEL_117:
}

- (void)_sendAcceptMessageWithContext:(id)context connectionData:(id)data
{
  contextCopy = context;
  dataCopy = data;
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

  v10 = dataCopy;
  if (v10)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageBlob, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C180();
  }

  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  uniqueID = [sharedState uniqueID];

  if (uniqueID)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageSessionID, uniqueID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
  participantID = [sharedState2 participantID];

  if (participantID)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageParticipantID, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (contextCopy)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageContext, contextCopy);
  }

  sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
  localUnauthenticatedFullIdentity = [sharedState3 localUnauthenticatedFullIdentity];

  if (localUnauthenticatedFullIdentity)
  {
    publicIdentityDataFromLocalFullIdentity = [(IDSDSessionInvitationManager *)self publicIdentityDataFromLocalFullIdentity];
    if (!publicIdentityDataFromLocalFullIdentity)
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to send IDSSession because failed to create unauthenticatedPublicIdentityData", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      goto LABEL_57;
    }

    v18 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
      localUnauthenticatedFullIdentity2 = [sharedState4 localUnauthenticatedFullIdentity];
      *buf = 138477827;
      *v55 = localUnauthenticatedFullIdentity2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending unauthenticated public identity {localUnauthenticatedFullIdentity: %{private}@}", buf, 0xCu);
    }

    CFDictionarySetValue(v8, IDSSessionUnauthenticatedPublicKey, publicIdentityDataFromLocalFullIdentity);
  }

  sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
  isScreenSharingSession = [sharedState5 isScreenSharingSession];

  if (!isScreenSharingSession)
  {
LABEL_54:
    v46 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
      destinations = [sharedState6 destinations];
      sharedState7 = [(IDSDSessionInvitationManager *)self sharedState];
      uniqueID2 = [sharedState7 uniqueID];
      *buf = 138412802;
      *v55 = destinations;
      *&v55[8] = 2112;
      *&v55[10] = uniqueID2;
      v56 = 2112;
      v57 = v8;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@, <%@>", buf, 0x20u);
    }

    messenger = [(IDSDSessionInvitationManager *)self messenger];
    v52 = [NSNumber numberWithInteger:233];
    [messenger sendMessage:v8 withCommand:v52];

    goto LABEL_57;
  }

  v23 = malloc_type_malloc(0x3CuLL, 0xBE112179uLL);
  if (v23)
  {
    if (SecRandomCopyBytes(kSecRandomDefault, 0x3CuLL, v23))
    {
      v24 = *__error();
      v25 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = strerror(v24);
        *buf = 67109378;
        *v55 = v24;
        *&v55[4] = 2080;
        *&v55[6] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SecRandomCopyBytes failed %d (%s), bailing...", buf, 0x12u);
      }

      delegate = [(IDSDSessionInvitationManager *)self delegate];
      [delegate endSessionWithReason:17];

      free(v23);
      goto LABEL_57;
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1005D38E0;
    v53[3] = &unk_100BDD958;
    v53[4] = v23;
    v31 = [[NSData alloc] initWithBytesNoCopy:v23 length:60 deallocator:v53];
    if (v31)
    {
      CFDictionarySetValue(v8, IDSDSessionMessageKeyMaterial, v31);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C428();
    }

    v32 = arc4random();
    self->_SSRCSend = v32;
    v33 = [NSNumber numberWithUnsignedInt:v32];
    if (v33)
    {
      CFDictionarySetValue(v8, IDSDSessionMessageSelfSSRC, v33);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C318();
    }

    v34 = arc4random();
    [(IDSDSessionInvitationManager *)self setSeqSendStart:v34];
    sharedState8 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState8 setSeqSend:v34];

    v36 = [NSNumber numberWithUnsignedShort:LOWORD(self->_seqSendStart)];
    if (v36)
    {
      CFDictionarySetValue(v8, IDSDSessionMessageSelfSeqStart, v36);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C3A0();
    }

    for (i = 0; i != 60; ++i)
    {
      self->keyMaterial[i] ^= *(v23 + i);
    }

    sharedState9 = [(IDSDSessionInvitationManager *)self sharedState];
    v39 = [sharedState9 peerProtocolVersion] > 1;

    sharedState10 = [(IDSDSessionInvitationManager *)self sharedState];
    encryptionState = [sharedState10 encryptionState];

    v42 = sub_10050C5E0(encryptionState, self->keyMaterial, 60, 0, [(IDSDSessionInvitationManager *)self SSRCSend], [(IDSDSessionInvitationManager *)self seqSendStart], [(IDSDSessionInvitationManager *)self SSRCRecv], [(IDSDSessionInvitationManager *)self seqRecvStart], v39);
    *&self->keyMaterial[44] = 0u;
    *&self->keyMaterial[32] = 0u;
    *&self->keyMaterial[16] = 0u;
    *self->keyMaterial = 0u;
    if (v42)
    {
      delegate2 = [(IDSDSessionInvitationManager *)self delegate];
      [delegate2 endSessionWithReason:17];

      sharedState11 = [(IDSDSessionInvitationManager *)self sharedState];
      [sharedState11 setEncryptionInitialized:0];

      goto LABEL_57;
    }

    sharedState12 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState12 setEncryptionInitialized:1];

    goto LABEL_54;
  }

  v29 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Malloc error when creating key material, ending call...", buf, 2u);
  }

  delegate3 = [(IDSDSessionInvitationManager *)self delegate];
  [delegate3 endSessionWithReason:17];

LABEL_57:
}

- (void)declineInvitationWithData:(id)data forceFromURI:(id)i additionalMessageAttributes:(id)attributes
{
  dataCopy = data;
  iCopy = i;
  attributesCopy = attributes;
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  [sharedState clearAllTimers];

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = _IDSSessionProtocolVersionNumber();
  if (v13)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageVersion, v13);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917318();
  }

  sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
  uniqueID = [sharedState2 uniqueID];

  if (uniqueID)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageSessionID, uniqueID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
  participantID = [sharedState3 participantID];

  if (participantID)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageParticipantID, participantID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (dataCopy)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageContext, dataCopy);
  }

  [(__CFDictionary *)v12 addEntriesFromDictionary:attributesCopy];

  v18 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
    destinations = [sharedState4 destinations];
    sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID2 = [sharedState5 uniqueID];
    v30 = 138412802;
    v31 = destinations;
    v32 = 2112;
    v33 = uniqueID2;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending decline to %@, %@ <%@>", &v30, 0x20u);
  }

  if (!iCopy)
  {
    sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
    iCopy = [sharedState6 fromURI];
  }

  messenger = [(IDSDSessionInvitationManager *)self messenger];
  sharedState7 = [(IDSDSessionInvitationManager *)self sharedState];
  destinations2 = [sharedState7 destinations];
  v27 = [NSNumber numberWithInteger:234];
  [messenger sendMessage:v12 toDestinations:destinations2 withCommand:v27 fromURI:iCopy];

  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate submitAWDMetricsForIDSSessionDeclineSent];

  delegate2 = [(IDSDSessionInvitationManager *)self delegate];
  [delegate2 endSessionWithReason:2];
}

- (id)publicIdentityDataFromLocalFullIdentity
{
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  localUnauthenticatedFullIdentity = [sharedState localUnauthenticatedFullIdentity];

  if (localUnauthenticatedFullIdentity)
  {
    sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
    localUnauthenticatedFullIdentity2 = [sharedState2 localUnauthenticatedFullIdentity];
    v24 = 0;
    v7 = [localUnauthenticatedFullIdentity2 publicIdentityWithError:&v24];
    v8 = v24;

    if (v7)
    {
      v23 = v8;
      v9 = [v7 dataRepresentationWithError:&v23];
      v10 = v23;

      if (v9)
      {
        v9 = v9;
        v8 = v10;
        v11 = v9;
      }

      else
      {
        v18 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543875;
          selfCopy3 = v10;
          v27 = 2113;
          v28 = v7;
          v29 = 2113;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get data from unauthenticated public identity {error: %{public}@, publicIdentity: %{private}@, session: %{private}@}", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }

        v8 = v10;
        v11 = 0;
      }
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
        localUnauthenticatedFullIdentity3 = [sharedState3 localUnauthenticatedFullIdentity];
        *buf = 138543875;
        selfCopy3 = v8;
        v27 = 2113;
        v28 = localUnauthenticatedFullIdentity3;
        v29 = 2113;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get unauthenticated public identity from full identity {error: %{public}@, fullIdentity: %{private}@, session: %{private}@}", buf, 0x20u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        v11 = 0;
        goto LABEL_20;
      }

      sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
      localUnauthenticatedFullIdentity4 = [sharedState4 localUnauthenticatedFullIdentity];
      _IDSWarnV();

      v17 = [(IDSDSessionInvitationManager *)self sharedState:v8];
      localUnauthenticatedFullIdentity5 = [v17 localUnauthenticatedFullIdentity];
      _IDSLogV();

      v9 = [(IDSDSessionInvitationManager *)self sharedState:v8];
      localUnauthenticatedFullIdentity6 = [v9 localUnauthenticatedFullIdentity];
      _IDSLogTransport();

      v11 = 0;
    }

LABEL_20:
    goto LABEL_21;
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create unauthenticated public key because of nil full identity {session: %{private}@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  v11 = 0;
LABEL_21:

  return v11;
}

- (void)receivedAcceptMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  selfCopy = self;
  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate submitAWDMetricsForIDSSessionAcceptReceived];

  v7 = objc_alloc_init(NSDate);
  sharedState = [(IDSDSessionInvitationManager *)self sharedState];
  [sharedState setStartConnectingDate:v7];

  sharedState2 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  LODWORD(sharedState) = [sharedState2 state];

  if (sharedState >= 4)
  {
    v10 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v195 = iCopy;
      v11 = "Ignoring incoming accept from %@, session is not waiting for an invite response anymore";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_137;
    }

    goto LABEL_137;
  }

  sharedState3 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
  isInitiator = [sharedState3 isInitiator];

  if (isInitiator)
  {
    sharedState4 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    v186 = [sharedState4 destinationIsDefaultPairedDevice:iCopy];

    v15 = IDSDSessionMessageBlob;
    v16 = [messageCopy objectForKey:IDSDSessionMessageBlob];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [messageCopy objectForKey:v15];
      v18 = [NSData _IDSDataFromBase64String:v17];
    }

    else
    {
      v17 = [messageCopy objectForKey:v15];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = 0;
        goto LABEL_14;
      }

      v18 = [messageCopy objectForKey:v15];
    }

    v19 = v18;
LABEL_14:

    v181 = v19;
    if (!(([v19 length]!= 0) | v186 & 1))
    {
      sharedState5 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      enableQuickRelay = [sharedState5 enableQuickRelay];

      if ((enableQuickRelay & 1) == 0)
      {
        v28 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No remote blob, bailing...", buf, 2u);
        }

        delegate2 = [(IDSDSessionInvitationManager *)selfCopy delegate];
        [delegate2 endSessionWithReason:9];

        goto LABEL_136;
      }
    }

    sharedState6 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    v23 = [sharedState6 destinationIsGuestDevice:iCopy];

    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = IDSSessionUnauthenticatedPublicKey;
    v25 = [messageCopy objectForKey:IDSSessionUnauthenticatedPublicKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [messageCopy objectForKey:v24];
      v27 = [NSData _IDSDataFromBase64String:v26];
    }

    else
    {
      v26 = [messageCopy objectForKey:v24];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_26;
      }

      v27 = [messageCopy objectForKey:v24];
    }

    v30 = v27;
LABEL_26:

    if (!v30)
    {
      delegate3 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate3 endSessionWithReason:14];

LABEL_136:
      v10 = v181;
      goto LABEL_137;
    }

    sharedState7 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    v32 = [sharedState7 publicIdentityFromData:v30];

    sharedState8 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    [sharedState8 setRemoteUnauthenticatedPublicIdentity:v32];

LABEL_28:
    v34 = objc_opt_class();
    v180 = sub_10001B980(v34, messageCopy, IDSDSessionMessageParticipantID);
    if (![v180 length])
    {
      v60 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "No participantID, bailing...", buf, 2u);
      }

      delegate4 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate4 endSessionWithReason:14];
      goto LABEL_135;
    }

    v35 = objc_opt_class();
    v36 = sub_10001B980(v35, messageCopy, IDSDSessionMessageVersion);
    delegate4 = v36;
    if (!v36)
    {
      v61 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No message version, bailing...", buf, 2u);
      }

      delegate5 = [(IDSDSessionInvitationManager *)selfCopy delegate];
      [delegate5 endSessionWithReason:14];

      goto LABEL_135;
    }

    unsignedIntValue = [v36 unsignedIntValue];
    sharedState9 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    [sharedState9 setPeerProtocolVersion:unsignedIntValue];

    v39 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      sharedState10 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      *buf = 67109120;
      LODWORD(v195) = [sharedState10 peerProtocolVersion];
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting peer protocol version to %d", buf, 8u);
    }

    v41 = objc_opt_class();
    v42 = sub_10001B980(v41, messageCopy, IDSDSessionMessageUseCloudPairedControlChannel);
    sharedState11 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    [sharedState11 setRemoteUseCloudPairedControlChannel:v42];

    v44 = objc_opt_class();
    v45 = sub_10001B980(v44, messageCopy, IDSDSessionMessageUsePhoneContinuityLocalMessage);
    sharedState12 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    [sharedState12 setRemoteUsePhoneContinuityLocalMessage:v45];

    v47 = objc_opt_class();
    v48 = IDSDSessionMessageUseStunMessageIntegrity;
    v49 = sub_10001B980(v47, messageCopy, IDSDSessionMessageUseStunMessageIntegrity);
    v50 = objc_opt_class();
    v51 = sub_10001B980(v50, messageCopy, v48);
    -[IDSDSessionInvitationManager setUseStunMICheck:](selfCopy, "setUseStunMICheck:", [v51 BOOLValue]);

    sharedState13 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    LODWORD(v51) = [sharedState13 peerProtocolVersion] < 4;

    if (v51)
    {
      v53 = objc_opt_class();
      v54 = IDSDSessionMessageUseSecureQRControlMessage;
      sharedState15 = sub_10001B980(v53, messageCopy, IDSDSessionMessageUseSecureQRControlMessage);
      v56 = objc_opt_class();
      v57 = sub_10001B980(v56, messageCopy, v54);
      bOOLValue = [v57 BOOLValue];
      sharedState14 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      [sharedState14 setUseSecureQRControlMessage:bOOLValue];
    }

    else
    {
      sharedState15 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
      [sharedState15 setUseSecureQRControlMessage:1];
    }

    sharedState16 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
    isScreenSharingSession = [sharedState16 isScreenSharingSession];

    if (!isScreenSharingSession)
    {
      goto LABEL_63;
    }

    v66 = IDSDSessionMessageKeyMaterial;
    v67 = [messageCopy objectForKey:IDSDSessionMessageKeyMaterial];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [messageCopy objectForKey:v66];
      v69 = [NSData _IDSDataFromBase64String:v68];
    }

    else
    {
      v68 = [messageCopy objectForKey:v66];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v70 = 0;
LABEL_49:

        v71 = objc_opt_class();
        v72 = sub_10001B980(v71, messageCopy, IDSDSessionMessageSelfSSRC);
        v73 = objc_opt_class();
        v74 = sub_10001B980(v73, messageCopy, IDSDSessionMessageSelfSeqStart);
        v75 = 17;
        if (v70)
        {
          v76 = selfCopy;
          if (!v72 || !v74)
          {
            goto LABEL_61;
          }

          v77 = v70;
          bytes = [v70 bytes];
          if ([v70 length] == 60)
          {
            -[IDSDSessionInvitationManager setSSRCRecv:](selfCopy, "setSSRCRecv:", [v72 unsignedIntValue]);
            -[IDSDSessionInvitationManager setSeqRecvStart:](selfCopy, "setSeqRecvStart:", [v74 unsignedShortValue]);
            for (i = 0; i != 60; ++i)
            {
              selfCopy->keyMaterial[i] ^= bytes[i];
            }

            sharedState17 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            v81 = [sharedState17 peerProtocolVersion] > 1;

            sharedState18 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            encryptionState = [sharedState18 encryptionState];

            v84 = sub_10050C5E0(encryptionState, selfCopy->keyMaterial, 60, 1, [(IDSDSessionInvitationManager *)selfCopy SSRCSend], [(IDSDSessionInvitationManager *)selfCopy seqSendStart], [(IDSDSessionInvitationManager *)selfCopy SSRCRecv], [(IDSDSessionInvitationManager *)selfCopy seqRecvStart], v81);
            *&selfCopy->keyMaterial[44] = 0u;
            *&selfCopy->keyMaterial[32] = 0u;
            *&selfCopy->keyMaterial[16] = 0u;
            *selfCopy->keyMaterial = 0u;
            if (v84)
            {
              delegate6 = [(IDSDSessionInvitationManager *)selfCopy delegate];
              [delegate6 endSessionWithReason:17];

              sharedState19 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              [sharedState19 setEncryptionInitialized:0];

LABEL_135:
              goto LABEL_136;
            }

            sharedState20 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState20 setEncryptionInitialized:1];

LABEL_63:
            sharedState21 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState21 clearAllTimers];

            sharedState22 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState22 setState:4];

            pushToken = [iCopy pushToken];
            v93 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              sharedState23 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              uniqueID = [sharedState23 uniqueID];
              *buf = 138412802;
              v195 = iCopy;
              v196 = 2112;
              v197 = uniqueID;
              v198 = 2112;
              v199 = pushToken;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Received accept from %@, session %@, fromToken %@.", buf, 0x20u);
            }

            v96 = objc_alloc_init(NSMutableSet);
            sharedState24 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            v98 = [sharedState24 destinationIsGuestDevice:iCopy];

            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            sharedState25 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            destinations = [sharedState25 destinations];

            v101 = 0;
            v102 = [destinations countByEnumeratingWithState:&v189 objects:v193 count:16];
            if (v102)
            {
              v103 = *v190;
              do
              {
                for (j = 0; j != v102; j = j + 1)
                {
                  if (*v190 != v103)
                  {
                    objc_enumerationMutation(destinations);
                  }

                  v105 = *(*(&v189 + 1) + 8 * j);
                  if (v186)
                  {
                    sharedState26 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                    v107 = [sharedState26 destinationIsDefaultPairedDevice:v105];

                    if (v107)
                    {
                      continue;
                    }
                  }

                  if (!v98 || ([v105 isEqualToURI:iCopy] & 1) == 0)
                  {
                    pushToken2 = [v105 pushToken];

                    if (([pushToken2 isEqualToPushToken:pushToken] & 1) == 0)
                    {
                      [v96 addObject:v105];
                      v109 = +[IDSFoundationLog IDSDSession];
                      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v195 = v105;
                        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Adding %@ to set to cancel", buf, 0xCu);
                      }
                    }

                    v101 = pushToken2;
                  }
                }

                v102 = [destinations countByEnumeratingWithState:&v189 objects:v193 count:16];
              }

              while (v102);
            }

            if ([v96 count])
            {
              v110 = +[IDSFoundationLog IDSDSession];
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v195 = v96;
                _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Canceling invitations to %@", buf, 0xCu);
              }

              [(IDSDSessionInvitationManager *)selfCopy sendCancelInvitationToDestinations:v96 remoteEndReason:29 data:0];
            }

            if (v186)
            {
              sharedState27 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              forceInternetInvitation = [sharedState27 forceInternetInvitation];

              if ((forceInternetInvitation & 1) == 0)
              {
                v113 = +[IDSUTunController sharedInstance];
                sharedState28 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                uniqueID2 = [sharedState28 uniqueID];
                [v113 stopUDPGlobalLinkForDevice:uniqueID2];
              }
            }

            v116 = [[NSSet alloc] initWithObjects:{iCopy, 0, delegate4}];
            sharedState29 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState29 setDestinations:v116];

            [(IDSDSessionInvitationManager *)selfCopy setRemoteBlob:v181];
            sharedState30 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState30 setConnectionTimer];

            sharedState31 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            LODWORD(sharedState29) = [sharedState31 isScreenSharingSession];

            if (sharedState29)
            {
              v120 = +[IDSFoundationLog IDSDSession];
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Starting screen sharing connection with remote blob", buf, 2u);
              }

              sharedState32 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              connection = [sharedState32 connection];
              [connection receivedRemoteConnectionData:v181];

              sharedState33 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              connection2 = [sharedState33 connection];
              sharedState34 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              v188[0] = _NSConcreteStackBlock;
              v188[1] = 3221225472;
              v188[2] = sub_1005D5A40;
              v188[3] = &unk_100BD9F28;
              v188[4] = selfCopy;
              [connection2 startConnectionAsInitiator:1 peerProtocolVersion:objc_msgSend(sharedState34 errorHandler:{"peerProtocolVersion"), v188}];

              goto LABEL_127;
            }

            _acceptedDeviceUniqueID = [(IDSDSessionInvitationManager *)selfCopy _acceptedDeviceUniqueID];
            if ((_acceptedDeviceUniqueID != 0) | v186 & 1)
            {
            }

            else if (![(IDSDSessionInvitationManager *)selfCopy _isLocalDeviceSafeviewAdviserInitiatorOnLoboMacOrLaterAndRemoteDeviceIsPreTiboAnyPlatform])
            {
              sharedState35 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              useQRDirectly = [sharedState35 useQRDirectly];

              if (useQRDirectly)
              {
                goto LABEL_97;
              }

              v154 = [messageCopy objectForKeyedSubscript:IDSDSessionMessageAssumeRemoteDeviceEncryption];
              bOOLValue2 = [v154 BOOLValue];

              sharedState36 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              sharedState48 = sharedState36;
              if (!bOOLValue2)
              {
                disableRemoteDeviceEncryption = [sharedState36 disableRemoteDeviceEncryption];

                if ((disableRemoteDeviceEncryption & 1) == 0)
                {
                  v175 = +[IDSFoundationLog IDSDSession];
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
                  {
                    sharedState37 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                    uniqueID3 = [sharedState37 uniqueID];
                    *buf = 138412546;
                    v195 = iCopy;
                    v196 = 2112;
                    v197 = uniqueID3;
                    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "Received accept from %@, session %@, expecting remote device encryption but remote does not specify", buf, 0x16u);
                  }

                  delegate7 = [(IDSDSessionInvitationManager *)selfCopy delegate];
                  [delegate7 endSessionWithReason:17];
                  goto LABEL_134;
                }

                goto LABEL_97;
              }

              [sharedState36 setDisableRemoteDeviceEncryption:0];
LABEL_96:

LABEL_97:
              v128 = +[IDSFoundationLog IDSDSession];
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Starting connection with remote blob", buf, 2u);
              }

              sharedState38 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              if ([sharedState38 destinationIsDefaultPairedDevice:iCopy])
              {
                sharedState39 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                forceInternetInvitation2 = [sharedState39 forceInternetInvitation];

                if (!forceInternetInvitation2)
                {
                  delegate8 = [(IDSDSessionInvitationManager *)selfCopy delegate];
                  [delegate8 openSocketToDevice:kIDSDefaultPairedDeviceID];

                  goto LABEL_127;
                }
              }

              else
              {
              }

              delegate9 = [(IDSDSessionInvitationManager *)selfCopy delegate];
              sharedState40 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              uniqueID4 = [sharedState40 uniqueID];
              [delegate9 openSocketToDevice:uniqueID4];

              sharedState41 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              LODWORD(sharedState40) = [sharedState41 enableQuickRelay];

              if (sharedState40)
              {
                v137 = +[IDSQuickRelayAllocator sharedInstance];
                sharedState42 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                uniqueID5 = [sharedState42 uniqueID];
                rawToken = [pushToken rawToken];
                v141 = [v137 getRelaySessionIDForIDSSessionID:uniqueID5 pushToken:rawToken];

                v142 = +[IDSQuickRelayAllocator sharedInstance];
                sharedState43 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                uniqueID6 = [sharedState43 uniqueID];
                rawToken2 = [pushToken rawToken];
                [v142 setInitiatorsAcceptedToken:uniqueID6 pushToken:rawToken2];

                if (v141)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  sharedState44 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                  v148 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [sharedState44 useSecureQRControlMessage]);

                  if (v148)
                  {
                    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionUseSecureControlMessageKey, v148);
                  }

                  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_100919F70();
                  }

                  v158 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v195 = v141;
                    _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Accepted relay-session-id %@.", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      v178 = v141;
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        v178 = v141;
                        _IDSLogV();
                      }
                    }
                  }

                  v187 = v141;
                  v159 = Mutable;
                  IDSTransportThreadAddBlock();
                }

                else
                {
                  v157 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v195 = 0;
                    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Accepted relay-session-id %@ waits for QR connection.", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      v178 = 0;
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        v178 = 0;
                        _IDSLogV();
                      }
                    }
                  }
                }
              }

              else
              {
                v149 = +[IDSUTunController sharedInstance];
                sharedState45 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
                uniqueID7 = [sharedState45 uniqueID];
                [v149 startConnectionForDevice:uniqueID7 isInitiator:1 remotePartyID:v180 useStunMICheck:{-[IDSDSessionInvitationManager useStunMICheck](selfCopy, "useStunMICheck")}];
              }

LABEL_127:
              v160 = IDSDSessionMessageContext;
              v161 = [messageCopy objectForKey:{IDSDSessionMessageContext, v178}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v162 = [messageCopy objectForKey:v160];
                v163 = [NSData _IDSDataFromBase64String:v162];
              }

              else
              {
                v162 = [messageCopy objectForKey:v160];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  delegate7 = 0;
                  goto LABEL_133;
                }

                v163 = [messageCopy objectForKey:v160];
              }

              delegate7 = v163;
LABEL_133:

              v165 = objc_alloc_init(IMMessageContext);
              [v165 setShouldBoost:1];
              v166 = +[IDSDaemon sharedInstance];
              sharedState46 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              pushTopic = [sharedState46 pushTopic];
              v169 = [v166 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v165];

              sharedState47 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
              uniqueID8 = [sharedState47 uniqueID];
              prefixedURI = [iCopy prefixedURI];
              [v169 sessionAcceptReceived:uniqueID8 fromID:prefixedURI withData:delegate7];

              v173 = +[IDSDSessionController sharedInstance];
              [v173 updateCriticalReliabilityState];

LABEL_134:
              goto LABEL_135;
            }

            sharedState48 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
            [sharedState48 setDisableRemoteDeviceEncryption:1];
            goto LABEL_96;
          }

          v87 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "receivedAcceptMessage: remoteKeyMaterialLength is not equal to remoteKeyMaterialLength, bailing...", buf, 2u);
          }

          v75 = 14;
        }

        v76 = selfCopy;
LABEL_61:
        delegate10 = [(IDSDSessionInvitationManager *)v76 delegate];
        [delegate10 endSessionWithReason:v75];

        sharedState49 = [(IDSDSessionInvitationManager *)selfCopy sharedState];
        [sharedState49 setEncryptionInitialized:0];

        goto LABEL_135;
      }

      v69 = [messageCopy objectForKey:v66];
    }

    v70 = v69;
    goto LABEL_49;
  }

  v10 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v195 = iCopy;
    v11 = "Ignoring incoming accept from %@, session is not the initiator";
    goto LABEL_9;
  }

LABEL_137:
}

- (void)receivedDeclineMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412802;
    v49 = messageCopy;
    v50 = 2112;
    v51 = iCopy;
    v52 = 2112;
    v53 = uniqueID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received decline %@ from %@, %@", buf, 0x20u);
  }

  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate submitAWDMetricsForIDSSessionDeclineReceived];

  if ([(IDSDSessionInvitationManager *)self _isValidDestination:iCopy])
  {
    v12 = objc_opt_class();
    v13 = sub_10001B980(v12, messageCopy, IDSDSessionMessageAllowOtherInvites);
    v14 = IDSDSessionMessageContext;
    v15 = [messageCopy objectForKey:IDSDSessionMessageContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [messageCopy objectForKey:v14];
      v17 = [NSData _IDSDataFromBase64String:v16];
    }

    else
    {
      v16 = [messageCopy objectForKey:v14];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sharedState8 = 0;
LABEL_12:

        uniqueID3 = JWDecodeDictionary();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [uniqueID3 objectForKey:IDSDSessionMessageDeclineReason];
          unsignedIntValue = [v22 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 0;
        }

        v24 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v49) = unsignedIntValue;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Invite was declined { givenReason: %u }", buf, 8u);
        }

        if (unsignedIntValue == 13)
        {
          v25 = 15;
        }

        else
        {
          v25 = 2;
        }

        v47 = v25;
        if ([v13 BOOLValue])
        {
          sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
          destinations = [sharedState2 destinations];
          v28 = [destinations mutableCopy];

          [v28 removeObject:iCopy];
          v29 = [v28 copy];
          v30 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v49 = iCopy;
            v50 = 2112;
            v51 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Invite was declined with reason alias deactivated { fromURI: %@, _inviteTokens: %@ }", buf, 0x16u);
          }

          if ([v29 count])
          {
            delegate3 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(delegate3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, delegate3, OS_LOG_TYPE_DEFAULT, "Suppressing decline, other recipients", buf, 2u);
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        v45 = uniqueID3;
        v46 = sharedState8;
        v32 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
          destinations2 = [sharedState3 destinations];
          *buf = 138412290;
          v49 = destinations2;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Invite was declined, notifying everyone I invited: %@", buf, 0xCu);
        }

        delegate2 = [(IDSDSessionInvitationManager *)self delegate];
        [delegate2 invitationDeclined];

        sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
        [sharedState4 clearAllTimers];

        v37 = [[NSSet alloc] initWithObjects:{iCopy, 0}];
        sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
        [sharedState5 setDestinations:v37];

        v28 = objc_alloc_init(IMMessageContext);
        [v28 setShouldBoost:1];
        v39 = +[IDSDaemon sharedInstance];
        sharedState6 = [(IDSDSessionInvitationManager *)self sharedState];
        pushTopic = [sharedState6 pushTopic];
        v29 = [v39 broadcasterForTopic:pushTopic entitlement:kIDSSessionEntitlement command:0 messageContext:v28];

        sharedState7 = [(IDSDSessionInvitationManager *)self sharedState];
        uniqueID2 = [sharedState7 uniqueID];
        prefixedURI = [iCopy prefixedURI];
        sharedState8 = v46;
        [v29 sessionDeclineReceived:uniqueID2 fromID:prefixedURI withData:v46];

        delegate3 = [(IDSDSessionInvitationManager *)self delegate];
        [delegate3 endSessionWithReason:v47];
        uniqueID3 = v45;
        goto LABEL_30;
      }

      v17 = [messageCopy objectForKey:v14];
    }

    sharedState8 = v17;
    goto LABEL_12;
  }

  v13 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sharedState8 = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID3 = [sharedState8 uniqueID];
    sharedState9 = [(IDSDSessionInvitationManager *)self sharedState];
    destinations3 = [sharedState9 destinations];
    *buf = 138412802;
    v49 = iCopy;
    v50 = 2112;
    v51 = uniqueID3;
    v52 = 2112;
    v53 = destinations3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring Decline from %@, %@, not in destinations: %@", buf, 0x20u);

LABEL_31:
  }
}

- (BOOL)_isValidDestination:(id)destination
{
  destinationCopy = destination;
  prefixedURI = [destinationCopy prefixedURI];
  v6 = [prefixedURI isEqualToIgnoringCase:IDSDefaultPairedDevice];

  if ((v6 & 1) == 0)
  {
    prefixedURI2 = [destinationCopy prefixedURI];
    if ([prefixedURI2 hasPrefix:@"device:"])
    {
    }

    else
    {
      sharedState = [(IDSDSessionInvitationManager *)self sharedState];
      v10 = [sharedState destinationIsGuestDevice:destinationCopy];

      if (!v10)
      {
        pushToken = [destinationCopy pushToken];
        if (pushToken)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
          destinations = [sharedState2 destinations];

          v7 = [destinations countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v7)
          {
            v19 = *v25;
            while (2)
            {
              for (i = 0; i != v7; i = i + 1)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(destinations);
                }

                pushToken2 = [*(*(&v24 + 1) + 8 * i) pushToken];
                v22 = pushToken2;
                if (pushToken2 && ([pushToken2 isEqualToPushToken:pushToken] & 1) != 0)
                {

                  LOBYTE(v7) = 1;
                  goto LABEL_29;
                }
              }

              v7 = [destinations countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v7)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:

          goto LABEL_30;
        }

LABEL_27:
        LOBYTE(v7) = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
    pushToken = [sharedState3 destinations];

    v13 = [pushToken countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      while (2)
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(pushToken);
          }

          if ([*(*(&v28 + 1) + 8 * j) isEqualToURI:destinationCopy])
          {
            LOBYTE(v7) = 1;
            goto LABEL_30;
          }
        }

        v14 = [pushToken countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_27;
  }

  LOBYTE(v7) = 1;
LABEL_31:

  return v7;
}

- (void)receivedCancelMessage:(id)message fromURI:(id)i
{
  messageCopy = message;
  iCopy = i;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sharedState = [(IDSDSessionInvitationManager *)self sharedState];
    uniqueID = [sharedState uniqueID];
    *buf = 138412802;
    v23 = messageCopy;
    v24 = 2112;
    v25 = iCopy;
    v26 = 2112;
    v27 = uniqueID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received CANCEL %@ from %@, %@", buf, 0x20u);
  }

  delegate = [(IDSDSessionInvitationManager *)self delegate];
  [delegate submitAWDMetricsForIDSSessionCancelReceived];

  if ([(IDSDSessionInvitationManager *)self _isValidDestination:iCopy])
  {
    sharedState2 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState2 clearAllTimers];

    v13 = [[NSSet alloc] initWithObjects:{iCopy, 0}];
    sharedState3 = [(IDSDSessionInvitationManager *)self sharedState];
    [sharedState3 setDestinations:v13];

    v20 = messageCopy;
    v21 = iCopy;
    im_dispatch_after_primary_queue();

    v15 = v20;
  }

  else
  {
    v15 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sharedState4 = [(IDSDSessionInvitationManager *)self sharedState];
      uniqueID2 = [sharedState4 uniqueID];
      sharedState5 = [(IDSDSessionInvitationManager *)self sharedState];
      destinations = [sharedState5 destinations];
      *buf = 138412802;
      v23 = iCopy;
      v24 = 2112;
      v25 = uniqueID2;
      v26 = 2112;
      v27 = destinations;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring CANCEL from %@, %@, not in destinations: %@", buf, 0x20u);
    }
  }
}

- (IDSDSession)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end