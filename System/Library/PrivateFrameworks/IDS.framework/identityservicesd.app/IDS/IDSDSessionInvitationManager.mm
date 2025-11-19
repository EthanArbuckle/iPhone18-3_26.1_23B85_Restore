@interface IDSDSessionInvitationManager
- (BOOL)_isValidDestination:(id)a3;
- (IDSDSession)delegate;
- (IDSDSessionInvitationManager)initWithDictionary:(id)a3 sharedState:(id)a4 messenger:(id)a5;
- (id)_acceptedDeviceToken;
- (id)_acceptedDeviceUniqueID;
- (id)publicIdentityDataFromLocalFullIdentity;
- (void)_sendAcceptMessageWithContext:(id)a3 connectionData:(id)a4;
- (void)_sendInvitationMessageToDestinations:(id)a3 withOptions:(id)a4 contextData:(id)a5 declineOnError:(BOOL)a6 connectionData:(id)a7;
- (void)_sendInvitationWithOptions:(id)a3 data:(id)a4 declineOnError:(BOOL)a5;
- (void)acceptInvitationWithData:(id)a3;
- (void)cancelInvitation;
- (void)cancelInvitationWithData:(id)a3;
- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)a3;
- (void)declineInvitationWithData:(id)a3 forceFromURI:(id)a4 additionalMessageAttributes:(id)a5;
- (void)receivedAcceptMessage:(id)a3 fromURI:(id)a4;
- (void)receivedCancelMessage:(id)a3 fromURI:(id)a4;
- (void)receivedDeclineMessage:(id)a3 fromURI:(id)a4;
- (void)sendCancelInvitationToDestinations:(id)a3 remoteEndReason:(unsigned int)a4 data:(id)a5;
@end

@implementation IDSDSessionInvitationManager

- (IDSDSessionInvitationManager)initWithDictionary:(id)a3 sharedState:(id)a4 messenger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = IDSDSessionInvitationManager;
  v11 = [(IDSDSessionInvitationManager *)&v15 init];
  if (v11)
  {
    v12 = [v8 objectForKey:IDSSessionUseStunMessageIntegrityKey];
    v11->_useStunMICheck = [v12 BOOLValue];

    v13 = [v8 objectForKey:IDSDSessionMessageAssumeRemoteDeviceEncryption];
    v11->_remoteAssumeRemoteDeviceEncryption = [v13 BOOLValue];

    objc_storeStrong(&v11->_sharedState, a4);
    objc_storeStrong(&v11->_messenger, a5);
  }

  return v11;
}

- (void)_sendInvitationWithOptions:(id)a3 data:(id)a4 declineOnError:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(IDSDSessionInvitationManager *)self sharedState];
  v11 = [v10 connection];
  if (v11)
  {

LABEL_6:
    v74 = v5;
    v75 = v9;
    v76 = v8;
    v15 = +[IDSDAccountController sharedInstance];
    v16 = [(IDSDSessionInvitationManager *)self sharedState];
    v17 = [v16 accountID];
    v18 = [v15 accountWithUniqueID:v17];

    v80 = v18;
    v79 = [v18 accountType];
    v19 = [NSMutableSet alloc];
    v20 = [(IDSDSessionInvitationManager *)self sharedState];
    v21 = [v20 destinations];
    v22 = [v19 initWithSet:v21];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v23 = [(IDSDSessionInvitationManager *)self sharedState];
    v24 = [v23 destinations];

    obj = v24;
    v83 = [v24 countByEnumeratingWithState:&v90 objects:v102 count:16];
    v25 = 0;
    v14 = 0;
    if (!v83)
    {
      goto LABEL_33;
    }

    v82 = *v91;
    v77 = IDSDevicePropertyIsActivePairedDevice;
    v78 = IDSDevicePropertyDefaultLocalDevice;
    v26 = v79;
    while (1)
    {
      for (i = 0; i != v83; i = i + 1)
      {
        if (*v91 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v90 + 1) + 8 * i);
        v29 = [(IDSDSessionInvitationManager *)self sharedState];
        v30 = [v29 destinationIsDefaultPairedDevice:v28];

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
          v33 = [v28 prefixedURI];
          v34 = [v33 hasPrefix:@"device:"];

          if (!v34)
          {
            goto LABEL_27;
          }

          v35 = [v28 unprefixedURI];
          v36 = [v80 dependentRegistrationMatchingUUID:v35];

          if (!v36 || ([v36 objectForKey:v78], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "BOOLValue"), v37, objc_msgSend(v36, "objectForKey:", v77), v39 = v25, v40 = v14, v41 = v22, v42 = self, v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "BOOLValue"), v43, self = v42, v22 = v41, v14 = v40, v25 = v39, !v38) || (v44 & 1) != 0)
          {

            v26 = v79;
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
          v26 = v79;
        }
      }

      v83 = [obj countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (!v83)
      {
LABEL_33:

        v46 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [(IDSDSessionInvitationManager *)self sharedState];
          v48 = [v47 destinations];
          *buf = 138413058;
          v95 = v48;
          v96 = 2112;
          v97 = v22;
          v98 = 2112;
          v99 = v14;
          v100 = 2112;
          v101 = v25;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Send invitation with destinations %@ newDestinations %@ pairedDestinations %@ allOtherDestinations %@", buf, 0x2Au);
        }

        v49 = v25;

        v50 = [(IDSDSessionInvitationManager *)self sharedState];
        [v50 setDestinations:v22];

        v9 = v75;
        v8 = v76;
        if ([v14 count])
        {
          v51 = [(IDSDSessionInvitationManager *)self sharedState];
          v52 = [v51 forceInternetInvitation];

          if ((v52 & 1) == 0)
          {
            v53 = +[NSData data];
            v54 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [(IDSDSessionInvitationManager *)self sharedState];
              v56 = [v55 isScreenSharingSession];
              v57 = @"NO";
              if (v56)
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
            v58 = [(IDSDSessionInvitationManager *)self sharedState];
            [v58 setInvitationTimer];
          }
        }

        if (-[NSObject count](v25, "count") || (-[IDSDSessionInvitationManager sharedState](self, "sharedState"), v59 = objc_claimAutoreleasedReturnValue(), v60 = [v59 forceInternetInvitation], v59, v60))
        {
          v61 = v25;
          v62 = [(IDSDSessionInvitationManager *)self sharedState];
          v63 = [v62 forceInternetInvitation];

          if (v63)
          {
            v64 = v14;

            v61 = v64;
          }

          v65 = [(IDSDSessionInvitationManager *)self delegate];
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
          [v65 networkingIsAvailable:v84];
        }

        v67 = [(IDSDSessionInvitationManager *)self sharedState];
        [v67 setState:3];

        v68 = [(IDSDSessionInvitationManager *)self preferences];
        [(IDSDSessionInvitationManager *)self _setLinkPreferences:v68];

        v69 = [(IDSDSessionInvitationManager *)self delegate];
        v70 = [(IDSDSessionInvitationManager *)self sharedState];
        v71 = [v70 destinations];
        v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v71 count]);
        [v69 submitAWDMetricsForIDSSessionInvitationSentWithNumberOfRecipients:v72];

        v73 = +[IDSDSessionController sharedInstance];
        [v73 updateCriticalReliabilityState];

        goto LABEL_48;
      }
    }
  }

  v12 = [(IDSDSessionInvitationManager *)self sharedState];
  v13 = [v12 isScreenSharingSession];

  if (!v13)
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

- (void)_sendInvitationMessageToDestinations:(id)a3 withOptions:(id)a4 contextData:(id)a5 declineOnError:(BOOL)a6 connectionData:(id)a7
{
  v8 = a6;
  v81 = a3;
  v12 = a4;
  v13 = a5;
  v82 = a7;
  v14 = [(IDSDSessionInvitationManager *)self sharedState];
  v15 = [v14 uniqueID];

  if (v15)
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

    v19 = v82;
    if (v19)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageBlob, v19);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C180();
    }

    v20 = [(IDSDSessionInvitationManager *)self sharedState];
    v21 = [v20 uniqueID];

    if (v21)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageSessionID, v21);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    v22 = [(IDSDSessionInvitationManager *)self sharedState];
    v23 = [v22 participantID];

    if (v23)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageParticipantID, v23);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917428();
    }

    v24 = [(IDSDSessionInvitationManager *)self sharedState];
    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 transportType]);

    if (v25)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageTransportType, v25);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C208();
    }

    v26 = [NSNumber numberWithBool:v8];
    if (v26)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageDeclineOnNetworkError, v26);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C290();
    }

    if (v12)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageInviteOptions, v12);
    }

    if (v13)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageContext, v13);
    }

    v27 = [(IDSDSessionInvitationManager *)self quickRelaySessionToken];
    if (v27)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageQuickRelaySessionToken, v27);
    }

    v28 = [(IDSDSessionInvitationManager *)self sharedState];
    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v28 enableSKE]);

    if (v29)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageNeedsToWaitForPreConnectionData, v29);
    }

    v30 = [(IDSDSessionInvitationManager *)self sharedState];
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v30 disableEncryption]);

    if (v31)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageDisableEncryption, v31);
    }

    v32 = [(IDSDSessionInvitationManager *)self sharedState];
    v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 enableSingleChannelDirectMode]);

    if (v33)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageSingleChannelDirectMode, v33);
    }

    CFDictionarySetValue(v16, IDSDSessionMessageUseStunMessageIntegrity, &__kCFBooleanTrue);
    CFDictionarySetValue(v16, IDSDSessionMessageUseSecureQRControlMessage, &__kCFBooleanTrue);
    v34 = [(IDSDSessionInvitationManager *)self sharedState];
    v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v34 useBTDatagramPipe]);

    if (v35)
    {
      CFDictionarySetValue(v16, IDSDSessionMessageIsRealTime, v35);
    }

    v36 = [(IDSDSessionInvitationManager *)self sharedState];
    v37 = [v36 localUnauthenticatedFullIdentity];

    if (v37)
    {
      v38 = [(IDSDSessionInvitationManager *)self publicIdentityDataFromLocalFullIdentity];
      if (!v38)
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

      CFDictionarySetValue(v16, IDSSessionUnauthenticatedPublicKey, v38);
    }

    v39 = [(IDSDSessionInvitationManager *)self sharedState];
    v40 = [v39 connectionCountHint] == 0;

    if (!v40)
    {
      v41 = [(IDSDSessionInvitationManager *)self sharedState];
      v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 connectionCountHint]);

      if (v42)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageConnectionCountHint, v42);
      }
    }

    v43 = [(IDSDSessionInvitationManager *)self sharedState];
    v44 = [v43 isScreenSharingSession];

    if (v44)
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

        v49 = [(IDSDSessionInvitationManager *)self sharedState];
        v50 = [v49 serviceName];
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
      v60 = [(IDSDSessionInvitationManager *)self sharedState];
      [v60 setSeqSend:v59];

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
      v54 = [(IDSDSessionInvitationManager *)self delegate];
      v55 = [v54 isWithDefaultPairedDevice];

      if ((v55 & 1) == 0)
      {
        CFDictionarySetValue(v16, IDSDSessionMessageAssumeRemoteDeviceEncryption, &__kCFBooleanTrue);
      }
    }

    v62 = [(IDSDSessionInvitationManager *)self delegate];
    [v62 registerClientChannel];

    v63 = [(IDSDSessionInvitationManager *)self sharedState];
    [v63 inviteSentTime];
    v65 = v64 == 0.0;

    if (v65)
    {
      ids_monotonic_time();
      v67 = v66;
      v68 = [(IDSDSessionInvitationManager *)self sharedState];
      [v68 setInviteSentTime:v67];
    }

    v69 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [(IDSDSessionInvitationManager *)self sharedState];
      v71 = [v70 uniqueID];
      *buf = 138412802;
      *&buf[4] = v81;
      *&buf[12] = 2112;
      *&buf[14] = v71;
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
    v74 = [(IDSDSessionInvitationManager *)self sharedState];
    v75 = [v74 pushTopic];
    v76 = [v73 broadcasterForTopic:v75 entitlement:kIDSSessionEntitlement command:0 messageContext:v72];

    v77 = [(IDSDSessionInvitationManager *)self messenger];
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
    v85 = self;
    [v77 sendMessage:v16 toDestinations:v81 withCommand:v78 fromURI:0 willSendBlock:v87 completionBlock:v83];

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

- (void)sendCancelInvitationToDestinations:(id)a3 remoteEndReason:(unsigned int)a4 data:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = [(IDSDSessionInvitationManager *)self sharedState];
  v11 = [v10 isInitiator];

  if (v11)
  {
    v12 = [(IDSDSessionInvitationManager *)self sharedState];
    [v12 clearAllTimers];

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

    v17 = [(IDSDSessionInvitationManager *)self sharedState];
    v18 = [v17 uniqueID];

    if (v18)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageSessionID, v18);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    v19 = [(IDSDSessionInvitationManager *)self sharedState];
    v20 = [v19 participantID];

    if (v20)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageParticipantID, v20);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100917428();
    }

    if (v13)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageRemoteEndReason, v13);
    }

    if (v9)
    {
      CFDictionarySetValue(v15, IDSDSessionMessageContext, v9);
    }

    if (![v8 count])
    {
      v21 = [(IDSDSessionInvitationManager *)self sharedState];
      v22 = [v21 destinations];

      v8 = v22;
    }

    v23 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IDSDSessionInvitationManager *)self sharedState];
      v25 = [v24 uniqueID];
      v30 = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending CANCEL %@, %@ <%@>", &v30, 0x20u);
    }

    v26 = [(IDSDSessionInvitationManager *)self messenger];
    v27 = [NSNumber numberWithInteger:235];
    [v26 sendMessage:v15 toDestinations:v8 withCommand:v27];

    v28 = [(IDSDSessionInvitationManager *)self delegate];
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    [v28 submitAWDMetricsForIDSSessionCancelSentWithRemoteEndReason:v6 numberOfRecipients:v29];
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

    [(IDSDSessionInvitationManager *)self declineInvitationWithData:v9];
  }
}

- (id)_acceptedDeviceUniqueID
{
  v3 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSDSessionInvitationManager *)self sharedState];
    v5 = [v4 destinations];
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device unique ID in: %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(IDSDSessionInvitationManager *)self sharedState];
  v7 = [v6 destinations];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v21 + 1) + 8 * i) pushToken];
        v14 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
        }

        if (v13)
        {
          v15 = +[IDSDAccountController sharedInstance];
          v16 = [v13 rawToken];
          v17 = [v15 deviceIDForPushToken:v16];

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

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "  => No unique ID found", buf, 2u);
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
    v4 = [(IDSDSessionInvitationManager *)self sharedState];
    v5 = [v4 destinations];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Looking for device token in: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(IDSDSessionInvitationManager *)self sharedState];
  v7 = [v6 destinations];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v17 + 1) + 8 * v12) pushToken];
      v14 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Push token: %@", buf, 0xCu);
      }

      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

    v7 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "  => No token found", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)cancelInvitation
{
  [(IDSDSessionInvitationManager *)self _sendCancelInvitationToDestinations:0 withData:0];
  v3 = [(IDSDSessionInvitationManager *)self delegate];
  [v3 endSessionWithReason:5];
}

- (void)cancelInvitationWithData:(id)a3
{
  [(IDSDSessionInvitationManager *)self _sendCancelInvitationToDestinations:0 withData:a3];
  v4 = [(IDSDSessionInvitationManager *)self delegate];
  [v4 endSessionWithReason:5];
}

- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)a3
{
  [(IDSDSessionInvitationManager *)self sendCancelInvitationToDestinations:0 remoteEndReason:*&a3 data:0];
  v4 = [(IDSDSessionInvitationManager *)self delegate];
  [v4 endSessionWithReason:5];
}

- (void)acceptInvitationWithData:(id)a3
{
  value = a3;
  v4 = objc_alloc_init(NSDate);
  v125 = self;
  v5 = [(IDSDSessionInvitationManager *)self sharedState];
  [v5 setStartConnectingDate:v4];

  v6 = [(IDSDSessionInvitationManager *)self delegate];
  v124 = [v6 isWithDefaultPairedDevice];

  v7 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (v124)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [(IDSDSessionInvitationManager *)v125 sharedState];
    if ([v10 enableQuickRelay])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [(IDSDSessionInvitationManager *)v125 sharedState];
    if (![v12 useQRDirectly])
    {
      v8 = @"NO";
    }

    v13 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v14 = [v13 clientType];
    if (v14 == 1)
    {
      v15 = 0;
      v16 = @"YES";
    }

    else
    {
      v122 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v16 = @"YES";
      if ([v122 clientType] == 5)
      {
        v15 = 0;
      }

      else
      {
        v121 = [(IDSDSessionInvitationManager *)v125 sharedState];
        if ([v121 clientType] != 6)
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

    if (v14 != 1)
    {
    }
  }

  v17 = [(IDSDSessionInvitationManager *)v125 remoteBlob];
  if ((v17 != 0) | v124 & 1)
  {
  }

  else
  {
    v18 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v19 = [v18 enableQuickRelay];

    if ((v19 & 1) == 0)
    {
      v39 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No remote blob, bailing...", buf, 2u);
      }

      v40 = [(IDSDSessionInvitationManager *)v125 delegate];
      [v40 endSessionWithReason:9];
      goto LABEL_117;
    }
  }

  v20 = [(IDSDSessionInvitationManager *)v125 sharedState];
  [v20 clearAllTimers];

  v21 = [(IDSDSessionInvitationManager *)v125 sharedState];
  [v21 setConnectionTimer];

  v22 = [(IDSDSessionInvitationManager *)v125 sharedState];
  [v22 setState:4];

  v23 = [(IDSDSessionInvitationManager *)v125 delegate];
  [v23 registerClientChannel];

  v24 = [(IDSDSessionInvitationManager *)v125 sharedState];
  v25 = [v24 isScreenSharingSession];

  if (v25)
  {
    v26 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(IDSDSessionInvitationManager *)v125 remoteBlob];
      *buf = 138412290;
      v131 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "acceptInvitationWithData remoteBlob %@", buf, 0xCu);
    }

    v28 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v29 = [v28 connection];
    v30 = [(IDSDSessionInvitationManager *)v125 remoteBlob];
    [v29 receivedRemoteConnectionData:v30];

    v31 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v32 = [v31 connection];
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_1005D2DF8;
    v128[3] = &unk_100BE0858;
    v128[4] = v125;
    v129 = value;
    [v32 createConnectionData:0 handler:v128];

LABEL_116:
    v109 = [(IDSDSessionInvitationManager *)v125 preferences];
    [(IDSDSessionInvitationManager *)v125 _setLinkPreferences:v109];

    v40 = [(IDSDSessionInvitationManager *)v125 delegate];
    [v40 submitAWDMetricsForIDSSessionAcceptSent];
    goto LABEL_117;
  }

  if (v124)
  {
    v33 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v34 = [v33 forceInternetInvitation];

    if (!v34)
    {
      v61 = [(IDSDSessionInvitationManager *)v125 delegate];
      [v61 openSocketToDevice:kIDSDefaultPairedDeviceID];

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

      v88 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v89 = [v88 uniqueID];

      if (v89)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageSessionID, v89);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009173A0();
      }

      v90 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v91 = [v90 participantID];

      if (v91)
      {
        CFDictionarySetValue(v62, IDSDSessionMessageParticipantID, v91);
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
        v93 = [(IDSDSessionInvitationManager *)v125 sharedState];
        v94 = [v93 destinations];
        v95 = [(IDSDSessionInvitationManager *)v125 sharedState];
        v96 = [v95 uniqueID];
        *buf = 138412802;
        v131 = v94;
        v132 = 2112;
        v133 = v96;
        v134 = 2112;
        v135 = v62;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@ <%@>", buf, 0x20u);
      }

      v97 = [(IDSDSessionInvitationManager *)v125 messenger];
      v98 = [NSNumber numberWithInteger:233];
      [v97 sendMessage:v62 withCommand:v98];

      goto LABEL_116;
    }
  }

  v35 = [(IDSDSessionInvitationManager *)v125 _acceptedDeviceUniqueID];

  v36 = v35 == 0;
  v37 = [(IDSDSessionInvitationManager *)v125 sharedState];
  v38 = v37;
  if (v36)
  {
    v41 = [v37 useQRDirectly];

    if ((v41 & 1) == 0 && ![(IDSDSessionInvitationManager *)v125 remoteAssumeRemoteDeviceEncryption])
    {
      v110 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v111 = [(IDSDSessionInvitationManager *)v125 sharedState];
        v112 = [v111 fromURI];
        v113 = [(IDSDSessionInvitationManager *)v125 sharedState];
        v114 = [v113 uniqueID];
        *buf = 138412546;
        v131 = v112;
        v132 = 2112;
        v133 = v114;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "At ACCEPT invitaion - from %@, session %@, expecting remote device encryption but remote does not specify", buf, 0x16u);
      }

      v40 = [(IDSDSessionInvitationManager *)v125 delegate];
      [v40 endSessionWithReason:17];
      goto LABEL_117;
    }
  }

  else
  {
    [v37 setDisableRemoteDeviceEncryption:1];
  }

  v42 = [(IDSDSessionInvitationManager *)v125 sharedState];
  v43 = [v42 enableQuickRelay];

  if (v43)
  {
    v44 = [(IDSDSessionInvitationManager *)v125 sharedState];
    if (([v44 useQRDirectly] & 1) == 0)
    {
      v45 = [(IDSDSessionInvitationManager *)v125 sharedState];
      if ([v45 clientType] != 1)
      {
        v46 = [(IDSDSessionInvitationManager *)v125 sharedState];
        if ([v46 clientType] != 5)
        {
          v115 = [(IDSDSessionInvitationManager *)v125 sharedState];
          v116 = [v115 clientType] == 6;

          if (!v116)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v47 = [(IDSDSessionInvitationManager *)v125 delegate];
    [v47 startQRSession];

LABEL_46:
    v48 = +[IDSQuickRelayAllocator sharedInstance];
    v49 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v50 = [v49 uniqueID];
    [v48 requestAllocationForRecipient:v50];
    goto LABEL_51;
  }

  v51 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [(IDSDSessionInvitationManager *)v125 remoteBlob];
    *buf = 138412290;
    v131 = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "acceptInvitationWithData remoteBlob %@", buf, 0xCu);
  }

  v53 = [(IDSDSessionInvitationManager *)v125 sharedState];
  v54 = [v53 localBlob];
  v55 = v54 == 0;

  if (!v55)
  {
    v56 = [(IDSDSessionInvitationManager *)v125 delegate];
    v57 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v58 = [v57 uniqueID];
    [v56 openSocketToDevice:v58];

    v48 = +[IDSUTunController sharedInstance];
    v49 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v50 = [v49 uniqueID];
    [v48 startConnectionForDevice:v50 isInitiator:0 remotePartyID:0 useStunMICheck:{-[IDSDSessionInvitationManager useStunMICheck](v125, "useStunMICheck")}];
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

    v64 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v65 = [v64 localBlob];

    if (v65)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageBlob, v65);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092C180();
    }

    v66 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v67 = [v66 uniqueID];

    if (v67)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageSessionID, v67);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1009173A0();
    }

    v68 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v69 = [v68 participantID];

    if (v69)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageParticipantID, v69);
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
    v70 = [(IDSDSessionInvitationManager *)v125 _acceptedDeviceUniqueID];
    v71 = v70 == 0;

    if (v71)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageAssumeRemoteDeviceEncryption, &__kCFBooleanTrue);
    }

    v72 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v73 = [v72 localUnauthenticatedFullIdentity];

    if (!v73)
    {
      goto LABEL_111;
    }

    v74 = [(IDSDSessionInvitationManager *)v125 sharedState];
    v75 = [v74 localUnauthenticatedFullIdentity];
    v127 = 0;
    v76 = [v75 publicIdentityWithError:&v127];
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
        v82 = [(IDSDSessionInvitationManager *)v125 sharedState];
        v83 = [v82 localUnauthenticatedFullIdentity];
        *buf = 138543619;
        v131 = v77;
        v132 = 2113;
        v133 = v83;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to create public identity from full identity {error: %{public}@, fullIdentity: %{private}@}", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        v79 = v77;
        goto LABEL_110;
      }

      v84 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v119 = [v84 localUnauthenticatedFullIdentity];
      _IDSWarnV();

      v85 = [(IDSDSessionInvitationManager *)v125 sharedState:v77];
      v120 = [v85 localUnauthenticatedFullIdentity];
      _IDSLogV();

      v78 = [(IDSDSessionInvitationManager *)v125 sharedState:v77];
      [v78 localUnauthenticatedFullIdentity];
      v118 = v117 = v77;
      _IDSLogTransport();

      v79 = v77;
    }

LABEL_110:
LABEL_111:
    v100 = [(IDSDSessionInvitationManager *)v125 sharedState:v117];
    v101 = [v100 isScreenSharingSession];

    if ((v101 & 1) == 0)
    {
      CFDictionarySetValue(v59, IDSDSessionMessageUseCloudPairedControlChannel, &__kCFBooleanTrue);
      CFDictionarySetValue(v59, IDSDSessionMessageUsePhoneContinuityLocalMessage, &__kCFBooleanTrue);
    }

    v102 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v104 = [v103 destinations];
      v105 = [(IDSDSessionInvitationManager *)v125 sharedState];
      v106 = [v105 uniqueID];
      *buf = 138412802;
      v131 = v104;
      v132 = 2112;
      v133 = v106;
      v134 = 2112;
      v135 = v59;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@ <%@>", buf, 0x20u);
    }

    v107 = [(IDSDSessionInvitationManager *)v125 messenger];
    v108 = [NSNumber numberWithInteger:233];
    [v107 sendMessage:v59 withCommand:v108];

    goto LABEL_116;
  }

  v86 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Failed to get local connection data, bailing...", buf, 2u);
  }

  v40 = [(IDSDSessionInvitationManager *)v125 delegate];
  [v40 endSessionWithReason:8];
LABEL_117:
}

- (void)_sendAcceptMessageWithContext:(id)a3 connectionData:(id)a4
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

  v10 = v7;
  if (v10)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageBlob, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C180();
  }

  v11 = [(IDSDSessionInvitationManager *)self sharedState];
  v12 = [v11 uniqueID];

  if (v12)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageSessionID, v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  v13 = [(IDSDSessionInvitationManager *)self sharedState];
  v14 = [v13 participantID];

  if (v14)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageParticipantID, v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (v6)
  {
    CFDictionarySetValue(v8, IDSDSessionMessageContext, v6);
  }

  v15 = [(IDSDSessionInvitationManager *)self sharedState];
  v16 = [v15 localUnauthenticatedFullIdentity];

  if (v16)
  {
    v17 = [(IDSDSessionInvitationManager *)self publicIdentityDataFromLocalFullIdentity];
    if (!v17)
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
      v19 = [(IDSDSessionInvitationManager *)self sharedState];
      v20 = [v19 localUnauthenticatedFullIdentity];
      *buf = 138477827;
      *v55 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending unauthenticated public identity {localUnauthenticatedFullIdentity: %{private}@}", buf, 0xCu);
    }

    CFDictionarySetValue(v8, IDSSessionUnauthenticatedPublicKey, v17);
  }

  v21 = [(IDSDSessionInvitationManager *)self sharedState];
  v22 = [v21 isScreenSharingSession];

  if (!v22)
  {
LABEL_54:
    v46 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(IDSDSessionInvitationManager *)self sharedState];
      v48 = [v47 destinations];
      v49 = [(IDSDSessionInvitationManager *)self sharedState];
      v50 = [v49 uniqueID];
      *buf = 138412802;
      *v55 = v48;
      *&v55[8] = 2112;
      *&v55[10] = v50;
      v56 = 2112;
      v57 = v8;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending accept to %@, %@, <%@>", buf, 0x20u);
    }

    v51 = [(IDSDSessionInvitationManager *)self messenger];
    v52 = [NSNumber numberWithInteger:233];
    [v51 sendMessage:v8 withCommand:v52];

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

      v27 = [(IDSDSessionInvitationManager *)self delegate];
      [v27 endSessionWithReason:17];

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
    v35 = [(IDSDSessionInvitationManager *)self sharedState];
    [v35 setSeqSend:v34];

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

    v38 = [(IDSDSessionInvitationManager *)self sharedState];
    v39 = [v38 peerProtocolVersion] > 1;

    v40 = [(IDSDSessionInvitationManager *)self sharedState];
    v41 = [v40 encryptionState];

    v42 = sub_10050C5E0(v41, self->keyMaterial, 60, 0, [(IDSDSessionInvitationManager *)self SSRCSend], [(IDSDSessionInvitationManager *)self seqSendStart], [(IDSDSessionInvitationManager *)self SSRCRecv], [(IDSDSessionInvitationManager *)self seqRecvStart], v39);
    *&self->keyMaterial[44] = 0u;
    *&self->keyMaterial[32] = 0u;
    *&self->keyMaterial[16] = 0u;
    *self->keyMaterial = 0u;
    if (v42)
    {
      v43 = [(IDSDSessionInvitationManager *)self delegate];
      [v43 endSessionWithReason:17];

      v44 = [(IDSDSessionInvitationManager *)self sharedState];
      [v44 setEncryptionInitialized:0];

      goto LABEL_57;
    }

    v45 = [(IDSDSessionInvitationManager *)self sharedState];
    [v45 setEncryptionInitialized:1];

    goto LABEL_54;
  }

  v29 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Malloc error when creating key material, ending call...", buf, 2u);
  }

  v30 = [(IDSDSessionInvitationManager *)self delegate];
  [v30 endSessionWithReason:17];

LABEL_57:
}

- (void)declineInvitationWithData:(id)a3 forceFromURI:(id)a4 additionalMessageAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDSessionInvitationManager *)self sharedState];
  [v11 clearAllTimers];

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

  v14 = [(IDSDSessionInvitationManager *)self sharedState];
  v15 = [v14 uniqueID];

  if (v15)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageSessionID, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009173A0();
  }

  v16 = [(IDSDSessionInvitationManager *)self sharedState];
  v17 = [v16 participantID];

  if (v17)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageParticipantID, v17);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917428();
  }

  if (v8)
  {
    CFDictionarySetValue(v12, IDSDSessionMessageContext, v8);
  }

  [(__CFDictionary *)v12 addEntriesFromDictionary:v10];

  v18 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(IDSDSessionInvitationManager *)self sharedState];
    v20 = [v19 destinations];
    v21 = [(IDSDSessionInvitationManager *)self sharedState];
    v22 = [v21 uniqueID];
    v30 = 138412802;
    v31 = v20;
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending decline to %@, %@ <%@>", &v30, 0x20u);
  }

  if (!v9)
  {
    v23 = [(IDSDSessionInvitationManager *)self sharedState];
    v9 = [v23 fromURI];
  }

  v24 = [(IDSDSessionInvitationManager *)self messenger];
  v25 = [(IDSDSessionInvitationManager *)self sharedState];
  v26 = [v25 destinations];
  v27 = [NSNumber numberWithInteger:234];
  [v24 sendMessage:v12 toDestinations:v26 withCommand:v27 fromURI:v9];

  v28 = [(IDSDSessionInvitationManager *)self delegate];
  [v28 submitAWDMetricsForIDSSessionDeclineSent];

  v29 = [(IDSDSessionInvitationManager *)self delegate];
  [v29 endSessionWithReason:2];
}

- (id)publicIdentityDataFromLocalFullIdentity
{
  v3 = [(IDSDSessionInvitationManager *)self sharedState];
  v4 = [v3 localUnauthenticatedFullIdentity];

  if (v4)
  {
    v5 = [(IDSDSessionInvitationManager *)self sharedState];
    v6 = [v5 localUnauthenticatedFullIdentity];
    v24 = 0;
    v7 = [v6 publicIdentityWithError:&v24];
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
          v26 = v10;
          v27 = 2113;
          v28 = v7;
          v29 = 2113;
          v30 = self;
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
        v14 = [(IDSDSessionInvitationManager *)self sharedState];
        v15 = [v14 localUnauthenticatedFullIdentity];
        *buf = 138543875;
        v26 = v8;
        v27 = 2113;
        v28 = v15;
        v29 = 2113;
        v30 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get unauthenticated public identity from full identity {error: %{public}@, fullIdentity: %{private}@, session: %{private}@}", buf, 0x20u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        v11 = 0;
        goto LABEL_20;
      }

      v16 = [(IDSDSessionInvitationManager *)self sharedState];
      v20 = [v16 localUnauthenticatedFullIdentity];
      _IDSWarnV();

      v17 = [(IDSDSessionInvitationManager *)self sharedState:v8];
      v21 = [v17 localUnauthenticatedFullIdentity];
      _IDSLogV();

      v9 = [(IDSDSessionInvitationManager *)self sharedState:v8];
      v22 = [v9 localUnauthenticatedFullIdentity];
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
    v26 = self;
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

- (void)receivedAcceptMessage:(id)a3 fromURI:(id)a4
{
  v182 = a3;
  v183 = a4;
  v185 = self;
  v6 = [(IDSDSessionInvitationManager *)self delegate];
  [v6 submitAWDMetricsForIDSSessionAcceptReceived];

  v7 = objc_alloc_init(NSDate);
  v8 = [(IDSDSessionInvitationManager *)self sharedState];
  [v8 setStartConnectingDate:v7];

  v9 = [(IDSDSessionInvitationManager *)v185 sharedState];
  LODWORD(v8) = [v9 state];

  if (v8 >= 4)
  {
    v10 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v195 = v183;
      v11 = "Ignoring incoming accept from %@, session is not waiting for an invite response anymore";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_137;
    }

    goto LABEL_137;
  }

  v12 = [(IDSDSessionInvitationManager *)v185 sharedState];
  v13 = [v12 isInitiator];

  if (v13)
  {
    v14 = [(IDSDSessionInvitationManager *)v185 sharedState];
    v186 = [v14 destinationIsDefaultPairedDevice:v183];

    v15 = IDSDSessionMessageBlob;
    v16 = [v182 objectForKey:IDSDSessionMessageBlob];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v182 objectForKey:v15];
      v18 = [NSData _IDSDataFromBase64String:v17];
    }

    else
    {
      v17 = [v182 objectForKey:v15];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = 0;
        goto LABEL_14;
      }

      v18 = [v182 objectForKey:v15];
    }

    v19 = v18;
LABEL_14:

    v181 = v19;
    if (!(([v19 length]!= 0) | v186 & 1))
    {
      v20 = [(IDSDSessionInvitationManager *)v185 sharedState];
      v21 = [v20 enableQuickRelay];

      if ((v21 & 1) == 0)
      {
        v28 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No remote blob, bailing...", buf, 2u);
        }

        v29 = [(IDSDSessionInvitationManager *)v185 delegate];
        [v29 endSessionWithReason:9];

        goto LABEL_136;
      }
    }

    v22 = [(IDSDSessionInvitationManager *)v185 sharedState];
    v23 = [v22 destinationIsGuestDevice:v183];

    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = IDSSessionUnauthenticatedPublicKey;
    v25 = [v182 objectForKey:IDSSessionUnauthenticatedPublicKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v182 objectForKey:v24];
      v27 = [NSData _IDSDataFromBase64String:v26];
    }

    else
    {
      v26 = [v182 objectForKey:v24];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_26;
      }

      v27 = [v182 objectForKey:v24];
    }

    v30 = v27;
LABEL_26:

    if (!v30)
    {
      v63 = [(IDSDSessionInvitationManager *)v185 delegate];
      [v63 endSessionWithReason:14];

LABEL_136:
      v10 = v181;
      goto LABEL_137;
    }

    v31 = [(IDSDSessionInvitationManager *)v185 sharedState];
    v32 = [v31 publicIdentityFromData:v30];

    v33 = [(IDSDSessionInvitationManager *)v185 sharedState];
    [v33 setRemoteUnauthenticatedPublicIdentity:v32];

LABEL_28:
    v34 = objc_opt_class();
    v180 = sub_10001B980(v34, v182, IDSDSessionMessageParticipantID);
    if (![v180 length])
    {
      v60 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "No participantID, bailing...", buf, 2u);
      }

      v179 = [(IDSDSessionInvitationManager *)v185 delegate];
      [v179 endSessionWithReason:14];
      goto LABEL_135;
    }

    v35 = objc_opt_class();
    v36 = sub_10001B980(v35, v182, IDSDSessionMessageVersion);
    v179 = v36;
    if (!v36)
    {
      v61 = +[IDSFoundationLog IDSDSession];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No message version, bailing...", buf, 2u);
      }

      v62 = [(IDSDSessionInvitationManager *)v185 delegate];
      [v62 endSessionWithReason:14];

      goto LABEL_135;
    }

    v37 = [v36 unsignedIntValue];
    v38 = [(IDSDSessionInvitationManager *)v185 sharedState];
    [v38 setPeerProtocolVersion:v37];

    v39 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(IDSDSessionInvitationManager *)v185 sharedState];
      *buf = 67109120;
      LODWORD(v195) = [v40 peerProtocolVersion];
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting peer protocol version to %d", buf, 8u);
    }

    v41 = objc_opt_class();
    v42 = sub_10001B980(v41, v182, IDSDSessionMessageUseCloudPairedControlChannel);
    v43 = [(IDSDSessionInvitationManager *)v185 sharedState];
    [v43 setRemoteUseCloudPairedControlChannel:v42];

    v44 = objc_opt_class();
    v45 = sub_10001B980(v44, v182, IDSDSessionMessageUsePhoneContinuityLocalMessage);
    v46 = [(IDSDSessionInvitationManager *)v185 sharedState];
    [v46 setRemoteUsePhoneContinuityLocalMessage:v45];

    v47 = objc_opt_class();
    v48 = IDSDSessionMessageUseStunMessageIntegrity;
    v49 = sub_10001B980(v47, v182, IDSDSessionMessageUseStunMessageIntegrity);
    v50 = objc_opt_class();
    v51 = sub_10001B980(v50, v182, v48);
    -[IDSDSessionInvitationManager setUseStunMICheck:](v185, "setUseStunMICheck:", [v51 BOOLValue]);

    v52 = [(IDSDSessionInvitationManager *)v185 sharedState];
    LODWORD(v51) = [v52 peerProtocolVersion] < 4;

    if (v51)
    {
      v53 = objc_opt_class();
      v54 = IDSDSessionMessageUseSecureQRControlMessage;
      v55 = sub_10001B980(v53, v182, IDSDSessionMessageUseSecureQRControlMessage);
      v56 = objc_opt_class();
      v57 = sub_10001B980(v56, v182, v54);
      v58 = [v57 BOOLValue];
      v59 = [(IDSDSessionInvitationManager *)v185 sharedState];
      [v59 setUseSecureQRControlMessage:v58];
    }

    else
    {
      v55 = [(IDSDSessionInvitationManager *)v185 sharedState];
      [v55 setUseSecureQRControlMessage:1];
    }

    v64 = [(IDSDSessionInvitationManager *)v185 sharedState];
    v65 = [v64 isScreenSharingSession];

    if (!v65)
    {
      goto LABEL_63;
    }

    v66 = IDSDSessionMessageKeyMaterial;
    v67 = [v182 objectForKey:IDSDSessionMessageKeyMaterial];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [v182 objectForKey:v66];
      v69 = [NSData _IDSDataFromBase64String:v68];
    }

    else
    {
      v68 = [v182 objectForKey:v66];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v70 = 0;
LABEL_49:

        v71 = objc_opt_class();
        v72 = sub_10001B980(v71, v182, IDSDSessionMessageSelfSSRC);
        v73 = objc_opt_class();
        v74 = sub_10001B980(v73, v182, IDSDSessionMessageSelfSeqStart);
        v75 = 17;
        if (v70)
        {
          v76 = v185;
          if (!v72 || !v74)
          {
            goto LABEL_61;
          }

          v77 = v70;
          v78 = [v70 bytes];
          if ([v70 length] == 60)
          {
            -[IDSDSessionInvitationManager setSSRCRecv:](v185, "setSSRCRecv:", [v72 unsignedIntValue]);
            -[IDSDSessionInvitationManager setSeqRecvStart:](v185, "setSeqRecvStart:", [v74 unsignedShortValue]);
            for (i = 0; i != 60; ++i)
            {
              v185->keyMaterial[i] ^= v78[i];
            }

            v80 = [(IDSDSessionInvitationManager *)v185 sharedState];
            v81 = [v80 peerProtocolVersion] > 1;

            v82 = [(IDSDSessionInvitationManager *)v185 sharedState];
            v83 = [v82 encryptionState];

            v84 = sub_10050C5E0(v83, v185->keyMaterial, 60, 1, [(IDSDSessionInvitationManager *)v185 SSRCSend], [(IDSDSessionInvitationManager *)v185 seqSendStart], [(IDSDSessionInvitationManager *)v185 SSRCRecv], [(IDSDSessionInvitationManager *)v185 seqRecvStart], v81);
            *&v185->keyMaterial[44] = 0u;
            *&v185->keyMaterial[32] = 0u;
            *&v185->keyMaterial[16] = 0u;
            *v185->keyMaterial = 0u;
            if (v84)
            {
              v85 = [(IDSDSessionInvitationManager *)v185 delegate];
              [v85 endSessionWithReason:17];

              v86 = [(IDSDSessionInvitationManager *)v185 sharedState];
              [v86 setEncryptionInitialized:0];

LABEL_135:
              goto LABEL_136;
            }

            v90 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v90 setEncryptionInitialized:1];

LABEL_63:
            v91 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v91 clearAllTimers];

            v92 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v92 setState:4];

            v184 = [v183 pushToken];
            v93 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v95 = [v94 uniqueID];
              *buf = 138412802;
              v195 = v183;
              v196 = 2112;
              v197 = v95;
              v198 = 2112;
              v199 = v184;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Received accept from %@, session %@, fromToken %@.", buf, 0x20u);
            }

            v96 = objc_alloc_init(NSMutableSet);
            v97 = [(IDSDSessionInvitationManager *)v185 sharedState];
            v98 = [v97 destinationIsGuestDevice:v183];

            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            v99 = [(IDSDSessionInvitationManager *)v185 sharedState];
            v100 = [v99 destinations];

            v101 = 0;
            v102 = [v100 countByEnumeratingWithState:&v189 objects:v193 count:16];
            if (v102)
            {
              v103 = *v190;
              do
              {
                for (j = 0; j != v102; j = j + 1)
                {
                  if (*v190 != v103)
                  {
                    objc_enumerationMutation(v100);
                  }

                  v105 = *(*(&v189 + 1) + 8 * j);
                  if (v186)
                  {
                    v106 = [(IDSDSessionInvitationManager *)v185 sharedState];
                    v107 = [v106 destinationIsDefaultPairedDevice:v105];

                    if (v107)
                    {
                      continue;
                    }
                  }

                  if (!v98 || ([v105 isEqualToURI:v183] & 1) == 0)
                  {
                    v108 = [v105 pushToken];

                    if (([v108 isEqualToPushToken:v184] & 1) == 0)
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

                    v101 = v108;
                  }
                }

                v102 = [v100 countByEnumeratingWithState:&v189 objects:v193 count:16];
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

              [(IDSDSessionInvitationManager *)v185 sendCancelInvitationToDestinations:v96 remoteEndReason:29 data:0];
            }

            if (v186)
            {
              v111 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v112 = [v111 forceInternetInvitation];

              if ((v112 & 1) == 0)
              {
                v113 = +[IDSUTunController sharedInstance];
                v114 = [(IDSDSessionInvitationManager *)v185 sharedState];
                v115 = [v114 uniqueID];
                [v113 stopUDPGlobalLinkForDevice:v115];
              }
            }

            v116 = [[NSSet alloc] initWithObjects:{v183, 0, v179}];
            v117 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v117 setDestinations:v116];

            [(IDSDSessionInvitationManager *)v185 setRemoteBlob:v181];
            v118 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v118 setConnectionTimer];

            v119 = [(IDSDSessionInvitationManager *)v185 sharedState];
            LODWORD(v117) = [v119 isScreenSharingSession];

            if (v117)
            {
              v120 = +[IDSFoundationLog IDSDSession];
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Starting screen sharing connection with remote blob", buf, 2u);
              }

              v121 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v122 = [v121 connection];
              [v122 receivedRemoteConnectionData:v181];

              v123 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v124 = [v123 connection];
              v125 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v188[0] = _NSConcreteStackBlock;
              v188[1] = 3221225472;
              v188[2] = sub_1005D5A40;
              v188[3] = &unk_100BD9F28;
              v188[4] = v185;
              [v124 startConnectionAsInitiator:1 peerProtocolVersion:objc_msgSend(v125 errorHandler:{"peerProtocolVersion"), v188}];

              goto LABEL_127;
            }

            v126 = [(IDSDSessionInvitationManager *)v185 _acceptedDeviceUniqueID];
            if ((v126 != 0) | v186 & 1)
            {
            }

            else if (![(IDSDSessionInvitationManager *)v185 _isLocalDeviceSafeviewAdviserInitiatorOnLoboMacOrLaterAndRemoteDeviceIsPreTiboAnyPlatform])
            {
              v152 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v153 = [v152 useQRDirectly];

              if (v153)
              {
                goto LABEL_97;
              }

              v154 = [v182 objectForKeyedSubscript:IDSDSessionMessageAssumeRemoteDeviceEncryption];
              v155 = [v154 BOOLValue];

              v156 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v127 = v156;
              if (!v155)
              {
                v174 = [v156 disableRemoteDeviceEncryption];

                if ((v174 & 1) == 0)
                {
                  v175 = +[IDSFoundationLog IDSDSession];
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
                  {
                    v176 = [(IDSDSessionInvitationManager *)v185 sharedState];
                    v177 = [v176 uniqueID];
                    *buf = 138412546;
                    v195 = v183;
                    v196 = 2112;
                    v197 = v177;
                    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "Received accept from %@, session %@, expecting remote device encryption but remote does not specify", buf, 0x16u);
                  }

                  v164 = [(IDSDSessionInvitationManager *)v185 delegate];
                  [v164 endSessionWithReason:17];
                  goto LABEL_134;
                }

                goto LABEL_97;
              }

              [v156 setDisableRemoteDeviceEncryption:0];
LABEL_96:

LABEL_97:
              v128 = +[IDSFoundationLog IDSDSession];
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Starting connection with remote blob", buf, 2u);
              }

              v129 = [(IDSDSessionInvitationManager *)v185 sharedState];
              if ([v129 destinationIsDefaultPairedDevice:v183])
              {
                v130 = [(IDSDSessionInvitationManager *)v185 sharedState];
                v131 = [v130 forceInternetInvitation];

                if (!v131)
                {
                  v132 = [(IDSDSessionInvitationManager *)v185 delegate];
                  [v132 openSocketToDevice:kIDSDefaultPairedDeviceID];

                  goto LABEL_127;
                }
              }

              else
              {
              }

              v133 = [(IDSDSessionInvitationManager *)v185 delegate];
              v134 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v135 = [v134 uniqueID];
              [v133 openSocketToDevice:v135];

              v136 = [(IDSDSessionInvitationManager *)v185 sharedState];
              LODWORD(v134) = [v136 enableQuickRelay];

              if (v134)
              {
                v137 = +[IDSQuickRelayAllocator sharedInstance];
                v138 = [(IDSDSessionInvitationManager *)v185 sharedState];
                v139 = [v138 uniqueID];
                v140 = [v184 rawToken];
                v141 = [v137 getRelaySessionIDForIDSSessionID:v139 pushToken:v140];

                v142 = +[IDSQuickRelayAllocator sharedInstance];
                v143 = [(IDSDSessionInvitationManager *)v185 sharedState];
                v144 = [v143 uniqueID];
                v145 = [v184 rawToken];
                [v142 setInitiatorsAcceptedToken:v144 pushToken:v145];

                if (v141)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v147 = [(IDSDSessionInvitationManager *)v185 sharedState];
                  v148 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v147 useSecureQRControlMessage]);

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
                v150 = [(IDSDSessionInvitationManager *)v185 sharedState];
                v151 = [v150 uniqueID];
                [v149 startConnectionForDevice:v151 isInitiator:1 remotePartyID:v180 useStunMICheck:{-[IDSDSessionInvitationManager useStunMICheck](v185, "useStunMICheck")}];
              }

LABEL_127:
              v160 = IDSDSessionMessageContext;
              v161 = [v182 objectForKey:{IDSDSessionMessageContext, v178}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v162 = [v182 objectForKey:v160];
                v163 = [NSData _IDSDataFromBase64String:v162];
              }

              else
              {
                v162 = [v182 objectForKey:v160];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v164 = 0;
                  goto LABEL_133;
                }

                v163 = [v182 objectForKey:v160];
              }

              v164 = v163;
LABEL_133:

              v165 = objc_alloc_init(IMMessageContext);
              [v165 setShouldBoost:1];
              v166 = +[IDSDaemon sharedInstance];
              v167 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v168 = [v167 pushTopic];
              v169 = [v166 broadcasterForTopic:v168 entitlement:kIDSSessionEntitlement command:0 messageContext:v165];

              v170 = [(IDSDSessionInvitationManager *)v185 sharedState];
              v171 = [v170 uniqueID];
              v172 = [v183 prefixedURI];
              [v169 sessionAcceptReceived:v171 fromID:v172 withData:v164];

              v173 = +[IDSDSessionController sharedInstance];
              [v173 updateCriticalReliabilityState];

LABEL_134:
              goto LABEL_135;
            }

            v127 = [(IDSDSessionInvitationManager *)v185 sharedState];
            [v127 setDisableRemoteDeviceEncryption:1];
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

        v76 = v185;
LABEL_61:
        v88 = [(IDSDSessionInvitationManager *)v76 delegate];
        [v88 endSessionWithReason:v75];

        v89 = [(IDSDSessionInvitationManager *)v185 sharedState];
        [v89 setEncryptionInitialized:0];

        goto LABEL_135;
      }

      v69 = [v182 objectForKey:v66];
    }

    v70 = v69;
    goto LABEL_49;
  }

  v10 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v195 = v183;
    v11 = "Ignoring incoming accept from %@, session is not the initiator";
    goto LABEL_9;
  }

LABEL_137:
}

- (void)receivedDeclineMessage:(id)a3 fromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSDSessionInvitationManager *)self sharedState];
    v10 = [v9 uniqueID];
    *buf = 138412802;
    v49 = v6;
    v50 = 2112;
    v51 = v7;
    v52 = 2112;
    v53 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received decline %@ from %@, %@", buf, 0x20u);
  }

  v11 = [(IDSDSessionInvitationManager *)self delegate];
  [v11 submitAWDMetricsForIDSSessionDeclineReceived];

  if ([(IDSDSessionInvitationManager *)self _isValidDestination:v7])
  {
    v12 = objc_opt_class();
    v13 = sub_10001B980(v12, v6, IDSDSessionMessageAllowOtherInvites);
    v14 = IDSDSessionMessageContext;
    v15 = [v6 objectForKey:IDSDSessionMessageContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v6 objectForKey:v14];
      v17 = [NSData _IDSDataFromBase64String:v16];
    }

    else
    {
      v16 = [v6 objectForKey:v14];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = 0;
LABEL_12:

        v19 = JWDecodeDictionary();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v19 objectForKey:IDSDSessionMessageDeclineReason];
          v23 = [v22 unsignedIntValue];
        }

        else
        {
          v23 = 0;
        }

        v24 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v49) = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Invite was declined { givenReason: %u }", buf, 8u);
        }

        if (v23 == 13)
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
          v26 = [(IDSDSessionInvitationManager *)self sharedState];
          v27 = [v26 destinations];
          v28 = [v27 mutableCopy];

          [v28 removeObject:v7];
          v29 = [v28 copy];
          v30 = +[IDSFoundationLog IDSDSession];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v49 = v7;
            v50 = 2112;
            v51 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Invite was declined with reason alias deactivated { fromURI: %@, _inviteTokens: %@ }", buf, 0x16u);
          }

          if ([v29 count])
          {
            v31 = +[IDSFoundationLog IDSDSession];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Suppressing decline, other recipients", buf, 2u);
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        v45 = v19;
        v46 = v18;
        v32 = +[IDSFoundationLog IDSDSession];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(IDSDSessionInvitationManager *)self sharedState];
          v34 = [v33 destinations];
          *buf = 138412290;
          v49 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Invite was declined, notifying everyone I invited: %@", buf, 0xCu);
        }

        v35 = [(IDSDSessionInvitationManager *)self delegate];
        [v35 invitationDeclined];

        v36 = [(IDSDSessionInvitationManager *)self sharedState];
        [v36 clearAllTimers];

        v37 = [[NSSet alloc] initWithObjects:{v7, 0}];
        v38 = [(IDSDSessionInvitationManager *)self sharedState];
        [v38 setDestinations:v37];

        v28 = objc_alloc_init(IMMessageContext);
        [v28 setShouldBoost:1];
        v39 = +[IDSDaemon sharedInstance];
        v40 = [(IDSDSessionInvitationManager *)self sharedState];
        v41 = [v40 pushTopic];
        v29 = [v39 broadcasterForTopic:v41 entitlement:kIDSSessionEntitlement command:0 messageContext:v28];

        v42 = [(IDSDSessionInvitationManager *)self sharedState];
        v43 = [v42 uniqueID];
        v44 = [v7 prefixedURI];
        v18 = v46;
        [v29 sessionDeclineReceived:v43 fromID:v44 withData:v46];

        v31 = [(IDSDSessionInvitationManager *)self delegate];
        [v31 endSessionWithReason:v47];
        v19 = v45;
        goto LABEL_30;
      }

      v17 = [v6 objectForKey:v14];
    }

    v18 = v17;
    goto LABEL_12;
  }

  v13 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(IDSDSessionInvitationManager *)self sharedState];
    v19 = [v18 uniqueID];
    v20 = [(IDSDSessionInvitationManager *)self sharedState];
    v21 = [v20 destinations];
    *buf = 138412802;
    v49 = v7;
    v50 = 2112;
    v51 = v19;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring Decline from %@, %@, not in destinations: %@", buf, 0x20u);

LABEL_31:
  }
}

- (BOOL)_isValidDestination:(id)a3
{
  v4 = a3;
  v5 = [v4 prefixedURI];
  v6 = [v5 isEqualToIgnoringCase:IDSDefaultPairedDevice];

  if ((v6 & 1) == 0)
  {
    v8 = [v4 prefixedURI];
    if ([v8 hasPrefix:@"device:"])
    {
    }

    else
    {
      v9 = [(IDSDSessionInvitationManager *)self sharedState];
      v10 = [v9 destinationIsGuestDevice:v4];

      if (!v10)
      {
        v12 = [v4 pushToken];
        if (v12)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v17 = [(IDSDSessionInvitationManager *)self sharedState];
          v18 = [v17 destinations];

          v7 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v7)
          {
            v19 = *v25;
            while (2)
            {
              for (i = 0; i != v7; i = i + 1)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(v18);
                }

                v21 = [*(*(&v24 + 1) + 8 * i) pushToken];
                v22 = v21;
                if (v21 && ([v21 isEqualToPushToken:v12] & 1) != 0)
                {

                  LOBYTE(v7) = 1;
                  goto LABEL_29;
                }
              }

              v7 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
    v11 = [(IDSDSessionInvitationManager *)self sharedState];
    v12 = [v11 destinations];

    v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v28 + 1) + 8 * j) isEqualToURI:v4])
          {
            LOBYTE(v7) = 1;
            goto LABEL_30;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

- (void)receivedCancelMessage:(id)a3 fromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog IDSDSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSDSessionInvitationManager *)self sharedState];
    v10 = [v9 uniqueID];
    *buf = 138412802;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received CANCEL %@ from %@, %@", buf, 0x20u);
  }

  v11 = [(IDSDSessionInvitationManager *)self delegate];
  [v11 submitAWDMetricsForIDSSessionCancelReceived];

  if ([(IDSDSessionInvitationManager *)self _isValidDestination:v7])
  {
    v12 = [(IDSDSessionInvitationManager *)self sharedState];
    [v12 clearAllTimers];

    v13 = [[NSSet alloc] initWithObjects:{v7, 0}];
    v14 = [(IDSDSessionInvitationManager *)self sharedState];
    [v14 setDestinations:v13];

    v20 = v6;
    v21 = v7;
    im_dispatch_after_primary_queue();

    v15 = v20;
  }

  else
  {
    v15 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(IDSDSessionInvitationManager *)self sharedState];
      v17 = [v16 uniqueID];
      v18 = [(IDSDSessionInvitationManager *)self sharedState];
      v19 = [v18 destinations];
      *buf = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v19;
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