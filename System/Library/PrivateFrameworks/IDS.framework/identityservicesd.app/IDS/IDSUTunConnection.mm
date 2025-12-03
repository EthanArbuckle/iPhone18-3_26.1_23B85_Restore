@interface IDSUTunConnection
- (BOOL)_isWiProxPeer;
- (BOOL)_messageIsAllowedToSendMessageOnTopic:(id)topic;
- (BOOL)_nonBTAllowedForClientID:(id)d;
- (BOOL)_nonThreadSafeIsConnected;
- (BOOL)_performFallbackIfNecessary:(id)necessary;
- (BOOL)_resourceTransferUUIDAlreaadyReceived:(id)received;
- (BOOL)_shouldAWDLogMessage:(id)message;
- (BOOL)_storeIncomingClassADataMesageIfNeeded:(id)needed topic:(id)topic sequenceNumber:(unsigned int)number;
- (BOOL)_storeIncomingClassCDataMessageIfNeeded:(id)needed topic:(id)topic sequenceNumber:(unsigned int)number;
- (BOOL)checkServiceCompability:(id)compability localMessage:(id)message;
- (BOOL)hasSpaceForMessagesWithDataProtectionClass:(unsigned int)class;
- (BOOL)isConnected;
- (BOOL)isIdle;
- (BOOL)supportsMessageOfType:(int64_t)type;
- (IDSUTunConnection)initWithIdentifier:(id)identifier socketPriority:(int64_t)priority btUUID:(id)d uniqueID:(id)iD incomingServiceMap:(id)map outgoingServiceMap:(id)serviceMap isCloudEnabled:(BOOL)enabled shouldUseIPsecLink:(BOOL)self0;
- (IDSUTunConnectionDelegate)delegate;
- (NSDictionary)queueStatistics;
- (NSDictionary)sendingMessageStatistics;
- (NSString)description;
- (double)_fallbackTimeoutForService:(id)service;
- (double)_nanoConnectedFallbackTimeoutForService:(id)service;
- (double)_nanoDisconnectedFallbackTimeoutForService:(id)service;
- (id)_decryptOTREncrtypedMessage:(id)message;
- (id)_encryptDataWithOTR:(id)r token:(id)token;
- (id)_nonThreadSafeSocketOptions;
- (id)_sendingMessageStatisticsForClass:(unsigned int)class;
- (int64_t)_socketToNiceCommand:(unsigned __int8)command;
- (unint64_t)_currentLink;
- (unint64_t)_inflightMessageCountForClass:(unsigned int)class;
- (unint64_t)_pendingOutgoingBytesForClass:(unsigned int)class;
- (unint64_t)_sendingMessageCountForClass:(unsigned int)class;
- (unint64_t)_sendingMessageCountForType:(int64_t)type;
- (unsigned)_calculateRandomDelayForCloudMessagingRequest;
- (void)_addMessageSize:(unint64_t)size forTopic:(id)topic direction:(unsigned __int8)direction dataProtectionClass:(unsigned int)class isResource:(BOOL)resource;
- (void)_addStatsFromDict:(id)dict toAggregate:(id)aggregate;
- (void)_assertQuickRelayForCloudMessaging;
- (void)_checkAndStartConnection;
- (void)_clearLastFallbackWithReason:(id)reason;
- (void)_clearSendingPowerAssertionWithReason:(id)reason;
- (void)_connectivityChanged;
- (void)_decryptPublicKeyEncryptedMessage:(id)message completionBlock:(id)block;
- (void)_dequeueMessages;
- (void)_dequeueMessagesTimerDidFire:(id)fire;
- (void)_dequeueTimerFiredOnMain:(id)main;
- (void)_dumpLogs;
- (void)_fallbackTimerFired;
- (void)_fallbackTimerFiredOnMain;
- (void)_flushMessagesAll:(BOOL)all response:(int64_t)response;
- (void)_handleBecomingEmpty;
- (void)_handleBecomingEmptyForDataProtectionClass:(unsigned int)class;
- (void)_handleBecomingEmptyOfCloudMessages;
- (void)_handleOTRDecryptionError:(id)error;
- (void)_handleOTRDecryptionSuccess:(id)success;
- (void)_invalidateMessagesDequeueTimer;
- (void)_messageTimedOut:(id)out localMessage:(id)message;
- (void)_nonThreadSafeStopConnection;
- (void)_noteReceivedResourceTransferUUID:(id)d;
- (void)_optionallyDecryptMessage:(id)message completionBlock:(id)block;
- (void)_processDecryptedMessage:(id)message;
- (void)_processIncomingDataMessage:(id)message;
- (void)_processIncomingResourceTransferMessage:(id)message messageUUID:(id)d streamID:(unsigned __int16)iD topic:(id)topic wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)response peerResponseIdentifier:(id)identifier isDefaultPairedDevice:(BOOL)self0 didWakeHint:(BOOL)self1;
- (void)_processMessage:(id)message withSequenceNumberBlock:(id)block;
- (void)_removeMessageFromStatistics:(id)statistics;
- (void)_removeSocketPairMessage:(id)message localMessage:(id)localMessage reason:(id)reason detailedError:(id)error responseCode:(int64_t)code;
- (void)_requeueMessages:(id)messages;
- (void)_requeueSendingMessage:(id)message;
- (void)_resetFallbackTimeout:(double)timeout useNextFallback:(BOOL)fallback;
- (void)_resetTimeout:(id)timeout;
- (void)_sendAckForMessage:(id)message;
- (void)_sendEncryptedMessage:(id)message;
- (void)_sendExpiredAckForMessage:(id)message;
- (void)_sendOTREncryptedMessage:(id)message useEncryption:(BOOL)encryption streamID:(unsigned __int16)d forPriority:(int64_t)priority flag:(int)flag token:(id)token;
- (void)_sendOTREncryptionQueue:(id)queue streamID:(unsigned __int16)d;
- (void)_sendPublicKeyEncryptedMessage:(id)message;
- (void)_sendSocketMessage:(id)message ignoreSequenceNumber:(BOOL)number;
- (void)_startAndSetupSocketPairConnection:(IDSUTunConnection *)self capabilityFlags:(SEL)flags instanceID:(id)d serviceMinCompatibilityVersion:(unint64_t)version socketDescriptor:(unsigned __int8 *)(a5;
- (void)_startConnection;
- (void)_startConnectionForContinuityPeer;
- (void)_startMessagesDequeueMessagesTimer;
- (void)_startNWConnectionForIPsecCase:(id)case capabilityFlags:(unint64_t)flags instanceID:(unsigned __int8 *)(a5 serviceMinCompatibilityVersion:serviceConnection:trafficClass:;
- (void)_timeoutTimerFired;
- (void)_timeoutTimerFiredOnMain;
- (void)_updateDictionary:(id)dictionary addMessageSize:(int64_t)size addMessageCount:(int64_t)count;
- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed;
- (void)cancelMessageID:(id)d;
- (void)classStorageBecameAvailable:(id)available;
- (void)clearStats;
- (void)connection:(id)connection didReceiveDataMessage:(id)message;
- (void)connectionBecameEmpty:(id)empty;
- (void)connectionDidClose;
- (void)connectionDidClose:(id)close;
- (void)connectionDidReachInFlightMessageLowWaterMark:(id)mark;
- (void)connectionDidReceiveBytes:(id)bytes;
- (void)dealloc;
- (void)didReceiveDataMessage:(id)message;
- (void)dropDisallowedMessages;
- (void)flushAllMessagesForReason:(int64_t)reason;
- (void)forceOTRNegotiation:(id)negotiation priority:(int64_t)priority completionBlock:(id)block;
- (void)handleOTRNegotiationComplete:(id)complete;
- (void)handleOTRNegotiationTimeout:(id)timeout;
- (void)invalidateTimeoutTimer;
- (void)kickProgressBlockForMessageID:(id)d;
- (void)resumeConnectivity;
- (void)retryWaitingMessages;
- (void)sendAckForMessageWithSequenceNumber:(unsigned int)number;
- (void)sendMessage:(id)message;
- (void)setDeviceBTUUID:(id)d;
- (void)setEnableOTR:(BOOL)r;
- (void)setEnabled:(BOOL)enabled withReason:(id)reason;
- (void)setIsMagnetIndicatingPeerIsAwake:(BOOL)awake;
- (void)trafficClassesChanged;
@end

@implementation IDSUTunConnection

- (void)_dequeueMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v142 = [(IDSUTunConnection *)self _sendingMessageCountForClass:1];
  v140 = [(IDSUTunConnection *)self _sendingMessageCountForClass:0];
  v141 = [(IDSUTunConnection *)self _sendingMessageCountForClass:2];
  [(IDSUTunConnection *)self _invalidateMessagesDequeueTimer];
  if ([(IDSUTunConnection *)self _isMagnetConnection]&& !self->_isCloudEnabled && [(IDSUTunConnection *)self supportsMessageOfType:6]&& ![(IDSUTunConnection *)self _inflightMessageCountForType:6])
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyOfCloudMessages];
  }

  if (self->_isCloudEnabled && ![(IDSUTunConnection *)self _inflightMessageCount])
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyOfCloudMessages];
  }

  inFlightMessages = [(IDSSocketPairConnectionProtocol *)self->_socketConnection inFlightMessages];
  v5 = [inFlightMessages count];
  if (v5 >= 7)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy10 = self;
      v155 = 2048;
      *v156 = v5;
      *&v156[8] = 1024;
      *v157 = 6;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ utun socket pair connection inFlightMessageCount %lu (max %u) - do not dequeue", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_195;
  }

  admissionDeniedTopics = self->_admissionDeniedTopics;
  if (!admissionDeniedTopics)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_admissionDeniedTopics;
    self->_admissionDeniedTopics = v8;

    admissionDeniedTopics = self->_admissionDeniedTopics;
  }

  [NSMutableSet setWithSet:admissionDeniedTopics];
  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_10055A4C8;
  v10 = v151[3] = &unk_100BE0328;
  v152 = v10;
  [inFlightMessages enumerateObjectsUsingBlock:v151];
  allValues = [(NSMutableDictionary *)self->_tokenToOTREncryptionQueue allValues];
  v149[0] = _NSConcreteStackBlock;
  v149[1] = 3221225472;
  v149[2] = sub_100018AE8;
  v149[3] = &unk_100BE0350;
  v12 = v10;
  v150 = v12;
  [allValues enumerateObjectsUsingBlock:v149];
  v13 = +[IDSFoundationLog UTunConnection];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v15 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
    *buf = 138412802;
    selfCopy10 = self;
    v155 = 2112;
    *v156 = identifier;
    *&v156[8] = 2048;
    *v157 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ _dequeueMessage - %@ messageCount %lu", buf, 0x20u);
  }

  if (qword_100CBEFE0 != -1)
  {
    sub_1009293D8();
  }

  if (byte_100CBEFD8 == 1)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "**** Local IDS connectivity is disabled, only using cloud ****", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_194;
  }

  if (self->_isCloudEnabled)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      isCloudEnabled = self->_isCloudEnabled;
      v19 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
      v20 = @"NO";
      *buf = 138412802;
      selfCopy10 = self;
      if (isCloudEnabled)
      {
        v20 = @"YES";
      }

      v155 = 2112;
      *v156 = v20;
      *&v156[8] = 1024;
      *v157 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UTunConnection _isCloudEnabled:%@ (%@, messageCount:%d)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v21 = @"NO";
      v22 = self->_isCloudEnabled ? @"YES" : @"NO";
      v105 = v22;
      v106 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
      selfCopy11 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (self->_isCloudEnabled)
        {
          v21 = @"YES";
        }

        v23 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count:self];
        v105 = v21;
        v106 = v23;
        selfCopy11 = self;
        _IDSLogV();
      }
    }

    if ([(IDSLocalDeliveryQueue *)self->_deliveryQueue count:selfCopy11])
    {
      [(IDSUTunConnection *)self _assertQuickRelayForCloudMessaging];
    }
  }

  if (self->_shouldUseServiceConnector)
  {
    _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
    isTerminusConnected = [_UTunDeliveryController isTerminusConnected];
  }

  else
  {
    isTerminusConnected = 1;
  }

  if (![(IDSUTunConnection *)self isConnected]|| ((self->_isCloudEnabled | isTerminusConnected) & 1) == 0)
  {
    v100 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      v101 = self->_identifier;
      *buf = 138412290;
      selfCopy10 = v101;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%@ is not available, waiting.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_194;
  }

  if (v5 == 6)
  {
    goto LABEL_185;
  }

  v26 = 0;
  v135 = 6 - v5;
  while (2)
  {
    v138 = v26;
    context = objc_autoreleasePoolPush();
    v27 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue nextSocketPairMessageNotOnServices:v12];
    context = [(IDSUTunConnection *)v27 context];
    if (!v27)
    {
      if (![(NSMutableArray *)self->_sendingMessages count])
      {
        [(IDSUTunConnection *)self _clearSendingPowerAssertionWithReason:@"No messages waiting for acks"];
      }

      goto LABEL_184;
    }

    v29 = 0;
    while (1)
    {
      topic = [context topic];

      if (![(IDSUTunConnection *)self _messageIsAllowedToSendMessageOnTopic:topic])
      {
        [context setDeniedToSend:1];
        v31 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          messageUUID = [context messageUUID];
          *buf = 138412290;
          selfCopy10 = messageUUID;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Message with guid %@ not allowed due to its traffic class", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            selfCopy11 = [context messageUUID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              selfCopy11 = [context messageUUID];
              _IDSLogV();
            }
          }
        }

        goto LABEL_60;
      }

      if ([(IDSUTunConnection *)self checkServiceCompability:v27 localMessage:context])
      {
        break;
      }

LABEL_60:
      selfCopy11 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue nextSocketPairMessageNotOnServices:v12, selfCopy11];

      context2 = [(IDSUTunConnection *)selfCopy11 context];

      v27 = selfCopy11;
      context = context2;
      v29 = topic;
      if (!selfCopy11)
      {

        context = context2;
        goto LABEL_184;
      }
    }

    manualQueueRemoval = [context manualQueueRemoval];
    if ((manualQueueRemoval & 1) == 0)
    {
      [context setUnderlyingSocketPairMessage:0];
      [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:context];
    }

    if (!self->_sendingPowerAssertion)
    {
      if (topic)
      {
        v36 = [NSString stringWithFormat:@"IDSUTunConnection-sending-%@", topic];
      }

      else
      {
        v36 = @"IDSUTunConnection-sending";
      }

      v37 = [[IMPowerAssertion alloc] initWithIdentifier:v36 timeout:120.0];
      sendingPowerAssertion = self->_sendingPowerAssertion;
      self->_sendingPowerAssertion = v37;

      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_sendingPowerAssertion;
        *buf = 138412546;
        selfCopy10 = self;
        v155 = 2112;
        *v156 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@ created sending power assertion %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy11 = self;
        v105 = self->_sendingPowerAssertion;
        _IDSLogV();
      }
    }

    [(IDSUTunConnection *)v27 setTopic:topic, selfCopy11, v105];
    if (self->_supportDynamicServices && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v148 = 0;
      v147 = -21846;
      if (self->_supportDynamicServicesOptimization)
      {
        if ([(IDSUTunPeerServiceMap *)self->_outgoingServiceMap translateServiceName:topic toStreamID:&v147 createIfNotFound:0 mappingCreated:0 remoteInstanceID:self->_remoteInstanceID remoteInstanceIDChanged:&v148])
        {
          v41 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            messageUUID2 = [context messageUUID];
            *buf = 138412802;
            selfCopy10 = messageUUID2;
            v155 = 2112;
            *v156 = topic;
            *&v156[8] = 1024;
            *v157 = v147;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Translated message %@ with servicename %@ to streamID %u", buf, 0x1Cu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            messageUUID3 = [context messageUUID];
            v105 = topic;
            v106 = v147;
            selfCopy11 = messageUUID3;
            _IDSLogV();
          }

          [(IDSUTunConnection *)v27 setStreamID:v147, selfCopy11];
          [(IDSUTunConnection *)v27 setUseDynamicServiceName:0];
        }

        else
        {
          [(IDSUTunConnection *)v27 setUseDynamicServiceName:1];
          v146 = 0;
          v145 = 0;
          if ([(IDSUTunPeerServiceMap *)self->_incomingServiceMap translateServiceName:topic toStreamID:&v145 createIfNotFound:1 mappingCreated:&v146 remoteInstanceID:self->_remoteInstanceID remoteInstanceIDChanged:&v148])
          {
            v87 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              loga = v87;
              messageUUID4 = [context messageUUID];
              v89 = v145;
              v90 = v146;
              streamID = [(IDSUTunConnection *)v27 streamID];
              *buf = 138413314;
              v92 = @"NO";
              if (v90)
              {
                v92 = @"YES";
              }

              selfCopy10 = messageUUID4;
              v155 = 2112;
              *v156 = topic;
              *&v156[8] = 1024;
              *v157 = v89;
              *&v157[4] = 2112;
              *&v157[6] = v92;
              *&v157[14] = 1024;
              *&v157[16] = streamID;
              _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "Piggybacking message %@ with servicename %@ with incoming streamID %u created %@ (old id %u)", buf, 0x2Cu);

              v87 = loga;
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              messageUUID5 = [context messageUUID];
              v94 = v145;
              if (v146)
              {
                v95 = @"YES";
              }

              else
              {
                v95 = @"NO";
              }

              v107 = v95;
              streamID2 = [(IDSUTunConnection *)v27 streamID];
              v105 = topic;
              v106 = v94;
              selfCopy11 = messageUUID5;
              _IDSLogV();
            }

            [(IDSUTunConnection *)v27 setStreamID:v145, selfCopy11];
            if (!self->_incomingServiceMapUpdateCounter)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              incomingServiceMapUpdateCounter = self->_incomingServiceMapUpdateCounter;
              self->_incomingServiceMapUpdateCounter = Mutable;
            }

            CFDictionarySetValue(self->_incomingServiceMapUpdateCounter, topic, &off_100C3CA30);
          }

          else
          {
            v98 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              messageUUID6 = [context messageUUID];
              *buf = 138412546;
              selfCopy10 = messageUUID6;
              v155 = 2112;
              *v156 = topic;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Remote instance changed while receiving message %@ with topic %@ - continue and dispatch reconnect", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                selfCopy11 = [context messageUUID];
                v105 = topic;
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  selfCopy11 = [context messageUUID];
                  v105 = topic;
                  _IDSLogV();
                }
              }
            }

            [(IDSUTunConnection *)v27 setStreamID:0, selfCopy11];
          }
        }
      }

      else
      {
        [(IDSUTunConnection *)v27 setUseDynamicServiceName:1];
      }
    }

    serviceController = [(IDSUTunConnection *)self serviceController];
    v45 = [serviceController serviceWithPushTopic:topic];
    log = [v45 dataUsageBundleID];

    LOBYTE(serviceController) = self->_shouldUseServiceConnector;
    _isMagnetConnection = [(IDSUTunConnection *)self _isMagnetConnection];
    if ((serviceController & 1) == 0)
    {
      if (_isMagnetConnection)
      {
        isTerminusConnectedOverBluetooth = [(IDSUTunConnection *)self _currentLink]== 1;
        goto LABEL_91;
      }

LABEL_90:
      isTerminusConnectedOverBluetooth = 1;
      goto LABEL_91;
    }

    if (!_isMagnetConnection)
    {
      goto LABEL_90;
    }

    _UTunDeliveryController2 = [(IDSUTunConnection *)self _UTunDeliveryController];
    isTerminusConnectedOverBluetooth = [_UTunDeliveryController2 isTerminusConnectedOverBluetooth];

LABEL_91:
    if ([log length]&& (([(IDSUTunConnection *)self _nonBTAllowedForClientID:log]| isTerminusConnectedOverBluetooth) & 1) == 0)
    {
      v86 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Non BT usage is not allowed, failing message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [(IDSUTunConnection *)self _removeSocketPairMessage:v27 localMessage:context reason:@"Celluar Useage Policy states that BT is required" responseCode:15];
LABEL_156:

      objc_autoreleasePoolPop(context);
      v26 = v138 + 1;
      if (v138 + 1 == v135)
      {
        goto LABEL_185;
      }

      continue;
    }

    break;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!self->_sendingMessages)
  {
    v49 = objc_alloc_init(NSMutableArray);
    sendingMessages = self->_sendingMessages;
    self->_sendingMessages = v49;
  }

  if (isKindOfClass)
  {
    [(NSMutableArray *)self->_sendingMessages removeObject:v27];
    if (self->_priority != 300 && ([context bypassDuet] & 1) == 0)
    {
      duetIdentifiersOverride = [context duetIdentifiersOverride];
      if (![duetIdentifiersOverride count])
      {
        v51 = +[IDSDServiceController sharedInstance];
        v52 = [v51 serviceWithPushTopic:topic];
        duetIdentifiers = [v52 duetIdentifiers];

        duetIdentifiersOverride = duetIdentifiers;
      }

      messageUUID7 = [context messageUUID];
      v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dequeueMessages check for %@ %u", messageUUID7, [context messageID]);

      v117 = +[IDSDuetInterface sharedInstance];
      priority = self->_priority;
      v56 = +[IDSDaemonPriorityQueueController sharedInstance];
      v57 = [v56 queueForPriority:self->_priority];
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_10055A558;
      v143[3] = &unk_100BD9AA8;
      v143[4] = self;
      v144 = topic;
      [v117 forceCheckAvailabilityForValues:duetIdentifiersOverride priority:priority logString:v55 fromQueue:v57 withCompletionBlock:v143];
    }
  }

  [(NSMutableArray *)self->_sendingMessages addObject:v27];
  if (topic)
  {
    [v12 addObject:topic];
  }

  if ((isKindOfClass & 1) == 0)
  {
LABEL_115:
    if ([context manualQueueRemoval])
    {
      v116 = 0;
    }

    else
    {
      payload = [context payload];
      v119 = [payload length];
      protobuf = [context protobuf];
      data = [protobuf data];
      v66 = [data length];

      v116 = &v119[v66];
    }

    v67 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = @"URGENT";
      if ([context priority] != 300)
      {
        if ([context priority] == 200)
        {
          v68 = @"Default";
        }

        else
        {
          v68 = @"Sync";
        }
      }

      payload2 = [context payload];
      v111 = [payload2 length];
      topic2 = [context topic];
      domainHash = [context domainHash];
      messageUUID8 = [context messageUUID];
      messageID = [context messageID];
      *buf = 138544898;
      selfCopy10 = v68;
      v155 = 2048;
      *v156 = v116;
      *&v156[8] = 2048;
      *v157 = v111;
      *&v157[8] = 2114;
      *&v157[10] = topic2;
      *&v157[18] = 2114;
      v158 = domainHash;
      v159 = 2114;
      v160 = messageUUID8;
      v161 = 1024;
      v162 = messageID;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "* Dequeuing for Sending %{public}@ priority local message payload of data size: %lu/%lu   for topic: %{public}@:%{public}@  guid: %{public}@  messageID: %d", buf, 0x44u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      priority = [context priority];
      v72 = @"URGENT";
      if (priority != 300)
      {
        priority2 = [context priority];
        v72 = @"Sync";
        if (priority2 == 200)
        {
          v72 = @"Default";
        }
      }

      v113 = v72;
      payload3 = [context payload];
      v74 = [payload3 length];
      topic3 = [context topic];
      domainHash2 = [context domainHash];
      messageUUID9 = [context messageUUID];
      messageID2 = [context messageID];
      v107 = topic3;
      streamID2 = domainHash2;
      v105 = v116;
      v106 = v74;
      selfCopy11 = v113;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        priority3 = [context priority];
        v77 = @"URGENT";
        if (priority3 != 300)
        {
          priority4 = [context priority];
          v77 = @"Sync";
          if (priority4 == 200)
          {
            v77 = @"Default";
          }
        }

        v114 = v77;
        payload4 = [context payload];
        v79 = [payload4 length];
        topic4 = [context topic];
        domainHash3 = [context domainHash];
        messageUUID9 = [context messageUUID];
        messageID2 = [context messageID];
        v107 = topic4;
        streamID2 = domainHash3;
        v105 = v116;
        v106 = v79;
        selfCopy11 = v114;
        _IDSLogV();
      }
    }

    [context setSentMessageDataSize:{-[IDSUTunConnection underlyingDataLength](v27, "underlyingDataLength", selfCopy11)}];
    -[IDSUTunConnection _addOutgoingMessageSize:forTopic:dataProtectionClass:isResource:](self, "_addOutgoingMessageSize:forTopic:dataProtectionClass:isResource:", [context sentMessageDataSize], topic, objc_msgSend(context, "dataProtectionClass"), isKindOfClass & 1);
    v81 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [(NSMutableArray *)self->_sendingMessages count];
      v83 = [v12 count];
      *buf = 138412802;
      selfCopy10 = v27;
      v155 = 1024;
      *v156 = v82;
      *&v156[4] = 1024;
      *&v156[6] = v83;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Message %@ added to queue, total message count %d, sendingTopics count %d", buf, 0x18u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v105 = [(NSMutableArray *)self->_sendingMessages count];
      v106 = [v12 count];
      v104 = v27;
      _IDSLogV();
    }

    if ([(IDSUTunConnection *)self _shouldAWDLogMessage:context, v104])
    {
      v130 = [IDSLocalDeliveryMessageSentMetric alloc];
      awdTopic = [context awdTopic];
      v131 = [v130 initWithService:awdTopic isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(context priority:{"sentMessageDataSize"), -[IDSUTunConnection _currentLink](self, "_currentLink"), objc_msgSend(context, "priority")}];

      v84 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v84 logMetric:v131];

      v123 = +[IDSAWDLogging sharedInstance];
      awdTopic2 = [context awdTopic];
      [v123 messageSentForService:awdTopic2 isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(context priority:{"sentMessageDataSize"), -[IDSUTunConnection _currentLink](self, "_currentLink"), objc_msgSend(context, "priority")}];
    }

    [(IDSUTunConnection *)self _sendSocketMessage:v27];
    [(IDSUTunConnection *)v27 setWasWrittenToConnection:1];
    if (topic && [topic hasPrefix:@"com.apple.private.alloy.idstool.testservice"] && IMGetDomainBoolForKey())
    {
      v85 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy10 = v27;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Send duplicate message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy11 = v27;
        _IDSLogV();
      }

      [(IDSUTunConnection *)self _sendSocketMessage:v27, selfCopy11];
    }

    goto LABEL_156;
  }

  v58 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy10 = self;
    v155 = 2112;
    *v156 = v27;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "%@ resource transfer sender %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy11 = self;
    v105 = v27;
    _IDSLogV();
  }

  v59 = v27;
  [(IDSUTunConnection *)v59 setMaxChunkSize:4000];
  [(IDSUTunConnection *)v59 setResumeResourceTransfers:self->_resumeResourceTransfers];
  nextMessage = [(IDSUTunConnection *)v59 nextMessage];
  if (nextMessage)
  {
    progressBlock = [context progressBlock];

    if (progressBlock)
    {
      v125 = objc_alloc_init(IDSDeliveryContext);
      [v125 setIdsResponseCode:0];
      [v125 setLastCall:0];
      progressBlock2 = [context progressBlock];
      v62 = [NSNumber numberWithUnsignedLongLong:[(IDSUTunConnection *)v59 nextByte]];
      v63 = [NSNumber numberWithUnsignedLongLong:[(IDSUTunConnection *)v59 totalBytes]];
      (progressBlock2)[2](progressBlock2, v125, v62, v63, 1, 0);
    }

    if ([(IDSUTunConnection *)v59 isDone])
    {
      [context setUnderlyingSocketPairMessage:0];
      [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:context];
    }

    v27 = nextMessage;

    goto LABEL_115;
  }

  v102 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy10 = self;
    v155 = 2112;
    *v156 = v59;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%@ cannot read message to deliver for resource transfer %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy11 = self;
    v105 = v59;
    _IDSLogV();
  }

  [(IDSUTunConnection *)self _removeSocketPairMessage:v59 localMessage:context reason:@"cannot read chunk of resource" responseCode:17, selfCopy11, v105, v106, v107, streamID2, messageUUID9, messageID2];

  context = v59;
LABEL_184:

  objc_autoreleasePoolPop(context);
LABEL_185:
  if (v142 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:1])
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:1];
  }

  if (v140 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:0])
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:0];
  }

  if (v141 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:2])
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:2];
  }

LABEL_194:

LABEL_195:
}

- (void)_invalidateMessagesDequeueTimer
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  dequeueTimer = self->_dequeueTimer;
  if (dequeueTimer)
  {
    [(IMTimer *)dequeueTimer invalidate];
    v5 = self->_dequeueTimer;
    self->_dequeueTimer = 0;
  }
}

- (void)_handleBecomingEmptyOfCloudMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B2B8;
  v4[3] = &unk_100BD6ED0;
  v4[4] = self;
  [v3 performBlockMainQueue:v4];
}

- (BOOL)isConnected
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  return [(IDSUTunConnection *)self _nonThreadSafeIsConnected];
}

- (BOOL)_nonThreadSafeIsConnected
{
  socketConnection = self->_socketConnection;
  if (socketConnection)
  {
    LOBYTE(socketConnection) = !self->_connectionSuspended;
  }

  return socketConnection & 1;
}

- (BOOL)isIdle
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  if ([(IDSUTunConnection *)self _inflightMessageCount])
  {
    return 0;
  }

  if (!self->_isCloudEnabled)
  {
    return 1;
  }

  ids_monotonic_time();
  v6 = v5;
  [(IDSSocketPairConnectionProtocol *)self->_socketConnection lastSocketActivityTime];
  return v6 - v7 >= 10.0;
}

- (unint64_t)_currentLink
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  if (![(IDSUTunConnection *)self isConnected])
  {
    return 0;
  }

  if ([(IDSUTunConnection *)self _isMagnetConnection])
  {
    v4 = +[IDSUTunController sharedInstance];
    linkManager = [v4 linkManager];
    currentDefaultDeviceLinkType = [linkManager currentDefaultDeviceLinkType];

    if ((currentDefaultDeviceLinkType - 1) <= 3)
    {
      return qword_1009ABD80[(currentDefaultDeviceLinkType - 1)];
    }

    return 0;
  }

  return 3;
}

- (void)_fallbackTimerFired
{
  im_assert_primary_base_queue();
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019E70;
  v4[3] = &unk_100BD6ED0;
  v4[4] = self;
  [v3 performBlockWithPriority:v4 priority:self->_priority];
}

- (void)_handleBecomingEmpty
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  [(IDSUTunConnection *)self _clearSendingPowerAssertionWithReason:@"All queues are empty"];
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B18C;
  v5[3] = &unk_100BD6ED0;
  v5[4] = self;
  [v4 performBlockMainQueue:v5];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p, name: %@>", v4, self, self->_identifier];

  return v5;
}

- (void)resumeConnectivity
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v5 = +[IDSUTunController sharedInstance];
  _nonThreadSafeSocketOptions = [(IDSUTunConnection *)self _nonThreadSafeSocketOptions];
  [v5 resumeSocketWithOptions:_nonThreadSafeSocketOptions shouldLogCall:0];
}

- (id)_nonThreadSafeSocketOptions
{
  v3 = self->_cbuuid;
  if ([(IDSUTunConnection *)self _isMagnetConnection])
  {
    p_uniqueID = &kIDSDefaultPairedDeviceID;
  }

  else
  {
    if ([(IDSUTunConnection *)self _isWiProxPeer])
    {
      goto LABEL_6;
    }

    p_uniqueID = &self->_uniqueID;
  }

  v5 = *p_uniqueID;

  v3 = v5;
LABEL_6:
  v17[0] = @"account";
  v17[1] = @"service";
  v18[0] = @"idstest";
  v18[1] = @"localdelivery";
  v18[2] = self->_identifier;
  v17[2] = IDSOpenSocketOptionStreamNameKey;
  v17[3] = IDSOpenSocketOptionPriorityKey;
  v6 = [NSNumber numberWithInteger:self->_priority];
  v18[3] = v6;
  v17[4] = IDSOpenSocketOptionCloudEnabledKey;
  v7 = [NSNumber numberWithBool:self->_isCloudEnabled];
  v18[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  if (![(IDSUTunConnection *)self _isMagnetConnection])
  {
LABEL_10:
    v12 = &off_100C3CA18;
    goto LABEL_11;
  }

  _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
  if ([_UTunDeliveryController enableOTR])
  {

    goto LABEL_10;
  }

  shouldUseServiceConnector = self->_shouldUseServiceConnector;

  if (shouldUseServiceConnector)
  {
    goto LABEL_10;
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OTR is disabled on magnet connection, enable stream encryption.", v16, 2u);
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

  v12 = &off_100C3CA00;
LABEL_11:
  CFDictionarySetValue(v9, IDSOpenSocketOptionEncryptionMethodKey, v12);
  if (v3)
  {
    CFDictionarySetValue(v9, IDSOpenSocketOptionCBUUIDKey, v3);
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    CFDictionarySetValue(v9, IDSOpenSocketOptionDeviceUniqueIDKey, uniqueID);
  }

  return v9;
}

- (void)retryWaitingMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    socketConnection = self->_socketConnection;
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = socketConnection;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ connectionBecameEmpty %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    v7 = self->_socketConnection;
    _IDSLogV();
  }

  [(IDSUTunConnection *)self _dequeueMessages:selfCopy2];
}

- (IDSUTunConnection)initWithIdentifier:(id)identifier socketPriority:(int64_t)priority btUUID:(id)d uniqueID:(id)iD incomingServiceMap:(id)map outgoingServiceMap:(id)serviceMap isCloudEnabled:(BOOL)enabled shouldUseIPsecLink:(BOOL)self0
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  mapCopy = map;
  serviceMapCopy = serviceMap;
  v38.receiver = self;
  v38.super_class = IDSUTunConnection;
  v21 = [(IDSUTunConnection *)&v38 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [(NSString *)v21->_identifier stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    otrTokenIdentifier = v21->_otrTokenIdentifier;
    v21->_otrTokenIdentifier = v24;

    v26 = [dCopy copy];
    cbuuid = v21->_cbuuid;
    v21->_cbuuid = v26;

    v28 = [iDCopy copy];
    uniqueID = v21->_uniqueID;
    v21->_uniqueID = v28;

    v30 = [[IDSLocalDeliveryQueue alloc] initWithIdentifier:identifierCopy];
    deliveryQueue = v21->_deliveryQueue;
    v21->_deliveryQueue = v30;

    v21->_priority = priority;
    v21->_isMagnetIndicatingPeerIsAwake = 1;
    *&v21->_useSharedOTRSession = 257;
    v21->_isCloudEnabled = enabled;
    v21->_shouldUseServiceConnector = link;
    v21->_isASQUICEnabledForRelay = 0;
    objc_storeStrong(&v21->_incomingServiceMap, map);
    objc_storeStrong(&v21->_outgoingServiceMap, serviceMap);
    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v21 selector:"classStorageBecameAvailable:" name:@"__kIDSOTRKeyStorageClassStorageIsAvailableNotification" object:0];

    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v21->_identifier;
      *buf = 138412546;
      v40 = v34;
      v41 = 2048;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Initing UTunConnection %@ %p", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (v21->_shouldUseServiceConnector)
    {
      v21->_shouldUseNWFraming = IMGetDomainBoolForKeyWithDefaultValue();
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        if (v21->_shouldUseNWFraming)
        {
          v36 = @"YES";
        }

        else
        {
          v36 = @"NO";
        }

        *buf = 138412290;
        v40 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "shouldUseNWFramingOverIPsecString: %@", buf, 0xCu);
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
    }
  }

  return v21;
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412546;
    v13 = identifier;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocing UTunConnection %@ %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = self->_identifier;
    selfCopy2 = self;
    _IDSLogV();
  }

  v5 = [NSNotificationCenter defaultCenter:v9];
  [v5 removeObserver:self];

  [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
  [(IMTimer *)self->_fallbackTimer invalidate];
  fallbackTimer = self->_fallbackTimer;
  self->_fallbackTimer = 0;

  [(IMTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  [(IMTimer *)self->_dequeueTimer invalidate];
  dequeueTimer = self->_dequeueTimer;
  self->_dequeueTimer = 0;

  v11.receiver = self;
  v11.super_class = IDSUTunConnection;
  [(IDSUTunConnection *)&v11 dealloc];
}

- (BOOL)_isWiProxPeer
{
  if (self->_isCloudEnabled)
  {
    return 0;
  }

  else
  {
    return ![(IDSUTunConnection *)self _isMagnetConnection:v2];
  }
}

- (unint64_t)_sendingMessageCountForClass:(unsigned int)class
{
  sendingMessages = self->_sendingMessages;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100552F0C;
  v7[3] = &unk_100BE01F0;
  classCopy = class;
  v4 = [(NSMutableArray *)sendingMessages indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)_sendingMessageCountForType:(int64_t)type
{
  sendingMessages = self->_sendingMessages;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100552FE4;
  v7[3] = &unk_100BE0210;
  v7[4] = type;
  v4 = [(NSMutableArray *)sendingMessages indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)_inflightMessageCountForClass:(unsigned int)class
{
  v3 = *&class;
  v5 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue countForDataProtectionClass:?];
  return [(IDSUTunConnection *)self _sendingMessageCountForClass:v3]+ v5;
}

- (BOOL)hasSpaceForMessagesWithDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (self->_maxQueueSize && ![(IDSUTunConnection *)self isIdle]&& (v6 = [(IDSUTunConnection *)self _pendingOutgoingBytesForClass:v3], v6 >= self->_maxQueueSize))
  {
    v8 = v6;
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      maxQueueSize = self->_maxQueueSize;
      v11 = [(IDSUTunConnection *)self _inflightMessageCountForClass:v3];
      v12 = @"Class D";
      if (v3 == 1)
      {
        v12 = @"Class A";
      }

      *buf = 138413058;
      if (!v3)
      {
        v12 = @"Class C";
      }

      v15 = v12;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = maxQueueSize;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Insufficient space for {dataProtectionClass: %@}, {pendingOutgoingBytes:%lu}, {maxQueueSize:%lu}, {inflightMessageCount:%lu}", buf, 0x2Au);
    }

    v7 = os_log_shim_legacy_logging_enabled();
    if (v7)
    {
      v7 = _IDSShouldLog();
      if (v7)
      {
        [(IDSUTunConnection *)self _inflightMessageCountForClass:v3];
        _IDSLogV();
        LOBYTE(v7) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)_sendingMessageStatisticsForClass:(unsigned int)class
{
  statistics = self->_statistics;
  v4 = [NSNumber numberWithUnsignedInt:*&class];
  v5 = [(NSMutableDictionary *)statistics objectForKey:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)_addStatsFromDict:(id)dict toAggregate:(id)aggregate
{
  dictCopy = dict;
  aggregateCopy = aggregate;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [&off_100C3DD48 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(&off_100C3DD48);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [dictCopy objectForKey:v11];
        unsignedLongLongValue = [v12 unsignedLongLongValue];

        v14 = [aggregateCopy objectForKey:v11];
        unsignedLongLongValue2 = [v14 unsignedLongLongValue];

        v16 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue[unsignedLongLongValue2]];
        [aggregateCopy setObject:v16 forKey:v11];
      }

      v8 = [&off_100C3DD48 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v17 = [dictCopy objectForKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [aggregateCopy objectForKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  [v20 doubleValue];
  v22 = v21;

  if (v19 > v22)
  {
    v23 = [NSNumber numberWithDouble:v19];
    [aggregateCopy setObject:v23 forKey:@"localDeliveryQueueStatsLastDeliveredTime"];
  }
}

- (NSDictionary)sendingMessageStatistics
{
  v25 = objc_alloc_init(NSMutableDictionary);
  allValues = [(NSMutableDictionary *)self->_statistics allValues];
  v4 = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = allValues;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        allKeys = [*(*(&v35 + 1) + 8 * i) allKeys];
        v10 = [NSSet setWithArray:allKeys];
        [v4 unionSet:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v4;
  v11 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v24 = *v32;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v23);
        }

        v14 = *(*(&v31 + 1) + 8 * j);
        v15 = objc_alloc_init(NSMutableDictionary);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = obj;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (k = 0; k != v18; k = k + 1)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v27 + 1) + 8 * k) objectForKey:v14];
              [(IDSUTunConnection *)self _addStatsFromDict:v21 toAggregate:v15];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v18);
        }

        [v25 setObject:v15 forKey:v14];
      }

      v12 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v12);
  }

  return v25;
}

- (NSDictionary)queueStatistics
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  deliveryQueue = self->_deliveryQueue;

  return [(IDSLocalDeliveryQueue *)deliveryQueue statistics];
}

- (void)setDeviceBTUUID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (dCopy && self->_cbuuid && ![(NSString *)dCopy isEqualToString:?])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cbuuid = self->_cbuuid;
      *buf = 138412802;
      selfCopy3 = self;
      v17 = 2112;
      v18 = cbuuid;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ changing cbuuid from %@ to %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = self->_cbuuid;
      v14 = dCopy;
      selfCopy2 = self;
      _IDSLogV();
    }

    if (self->_cbuuid != dCopy)
    {
      v10 = [(NSString *)dCopy copy];
      v11 = self->_cbuuid;
      self->_cbuuid = v10;
    }

    if ([(IDSUTunConnection *)self _isWiProxPeer:selfCopy2])
    {
      [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
      if (self->_enabled)
      {
        [(IDSUTunConnection *)self _startConnection];
      }
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_cbuuid;
      *buf = 138412802;
      selfCopy3 = self;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ ignoring cbuuid update from %@ to %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)setEnabled:(BOOL)enabled withReason:(id)reason
{
  enabledCopy = enabled;
  reasonCopy = reason;
  v6 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v6 assertRunningWithPriority:self->_priority];

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (self->_enabled)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412802;
    selfCopy = self;
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    v50 = 2112;
    v51 = v9;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@ enabled state changed: %@ -> %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v10 = @"NO";
    if (self->_enabled)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (enabledCopy)
    {
      v10 = @"YES";
    }

    v35 = v11;
    v36 = v10;
    selfCopy2 = self;
    _IDSLogV();
  }

  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    if (enabledCopy)
    {
      [(IDSUTunConnection *)self _startConnection];
    }

    else
    {
      if (self->_socketConnection && [(IDSUTunConnection *)self _isWiProxPeer])
      {
        _nonThreadSafeIsConnected = [(IDSUTunConnection *)self _nonThreadSafeIsConnected];
        v13 = +[IDSUTunController sharedInstance];
        _nonThreadSafeSocketOptions = [(IDSUTunConnection *)self _nonThreadSafeSocketOptions];
        [v13 suspendSocketWithOptions:_nonThreadSafeSocketOptions];

        self->_connectionSuspended = 1;
        if (_nonThreadSafeIsConnected)
        {
          [(IDSUTunConnection *)self _connectivityChanged];
        }
      }

      else
      {
        [(IDSUTunConnection *)self _nonThreadSafeStopConnection:selfCopy2];
      }

      if (reasonCopy)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v15 = [(NSMutableArray *)self->_sendingMessages copy];
        v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v16)
        {
          v17 = *v43;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v42 + 1) + 8 * i);
              context = [v19 context];
              topic = [(IDSUTunConnection *)context topic];
              v22 = [topic hasPrefix:@"com.apple.private.alloy.continuity"];

              if (v22)
              {
                v23 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  selfCopy = context;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Removing continuity message %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  selfCopy2 = context;
                  _IDSLogV();
                }

                [(IDSUTunConnection *)self _removeSocketPairMessage:v19 localMessage:context reason:@"WPConnection failed" detailedError:reasonCopy responseCode:29, selfCopy2];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v16);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
        v25 = [messages copy];

        v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v26)
        {
          v27 = *v39;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v38 + 1) + 8 * j);
              topic2 = [(IDSUTunConnection *)v29 topic];
              v31 = [topic2 hasPrefix:@"com.apple.private.alloy.continuity"];

              if (v31)
              {
                underlyingSocketPairMessage = [(IDSUTunConnection *)v29 underlyingSocketPairMessage];
                v33 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  selfCopy = v29;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Removing continuity message %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  selfCopy2 = v29;
                  _IDSLogV();
                }

                [(IDSUTunConnection *)self _removeSocketPairMessage:underlyingSocketPairMessage localMessage:v29 reason:@"WPConnection failed" detailedError:reasonCopy responseCode:29, selfCopy2];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v26);
        }
      }
    }
  }
}

- (void)setIsMagnetIndicatingPeerIsAwake:(BOOL)awake
{
  awakeCopy = awake;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (self->_isMagnetIndicatingPeerIsAwake != awakeCopy)
  {
    self->_isMagnetIndicatingPeerIsAwake = awakeCopy;
    if (awakeCopy)
    {
      if ([(IDSLocalDeliveryQueue *)self->_deliveryQueue count])
      {
        v6 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
          v8 = [(NSMutableArray *)self->_sendingMessages count];
          *buf = 138412802;
          selfCopy = self;
          v14 = 2048;
          v15 = v7;
          v16 = 2048;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Peer awake state changed to YES with %lu pending messages (%lu sending). Kicking queue to service non-waking messages.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v10 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
          v11 = [(NSMutableArray *)self->_sendingMessages count];
          selfCopy3 = self;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v10 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count:self];
            v11 = [(NSMutableArray *)self->_sendingMessages count];
            selfCopy3 = self;
            _IDSLogV();
          }
        }

        [(IDSUTunConnection *)self _dequeueMessages:selfCopy3];
      }
    }
  }
}

- (void)_nonThreadSafeStopConnection
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v15 = 2080;
    v16 = "[IDSUTunConnection _nonThreadSafeStopConnection]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p: %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    v12 = "[IDSUTunConnection _nonThreadSafeStopConnection]";
    _IDSLogV();
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSThread callStackSymbols];
    *buf = 138412290;
    selfCopy = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = +[NSThread callStackSymbols];
    _IDSLogV();
  }

  v6 = [(IDSUTunConnection *)self _nonThreadSafeIsConnected:selfCopy2];
  socketConnection = self->_socketConnection;
  if (socketConnection)
  {
    [(IDSSocketPairConnectionProtocol *)socketConnection endSession];
    v8 = self->_socketConnection;
    self->_socketConnection = 0;
  }

  if (v6)
  {
    [(IDSUTunConnection *)self _connectivityChanged];
  }

  if (self->_openSocketCalled)
  {
    _nonThreadSafeSocketOptions = [(IDSUTunConnection *)self _nonThreadSafeSocketOptions];
    if (_nonThreadSafeSocketOptions)
    {
      v10 = +[IDSUTunController sharedInstance];
      [v10 closeSocketWithOptions:_nonThreadSafeSocketOptions];

      self->_openSocketCalled = 0;
    }
  }

  self->_connectionSuspended = 0;
}

- (void)_startConnectionForContinuityPeer
{
  if (self->_enabled)
  {
    _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
    v4 = [_UTunDeliveryController pendingContinuityPeerID:self->_cbuuid];

    _UTunDeliveryController2 = [(IDSUTunConnection *)self _UTunDeliveryController];
    v6 = [_UTunDeliveryController2 lockedContinuityPeerID:self->_cbuuid];

    if (v4 && ![v4 isEqualToString:self->_uniqueID] || v6 && (objc_msgSend(v6, "isEqualToString:", self->_uniqueID) & 1) == 0)
    {
      [(IDSUTunConnection *)self setEnabled:0];
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = v6;
        }

        uniqueID = self->_uniqueID;
        *buf = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = uniqueID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found pending or locked continuity peer %@, disable connection for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    else
    {
      [(IDSUTunConnection *)self _startConnection];
    }
  }
}

- (void)_checkAndStartConnection
{
  if (self->_enabled)
  {
    if ([(IDSUTunConnection *)self _isWiProxPeer])
    {

      [(IDSUTunConnection *)self _startConnectionForContinuityPeer];
    }

    else
    {

      [(IDSUTunConnection *)self _startConnection];
    }
  }
}

- (void)_startConnection
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ _startConnection", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    _IDSLogV();
  }

  if (!self->_isAlwaysConnected && [(IDSUTunConnection *)self _isWiProxPeer])
  {
    v5 = +[IDSWPLinkManager sharedInstance];
    [v5 connectToPeer:self->_cbuuid];
  }

  _nonThreadSafeSocketOptions = [(IDSUTunConnection *)self _nonThreadSafeSocketOptions];
  if (_nonThreadSafeSocketOptions)
  {
    if (![(NSString *)self->_identifier containsString:@"Relay"])
    {
      goto LABEL_13;
    }

    v7 = +[IDSUTunController sharedInstance];
    v8 = [v7 peerSupportsASQUIC:_nonThreadSafeSocketOptions];

    if (v8)
    {
      self->_isASQUICEnabledForRelay = 1;
LABEL_13:
      v9 = +[IDSUTunController sharedInstance];
      _nonThreadSafeSocketOptions2 = [(IDSUTunConnection *)self _nonThreadSafeSocketOptions];
      [v9 resumeSocketWithOptions:_nonThreadSafeSocketOptions2 shouldLogCall:1];

      if (self->_connectionSuspended)
      {
        self->_connectionSuspended = 0;
      }

      else if (self->_openSocketCalled)
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ _startConnection early return due to existing openSocket call", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      else
      {
        [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS internally calling UTUN's openSocketWithOptions", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        self->_openSocketCalled = 1;
        v14 = +[IDSUTunController sharedInstance];
        v15 = +[IDSDaemonPriorityQueueController sharedInstance];
        v16 = [v15 queueForPriority:self->_priority];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100554C58;
        v18[3] = &unk_100BE0260;
        v18[4] = self;
        [v14 openSocketWithOptions:_nonThreadSafeSocketOptions queue:v16 completionHandler:v18];
      }

      goto LABEL_33;
    }

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: relay connection not needed as peer doesn't support ASQUIC", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    self->_isASQUICEnabledForRelay = 0;
  }

LABEL_33:
}

- (void)_startNWConnectionForIPsecCase:(id)case capabilityFlags:(unint64_t)flags instanceID:(unsigned __int8 *)(a5 serviceMinCompatibilityVersion:serviceConnection:trafficClass:
{
  v8 = *&a8;
  caseCopy = case;
  v14 = a7;
  v15 = [IDSNWSocketPairConnection alloc];
  v16 = +[IDSDaemonPriorityQueueController sharedInstance];
  v17 = [v16 queueForPriority:self->_priority];
  v18 = [(IDSNWSocketPairConnection *)v15 initWithServiceConnection:v14 queue:v17 delegate:self priority:self->_priority trafficClass:v8 identifier:self->_identifier];

  if (((flags >> 2) & 1) != self->_resumeResourceTransfers)
  {
    self->_resumeResourceTransfers = (flags & 4) != 0;
  }

  if ((flags & 1) != self->_newServiceSupported)
  {
    self->_newServiceSupported = flags & 1;
  }

  self->_serviceMinCompatibilityVersion = a6;
  if (((flags >> 3) & 1) != self->_supportDynamicServices)
  {
    self->_supportDynamicServices = (flags & 8) != 0;
  }

  if (((flags >> 4) & 1) != self->_supportDynamicServicesOptimization)
  {
    self->_supportDynamicServicesOptimization = (flags & 0x10) != 0;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v19;
  *&out[16] = v19;
  uuid_unparse_upper(a5, out);
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    if (self->_useSharedOTRSession)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if (self->_useNamedOTRSessionToken)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (self->_resumeResourceTransfers)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (self->_newServiceSupported)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    serviceMinCompatibilityVersion = self->_serviceMinCompatibilityVersion;
    if (self->_supportDynamicServices)
    {
      v21 = @"YES";
    }

    *buf = 138414338;
    selfCopy = caseCopy;
    v36 = 2080;
    v37 = out;
    v38 = 2048;
    flagsCopy = flags;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v47 = v25;
    v48 = 2112;
    v49 = v21;
    v50 = 1024;
    v51 = serviceMinCompatibilityVersion;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UTunConnection receives remote controlChannelVersion %@ instance ID [%s] flags %016llX, use shared OTR session %@, use named OTR session token %@, resume resource transfers %@, new service supported %@, dynamic services %@ service minimum compatibility version %u", buf, 0x58u);
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

  uuid_copy(self->_remoteInstanceID, a5);
  if ([(IDSUTunPeerServiceMap *)self->_incomingServiceMap setRemoteInstanceID:a5])
  {
    v27 = [(IDSUTunPeerServiceMap *)self->_outgoingServiceMap setRemoteInstanceID:a5];
    [(NSMutableDictionary *)self->_incomingServiceMapUpdateCounter removeAllObjects];
    if (v27)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10055597C;
      v33[3] = &unk_100BE0288;
      v33[4] = self;
      v28 = objc_retainBlock(v33);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10055598C;
      v32[3] = &unk_100BE02B0;
      v32[4] = self;
      v29 = objc_retainBlock(v32);
      [(IDSNWSocketPairConnection *)v18 setOTREncryptionBlock:v28 decryptionBlock:v29];
      [(IDSNWSocketPairConnection *)v18 start];
      objc_storeStrong(&self->_socketConnection, v18);

      goto LABEL_39;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_incomingServiceMapUpdateCounter removeAllObjects];
  }

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ openSocket returned with connection to old instance - stop and reconnect", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_storeStrong(&self->_socketConnection, v18);
  [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
  [(IDSUTunConnection *)self _checkAndStartConnection];
LABEL_39:
}

- (void)_startAndSetupSocketPairConnection:(IDSUTunConnection *)self capabilityFlags:(SEL)flags instanceID:(id)d serviceMinCompatibilityVersion:(unint64_t)version socketDescriptor:(unsigned __int8 *)(a5
{
  v7 = *&a7;
  dCopy = d;
  v13 = [IDSSocketPairConnection alloc];
  v14 = +[IDSDaemonPriorityQueueController sharedInstance];
  v15 = [v14 queueForPriority:self->_priority];
  if (self->_useNamedOTRSessionToken)
  {
    otrTokenIdentifier = self->_otrTokenIdentifier;
  }

  else
  {
    otrTokenIdentifier = 0;
  }

  v17 = [(IDSSocketPairConnection *)v13 initWithSocket:v7 queue:v15 delegate:self priority:self->_priority connectionID:otrTokenIdentifier linkType:[(IDSUTunConnection *)self _currentLink]];

  [(IDSSocketPairConnection *)v17 setFragmentationSize:8000];
  [(IDSSocketPairConnection *)v17 setInFlightMessageCountLowWaterMark:3];
  if ([(IDSUTunConnection *)self _isMagnetConnection])
  {
    v18 = 16000;
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  [(IDSSocketPairConnection *)v17 setMaxAllowedMessageSize:v18];
  if ([(IDSUTunConnection *)self _isMagnetConnection])
  {
    if (((version >> 1) & 1) != self->_useSharedOTRSession)
    {
      self->_useSharedOTRSession = (version & 2) != 0;
    }

    if (((version >> 6) & 1) != self->_useNamedOTRSessionToken)
    {
      self->_useNamedOTRSessionToken = (version & 0x40) != 0;
    }
  }

  if (((version >> 2) & 1) != self->_resumeResourceTransfers)
  {
    self->_resumeResourceTransfers = (version & 4) != 0;
  }

  if ((version & 1) != self->_newServiceSupported)
  {
    self->_newServiceSupported = version & 1;
  }

  self->_serviceMinCompatibilityVersion = a6;
  if (((version >> 3) & 1) != self->_supportDynamicServices)
  {
    self->_supportDynamicServices = (version & 8) != 0;
  }

  if (((version >> 4) & 1) != self->_supportDynamicServicesOptimization)
  {
    self->_supportDynamicServicesOptimization = (version & 0x10) != 0;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v19;
  *&out[16] = v19;
  uuid_unparse_upper(a5, out);
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    if (self->_useSharedOTRSession)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    if (self->_useNamedOTRSessionToken)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if (self->_resumeResourceTransfers)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    if (self->_newServiceSupported)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    serviceMinCompatibilityVersion = self->_serviceMinCompatibilityVersion;
    if (self->_supportDynamicServices)
    {
      v21 = @"YES";
    }

    *buf = 138414338;
    selfCopy = dCopy;
    v57 = 2080;
    v58 = out;
    v59 = 2048;
    versionCopy = version;
    v61 = 2112;
    v62 = v22;
    v63 = 2112;
    v64 = v23;
    v65 = 2112;
    v66 = v24;
    v67 = 2112;
    v68 = v25;
    v69 = 2112;
    v70 = v21;
    v71 = 1024;
    v72 = serviceMinCompatibilityVersion;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UTunConnection receives remote controlChannelVersion %@ instance ID [%s] flags %016llX, use shared OTR session %@, use named OTR session token %@, resume resource transfers %@, new service supported %@, dynamic services %@ service minimum compatibility version %u", buf, 0x58u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v27 = self->_useSharedOTRSession ? @"YES" : @"NO";
    v28 = self->_useNamedOTRSessionToken ? @"YES" : @"NO";
    v29 = self->_resumeResourceTransfers ? @"YES" : @"NO";
    v30 = self->_newServiceSupported ? @"YES" : @"NO";
    v31 = self->_supportDynamicServices ? @"YES" : @"NO";
    v51 = v31;
    v52 = self->_serviceMinCompatibilityVersion;
    v49 = v29;
    v50 = v30;
    v47 = v27;
    v48 = v28;
    v45 = out;
    versionCopy3 = version;
    v44 = dCopy;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (self->_useSharedOTRSession)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      if (self->_useNamedOTRSessionToken)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (self->_resumeResourceTransfers)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      if (self->_newServiceSupported)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      if (self->_supportDynamicServices)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v51 = v36;
      v52 = self->_serviceMinCompatibilityVersion;
      v49 = v34;
      v50 = v35;
      v47 = v32;
      v48 = v33;
      v45 = out;
      versionCopy3 = version;
      v44 = dCopy;
      _IDSLogV();
    }
  }

  uuid_copy(self->_remoteInstanceID, a5);
  if ([(IDSUTunPeerServiceMap *)self->_incomingServiceMap setRemoteInstanceID:a5])
  {
    v37 = [(IDSUTunPeerServiceMap *)self->_outgoingServiceMap setRemoteInstanceID:a5];
    [(NSMutableDictionary *)self->_incomingServiceMapUpdateCounter removeAllObjects];
    if (v37)
    {
      if ([(IDSUTunConnection *)self _isMagnetConnection])
      {
        if ([@"5" isEqualToString:@"5"])
        {
          integerValue = [(IDSUTunConnection *)dCopy integerValue];
          if (integerValue < [@"5" integerValue])
          {
            self->_shouldAbortOnMissingTopic = 1;
            v39 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = dCopy;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "This is for phone/watch (_isMagnetConnection == YES), self version is 5 for Tigris, and remote watch is %@ - this is a case where a missing topic should result in an abort() call", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v44 = dCopy;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v44 = dCopy;
                  _IDSLogV();
                }
              }
            }
          }
        }
      }

      [(NSMutableDictionary *)self->_tokenToOTRError removeAllObjects:v44];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100556108;
      v54[3] = &unk_100BE0288;
      v54[4] = self;
      v40 = objc_retainBlock(v54);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100556118;
      v53[3] = &unk_100BE02B0;
      v53[4] = self;
      v41 = objc_retainBlock(v53);
      [(IDSSocketPairConnection *)v17 setOTREncryptionBlock:v40 decryptionBlock:v41];
      if (self->_useNamedOTRSessionToken)
      {
        v42 = self->_otrTokenIdentifier;
      }

      else
      {
        v42 = 0;
      }

      [(IDSSocketPairConnection *)v17 setConnectionID:v42];
      [(IDSSocketPairConnection *)v17 start];
      objc_storeStrong(&self->_socketConnection, v17);

      goto LABEL_92;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_incomingServiceMapUpdateCounter removeAllObjects];
  }

  v43 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@ openSocket returned with connection to old instance - stop and reconnect", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  objc_storeStrong(&self->_socketConnection, v17);
  [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
  [(IDSUTunConnection *)self _checkAndStartConnection];
LABEL_92:
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v69 = _os_activity_create(&_mh_execute_header, "UTUNConnection sendMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v69, &state);
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ([messageCopy nonWaking])
    {
      v5 = @"(non waking)";
    }

    else
    {
      v5 = @"(is waking)";
    }

    v6 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
    v7 = qos_class_self();
    *buf = 138413314;
    selfCopy5 = self;
    v74 = 2112;
    v75 = v5;
    v76 = 2112;
    v77 = messageCopy;
    v78 = 2048;
    v79 = v6;
    v80 = 1024;
    v81 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ enqueuing %@ message %@ messageCount %lu - QoS=0x%x", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if ([messageCopy nonWaking])
    {
      v8 = @"(non waking)";
    }

    else
    {
      v8 = @"(is waking)";
    }

    v55 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
    v56 = qos_class_self();
    v52 = v8;
    v54 = messageCopy;
    selfCopy2 = self;
    _IDSLogV();
  }

  topic = [messageCopy topic];
  queueOneIdentifier = [messageCopy queueOneIdentifier];
  if (queueOneIdentifier && topic)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy5 = topic;
      v74 = 2112;
      v75 = queueOneIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Message with topic %@ has queueOneIdentifier %@, flushing older messages that match.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy6 = topic;
      v53 = queueOneIdentifier;
      _IDSLogV();
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v11 = [(NSMutableArray *)self->_sendingMessages copy:selfCopy6];
    v12 = [v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v12)
    {
      v13 = *v65;
LABEL_21:
      v14 = 0;
      while (1)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v64 + 1) + 8 * v14);
        context = [v15 context];
        queueOneIdentifier2 = [context queueOneIdentifier];
        if ([queueOneIdentifier2 isEqualToString:queueOneIdentifier])
        {
          topic2 = [context topic];
          v19 = [topic2 isEqualToString:topic];

          if (v19)
          {
            v20 = v15;

            if (v20)
            {
              goto LABEL_44;
            }

            goto LABEL_32;
          }
        }

        else
        {
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
          if (v12)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }

    context = 0;
LABEL_32:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
    v22 = [messages countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v22)
    {
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(messages);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          queueOneIdentifier3 = [v25 queueOneIdentifier];
          if ([queueOneIdentifier3 isEqualToString:queueOneIdentifier])
          {
            topic3 = [v25 topic];
            v28 = [topic3 isEqualToString:topic];

            if (v28)
            {
              v29 = v25;

              context = v29;
              goto LABEL_43;
            }
          }

          else
          {
          }
        }

        v22 = [messages countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v22);
    }

LABEL_43:

    v20 = 0;
LABEL_44:
    [(IDSUTunConnection *)self _removeSocketPairMessage:v20 localMessage:context reason:@"queue one identifier" responseCode:13];
  }

  expirationDate = [messageCopy expirationDate];
  v31 = expirationDate == 0;

  if (v31)
  {
    if ([(IDSUTunConnection *)self _isWiProxPeer])
    {
      [NSDate dateWithTimeIntervalSinceNow:30.0];
    }

    else
    {
      [NSDate dateWithTimeIntervalSinceNow:120.0];
    }
    v32 = ;
    [messageCopy setExpirationDate:v32];
  }

  resourcePath = [messageCopy resourcePath];
  v34 = resourcePath == 0;

  if (!v34)
  {
    [messageCopy setManualQueueRemoval:1];
  }

  [(IDSLocalDeliveryQueue *)self->_deliveryQueue enqueueMessage:messageCopy];
  self->_cachedBytes[[messageCopy dataProtectionClass]] = -1;
  +[NSDate timeIntervalSinceReferenceDate];
  [messageCopy setTimeEnqueued:?];
  fallbackBlock = [messageCopy fallbackBlock];

  if (fallbackBlock)
  {
    fallbackMessages = self->_fallbackMessages;
    if (!fallbackMessages)
    {
      v37 = objc_alloc_init(NSMutableArray);
      v38 = self->_fallbackMessages;
      self->_fallbackMessages = v37;

      fallbackMessages = self->_fallbackMessages;
    }

    [(NSMutableArray *)fallbackMessages addObject:messageCopy];
    topic4 = [messageCopy topic];
    v40 = [topic4 isEqualToString:@"com.apple.private.alloy.phonecontinuity"];

    [(IDSUTunConnection *)self _resetFallbackTimeout:v40 useNextFallback:0.0];
  }

  isMagnetIndicatingPeerIsAwake = self->_isMagnetIndicatingPeerIsAwake;
  v42 = [messageCopy nonWaking] ^ 1;
  if (-[IDSUTunConnection _isMagnetConnection](self, "_isMagnetConnection") && -[IDSUTunConnection _currentLink](self, "_currentLink") != 1 && [messageCopy nonCloudWaking])
  {
    v43 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID = [messageCopy messageUUID];
      *buf = 138412290;
      selfCopy5 = messageUUID;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Attempting to send nonCloudWaking message on non-magnet connection. Coallescing {guid: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        selfCopy6 = [messageCopy messageUUID];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          selfCopy6 = [messageCopy messageUUID];
          _IDSLogV();
        }
      }
    }

    [(IDSUTunConnection *)self _startMessagesDequeueMessagesTimer];
    v42 = 0;
    isMagnetIndicatingPeerIsAwake = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = self->_socketConnection;
  }

  else
  {
    v45 = 0;
  }

  if ([(IDSSocketPairConnectionProtocol *)v45 inFlightMessageCount]<= 5)
  {
    if ((v42 | isMagnetIndicatingPeerIsAwake))
    {
      [messageCopy setDidWakeHint:v42 & !isMagnetIndicatingPeerIsAwake];
      v46 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy5 = self;
        v74 = 1024;
        LODWORD(v75) = v42 & !isMagnetIndicatingPeerIsAwake;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@ socket buffer is empty, dequeuing a message.  didWakeHint(%d)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy6 = self;
        v53 = (v42 & !isMagnetIndicatingPeerIsAwake);
        _IDSLogV();
      }

      [(IDSUTunConnection *)self _dequeueMessages:selfCopy6];
    }

    else
    {
      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%@ Waiting for remote device wake before dequeuing message.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy6 = self;
        _IDSLogV();
      }
    }
  }

  fireDate = [(IMTimer *)self->_timeoutTimer fireDate];
  expirationDate2 = [messageCopy expirationDate];
  if (!fireDate || [fireDate compare:expirationDate2] == 1)
  {
    [(IDSUTunConnection *)self _resetTimeout:expirationDate2];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)cancelMessageID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if ([dCopy length])
  {
    v24 = [(IDSUTunConnection *)self _sendingMessageCountForClass:1];
    v23 = [(IDSUTunConnection *)self _sendingMessageCountForClass:0];
    v22 = [(IDSUTunConnection *)self _sendingMessageCountForClass:2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
    v7 = 0;
    v8 = [messages countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v8)
    {
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(messages);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          messageUUID = [v11 messageUUID];
          v13 = [messageUUID isEqualToIgnoringCase:dCopy];

          if (v13)
          {
            if (!v7)
            {
              v7 = objc_alloc_init(NSMutableArray);
            }

            [v7 addObject:v11];
          }
        }

        v8 = [messages countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v8);
    }

    if ([v7 count])
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cancelling messages %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v21 = v7;
        _IDSLogV();
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v7;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v16)
      {
        v17 = *v26;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v25 + 1) + 8 * j);
            underlyingSocketPairMessage = [v19 underlyingSocketPairMessage];
            [v19 setCompletionBlock:0];
            [(IDSUTunConnection *)self _removeSocketPairMessage:underlyingSocketPairMessage localMessage:v19 reason:@"Client Canceled" responseCode:2];
          }

          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v16);
      }
    }

    if (v24 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:1])
    {
      [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:1];
    }

    if (v23 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:0])
    {
      [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:0];
    }

    if (v22 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:2])
    {
      [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:2];
    }
  }
}

- (void)kickProgressBlockForMessageID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
  v7 = [messages countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(messages);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        messageUUID = [v11 messageUUID];
        v13 = [messageUUID isEqualToIgnoringCase:dCopy];

        if (v13)
        {
          [v11 kickProgressBlock];
        }
      }

      v8 = [messages countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_handleBecomingEmptyForDataProtectionClass:(unsigned int)class
{
  v3 = *&class;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (![(IDSUTunConnection *)self _inflightMessageCount])
  {
    [(IDSUTunConnection *)self _handleBecomingEmpty];
    [(IDSUTunConnection *)self _handleBecomingEmptyOfCloudMessages];
  }

  if ([(IDSUTunConnection *)self hasSpaceForMessagesWithDataProtectionClass:v3])
  {
    v6 = +[IDSDaemonPriorityQueueController sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005571F8;
    v7[3] = &unk_100BD89B0;
    v7[4] = self;
    v8 = v3;
    [v6 performBlockMainQueue:v7];
  }
}

- (void)_connectivityChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:self connectivityChanged:{-[IDSUTunConnection _nonThreadSafeIsConnected](self, "_nonThreadSafeIsConnected")}];

  [(IMTimer *)self->_fallbackTimer invalidate];
  fallbackTimer = self->_fallbackTimer;
  self->_fallbackTimer = 0;

  [(IDSUTunConnection *)self _resetFallbackTimeout:0 useNextFallback:0.0];
}

- (void)_clearLastFallbackWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_lastFallback)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing fallback stickiness due to: %@", buf, 0xCu);
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

    lastFallback = self->_lastFallback;
    self->_lastFallback = 0;
  }
}

- (double)_nanoConnectedFallbackTimeoutForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:@"com.apple.private.alloy.willow"])
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 60.0;
  }

  v5 = [@"utun-push-fallback-connected-timeout-" stringByAppendingString:serviceCopy];
  v6 = +[IDSServerBag sharedInstance];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      v4 = v8;
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a fallback timeout of %f", buf, 0xCu);
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
    }
  }

  return v4;
}

- (double)_nanoDisconnectedFallbackTimeoutForService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:@"com.apple.private.alloy.willow"])
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 20.0;
  }

  v5 = [@"utun-push-fallback-disconnected-timeout-" stringByAppendingString:serviceCopy];
  v6 = +[IDSServerBag sharedInstance];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      v4 = v8;
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a fallback timeout of %f", buf, 0xCu);
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
    }
  }

  return v4;
}

- (double)_fallbackTimeoutForService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  lastFallback = self->_lastFallback;
  if (lastFallback)
  {
    [(NSDate *)lastFallback timeIntervalSinceNow];
    v8 = fabs(v7);
    if (v8 < 0.5)
    {
      v9 = 0.1;
      goto LABEL_24;
    }

    v9 = 0.0;
    if (v8 < 1800.0)
    {
      goto LABEL_24;
    }

    [(IDSUTunConnection *)self _clearLastFallbackWithReason:@"expiration"];
  }

  if (IMGetDomainBoolForKey())
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "   **** cloud fallback disabled ****", v16, 2u);
    }

    v9 = 1000000000.0;
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
  }

  else if ([(IDSUTunConnection *)self _isWiProxPeer])
  {
    v11 = [IDSServerBag sharedInstanceForBagType:1];
    v12 = [v11 objectForKey:@"ids-local-cloud-fallback-delay"];

    if (v12)
    {
      [v12 doubleValue];
      if (v13 >= 0.0)
      {
        v9 = v13;
      }

      else
      {
        v9 = 1000000000.0;
      }
    }

    else
    {
      [(IDSUTunConnection *)self isConnected];
      v9 = 0.0;
    }
  }

  else
  {
    if ([(IDSUTunConnection *)self isConnected])
    {
      [(IDSUTunConnection *)self _nanoConnectedFallbackTimeoutForService:serviceCopy];
    }

    else
    {
      [(IDSUTunConnection *)self _nanoDisconnectedFallbackTimeoutForService:serviceCopy];
    }

    v9 = v14;
  }

LABEL_24:

  return v9;
}

- (BOOL)_performFallbackIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  [necessaryCopy timeEnqueued];
  v9 = v8;
  if (([necessaryCopy didFallback] & 1) != 0 || (objc_msgSend(necessaryCopy, "topic"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v7 - v9, -[IDSUTunConnection _fallbackTimeoutForService:](self, "_fallbackTimeoutForService:", v10), v13 = v12, v10, v11 <= v13))
  {
    v18 = 0;
  }

  else
  {
    fallbackBlock = [necessaryCopy fallbackBlock];
    if (fallbackBlock)
    {
      v15 = objc_alloc_init(NSDate);
      lastFallback = self->_lastFallback;
      self->_lastFallback = v15;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = self->_socketConnection;
      }

      else
      {
        v17 = 0;
      }

      [(IDSSocketPairConnectionProtocol *)v17 setNotifyWhenConnectionReceivesBytes:1];
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        messageID = [necessaryCopy messageID];
        messageUUID = [necessaryCopy messageUUID];
        expirationDate = [necessaryCopy expirationDate];
        *buf = 138413058;
        selfCopy = self;
        v43 = 1024;
        v44 = messageID;
        v45 = 2112;
        v46 = messageUUID;
        v47 = 2112;
        v48 = expirationDate;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ performing cloud fallback for message[%u] %@ which is scheduled to expire %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          messageID2 = [necessaryCopy messageID];
          messageUUID2 = [necessaryCopy messageUUID];
          [necessaryCopy expirationDate];
          v36 = v35 = messageUUID2;
          selfCopy3 = self;
          v34 = messageID2;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            messageID3 = [necessaryCopy messageID];
            messageUUID3 = [necessaryCopy messageUUID];
            [necessaryCopy expirationDate];
            v36 = v35 = messageUUID3;
            selfCopy3 = self;
            v34 = messageID3;
            _IDSLogV();
          }
        }
      }

      [necessaryCopy setDidFallback:{1, selfCopy3, v34, v35, v36}];
      toURI = [necessaryCopy toURI];
      toDeviceID = [necessaryCopy toDeviceID];
      v29 = +[IDSDaemonPriorityQueueController sharedInstance];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100557DFC;
      v37[3] = &unk_100BDA5A8;
      v39 = toDeviceID;
      v40 = fallbackBlock;
      v38 = toURI;
      v30 = toDeviceID;
      v31 = toURI;
      [v29 performBlockMainQueue:v37];
    }

    v18 = 1;
  }

  return v18;
}

- (void)_resetFallbackTimeout:(double)timeout useNextFallback:(BOOL)fallback
{
  if (!self->_fallbackTimer)
  {
    if (!fallback)
    {
      firstObject = [(NSMutableArray *)self->_fallbackMessages firstObject];
      v7 = firstObject;
      if (!firstObject)
      {
        return;
      }

      [firstObject timeEnqueued];
      v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v8 timeIntervalSinceNow];
      v10 = v9;
      topic = [v7 topic];
      [(IDSUTunConnection *)self _fallbackTimeoutForService:topic];
      timeout = v10 + v12;
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ - messages in queue in need of fallback, setting timer for: %f", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v14 = [IMTimer alloc];
    if (timeout < 0.005)
    {
      timeout = 0.005;
    }

    v15 = im_primary_queue();
    v16 = [v14 initWithTimeInterval:0 name:0 shouldWake:self target:"_fallbackTimerFired" selector:0 userInfo:v15 queue:timeout];
    fallbackTimer = self->_fallbackTimer;
    self->_fallbackTimer = v16;
  }
}

- (void)_fallbackTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10055809C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidateTimeoutTimer
{
  [(IMTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (void)_resetTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (!timeoutCopy)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = self->_sendingMessages;
    timeoutCopy = 0;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v6);
          }

          context = [*(*(&v35 + 1) + 8 * v9) context];
          expirationDate = [context expirationDate];
          v12 = expirationDate;
          if (!timeoutCopy || [expirationDate compare:timeoutCopy] == -1)
          {
            v13 = v12;

            timeoutCopy = v13;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v7);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
    v15 = [messages countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(messages);
          }

          expirationDate2 = [*(*(&v31 + 1) + 8 * v17) expirationDate];
          v19 = expirationDate2;
          if (!timeoutCopy || [expirationDate2 compare:timeoutCopy] == -1)
          {
            v20 = v19;

            timeoutCopy = v20;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [messages countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v15);
    }
  }

  [(IMTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  if (timeoutCopy)
  {
    [timeoutCopy timeIntervalSinceNow];
    v23 = v22 + 0.5;
    if (v23 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1.0;
    }

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v41 = 2048;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ - messages in queue, setting timer for: %f", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v26 = [IMTimer alloc];
    v27 = im_primary_queue();
    v28 = [v26 initWithTimeInterval:0 name:0 shouldWake:self target:"_timeoutTimerFired" selector:0 userInfo:v27 queue:v24];
    v29 = self->_timeoutTimer;
    self->_timeoutTimer = v28;
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ - no messages in queue, clearing timer", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_timeoutTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005585B0;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_timeoutTimerFired
{
  im_assert_primary_base_queue();
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100558650;
  v4[3] = &unk_100BD6ED0;
  v4[4] = self;
  [v3 performBlockWithPriority:v4 priority:self->_priority];
}

- (BOOL)_shouldAWDLogMessage:(id)message
{
  command = [message command];
  v4 = [command integerValue] != 244;

  return v4;
}

- (void)_messageTimedOut:(id)out localMessage:(id)message
{
  outCopy = out;
  messageCopy = message;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:self->_priority];

  dataProtectionClass = [messageCopy dataProtectionClass];
  v9 = [(IDSUTunConnection *)self _inflightMessageCountForClass:dataProtectionClass];
  if ([(IDSUTunConnection *)self _shouldAWDLogMessage:messageCopy])
  {
    v10 = [IDSLocalMessageTimedOutMetric alloc];
    awdTopic = [messageCopy awdTopic];
    v12 = [v10 initWithService:awdTopic isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(messageCopy deliveryError:"sentMessageDataSize") RTT:-[IDSUTunConnection _currentLink](self priority:{"_currentLink"), 101, 0, objc_msgSend(messageCopy, "priority")}];

    v13 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v13 logMetric:v12];

    v14 = +[IDSAWDLogging sharedInstance];
    awdTopic2 = [messageCopy awdTopic];
    [v14 messageDeliveredForService:awdTopic2 isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(messageCopy deliveryError:"sentMessageDataSize") RTT:-[IDSUTunConnection _currentLink](self priority:{"_currentLink"), 101, 0, objc_msgSend(messageCopy, "priority")}];
  }

  _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
  isConnected = [_UTunDeliveryController isConnected];

  _UTunDeliveryController2 = [(IDSUTunConnection *)self _UTunDeliveryController];
  isCloudConnected = [_UTunDeliveryController2 isCloudConnected];

  _UTunDeliveryController3 = [(IDSUTunConnection *)self _UTunDeliveryController];
  isClassCConnected = [_UTunDeliveryController3 isClassCConnected];

  _UTunDeliveryController4 = [(IDSUTunConnection *)self _UTunDeliveryController];
  isTerminusRegistered = [_UTunDeliveryController4 isTerminusRegistered];

  v24 = 0;
  if (isConnected && (isClassCConnected & 1) == 0)
  {
    v24 = (dataProtectionClass < 2) & isTerminusRegistered;
  }

  if (isConnected)
  {
    nonWaking = [messageCopy nonWaking];
    v26 = outCopy;
    if (nonWaking)
    {
      v27 = @"This message was a non-waking message and the destination device for this message did not wake before the timeout fired";
      selfCopy5 = self;
      v29 = messageCopy;
      v30 = 34;
      goto LABEL_16;
    }
  }

  else
  {
    v26 = outCopy;
    if ((self->_isCloudEnabled & isCloudConnected & 1) == 0)
    {
      v27 = @"The destination device for this message did not connected before the timeout fired.";
      selfCopy5 = self;
      v29 = messageCopy;
      v30 = 33;
      goto LABEL_16;
    }
  }

  if ([v26 wasWrittenToConnection])
  {
    v27 = @"This message was written into the connection, but did not receive an ack. Check Bluetooth conditions and that your process is not hung on the receiver.";
    selfCopy5 = self;
    v26 = outCopy;
    v29 = messageCopy;
    v30 = 35;
  }

  else if (v24)
  {
    v27 = @"This message requires class C connection, but the devices are not ClassC connected, because the remote device is locked.";
    selfCopy5 = self;
    v26 = outCopy;
    v29 = messageCopy;
    v30 = 36;
  }

  else
  {
    v27 = @"timed out";
    selfCopy5 = self;
    v26 = outCopy;
    v29 = messageCopy;
    v30 = 12;
  }

LABEL_16:
  [(IDSUTunConnection *)selfCopy5 _removeSocketPairMessage:v26 localMessage:v29 reason:v27 responseCode:v30];
  v31 = [(IDSUTunConnection *)self _inflightMessageCountForClass:dataProtectionClass];
  if (v9 && !v31)
  {
    [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:dataProtectionClass];
  }
}

- (void)_removeSocketPairMessage:(id)message localMessage:(id)localMessage reason:(id)reason detailedError:(id)error responseCode:(int64_t)code
{
  messageCopy = message;
  localMessageCopy = localMessage;
  reasonCopy = reason;
  errorCopy = error;
  v14 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v14 assertRunningWithPriority:self->_priority];

  if (messageCopy | localMessageCopy)
  {
    if (messageCopy)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (code && (isKindOfClass & 1) != 0)
      {
        v16 = messageCopy;
        sequenceNumber = [v16 sequenceNumber];
        streamID = [v16 streamID];
        messageUUID = [v16 messageUUID];
        v20 = [IDSSocketPairResourceTransferMessage cancelMessageWithSequenceNumber:sequenceNumber streamID:streamID messageUUID:messageUUID cancelReason:5];

        v21 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy = self;
          v58 = 2112;
          v59 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ sending resource transfer cancel message %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          selfCopy2 = self;
          v42 = v20;
          _IDSLogV();
        }

        [(IDSUTunConnection *)self _sendSocketMessage:v20 ignoreSequenceNumber:1, selfCopy2, v42];
      }

      [(IDSUTunConnection *)self _removeMessageFromStatistics:localMessageCopy];
      [(NSMutableArray *)self->_sendingMessages removeObject:messageCopy];
      if (![(NSMutableArray *)self->_sendingMessages count])
      {
        sendingMessages = self->_sendingMessages;
        self->_sendingMessages = 0;
      }

      if (!self->_sendingMessages)
      {
        [(IDSUTunConnection *)self _clearSendingPowerAssertionWithReason:@"No in flight messages remaining"];
      }
    }

    progressBlock = [localMessageCopy progressBlock];

    if (progressBlock)
    {
      progressBlock2 = [localMessageCopy progressBlock];
      progressBlock2[2](progressBlock2, 0, 0, 0, 0, 1);

      [localMessageCopy setProgressBlock:0];
    }

    completionBlock = [localMessageCopy completionBlock];
    if (completionBlock)
    {
      toDeviceID = [localMessageCopy toDeviceID];
      v27 = [(NSString *)self->_cbuuid copy];
      rtt = self->_rtt;
      v29 = +[IDSDaemonPriorityQueueController sharedInstance];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10055947C;
      v48[3] = &unk_100BE02D8;
      codeCopy = code;
      v49 = v27;
      v50 = toDeviceID;
      v55 = rtt;
      v51 = localMessageCopy;
      v52 = errorCopy;
      v53 = completionBlock;
      v30 = toDeviceID;
      v31 = v27;
      [v29 performBlockMainQueue:v48];
    }

    [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:localMessageCopy];
    self->_cachedBytes[[localMessageCopy dataProtectionClass]] = -1;
    [(NSMutableArray *)self->_fallbackMessages removeObject:localMessageCopy];
    if (![(NSMutableArray *)self->_fallbackMessages count])
    {
      fallbackMessages = self->_fallbackMessages;
      self->_fallbackMessages = 0;
    }

    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID2 = [localMessageCopy messageUUID];
      v35 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
      v36 = [(NSMutableArray *)self->_sendingMessages count];
      *buf = 138413314;
      selfCopy = messageCopy;
      v58 = 2112;
      v59 = localMessageCopy;
      v60 = 2112;
      v61 = messageUUID2;
      v62 = 1024;
      v63 = v36 + v35;
      v64 = 2112;
      v65 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Message %@ %@ %@ removed, total message count %d - %@", buf, 0x30u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        messageUUID3 = [localMessageCopy messageUUID];
        v38 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
        v44 = [(NSMutableArray *)self->_sendingMessages count]+ v38;
        v45 = reasonCopy;
        v42 = localMessageCopy;
        v43 = messageUUID3;
        selfCopy2 = messageCopy;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          messageUUID4 = [localMessageCopy messageUUID];
          v40 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue count];
          v44 = [(NSMutableArray *)self->_sendingMessages count]+ v40;
          v45 = reasonCopy;
          v42 = localMessageCopy;
          v43 = messageUUID4;
          selfCopy2 = messageCopy;
          _IDSLogV();
        }
      }
    }

    if (!messageCopy)
    {
      [localMessageCopy setUnderlyingSocketPairMessage:0];
    }

    [messageCopy setContext:{0, selfCopy2, v42, v43, v44, v45}];
    [messageCopy setCancelled:1];
  }
}

- (BOOL)_messageIsAllowedToSendMessageOnTopic:(id)topic
{
  topicCopy = topic;
  if ([(IDSUTunConnection *)self _isMagnetConnection])
  {
    v5 = +[IDSDServiceController sharedInstance];
    v6 = [v5 serviceWithPushTopic:topicCopy];

    allowedTrafficClasses = [v6 allowedTrafficClasses];
    _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
    allowedTrafficClasses2 = [_UTunDeliveryController allowedTrafficClasses];

    if ((_IDSIsTrafficAllowed() & 1) == 0)
    {
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = topicCopy;
        v19 = 2112;
        v20 = allowedTrafficClasses;
        v21 = 2112;
        v22 = allowedTrafficClasses2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Message on service %@ not allowed! Attempted to send on traffic classes: %@ Permitted traffic classes: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v15 = allowedTrafficClasses;
          v16 = allowedTrafficClasses2;
          v14 = topicCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v15 = allowedTrafficClasses;
            v16 = allowedTrafficClasses2;
            v14 = topicCopy;
            _IDSLogV();
          }
        }
      }

      if ([allowedTrafficClasses2 count])
      {
        v10 = 0;
        goto LABEL_13;
      }

      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = topicCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Overriding previous decision on message for topic %@ due to feature flag that allows messages will empty traffic classes", buf, 0xCu);
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
    }

    v10 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

- (void)admissionPolicyChangedForTopic:(id)topic allowed:(BOOL)allowed
{
  allowedCopy = allowed;
  topicCopy = topic;
  if (![topicCopy length])
  {
    [(NSMutableSet *)self->_admissionDeniedTopics removeAllObjects];
    v8 = +[IDSDaemonPriorityQueueController sharedInstance];
    v9 = v8;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100559B2C;
    v25[3] = &unk_100BD6ED0;
    v25[4] = self;
    priority = self->_priority;
    v11 = v25;
    goto LABEL_6;
  }

  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:self->_priority];

  if (allowedCopy)
  {
    if ([(NSMutableSet *)self->_admissionDeniedTopics containsObject:topicCopy])
    {
      [(NSMutableSet *)self->_admissionDeniedTopics removeObject:topicCopy];
      v8 = +[IDSDaemonPriorityQueueController sharedInstance];
      v9 = v8;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100559B34;
      v24[3] = &unk_100BD6ED0;
      v24[4] = self;
      priority = self->_priority;
      v11 = v24;
LABEL_6:
      [v8 performBlockWithPriority:v11 priority:priority];
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100559B3C;
    v17 = &unk_100BE0300;
    v13 = topicCopy;
    v18 = v13;
    v19 = &v20;
    [messages enumerateObjectsWithOptions:2 usingBlock:&v14];

    if (*(v21 + 24) == 1)
    {
      [(NSMutableSet *)self->_admissionDeniedTopics addObject:v13, v14, v15, v16, v17];
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (BOOL)checkServiceCompability:(id)compability localMessage:(id)message
{
  compabilityCopy = compability;
  messageCopy = message;
  if (![messageCopy minCompatibilityVersion] || self->_newServiceSupported && (objc_msgSend(messageCopy, "minCompatibilityVersion") == 1 || self->_newServiceSupported && (serviceMinCompatibilityVersion = self->_serviceMinCompatibilityVersion, objc_msgSend(messageCopy, "minCompatibilityVersion") <= serviceMinCompatibilityVersion)))
  {
    v8 = 1;
  }

  else
  {
    v10 = [IDSLocalMessageDeliveryServiceNotCompatibleMetric alloc];
    awdTopic = [messageCopy awdTopic];
    toDeviceID = [messageCopy toDeviceID];
    v13 = IDSDeviceDefaultPairedDeviceUniqueID;
    v14 = [v10 initWithService:awdTopic isToDefaultPairedDevice:objc_msgSend(toDeviceID messageSize:"isEqualToString:" linkType:IDSDeviceDefaultPairedDeviceUniqueID) deliveryError:0 RTT:0 priority:{3, 0, objc_msgSend(messageCopy, "priority")}];

    v15 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v15 logMetric:v14];

    v16 = +[IDSAWDLogging sharedInstance];
    awdTopic2 = [messageCopy awdTopic];
    toDeviceID2 = [messageCopy toDeviceID];
    [v16 messageDeliveredForService:awdTopic2 isToDefaultPairedDevice:objc_msgSend(toDeviceID2 messageSize:"isEqualToString:" linkType:v13) deliveryError:0 RTT:0 priority:{3, 0, objc_msgSend(messageCopy, "priority")}];

    [(IDSUTunConnection *)self _removeSocketPairMessage:compabilityCopy localMessage:messageCopy reason:@"remote does not support new service" responseCode:23];
    v8 = 0;
  }

  return v8;
}

- (BOOL)supportsMessageOfType:(int64_t)type
{
  supportedMessageTypes = self->_supportedMessageTypes;
  v4 = [NSNumber numberWithLongLong:type];
  LOBYTE(supportedMessageTypes) = [(NSArray *)supportedMessageTypes containsObject:v4];

  return supportedMessageTypes;
}

- (BOOL)_nonBTAllowedForClientID:(id)d
{
  dCopy = d;
  v4 = +[FTDeviceSupport sharedInstance];
  v5 = [v4 nonBluetoothAvailableForBundleId:dCopy];

  return v5;
}

- (unsigned)_calculateRandomDelayForCloudMessagingRequest
{
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"cloud-messaging-on-the-hour-max-delay-in-ms"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v4 intValue];
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = @"cloud-messaging-on-the-hour-max-delay-in-ms";
      v23 = 1024;
      v24 = intValue;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server Bag {%@:%d}", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = @"cloud-messaging-on-the-hour-max-delay-in-ms";
        v19 = intValue;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v17 = @"cloud-messaging-on-the-hour-max-delay-in-ms";
          v19 = intValue;
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    LODWORD(intValue) = 2000;
  }

  v7 = [IDSServerBag sharedInstance:v17];
  v8 = [v7 objectForKey:@"cloud-messaging-top-of-the-hour-definition-in-seconds"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue2 = [v8 intValue];
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = @"cloud-messaging-top-of-the-hour-definition-in-seconds";
      v23 = 1024;
      v24 = intValue2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Server Bag {%@:%d}", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v18 = @"cloud-messaging-top-of-the-hour-definition-in-seconds";
        v20 = intValue2;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v18 = @"cloud-messaging-top-of-the-hour-definition-in-seconds";
          v20 = intValue2;
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    LODWORD(intValue2) = 5;
  }

  v11 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  _now = [(IDSUTunConnection *)self _now];
  if (_now)
  {
    v13 = [v11 components:192 fromDate:_now];
  }

  else
  {
    v13 = 0;
  }

  minute = [v13 minute];
  if ([v13 second] + 60 * minute <= intValue2)
  {
    v15 = arc4random_uniform(intValue << (self->_priority != 300));
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_assertQuickRelayForCloudMessaging
{
  if (self->_shouldUseServiceConnector)
  {
    _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
    isTerminusConnected = [_UTunDeliveryController isTerminusConnected];

    if ((isTerminusConnected & 1) == 0)
    {
      _calculateRandomDelayForCloudMessagingRequest = [(IDSUTunConnection *)self _calculateRandomDelayForCloudMessagingRequest];
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v16 = 1024;
        v17 = _calculateRandomDelayForCloudMessagingRequest;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Assert QuickRelay after %d ms", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        selfCopy3 = self;
        v11 = _calculateRandomDelayForCloudMessagingRequest;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          selfCopy3 = self;
          v11 = _calculateRandomDelayForCloudMessagingRequest;
          _IDSLogV();
        }
      }

      v7 = [IDSDaemonPriorityQueueController sharedInstance:selfCopy3];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10055A480;
      v13[3] = &unk_100BD6ED0;
      v13[4] = self;
      [v7 performBlockMainQueue:v13 afterTimeMSec:_calculateRandomDelayForCloudMessagingRequest];
    }
  }

  else
  {
    v12 = +[IDSUTunController sharedInstance];
    _isMagnetConnection = [(IDSUTunConnection *)self _isMagnetConnection];
    p_uniqueID = &self->_uniqueID;
    if (_isMagnetConnection)
    {
      p_uniqueID = &kIDSDefaultPairedDeviceID;
    }

    [v12 startGlobalLinkForDevice:*p_uniqueID];
  }
}

- (void)trafficClassesChanged
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_sendingMessages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        context = [*(*(&v28 + 1) + 8 * v8) context];
        [context setDeniedToSend:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_fallbackMessages;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) setDeniedToSend:0];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
  v16 = [messages countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(messages);
        }

        [*(*(&v20 + 1) + 8 * v19) setDeniedToSend:0];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [messages countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  [(IDSUTunConnection *)self _dequeueMessages];
}

- (void)clearStats
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  deliveryQueue = self->_deliveryQueue;

  [(IDSLocalDeliveryQueue *)deliveryQueue clearStats];
}

- (void)_clearSendingPowerAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_sendingPowerAssertion)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing power assertion: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    sendingPowerAssertion = self->_sendingPowerAssertion;
    self->_sendingPowerAssertion = 0;
  }
}

- (void)_sendSocketMessage:(id)message ignoreSequenceNumber:(BOOL)number
{
  messageCopy = message;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:self->_priority];

  context = [messageCopy context];
  if (number)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    sequenceNumber = [messageCopy sequenceNumber];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_2:
      sequenceNumber = 0;
      v10 = 0;
      goto LABEL_6;
    }

    sequenceNumber = [context messageID];
    [messageCopy setSequenceNumber:sequenceNumber];
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = sequenceNumber;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "* Sending message with sequence number %u", buf, 8u);
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
  }

  v10 = 1;
LABEL_6:
  IMTimeOfDay();
  [context setTimeSent:?];
  if (!number)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      messageID = [context messageID];
      if (v10)
      {
        v14 = [NSString stringWithFormat:@"with sequenceNumber %u", sequenceNumber];
      }

      else
      {
        v14 = &stru_100C06028;
      }

      *buf = 138413058;
      v18 = identifier;
      v19 = 2048;
      v20 = messageID;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = messageCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Sending message[%lu] %@ %@.", buf, 0x2Au);
      if (v10)
      {
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [context messageID];
      if (v10)
      {
        v16 = [NSString stringWithFormat:@"with sequenceNumber %u", sequenceNumber];
        _IDSLogV();
      }

      else
      {
        _IDSLogV();
      }
    }
  }

  kdebug_trace();
  if ([(IDSUTunConnection *)self _messageHasValidEncryptionStatus:messageCopy])
  {
    [(IDSSocketPairConnectionProtocol *)self->_socketConnection sendDataMessage:messageCopy canFragment:[(IDSUTunConnection *)self _isMagnetConnection]];
  }

  else
  {
    [(IDSUTunConnection *)self _sendEncryptedMessage:messageCopy];
  }
}

- (void)_updateDictionary:(id)dictionary addMessageSize:(int64_t)size addMessageCount:(int64_t)count
{
  dictionaryCopy = dictionary;
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v9 assertRunningWithPriority:self->_priority];

  v15 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatMessageCount"];
  v10 = [dictionaryCopy objectForKey:@"localDeliveryQueueStatBytes"];
  unsignedLongLongValue = [v15 unsignedLongLongValue];
  unsignedLongLongValue2 = [v10 unsignedLongLongValue];
  v13 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue[count]];
  [dictionaryCopy setObject:v13 forKey:@"localDeliveryQueueStatMessageCount"];

  v14 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue2[size]];
  [dictionaryCopy setObject:v14 forKey:@"localDeliveryQueueStatBytes"];
}

- (void)_addMessageSize:(unint64_t)size forTopic:(id)topic direction:(unsigned __int8)direction dataProtectionClass:(unsigned int)class isResource:(BOOL)resource
{
  resourceCopy = resource;
  v8 = *&class;
  directionCopy = direction;
  topicCopy = topic;
  if (!topicCopy)
  {
    goto LABEL_30;
  }

  if (directionCopy == 1)
  {
    v21 = 48;
LABEL_16:
    Mutable = [*(&self->super.isa + v21) objectForKey:topicCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    [(IDSUTunConnection *)self _updateDictionary:Mutable addMessageSize:size addMessageCount:!resourceCopy];
    v23 = *(&self->super.isa + v21);
    if (!v23)
    {
      v24 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v25 = *(&self->super.isa + v21);
      *(&self->super.isa + v21) = v24;

      v23 = *(&self->super.isa + v21);
    }

    [v23 setObject:Mutable forKey:topicCopy];
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      priority = self->_priority;
      v28 = *(&self->super.isa + v21);
      *buf = 136315906;
      v31 = "[IDSUTunConnection _addMessageSize:forTopic:direction:dataProtectionClass:isResource:]";
      v32 = 1024;
      v33 = priority;
      v34 = 1024;
      v35 = directionCopy;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s: priority %d updated direction %d stats %@", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    goto LABEL_30;
  }

  if (!directionCopy)
  {
    if (!resourceCopy)
    {
      statistics = self->_statistics;
      v14 = [NSNumber numberWithUnsignedInt:v8];
      v15 = [(NSMutableDictionary *)statistics objectForKey:v14];

      if (!self->_statistics)
      {
        v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v17 = self->_statistics;
        self->_statistics = v16;
      }

      if (!v15)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v18 = self->_statistics;
        v19 = [NSNumber numberWithUnsignedInt:v8];
        [(NSMutableDictionary *)v18 setObject:v15 forKey:v19];
      }

      v20 = [v15 objectForKey:topicCopy];
      if (!v20)
      {
        v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      [(IDSUTunConnection *)self _updateDictionary:v20 addMessageSize:size addMessageCount:1];
      if (!v15)
      {
        v15 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      [v15 setObject:v20 forKey:topicCopy];
    }

    v21 = 40;
    goto LABEL_16;
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[IDSUTunConnection _addMessageSize:forTopic:direction:dataProtectionClass:isResource:]";
    v32 = 1024;
    v33 = directionCopy;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s: statsDictionary is nil for direction %d", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

LABEL_30:
}

- (void)_removeMessageFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  topic = [statisticsCopy topic];
  dataProtectionClass = [statisticsCopy dataProtectionClass];
  if (!topic)
  {
    goto LABEL_12;
  }

  v6 = dataProtectionClass;
  statistics = self->_statistics;
  v8 = [NSNumber numberWithUnsignedInt:dataProtectionClass];
  v9 = [(NSMutableDictionary *)statistics objectForKey:v8];

  if (!self->_statistics)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = self->_statistics;
    self->_statistics = Mutable;

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_8:
    v9 = objc_alloc_init(NSMutableDictionary);
    v15 = self->_statistics;
    v16 = [NSNumber numberWithUnsignedInt:v6];
    [(NSMutableDictionary *)v15 setObject:v9 forKey:v16];

    goto LABEL_4;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = [v9 objectForKey:topic];
  if (v10)
  {
    -[IDSUTunConnection _updateDictionary:addMessageSize:addMessageCount:](self, "_updateDictionary:addMessageSize:addMessageCount:", v10, -[statisticsCopy sentMessageDataSize], -1);
    v11 = [v10 objectForKey:@"localDeliveryQueueStatMessageCount"];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      [v9 setObject:v10 forKey:topic];
    }

    else
    {
      [v9 removeObjectForKey:topic];
    }

    self->_cachedBytes[v6] = -1;
  }

LABEL_12:
}

- (unint64_t)_pendingOutgoingBytesForClass:(unsigned int)class
{
  v3 = *&class;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  result = self->_cachedBytes[v3];
  if ((result & 0x8000000000000000) != 0)
  {
    selfCopy = self;
    cachedBytes = self->_cachedBytes;
    v30 = v3;
    v33 = [(IDSLocalDeliveryQueue *)self->_deliveryQueue statisticsForDataProtectionClass:v3];
    [v33 allKeys];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v39;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [v33 objectForKey:*(*(&v38 + 1) + 8 * i)];
          v13 = [v12 objectForKey:@"localDeliveryQueueStatBytes"];
          unsignedLongLongValue = [v13 unsignedLongLongValue];

          v15 = [v12 objectForKey:@"localDeliveryQueueStatMessageCount"];
          unsignedLongLongValue2 = [v15 unsignedLongLongValue];

          v9 += (unsignedLongLongValue & ~(unsignedLongLongValue >> 63)) + 12288 * unsignedLongLongValue2;
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v17 = [(IDSUTunConnection *)selfCopy _sendingMessageStatisticsForClass:v30];
    allKeys = [v17 allKeys];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obja = allKeys;
    v19 = [obja countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v23 = [v17 objectForKey:*(*(&v34 + 1) + 8 * j)];
          v24 = [v23 objectForKey:@"localDeliveryQueueStatBytes"];
          unsignedLongLongValue3 = [v24 unsignedLongLongValue];

          v26 = [v23 objectForKey:@"localDeliveryQueueStatMessageCount"];
          unsignedLongLongValue4 = [v26 unsignedLongLongValue];

          v9 += &unsignedLongLongValue3[12288 * unsignedLongLongValue4];
        }

        v20 = [obja countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v20);
    }

    cachedBytes[v30] = v9;
    return cachedBytes[v30];
  }

  return result;
}

- (void)_startMessagesDequeueMessagesTimer
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  if (self->_dequeueTimer)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to start messageDequeueTimer ignored -- timer already running", v12, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting messageDequeueTimer", buf, 2u);
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

    v6 = [IMTimer alloc];
    [(IDSUTunConnection *)self _dequeueMessagesTimerInterval];
    v8 = v7;
    v9 = im_primary_queue();
    v10 = [v6 initWithTimeInterval:@"com.apple.identityservices.IDSUTunConnection-dequeueMessages" name:1 shouldWake:self target:"_dequeueMessagesTimerDidFire:" selector:0 userInfo:v9 queue:v8];
    dequeueTimer = self->_dequeueTimer;
    self->_dequeueTimer = v10;
  }
}

- (void)_dequeueTimerFiredOnMain:(id)main
{
  mainCopy = main;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10055BAD0;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = mainCopy;
  v6 = mainCopy;
  dispatch_async(v5, v7);
}

- (void)_dequeueMessagesTimerDidFire:(id)fire
{
  im_assert_primary_base_queue();
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10055BB74;
  v5[3] = &unk_100BD6ED0;
  v5[4] = self;
  [v4 performBlockWithPriority:v5 priority:self->_priority];
}

- (void)_requeueSendingMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [messageCopy reset];
  }

  context = [messageCopy context];
  if (context)
  {
    [(IDSLocalDeliveryQueue *)self->_deliveryQueue pushMessage:context];
    [(IDSUTunConnection *)self _removeMessageFromStatistics:context];
  }
}

- (void)_requeueMessages:(id)messages
{
  messagesCopy = messages;
  v5 = [messagesCopy componentsSeparatedByString:@"-"];
  if ([v5 count] > 2)
  {
    v7 = v5;
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = messagesCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "_otrTokenToArray: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v20 = messagesCopy;
      _IDSLogTransport();
    }

    v7 = 0;
  }

  if (v7)
  {
    v8 = [v7 objectAtIndex:0];
    v9 = objc_alloc_init(NSMutableIndexSet);
    v10 = [v8 isEqualToString:@"idsotr"];
    v11 = [v7 objectAtIndex:2];
    v12 = v11;
    if (v10)
    {
      intValue = [v11 intValue];

      sendingMessages = self->_sendingMessages;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10055C144;
      v28[3] = &unk_100BE0398;
      v30 = intValue;
      v28[4] = self;
      v29 = v9;
      [(NSMutableArray *)sendingMessages enumerateObjectsWithOptions:2 usingBlock:v28];
    }

    else
    {
      bOOLValue = [v11 BOOLValue];

      v16 = self->_sendingMessages;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10055C21C;
      v23[3] = &unk_100BE03C0;
      v27 = bOOLValue;
      v24 = v8;
      selfCopy = self;
      v26 = v9;
      [(NSMutableArray *)v16 enumerateObjectsWithOptions:2 usingBlock:v23];
    }

    if ([v9 count])
    {
      [(NSMutableArray *)self->_sendingMessages removeObjectsAtIndexes:v9];
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v9 count];
        *buf = 134218242;
        v32 = v18;
        v33 = 2112;
        v34 = messagesCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requeued %lu sending messages for %@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v21 = [v9 count];
          v22 = messagesCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v21 = [v9 count];
            v22 = messagesCopy;
            _IDSLogV();
          }
        }
      }
    }

    v19 = [(NSMutableDictionary *)self->_tokenToOTREncryptionQueue objectForKey:messagesCopy, v21, v22];
    [v19 removeAllObjects];

    [(IDSUTunConnection *)self _dequeueMessages];
  }
}

- (void)handleOTRNegotiationComplete:(id)complete
{
  completeCopy = complete;
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v4 assertRunningWithPriority:self->_priority];

  v5 = +[IDSOTRController sharedInstance];
  [v5 setSessionReady:completeCopy];

  [(IDSUTunConnection *)self _requeueMessages:completeCopy];
}

- (void)handleOTRNegotiationTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  v6 = [timeoutCopy componentsSeparatedByString:@"-"];
  v7 = [v6 objectAtIndex:0];

  if ([v7 isEqualToString:@"idsotr"] && !self->_useSharedOTRSession)
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = timeoutCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "OTR negotiation timed out for %@ but remote device doesn't support shared session.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = timeoutCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = timeoutCopy;
          _IDSLogV();
        }
      }
    }

    tokenToOTRError = self->_tokenToOTRError;
    if (!tokenToOTRError)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v18 = self->_tokenToOTRError;
      self->_tokenToOTRError = Mutable;

      tokenToOTRError = self->_tokenToOTRError;
    }

    [(NSMutableDictionary *)tokenToOTRError setObject:&__kCFBooleanFalse forKey:timeoutCopy, v19];
    [(IDSUTunConnection *)self _requeueMessages:timeoutCopy];
  }

  else if ([(IDSUTunConnection *)self isConnected])
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = timeoutCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OTR negotiation timed out for %@, retry.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = timeoutCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = timeoutCopy;
          _IDSLogV();
        }
      }
    }

    v9 = +[IDSOTRController sharedInstance];
    [v9 startOTRNegotiationWithDeviceIfNeeded:IDSDeviceDefaultPairedDeviceUniqueID token:timeoutCopy reset:1 errorHandler:0];
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = timeoutCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "OTR negotiation timed out for %@, clear error state and requeue all messages.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = timeoutCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = timeoutCopy;
          _IDSLogV();
        }
      }
    }

    v11 = self->_tokenToOTRError;
    if (!v11)
    {
      v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v13 = self->_tokenToOTRError;
      self->_tokenToOTRError = v12;

      v11 = self->_tokenToOTRError;
    }

    v14 = [NSNumber numberWithBool:0, v19];
    [(NSMutableDictionary *)v11 setObject:v14 forKey:timeoutCopy];

    [(IDSUTunConnection *)self _requeueMessages:timeoutCopy];
  }
}

- (void)setEnableOTR:(BOOL)r
{
  rCopy = r;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (self->_enableOTR != rCopy)
  {
    self->_enableOTR = rCopy;
    if (rCopy)
    {
      v6 = +[IDSOTRController sharedInstance];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10055CBB0;
      v19[3] = &unk_100BE03E8;
      v19[4] = self;
      [v6 addOTRSessionBlock:1 sessionBlock:v19 key:self->_otrTokenIdentifier];

      v7 = +[IDSOTRController sharedInstance];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10055CBBC;
      v18[3] = &unk_100BE03E8;
      v18[4] = self;
      [v7 addOTRSessionBlock:2 sessionBlock:v18 key:self->_otrTokenIdentifier];

      if (self->_supportsLegacyOTRSessionToken)
      {
        v8 = +[IDSOTRController sharedInstance];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10055CBC8;
        v17[3] = &unk_100BE03E8;
        v17[4] = self;
        v9 = [NSNumber numberWithInteger:self->_priority];
        [v8 addOTRSessionBlock:1 sessionBlock:v17 key:v9];

        v10 = +[IDSOTRController sharedInstance];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10055CBD4;
        v16[3] = &unk_100BE03E8;
        v16[4] = self;
        v11 = [NSNumber numberWithInteger:self->_priority];
        [v10 addOTRSessionBlock:2 sessionBlock:v16 key:v11];
      }
    }

    [(NSMutableDictionary *)self->_tokenToOTRError removeAllObjects];
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"Disable";
      v14 = !self->_enableOTR;
      priority = self->_priority;
      *buf = 138412802;
      if (!v14)
      {
        v13 = @"Enable";
      }

      v21 = v13;
      v22 = 2048;
      selfCopy = self;
      v24 = 2048;
      v25 = priority;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ OTR for UTunConnection %p, priority %ld", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)classStorageBecameAvailable:(id)available
{
  availableCopy = available;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6 = [v5 queueForPriority:self->_priority];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10055CCAC;
  v8[3] = &unk_100BD6E40;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(v6, v8);
}

- (id)_encryptDataWithOTR:(id)r token:(id)token
{
  rCopy = r;
  tokenCopy = token;
  v19 = 0;
  ids_monotonic_time();
  v9 = v8;
  _encryptionController = [(IDSUTunConnection *)self _encryptionController];
  v11 = [_encryptionController OTREncryptData:rCopy OTRToken:tokenCopy priority:self->_priority error:&v19];

  ids_monotonic_time();
  if (v19)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to encrypt UTunConnection message! Error %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v11 = 0;
  }

  else
  {
    v14 = v12 - v9;
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [rCopy length];
      v17 = [v11 length];
      *buf = 138413058;
      v21 = tokenCopy;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Encrypted message for token %@  original size: %lu  encrypted size: %lu  elapsed: %.6f", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [rCopy length];
      [v11 length];
      _IDSLogV();
    }
  }

  return v11;
}

- (void)_sendOTREncryptedMessage:(id)message useEncryption:(BOOL)encryption streamID:(unsigned __int16)d forPriority:(int64_t)priority flag:(int)flag token:(id)token
{
  priorityCopy = priority;
  dCopy = d;
  encryptionCopy = encryption;
  messageCopy = message;
  tokenCopy = token;
  if (([messageCopy cancelled] & 1) == 0)
  {
    if (self->_shouldUseNWFraming)
    {
      [(IDSSocketPairConnectionProtocol *)self->_socketConnection sendDataMessage:messageCopy canFragment:1];
      goto LABEL_18;
    }

    useSharedOTRSession = self->_useSharedOTRSession;
    underlyingData = [messageCopy underlyingData];
    v18 = underlyingData;
    if (useSharedOTRSession)
    {
      if (!underlyingData)
      {
        goto LABEL_18;
      }

      context = [messageCopy context];
      messageID = [context messageID];

      LODWORD(v31) = messageID;
      v21 = [[IDSSocketPairOTRMessage alloc] initWithVersion:1 encrypted:0 shouldEncrypt:encryptionCopy protectionClass:flag streamID:dCopy priority:priorityCopy sequenceNumber:v31 data:v18];
      topic = [messageCopy topic];
      [v21 setTopic:topic];

      context2 = [messageCopy context];
      [v21 setContext:context2];

      [(IDSSocketPairConnectionProtocol *)self->_socketConnection sendDataMessage:v21 canFragment:1];
LABEL_17:

      goto LABEL_18;
    }

    if (encryptionCopy)
    {
      v24 = [(IDSUTunConnection *)self _encryptDataWithOTR:underlyingData token:tokenCopy];

      v18 = v24;
    }

    if (v18)
    {
      context3 = [messageCopy context];
      messageID2 = [context3 messageID];

      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v35 = tokenCopy;
        v36 = 1024;
        v37 = encryptionCopy;
        v38 = 1024;
        v39 = messageID2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Send OTR message for %{public}@ E:%u SN:%u.", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v32 = encryptionCopy;
          v33 = messageID2;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v33 = messageID2;
            v32 = encryptionCopy;
            _IDSLogV();
          }
        }
      }

      v28 = [[IDSSocketPairOTREncryptedMessage alloc] initWithVersion:1 encrypted:encryptionCopy streamID:dCopy priority:priorityCopy sequenceNumber:messageID2 fileXfer:flag != 0 data:{v18, v32, v33}];
      topic2 = [messageCopy topic];
      [v28 setTopic:topic2];

      context4 = [messageCopy context];
      [v28 setContext:context4];

      [(IDSSocketPairConnectionProtocol *)self->_socketConnection sendDataMessage:v28 canFragment:1];
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)_sendOTREncryptionQueue:(id)queue streamID:(unsigned __int16)d
{
  dCopy = d;
  queueCopy = queue;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:self->_priority];

  v18 = [queueCopy componentsSeparatedByString:@"-"];
  if ([v18 count] > 2)
  {
    v9 = [v18 objectAtIndex:1];
    intValue = [v9 intValue];

    v11 = [v18 objectAtIndex:2];
    intValue2 = [v11 intValue];

    v13 = dCopy != 43258 && self->_enableOTR;
    v14 = [(NSMutableDictionary *)self->_tokenToOTREncryptionQueue objectForKey:queueCopy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(IDSUTunConnection *)self _sendOTREncryptedMessage:*(*(&v19 + 1) + 8 * i) useEncryption:v13 streamID:dCopy forPriority:intValue flag:intValue2 token:queueCopy];
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [v14 removeAllObjects];
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = queueCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_sendOTREncryptionQueue: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_sendPublicKeyEncryptedMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (self->_shouldUseNWFraming)
  {
    [(IDSSocketPairConnectionProtocol *)self->_socketConnection sendDataMessage:messageCopy canFragment:1];
  }

  else
  {
    underlyingData = [messageCopy underlyingData];
    _encryptionController = [(IDSUTunConnection *)self _encryptionController];
    uniqueID = self->_uniqueID;
    priority = self->_priority;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10055DAD8;
    v11[3] = &unk_100BE0410;
    v11[4] = self;
    v12 = underlyingData;
    v13 = v5;
    v10 = underlyingData;
    [_encryptionController legacyPublicKeyEncryptData:v10 withEncryptedAttributes:0 toDeviceID:uniqueID priority:priority completionBlock:v11];
  }
}

- (void)_sendEncryptedMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (messageCopy)
  {
    if ([(IDSUTunConnection *)self _isMagnetConnection])
    {
      context = [messageCopy context];
      topic = [context topic];

      context2 = [messageCopy context];
      priority = [context2 priority];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = (topic | priority) != 0;
      if (!(topic | priority))
      {
        priority = self->_priority;
        topic = @"com.apple.private.alloy.utunconnection";
      }

      if (self->_useSharedOTRSession)
      {
        v12 = +[IDSDServiceController sharedInstance];
        v13 = [v12 serviceWithPushTopic:topic];
        dataProtectionClass = [v13 dataProtectionClass];

        if (self->_useNamedOTRSessionToken)
        {
          v15 = self->_otrTokenIdentifier;
          v16 = [NSString stringWithFormat:@"%@-%u-%1u-%@", @"idsotr", priority, dataProtectionClass, v15];

          goto LABEL_12;
        }

        v17 = [NSString stringWithFormat:@"%@-%u-%1u", @"idsotr", priority, dataProtectionClass];
      }

      else
      {
        v17 = [NSString stringWithFormat:@"%@-%u-%1u", topic, priority, isKindOfClass & 1];
      }

      v16 = v17;
LABEL_12:
      _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
      v19 = [_UTunDeliveryController hashForString:topic];
      unsignedIntValue = [v19 unsignedIntValue];

      if (!v11)
      {
        [(IDSUTunConnection *)self _sendOTREncryptedMessage:messageCopy useEncryption:0 streamID:unsignedIntValue forPriority:priority flag:0 token:v16];
LABEL_33:

        goto LABEL_34;
      }

      tokenToOTREncryptionQueue = self->_tokenToOTREncryptionQueue;
      if (!tokenToOTREncryptionQueue)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v23 = self->_tokenToOTREncryptionQueue;
        self->_tokenToOTREncryptionQueue = Mutable;

        tokenToOTREncryptionQueue = self->_tokenToOTREncryptionQueue;
      }

      v24 = [(NSMutableDictionary *)tokenToOTREncryptionQueue objectForKey:v16];
      v25 = v24;
      if (v24)
      {
        [v24 addObject:messageCopy];
      }

      else
      {
        v25 = objc_alloc_init(NSMutableArray);
        [v25 addObject:messageCopy];
        [(NSMutableDictionary *)self->_tokenToOTREncryptionQueue setObject:v25 forKey:v16];
      }

      if (self->_enableOTR)
      {
        v26 = +[IDSOTRController sharedInstance];
        v27 = [v26 isSessionReady:v16];

        if ((v27 & 1) == 0 && unsignedIntValue != 43258)
        {
          v28 = [(NSMutableDictionary *)self->_tokenToOTRError objectForKey:v16];
          bOOLValue = [v28 BOOLValue];

          if (bOOLValue)
          {
            v30 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44[0] = v16;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "OTR session negotiation for %@ is in progress", buf, 0xCu);
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
          }

          else
          {
            tokenToOTRError = self->_tokenToOTRError;
            v35 = [NSNumber numberWithBool:1];
            [(NSMutableDictionary *)tokenToOTRError setObject:v35 forKey:v16];

            v36 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              LODWORD(v44[0]) = unsignedIntValue;
              WORD2(v44[0]) = 2112;
              *(v44 + 6) = v16;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Waiting OTR session for %04x(%@) ...", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v39 = unsignedIntValue;
              v40 = v16;
              _IDSLogV();
            }

            v37 = [IDSOTRController sharedInstance:v39];
            v38 = IDSDeviceDefaultPairedDeviceUniqueID;
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10055E570;
            v41[3] = &unk_100BE0438;
            v41[4] = self;
            v42 = messageCopy;
            [v37 startOTRNegotiationWithDeviceIfNeeded:v38 token:v16 reset:0 errorHandler:v41];
          }

          goto LABEL_32;
        }

        selfCopy2 = self;
        v33 = v16;
        v31 = unsignedIntValue;
      }

      else
      {
        v31 = unsignedIntValue;
        selfCopy2 = self;
        v33 = v16;
      }

      [(IDSUTunConnection *)selfCopy2 _sendOTREncryptionQueue:v33 streamID:v31];
LABEL_32:

      goto LABEL_33;
    }

    [(IDSUTunConnection *)self _sendPublicKeyEncryptedMessage:messageCopy];
  }

LABEL_34:
}

- (BOOL)_storeIncomingClassCDataMessageIfNeeded:(id)needed topic:(id)topic sequenceNumber:(unsigned int)number
{
  v5 = *&number;
  neededCopy = needed;
  topicCopy = topic;
  v10 = +[IDSOTRKeyStorage sharedInstance];
  [v10 lock];

  v11 = +[IDSOTRKeyStorage sharedInstance];
  v12 = [v11 isSessionStoreAvailableForDataProtectionClass:0];

  v13 = IDSDataProtectionClassStringFromDataProtectionClass();
  v14 = [(NSMutableDictionary *)self->_dataProtectedIncomingMessages objectForKey:v13];
  v15 = v14;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    v15 = 0;
  }

  else if ([v14 containsObject:neededCopy])
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = topicCopy;
      v29 = 1024;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session key store is not available for class C, but %@ message (%u) is already stored.", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v25 = topicCopy;
        v26 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v25 = topicCopy;
          v26 = v5;
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = topicCopy;
      v29 = 1024;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Session key store is not available for class C, holding on to %@ message (%u)", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v25 = topicCopy;
        v26 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v25 = topicCopy;
          v26 = v5;
          _IDSLogV();
        }
      }
    }

    if (!self->_dataProtectedIncomingMessages)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      dataProtectedIncomingMessages = self->_dataProtectedIncomingMessages;
      self->_dataProtectedIncomingMessages = Mutable;
    }

    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    [v15 addObject:{neededCopy, v25, v26}];
    [(NSMutableDictionary *)self->_dataProtectedIncomingMessages setObject:v15 forKey:v13];
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_dataProtectedIncomingMessages;
      *buf = 138412290;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Current pending messages %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v25 = self->_dataProtectedIncomingMessages;
      _IDSLogV();
    }
  }

  v17 = [IDSOTRKeyStorage sharedInstance:v25];
  [v17 unlock];

  return v16 ^ 1;
}

- (BOOL)_storeIncomingClassADataMesageIfNeeded:(id)needed topic:(id)topic sequenceNumber:(unsigned int)number
{
  v5 = *&number;
  neededCopy = needed;
  topicCopy = topic;
  v10 = +[IDSOTRKeyStorage sharedInstance];
  [v10 lock];

  v11 = +[IDSOTRKeyStorage sharedInstance];
  isUnderLock = [v11 isUnderLock];

  v13 = IDSDataProtectionClassStringFromDataProtectionClass();
  v14 = [(NSMutableDictionary *)self->_dataProtectedIncomingMessages objectForKey:v13];
  v15 = v14;
  if (v14)
  {
    isUnderLock = 1;
  }

  if (isUnderLock == 1)
  {
    if ([v14 containsObject:neededCopy])
    {
      v16 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = topicCopy;
        v28 = 1024;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session key store is not available for class A, but %@ message (%u) is already stored.", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = topicCopy;
          v25 = v5;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = topicCopy;
            v25 = v5;
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = topicCopy;
        v28 = 1024;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session key store is not available for class A, holding on to %@ message (%u)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v24 = topicCopy;
          v25 = v5;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v24 = topicCopy;
            v25 = v5;
            _IDSLogV();
          }
        }
      }

      if (!self->_dataProtectedIncomingMessages)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        dataProtectedIncomingMessages = self->_dataProtectedIncomingMessages;
        self->_dataProtectedIncomingMessages = Mutable;
      }

      if (!v15)
      {
        v15 = objc_alloc_init(NSMutableArray);
      }

      [v15 addObject:{neededCopy, v24, v25}];
      [(NSMutableDictionary *)self->_dataProtectedIncomingMessages setObject:v15 forKey:v13];
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_dataProtectedIncomingMessages;
        *buf = 138412290;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Current pending messages %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v24 = self->_dataProtectedIncomingMessages;
        _IDSLogV();
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [IDSOTRKeyStorage sharedInstance:v24];
  [v17 unlock];

  return isUnderLock;
}

- (void)_handleOTRDecryptionSuccess:(id)success
{
  successCopy = success;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  tokenToOTRError = self->_tokenToOTRError;
  if (!tokenToOTRError)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = self->_tokenToOTRError;
    self->_tokenToOTRError = Mutable;

    tokenToOTRError = self->_tokenToOTRError;
  }

  v9 = [(NSMutableDictionary *)tokenToOTRError objectForKey:successCopy];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = successCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Clear OTR error map for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = successCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v14 = successCopy;
          _IDSLogV();
        }
      }
    }

    v12 = self->_tokenToOTRError;
    v13 = [NSNumber numberWithBool:0, v14];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:successCopy];
  }
}

- (void)_handleOTRDecryptionError:(id)error
{
  errorCopy = error;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  tokenToOTRError = self->_tokenToOTRError;
  if (!tokenToOTRError)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = self->_tokenToOTRError;
    self->_tokenToOTRError = Mutable;

    tokenToOTRError = self->_tokenToOTRError;
  }

  v9 = [(NSMutableDictionary *)tokenToOTRError objectForKey:errorCopy];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "OTR session for %@ is in error state, skip negotiation.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v22 = errorCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v22 = errorCopy;
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v12 = self->_tokenToOTRError;
    v13 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:errorCopy];

    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Set OTR error map for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v22 = errorCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v22 = errorCopy;
          _IDSLogV();
        }
      }
    }

    v15 = +[IDSOTRController sharedInstance];
    [v15 startOTRNegotiationWithDeviceIfNeeded:IDSDeviceDefaultPairedDeviceUniqueID token:errorCopy reset:1 errorHandler:0];
  }

  v16 = [errorCopy componentsSeparatedByString:{@"-", v22}];
  if ([v16 count] > 2)
  {
    v18 = [v16 objectAtIndex:0];
    v19 = [v16 objectAtIndex:2];
    intValue = [v19 intValue];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = self->_socketConnection;
    }

    else
    {
      v21 = 0;
    }

    if ([v18 isEqualToString:@"idsotr"])
    {
      [(IDSSocketPairConnectionProtocol *)v21 removePendingMessagesForProtectionClass:intValue];
    }
  }

  else
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "_handleOTRDecryptionError: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (id)_decryptOTREncrtypedMessage:(id)message
{
  messageCopy = message;
  command = [messageCopy command];
  v6 = command;
  if (command - 25 > 0xFFFFFFFD)
  {
    if (command == 23 && self->_useSharedOTRSession)
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v59 = messageCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "*** Recv old OTREncryptedMessage but remote device asserts useSharedOTRSession message %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v45 = messageCopy;
        _IDSLogTransport();
      }
    }

    else if (command != 23)
    {
      encrypted = [messageCopy encrypted];
      versionNumber = [messageCopy versionNumber];
      streamID = [messageCopy streamID];
      priority = [messageCopy priority];
      sequenceNumber = [messageCopy sequenceNumber];
      protectionClass = [messageCopy protectionClass];
      goto LABEL_16;
    }

    versionNumber = [messageCopy versionNumber];
    encrypted = [messageCopy encrypted];
    streamID = [messageCopy streamID];
    priority = [messageCopy priority];
    sequenceNumber = [messageCopy sequenceNumber];
    protectionClass = 0;
LABEL_16:
    _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
    v16 = [_UTunDeliveryController topicForStreamID:streamID];

    if (!self->_supportDynamicServices && !self->_useSharedOTRSession)
    {
      if (!v16 && streamID == 43258)
      {
        if (self->_priority == priority)
        {
          v16 = @"com.apple.private.alloy.utunconnection";
          goto LABEL_23;
        }

LABEL_52:
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          *v59 = v6;
          *&v59[4] = 1024;
          *&v59[6] = sequenceNumber;
          *v60 = 1024;
          *&v60[2] = streamID;
          *&v60[6] = 1024;
          *&v60[8] = versionNumber;
          *&v60[12] = 1024;
          *&v60[14] = priority;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "*** Recv OTR message with unknown topic, command:%d, sequenceNumber:%u, streamID:%04x, version:%u, priority:%d", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }

        v19 = 0;
        v16 = 0;
        goto LABEL_57;
      }

      if (!v16)
      {
        goto LABEL_52;
      }
    }

LABEL_23:
    if (v6 == 23)
    {
      v17 = +[IDSDServiceController sharedInstance];
      v18 = [v17 serviceWithPushTopic:v16];
      LODWORD(protectionClass) = [v18 dataProtectionClass];

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%u-%1u", v16, priority, [messageCopy fileXfer]);
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *v59 = v19;
        *&v59[8] = 1024;
        *v60 = encrypted;
        *&v60[4] = 1024;
        *&v60[6] = sequenceNumber;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Recv OTR message for %{public}@ E:%u SN:%u.", buf, 0x18u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v47 = encrypted;
          v49 = sequenceNumber;
          v45 = v19;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v49 = sequenceNumber;
            v45 = v19;
            v47 = encrypted;
            _IDSLogV();
          }
        }
      }
    }

    else if (self->_useSharedOTRSession)
    {
      if (!self->_useNamedOTRSessionToken)
      {
        v19 = [NSString stringWithFormat:@"%@-%u-%1u", @"idsotr", priority, protectionClass];
        if (encrypted)
        {
LABEL_35:
          if (!protectionClass && [(IDSUTunConnection *)self _storeIncomingClassCDataMessageIfNeeded:messageCopy topic:v16 sequenceNumber:sequenceNumber])
          {
            v22 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v59 = v19;
              *&v59[8] = 1024;
              *v60 = sequenceNumber;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Stored class C OTR message for %@, sequneceNumber:%u.", buf, 0x12u);
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

LABEL_57:
            v8 = 0;
LABEL_84:

            goto LABEL_85;
          }

          v23 = [IDSOTRController sharedInstance:v45];
          v24 = [v23 isSessionReady:v19];
          if (streamID == 43258)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          if ((v25 & 1) != 0 || (+[IDSOTRController sharedInstance](IDSOTRController, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 hasMessagableOTRSessionForToken:v19], v26, v27))
          {
            v57 = 0;
            data = [messageCopy data];
            ids_monotonic_time();
            v30 = v29;
            _encryptionController = [(IDSUTunConnection *)self _encryptionController];
            data2 = [_encryptionController OTRDecryptData:data OTRToken:v19 priority:priority error:&v57];

            ids_monotonic_time();
            if (!v57)
            {
              v35 = v33 - v30;
              v36 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = [data length];
                v38 = [data2 length];
                *buf = 138413058;
                *v59 = v19;
                *&v59[8] = 2048;
                *v60 = v37;
                *&v60[8] = 2048;
                *&v60[10] = v38;
                v61 = 2048;
                v62 = v35;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Decrypted message for %@  original size: %lu  unencrypted size: %lu  elapsed: %.6f", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v51 = v35;
                v48 = [data length];
                v50 = [data2 length];
                v46 = v19;
                _IDSLogV();
              }

              if ((v25 & 1) == 0)
              {
                v39 = +[IDSOTRController sharedInstance];
                [v39 setSessionReady:v19];
              }

              v40 = [IDSDaemonPriorityQueueController sharedInstance:v46];
              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v55[2] = sub_1005601F4;
              v55[3] = &unk_100BD6E40;
              v55[4] = self;
              v56 = v19;
              [v40 performBlockWithPriority:v55 priority:self->_priority];

              goto LABEL_83;
            }
          }

          else
          {
            v41 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v59 = v19;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "*** OTR session for %@ is not ready.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v46 = v19;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v46 = v19;
                  _IDSLogV();
                }
              }
            }

            if (protectionClass == 1 && [(IDSUTunConnection *)self _storeIncomingClassADataMesageIfNeeded:messageCopy topic:v16 sequenceNumber:sequenceNumber])
            {
              v42 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v59 = v19;
                *&v59[8] = 1024;
                *v60 = sequenceNumber;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Stored class A OTR message for %@ sequenceNumber:%u, ignore decryption failure.", buf, 0x12u);
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

              data2 = 0;
              goto LABEL_83;
            }

            data2 = 0;
          }

          v43 = +[IDSDaemonPriorityQueueController sharedInstance];
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100560200;
          v53[3] = &unk_100BD6E40;
          v53[4] = self;
          v54 = v19;
          [v43 performBlockWithPriority:v53 priority:self->_priority];

LABEL_83:
          v8 = data2;
          goto LABEL_84;
        }

LABEL_51:
        data2 = [messageCopy data];
        goto LABEL_83;
      }

      v21 = self->_otrTokenIdentifier;
      v19 = [NSString stringWithFormat:@"%@-%u-%1u-%@", @"idsotr", priority, protectionClass, v21];
    }

    else
    {
      v19 = 0;
    }

    if (encrypted)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v59 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Attempt to decrypt invalid message type %u.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  v8 = 0;
LABEL_85:

  return v8;
}

- (void)_decryptPublicKeyEncryptedMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  data = [message data];
  _encryptionController = [(IDSUTunConnection *)self _encryptionController];
  uniqueID = self->_uniqueID;
  priority = self->_priority;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100560308;
  v13[3] = &unk_100BE0460;
  v13[4] = self;
  v14 = data;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = data;
  [_encryptionController legacyPublicKeyDecryptData:v12 toDeviceID:uniqueID priority:priority completionBlock:v13];
}

- (void)_optionallyDecryptMessage:(id)message completionBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  v7 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v7 assertRunningWithPriority:self->_priority];

  command = [messageCopy command];
  v9 = command;
  if (command == 23 || command == 5)
  {
    if ([(IDSUTunConnection *)self _isMagnetConnection])
    {
      if (v9 == 5)
      {
        [messageCopy data];
      }

      else
      {
        [(IDSUTunConnection *)self _decryptOTREncrtypedMessage:messageCopy];
      }
      v10 = ;
      blockCopy[2](blockCopy, v10);
    }

    else
    {
      [(IDSUTunConnection *)self _decryptPublicKeyEncryptedMessage:messageCopy completionBlock:blockCopy];
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)dropDisallowedMessages
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  [(IDSUTunConnection *)self _flushMessagesAll:0 response:20];
}

- (void)flushAllMessagesForReason:(int64_t)reason
{
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = 14;
  }

  [(IDSUTunConnection *)self _flushMessagesAll:1 response:reasonCopy];
}

- (void)_flushMessagesAll:(BOOL)all response:(int64_t)response
{
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = kIDSDefaultPairedDeviceID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Flush all messages for peer %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v45 = kIDSDefaultPairedDeviceID;
    _IDSLogV();
  }

  _copyForEnumerating = [(NSMutableArray *)self->_sendingMessages _copyForEnumerating];
  v47 = objc_alloc_init(NSMutableIndexSet);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = _copyForEnumerating;
  v49 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v49)
  {
    v52 = 0;
    v48 = *v73;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v73 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v72 + 1) + 8 * i);
        context = [v9 context];
        v11 = context;
        if (all || ([context topic], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[IDSUTunConnection _messageIsAllowedToSendMessageOnTopic:](self, "_messageIsAllowedToSendMessageOnTopic:", v12), v12, (v13 & 1) == 0))
        {
          if ([(IDSUTunConnection *)self _shouldAWDLogMessage:v11])
          {
            v14 = [IDSLocalMessageDeliveryConnectionResetMetric alloc];
            awdTopic = [v11 awdTopic];
            v16 = [v14 initWithService:awdTopic isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(v11 deliveryError:"sentMessageDataSize") RTT:-[IDSUTunConnection _currentLink](self priority:{"_currentLink"), 102, 0, objc_msgSend(v11, "priority")}];

            v17 = +[IDSCoreAnalyticsLogger defaultLogger];
            [v17 logMetric:v16];

            v18 = +[IDSAWDLogging sharedInstance];
            awdTopic2 = [v11 awdTopic];
            [v18 messageDeliveredForService:awdTopic2 isToDefaultPairedDevice:-[IDSUTunConnection _isMagnetConnection](self messageSize:"_isMagnetConnection") linkType:objc_msgSend(v11 deliveryError:"sentMessageDataSize") RTT:-[IDSUTunConnection _currentLink](self priority:{"_currentLink"), 102, 0, objc_msgSend(v11, "priority")}];
          }

          [(IDSUTunConnection *)self _removeMessageFromStatistics:v11];
          if (response == 31 || ([v11 completionBlock], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v25 = 0;
          }

          else
          {
            toDeviceID = [v11 toDeviceID];
            v22 = [(NSString *)self->_cbuuid copy];
            rtt = self->_rtt;
            v24 = +[IDSDaemonPriorityQueueController sharedInstance];
            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_100561120;
            v65[3] = &unk_100BE0488;
            responseCopy = response;
            v66 = v22;
            v67 = toDeviceID;
            v71 = rtt;
            v68 = v11;
            v25 = v20;
            v69 = v25;
            v26 = toDeviceID;
            v27 = v22;
            [v24 performBlockMainQueue:v65];
          }

          [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:v11];
          [v9 setContext:0];
          [v9 setCancelled:1];
          [v47 addIndex:v52];

          ++v52;
        }
      }

      v49 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v49);
  }

  [(NSMutableArray *)self->_sendingMessages removeObjectsAtIndexes:v47];
  messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
  _copyForEnumerating2 = [messages _copyForEnumerating];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = _copyForEnumerating2;
  v30 = [v53 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v30)
  {
    v31 = *v62;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v53);
        }

        v33 = *(*(&v61 + 1) + 8 * j);
        if (!all)
        {
          topic = [*(*(&v61 + 1) + 8 * j) topic];
          v35 = [(IDSUTunConnection *)self _messageIsAllowedToSendMessageOnTopic:topic];

          if (v35)
          {
            continue;
          }
        }

        [(IDSUTunConnection *)self _removeMessageFromStatistics:v33];
        if (response == 31)
        {
          completionBlock = 0;
        }

        else
        {
          completionBlock = [v33 completionBlock];
          if (completionBlock)
          {
            toDeviceID2 = [v33 toDeviceID];
            v38 = [(NSString *)self->_cbuuid copy];
            v39 = self->_rtt;
            v40 = +[IDSDaemonPriorityQueueController sharedInstance];
            v54[0] = _NSConcreteStackBlock;
            v54[1] = 3221225472;
            v54[2] = sub_10056123C;
            v54[3] = &unk_100BE0488;
            v60 = v39;
            v55 = toDeviceID2;
            v56 = v38;
            responseCopy2 = response;
            v57 = v33;
            completionBlock = completionBlock;
            v58 = completionBlock;
            v41 = v38;
            v42 = toDeviceID2;
            [v40 performBlockMainQueue:v54];
          }
        }

        [v33 setUnderlyingSocketPairMessage:0];
        [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:v33];
      }

      v30 = [v53 countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v30);
  }

  fallbackMessages = self->_fallbackMessages;
  self->_fallbackMessages = 0;

  tokenToOTREncryptionQueue = self->_tokenToOTREncryptionQueue;
  self->_tokenToOTREncryptionQueue = 0;
}

- (int64_t)_socketToNiceCommand:(unsigned __int8)command
{
  if (command > 0x39u)
  {
    return -1;
  }

  else
  {
    return qword_1009ABBB0[command];
  }
}

- (void)sendAckForMessageWithSequenceNumber:(unsigned int)number
{
  v3 = *&number;
  v5 = [[IDSSocketPairAckMessage alloc] initWithSequenceNumber:*&number];
  [(IDSUTunConnection *)self setEnabled:1];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Broadcast: Sending ack %@ for received sequence number %d", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = v5;
    v8 = v3;
    _IDSLogTransport();
  }

  [(IDSUTunConnection *)self _sendSocketMessage:v5 ignoreSequenceNumber:1, v7, v8];
}

- (void)_sendAckForMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100561574;
  v6[3] = &unk_100BDBEE0;
  v6[4] = self;
  [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v6];
}

- (void)_sendExpiredAckForMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100561638;
  v6[3] = &unk_100BDBEE0;
  v6[4] = self;
  [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v6];
}

- (void)_processMessage:(id)message withSequenceNumberBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  if (blockCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    blockCopy[2](blockCopy, [messageCopy sequenceNumber]);
  }
}

- (void)_noteReceivedResourceTransferUUID:(id)d
{
  dCopy = d;
  receivedResourceTransferUUIDs = self->_receivedResourceTransferUUIDs;
  if (!receivedResourceTransferUUIDs)
  {
    v6 = +[NSMutableSet set];
    v7 = +[NSMutableSet set];
    v8 = [IMPair pairWithFirst:v6 second:v7];
    v9 = self->_receivedResourceTransferUUIDs;
    self->_receivedResourceTransferUUIDs = v8;

    receivedResourceTransferUUIDs = self->_receivedResourceTransferUUIDs;
  }

  first = [(IMPair *)receivedResourceTransferUUIDs first];
  second = [(IMPair *)self->_receivedResourceTransferUUIDs second];
  if (([first containsObject:dCopy] & 1) == 0 && (objc_msgSend(second, "containsObject:", dCopy) & 1) == 0)
  {
    v12 = [first count];
    v13 = +[IDSFoundationLog UTunConnection];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 < 0x64)
    {
      if (v14)
      {
        *buf = 138412290;
        v19 = dCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received UUID list adding message UUID %@", buf, 0xCu);
      }

      [first addObject:dCopy];
    }

    else
    {
      if (v14)
      {
        *buf = 138412546;
        v19 = dCopy;
        v20 = 2112;
        v21 = second;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received UUID list adding message UUID %@, purging old UUIDs %@", buf, 0x16u);
      }

      v15 = [NSMutableSet setWithObjects:dCopy, 0];
      v16 = [IMPair pairWithFirst:v15 second:first];
      v17 = self->_receivedResourceTransferUUIDs;
      self->_receivedResourceTransferUUIDs = v16;

      second = first;
      first = v15;
    }
  }
}

- (BOOL)_resourceTransferUUIDAlreaadyReceived:(id)received
{
  receivedCopy = received;
  first = [(IMPair *)self->_receivedResourceTransferUUIDs first];
  if ([first containsObject:receivedCopy])
  {
    v6 = 1;
  }

  else
  {
    second = [(IMPair *)self->_receivedResourceTransferUUIDs second];
    v6 = [second containsObject:receivedCopy];
  }

  return v6;
}

- (void)_processIncomingResourceTransferMessage:(id)message messageUUID:(id)d streamID:(unsigned __int16)iD topic:(id)topic wantsAppAck:(BOOL)ack expectsPeerResponse:(BOOL)response peerResponseIdentifier:(id)identifier isDefaultPairedDevice:(BOOL)self0 didWakeHint:(BOOL)self1
{
  iDCopy = iD;
  messageCopy = message;
  dCopy = d;
  topicCopy = topic;
  v136 = messageCopy;
  identifierCopy = identifier;
  if (dCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ackCopy = ack;
      v19 = messageCopy;
      v135 = v19;
      if (self->_resumeResourceTransfers)
      {
        type = [v19 type];
        v21 = 0;
        if (type > 1)
        {
          if (type == 2)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(totalBytesReceived4) = 0;
            v174 = 0;
            v175 = &v174;
            v176 = 0x2020000000;
            v177 = 0x7FFFFFFFFFFFFFFFLL;
            sendingMessages = self->_sendingMessages;
            v168[0] = _NSConcreteStackBlock;
            v168[1] = 3221225472;
            v168[2] = sub_1005639A0;
            v168[3] = &unk_100BE04D8;
            v51 = dCopy;
            v169 = v51;
            v134 = v135;
            v170 = v134;
            selfCopy = self;
            v172 = &v174;
            v173 = buf;
            [(NSMutableArray *)sendingMessages enumerateObjectsUsingBlock:v168];
            if (v175[3] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(NSMutableArray *)self->_sendingMessages removeObjectAtIndex:?];
            }

            if ((*(*&buf[8] + 24) & 1) == 0)
            {
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              messages = [(IDSLocalDeliveryQueue *)self->_deliveryQueue messages];
              v53 = [messages countByEnumeratingWithState:&v164 objects:v191 count:16];
              if (v53)
              {
                v54 = *v165;
                while (2)
                {
                  for (i = 0; i != v53; i = i + 1)
                  {
                    if (*v165 != v54)
                    {
                      objc_enumerationMutation(messages);
                    }

                    v56 = *(*(&v164 + 1) + 8 * i);
                    messageUUID = [v56 messageUUID];
                    if (messageUUID)
                    {
                      messageUUID2 = [v56 messageUUID];
                      v59 = [messageUUID2 isEqualToString:v51];

                      if (v59)
                      {
                        *(*&buf[8] + 24) = 1;
                        socketPairMessage = [v56 socketPairMessage];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v78 = socketPairMessage;
                          byteOffset = [v134 byteOffset];
                          v80 = OSLogHandleForTransportCategory();
                          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                          {
                            byteOffset2 = [v134 byteOffset];
                            nextByte = [v78 nextByte];
                            *v185 = 138412802;
                            v186 = v51;
                            v187 = 2048;
                            v188 = byteOffset2;
                            v189 = 2048;
                            v190 = nextByte;
                            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage got resume message for %@ @ %llu (was sending %llu)", v185, 0x20u);
                          }

                          if (os_log_shim_legacy_logging_enabled())
                          {
                            if (_IDSShouldLogTransport())
                            {
                              byteOffset3 = [v134 byteOffset];
                              nextByte2 = [v78 nextByte];
                              _IDSLogTransport();
                              if (_IDSShouldLog())
                              {
                                [v134 byteOffset];
                                [v78 nextByte];
                                _IDSLogV();
                              }
                            }
                          }

                          if (byteOffset)
                          {
                            [v78 setNextByte:byteOffset];
                          }

                          else
                          {
                            [v78 reset];
                          }
                        }

                        else
                        {
                          v83 = OSLogHandleForTransportCategory();
                          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                          {
                            byteOffset4 = [v134 byteOffset];
                            *v185 = 138412802;
                            v186 = v51;
                            v187 = 2048;
                            v188 = byteOffset4;
                            v189 = 2112;
                            v190 = socketPairMessage;
                            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage got resume message for %@ @ %llu (ignoring nonmatching message %@)", v185, 0x20u);
                          }

                          if (os_log_shim_legacy_logging_enabled())
                          {
                            if (_IDSShouldLogTransport())
                            {
                              byteOffset5 = [v134 byteOffset];
                              _IDSLogTransport();
                              if (_IDSShouldLog())
                              {
                                [v134 byteOffset];
                                _IDSLogV();
                              }
                            }
                          }
                        }

                        goto LABEL_153;
                      }
                    }
                  }

                  v53 = [messages countByEnumeratingWithState:&v164 objects:v191 count:16];
                  if (v53)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_153:
            }

            if ((*(*&buf[8] + 24) & 1) == 0)
            {
              v109 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                byteOffset6 = [v134 byteOffset];
                *v185 = 138412546;
                v186 = v51;
                v187 = 2048;
                v188 = byteOffset6;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage got resume message for %@ @ %llu (sender not found)", v185, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  byteOffset7 = [v134 byteOffset];
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    [v134 byteOffset];
                    _IDSLogV();
                  }
                }
              }
            }

            _Block_object_dispose(&v174, 8);
            _Block_object_dispose(buf, 8);
          }

          else
          {
            if (type != 3)
            {
              goto LABEL_163;
            }

            cancelReason = [v135 cancelReason];
            v21 = [(NSMutableDictionary *)self->_incomingResourceTransfers objectForKey:dCopy];
            if (v21)
            {
              v30 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = dCopy;
                *&buf[12] = 1024;
                *&buf[14] = cancelReason;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Got cancel message for incoming file %@ cancelReason %u", buf, 0x12u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v124 = dCopy;
                  totalBytesReceived2 = cancelReason;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v124 = dCopy;
                    totalBytesReceived2 = cancelReason;
                    _IDSLogV();
                  }
                }
              }

              [v21 abortTransfer];
              [(NSMutableDictionary *)self->_incomingResourceTransfers removeObjectForKey:dCopy];
              goto LABEL_163;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            totalBytesReceived4 = sub_10000AA34;
            v183 = sub_10000BC8C;
            v184 = 0;
            v174 = 0;
            v175 = &v174;
            v176 = 0x2020000000;
            v177 = 0x7FFFFFFFFFFFFFFFLL;
            v60 = self->_sendingMessages;
            v158[0] = _NSConcreteStackBlock;
            v158[1] = 3221225472;
            v158[2] = sub_100563C20;
            v158[3] = &unk_100BE0500;
            v161 = buf;
            v61 = dCopy;
            v163 = cancelReason;
            v159 = v61;
            selfCopy2 = self;
            v162 = &v174;
            [(NSMutableArray *)v60 enumerateObjectsUsingBlock:v158];
            if (v175[3] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(NSMutableArray *)self->_sendingMessages removeObjectAtIndex:?];
            }

            if (*(*&buf[8] + 40) || (-[IDSLocalDeliveryQueue messages](self->_deliveryQueue, "messages"), v62 = objc_claimAutoreleasedReturnValue(), v154[0] = _NSConcreteStackBlock, v154[1] = 3221225472, v154[2] = sub_100563E4C, v154[3] = &unk_100BE0528, v63 = v61, v155 = v63, v156 = &v174, v157 = buf, [v62 enumerateObjectsUsingBlock:v154], v62, v155, *(*&buf[8] + 40)))
            {
              v64 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *v185 = 138412546;
                v186 = v61;
                v187 = 1024;
                LODWORD(v188) = cancelReason;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Got cancel message for outgoing file %@ cancelReason %u", v185, 0x12u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v124 = v61;
                  totalBytesReceived2 = cancelReason;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v124 = v61;
                    totalBytesReceived2 = cancelReason;
                    _IDSLogV();
                  }
                }
              }

              context = [*(*&buf[8] + 40) context];
              completionBlock = [context completionBlock];
              v67 = +[IDSDevicePolicyController sharedInstance];
              v68 = [v67 shouldBlackOutDeviceWithCbuuid:self->_cbuuid];

              rtt = self->_rtt;
              v70 = +[IDSDaemonPriorityQueueController sharedInstance];
              v148[0] = _NSConcreteStackBlock;
              v148[1] = 3221225472;
              v148[2] = sub_100563F38;
              v148[3] = &unk_100BE0550;
              v152 = cancelReason;
              v71 = context;
              v149 = v71;
              v151 = rtt;
              v153 = v68;
              v72 = completionBlock;
              v150 = v72;
              [v70 performBlockMainQueue:v148];
            }

            else
            {
              v111 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                *v185 = 138412546;
                v186 = v63;
                v187 = 1024;
                LODWORD(v188) = cancelReason;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage got cancel message for %@ cancelReason %u, but no sender or receiver found", v185, 0x12u);
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
            }

            _Block_object_dispose(&v174, 8);
            _Block_object_dispose(buf, 8);
          }
        }

        else
        {
          if (type)
          {
            if (type == 1)
            {
              if ([(IDSUTunConnection *)self _resourceTransferUUIDAlreaadyReceived:dCopy])
              {
                v22 = +[IDSFoundationLog UTunConnection];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = dCopy;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Duplicate file transfer setup detected {duplicateUUID: %@}", buf, 0xCu);
                }

                v23 = [IDSSocketPairResourceTransferMessage cancelMessageWithSequenceNumber:0 streamID:iDCopy messageUUID:dCopy cancelReason:6];
                v24 = v23;
                if (self->_supportDynamicServices)
                {
                  if (self->_supportDynamicServicesOptimization)
                  {
                    [v23 setStreamID:1];
                  }

                  else
                  {
                    [v23 setTopic:topicCopy];
                  }
                }

                resettingIncomingResourceTransfers = self->_resettingIncomingResourceTransfers;
                if (!resettingIncomingResourceTransfers)
                {
                  v86 = objc_alloc_init(NSMutableSet);
                  v87 = self->_resettingIncomingResourceTransfers;
                  self->_resettingIncomingResourceTransfers = v86;

                  resettingIncomingResourceTransfers = self->_resettingIncomingResourceTransfers;
                }

                [(NSMutableSet *)resettingIncomingResourceTransfers addObject:dCopy];
                [(IDSUTunConnection *)self _sendSocketMessage:v24 ignoreSequenceNumber:1];
              }

              [(NSMutableSet *)self->_resettingIncomingResourceTransfers removeObject:dCopy];
              v21 = [(NSMutableDictionary *)self->_incomingResourceTransfers objectForKey:dCopy];
              if (v21)
              {
                if (([(NSMutableSet *)self->_resumingIncomingResourceTransfers containsObject:dCopy]& 1) == 0)
                {
                  v88 = +[IDSSocketPairResourceTransferMessage resumeMessageWithSequenceNumber:streamID:messageUUID:nextByteOffset:](IDSSocketPairResourceTransferMessage, "resumeMessageWithSequenceNumber:streamID:messageUUID:nextByteOffset:", 0, iDCopy, dCopy, [v21 totalBytesReceived]);
                  v89 = v88;
                  if (self->_supportDynamicServices)
                  {
                    if (self->_supportDynamicServicesOptimization)
                    {
                      [v88 setStreamID:1];
                    }

                    else
                    {
                      [v88 setTopic:topicCopy];
                    }
                  }

                  [(IDSUTunConnection *)self _sendSocketMessage:v89 ignoreSequenceNumber:1];
                  resumingIncomingResourceTransfers = self->_resumingIncomingResourceTransfers;
                  if (!resumingIncomingResourceTransfers)
                  {
                    v104 = objc_alloc_init(NSMutableSet);
                    v105 = self->_resumingIncomingResourceTransfers;
                    self->_resumingIncomingResourceTransfers = v104;

                    resumingIncomingResourceTransfers = self->_resumingIncomingResourceTransfers;
                  }

                  [(NSMutableSet *)resumingIncomingResourceTransfers addObject:dCopy];
                  v106 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                  {
                    totalBytesReceived = [v21 totalBytesReceived];
                    *buf = 138412546;
                    *&buf[4] = dCopy;
                    *&buf[12] = 2048;
                    *&buf[14] = totalBytesReceived;
                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage already receiving message %@ @%llu", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      v124 = dCopy;
                      totalBytesReceived2 = [v21 totalBytesReceived];
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        totalBytesReceived3 = [v21 totalBytesReceived];
                        v124 = dCopy;
                        totalBytesReceived2 = totalBytesReceived3;
                        _IDSLogV();
                      }
                    }
                  }
                }
              }

              else
              {
                LOBYTE(v174) = 0;
                if (IMGetDomainBoolForKey())
                {
                  LOBYTE(v174) = IMGetCachedDomainIntForKeyWithDefaultValue();
                }

                else
                {
                  v21 = [[IDSSocketPairResourceTransferReceiver alloc] initWithMessage:v135 resumeResourceTransfers:1 receiverError:&v174];
                  expiryDate = [v21 expiryDate];
                  [expiryDate timeIntervalSinceNow];
                  v92 = v91;

                  v93 = dispatch_time(0, (v92 * 1000000000.0));
                  v94 = +[IDSDaemonPriorityQueueController sharedInstance];
                  v95 = [v94 queueForPriority:self->_priority];
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_100563814;
                  block[3] = &unk_100BE04B0;
                  block[4] = self;
                  key = dCopy;
                  v179 = key;
                  v180 = v92;
                  dispatch_after(v93, v95, block);

                  if (v21)
                  {
                    [(NSMutableSet *)self->_resumingIncomingResourceTransfers removeObject:key];
                    if (![(NSMutableSet *)self->_resumingIncomingResourceTransfers count])
                    {
                      v96 = self->_resumingIncomingResourceTransfers;
                      self->_resumingIncomingResourceTransfers = 0;
                    }

                    if (!self->_incomingResourceTransfers)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      incomingResourceTransfers = self->_incomingResourceTransfers;
                      self->_incomingResourceTransfers = Mutable;
                    }

                    CFDictionarySetValue(self->_incomingResourceTransfers, key, v21);
                    v99 = 1;
LABEL_187:
                    if (![(NSMutableSet *)self->_resettingIncomingResourceTransfers count:v124])
                    {
                      v119 = self->_resettingIncomingResourceTransfers;
                      self->_resettingIncomingResourceTransfers = 0;
                    }

                    if ((v99 & 1) == 0)
                    {
                      goto LABEL_163;
                    }

                    goto LABEL_42;
                  }
                }

                v100 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = dCopy;
                  *&buf[12] = 1024;
                  *&buf[14] = v174;
                  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage could not create receiver from message %@ (reason %d)", buf, 0x12u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v124 = dCopy;
                    totalBytesReceived2 = v174;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v124 = dCopy;
                      totalBytesReceived2 = v174;
                      _IDSLogV();
                    }
                  }
                }

                if (v174)
                {
                  v101 = [IDSSocketPairResourceTransferMessage cancelMessageWithSequenceNumber:0 streamID:iDCopy messageUUID:dCopy cancelReason:?];
                  v102 = v101;
                  if (self->_supportDynamicServices)
                  {
                    if (self->_supportDynamicServicesOptimization)
                    {
                      [v101 setStreamID:1];
                    }

                    else
                    {
                      [v101 setTopic:topicCopy];
                    }
                  }

                  v116 = self->_resettingIncomingResourceTransfers;
                  if (!v116)
                  {
                    v117 = objc_alloc_init(NSMutableSet);
                    v118 = self->_resettingIncomingResourceTransfers;
                    self->_resettingIncomingResourceTransfers = v117;

                    v116 = self->_resettingIncomingResourceTransfers;
                  }

                  [(NSMutableSet *)v116 addObject:dCopy, v124, totalBytesReceived2];
                  [(IDSUTunConnection *)self _sendSocketMessage:v102 ignoreSequenceNumber:1];
                }

                v21 = 0;
              }

              v99 = 0;
              goto LABEL_187;
            }

LABEL_163:

            goto LABEL_164;
          }

          v46 = [(NSMutableDictionary *)self->_incomingResourceTransfers objectForKey:dCopy];
          v21 = v46;
          if (v46)
          {
            v47 = [v46 appendMessage:v135 receiverError:0];
            v48 = self->_resumingIncomingResourceTransfers;
            if (!v47)
            {
              if (([(NSMutableSet *)v48 containsObject:dCopy]& 1) == 0)
              {
                v75 = +[IDSSocketPairResourceTransferMessage resumeMessageWithSequenceNumber:streamID:messageUUID:nextByteOffset:](IDSSocketPairResourceTransferMessage, "resumeMessageWithSequenceNumber:streamID:messageUUID:nextByteOffset:", 0, iDCopy, dCopy, [v21 totalBytesReceived]);
                v76 = v75;
                if (self->_supportDynamicServices)
                {
                  if (self->_supportDynamicServicesOptimization)
                  {
                    [v75 setStreamID:1];
                  }

                  else
                  {
                    [v75 setTopic:topicCopy];
                  }
                }

                [(IDSUTunConnection *)self _sendSocketMessage:v76 ignoreSequenceNumber:1];
                v120 = self->_resumingIncomingResourceTransfers;
                if (!v120)
                {
                  v121 = objc_alloc_init(NSMutableSet);
                  v122 = self->_resumingIncomingResourceTransfers;
                  self->_resumingIncomingResourceTransfers = v121;

                  v120 = self->_resumingIncomingResourceTransfers;
                }

                [(NSMutableSet *)v120 addObject:dCopy];
                v123 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = dCopy;
                  *&buf[12] = 2048;
                  *&buf[14] = [v135 byteOffset];
                  *&buf[22] = 2048;
                  totalBytesReceived4 = [v21 totalBytesReceived];
                  _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage received %@ @ incorrect offset %llu (should be @%llu)", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    byteOffset8 = [v135 byteOffset];
                    totalBytesReceived5 = [v21 totalBytesReceived];
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      [v135 byteOffset];
                      [v21 totalBytesReceived];
                      _IDSLogV();
                    }
                  }
                }
              }

              goto LABEL_163;
            }

            [(NSMutableSet *)v48 removeObject:dCopy];
            if (![(NSMutableSet *)self->_resumingIncomingResourceTransfers count])
            {
              v49 = self->_resumingIncomingResourceTransfers;
              self->_resumingIncomingResourceTransfers = 0;
            }

            goto LABEL_42;
          }

          if (([(NSMutableSet *)self->_resettingIncomingResourceTransfers containsObject:dCopy]& 1) == 0)
          {
            v73 = [IDSSocketPairResourceTransferMessage resumeMessageWithSequenceNumber:0 streamID:iDCopy messageUUID:dCopy nextByteOffset:0];
            v74 = v73;
            if (self->_supportDynamicServices)
            {
              if (self->_supportDynamicServicesOptimization)
              {
                [v73 setStreamID:1];
              }

              else
              {
                [v73 setTopic:topicCopy];
              }
            }

            [(IDSUTunConnection *)self _sendSocketMessage:v74 ignoreSequenceNumber:1];
            v112 = self->_resettingIncomingResourceTransfers;
            if (!v112)
            {
              v113 = objc_alloc_init(NSMutableSet);
              v114 = self->_resettingIncomingResourceTransfers;
              self->_resettingIncomingResourceTransfers = v113;

              v112 = self->_resettingIncomingResourceTransfers;
            }

            [(NSMutableSet *)v112 addObject:dCopy];
            v115 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = dCopy;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage cannot find receiver for message %@ - asking sender to reset", buf, 0xCu);
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
          }
        }

LABEL_162:
        v21 = 0;
        goto LABEL_163;
      }

      v27 = [(NSMutableDictionary *)self->_incomingResourceTransfers objectForKey:dCopy];
      v21 = v27;
      if (v27)
      {
        if ([v27 appendMessage:v135 receiverError:0])
        {
          goto LABEL_42;
        }

        [v21 abortTransfer];
        v28 = [[IDSSocketPairResourceTransferReceiver alloc] initWithMessage:v135 resumeResourceTransfers:0 receiverError:0];

        v21 = v28;
        if (!v28)
        {
LABEL_41:
          if (!v21)
          {
            v45 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v135;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage could not create receiver from message %@", buf, 0xCu);
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

            goto LABEL_162;
          }

LABEL_42:
          finalizedMessageDictionaryIfDone = [v21 finalizedMessageDictionaryIfDone];
          if (finalizedMessageDictionaryIfDone)
          {
            v34 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage received and completed", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            -[IDSUTunConnection _addIncomingMessageSize:forTopic:](self, "_addIncomingMessageSize:forTopic:", [v21 totalBytesReceived], topicCopy);
            v35 = [IDSLocalDeliveryMessageReceivedMetric alloc];
            data = [v135 data];
            v37 = [v35 initWithService:topicCopy isFromDefaultPairedDevice:device messageSize:objc_msgSend(data linkType:"length") priority:{-[IDSUTunConnection _currentLink](self, "_currentLink"), self->_priority}];

            v38 = +[IDSCoreAnalyticsLogger defaultLogger];
            [v38 logMetric:v37];

            v39 = +[IDSAWDLogging sharedInstance];
            data2 = [v135 data];
            [v39 messageReceivedForService:topicCopy isFromDefaultPairedDevice:device messageSize:objc_msgSend(data2 linkType:"length") priority:{-[IDSUTunConnection _currentLink](self, "_currentLink"), self->_priority}];

            v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [v135 command]));
            v139[0] = _NSConcreteStackBlock;
            v139[1] = 3221225472;
            v139[2] = sub_100564054;
            v139[3] = &unk_100BE0578;
            v139[4] = self;
            v140 = finalizedMessageDictionaryIfDone;
            v141 = topicCopy;
            v142 = v41;
            v145 = ackCopy;
            responseCopy = response;
            v143 = identifierCopy;
            v42 = dCopy;
            v144 = v42;
            hintCopy = hint;
            v43 = v41;
            [(IDSUTunConnection *)self _processMessage:v135 withSequenceNumberBlock:v139];
            [(NSMutableDictionary *)self->_incomingResourceTransfers removeObjectForKey:v42];
          }

          else
          {
            v44 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage received - waiting for more", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }

          goto LABEL_163;
        }
      }

      else
      {
        v21 = [[IDSSocketPairResourceTransferReceiver alloc] initWithMessage:v135 resumeResourceTransfers:0 receiverError:0];
        if (!self->_incomingResourceTransfers)
        {
          v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v32 = self->_incomingResourceTransfers;
          self->_incomingResourceTransfers = v31;
        }

        if (!v21)
        {
          goto LABEL_41;
        }
      }

      CFDictionarySetValue(self->_incomingResourceTransfers, dCopy, v21);
      goto LABEL_41;
    }

    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage should be IDSSocketPairResourceTransferMessage", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage requires a messageUUID", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_17:
      _IDSLogV();
    }
  }

LABEL_164:
}

- (void)_processIncomingDataMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v5 assertRunningWithPriority:self->_priority];

  if ([(IDSUTunConnection *)self _messageHasValidEncryptionStatus:messageCopy]|| [(IDSUTunConnection *)self _isMagnetConnection])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100564364;
    v7[3] = &unk_100BE05A0;
    v8 = messageCopy;
    selfCopy = self;
    [(IDSUTunConnection *)self _optionallyDecryptMessage:v8 completionBlock:v7];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = messageCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ received a message that we cannot accept without encryption! %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_processDecryptedMessage:(id)message
{
  messageCopy = message;
  v165 = [(IDSUTunConnection *)self _sendingMessageCountForClass:1];
  v164 = [(IDSUTunConnection *)self _sendingMessageCountForClass:0];
  v163 = [(IDSUTunConnection *)self _sendingMessageCountForClass:2];
  _isMagnetConnection = [(IDSUTunConnection *)self _isMagnetConnection];
  if (objc_opt_respondsToSelector())
  {
    messageUUID = [messageCopy messageUUID];
  }

  else
  {
    messageUUID = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [messageCopy peerResponseIdentifier];
    v167 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  }

  else
  {
    v167 = 0.0;
  }

  if (objc_opt_respondsToSelector())
  {
    expectsPeerResponse = [messageCopy expectsPeerResponse];
  }

  else
  {
    expectsPeerResponse = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    wantsAppAck = [messageCopy wantsAppAck];
  }

  else
  {
    wantsAppAck = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    didWakeHint = [messageCopy didWakeHint];
  }

  else
  {
    didWakeHint = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    expiryDate = [messageCopy expiryDate];
  }

  else
  {
    expiryDate = 0;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *buf = 138544386;
    *v263 = messageUUID;
    if (expectsPeerResponse)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (wantsAppAck)
    {
      v9 = @"YES";
    }

    *&v263[8] = 2112;
    *&v263[10] = v167;
    *&v263[18] = 2112;
    *&v263[20] = v10;
    *&v263[28] = 2112;
    *&v263[30] = v9;
    *&v263[38] = 2112;
    *&v263[40] = expiryDate;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received message has messageUUID %{public}@ peerResponseID %@ expectsPeerResponse? %@ wantsAppAck %@ remoteExpiryDate: %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    *&v11 = expectsPeerResponse ? COERCE_DOUBLE(@"YES") : COERCE_DOUBLE(@"NO");
    *&v12 = wantsAppAck ? COERCE_DOUBLE(@"YES") : COERCE_DOUBLE(@"NO");
    v156 = *&v12;
    v157 = expiryDate;
    v154 = v167;
    v155 = *&v11;
    selfCopy8 = messageUUID;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v156 = *&v12;
      v157 = expiryDate;
      v154 = v167;
      v155 = *&v11;
      selfCopy8 = messageUUID;
      _IDSLogV();
    }
  }

  if (expiryDate)
  {
    [expiryDate timeIntervalSinceNow];
    if (v13 < 0.0)
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v263 = messageUUID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received a message that has passed its expiry date, sending back an expired ack MessageUUID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          selfCopy8 = messageUUID;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            selfCopy8 = messageUUID;
            _IDSLogV();
          }
        }
      }

      [(IDSUTunConnection *)self _sendExpiredAckForMessage:messageCopy, selfCopy8, *&v154, *&v155, *&v156, v157];
      goto LABEL_183;
    }
  }

  if (!self->_needsHandshake || [messageCopy command] == 4)
  {
    if (objc_opt_respondsToSelector())
    {
      *&v159 = COERCE_DOUBLE([messageCopy streamID]);
      if (self->_supportDynamicServices)
      {
        [messageCopy topic];
        key = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v261 = 0;
        if (key != 0.0)
        {
          if (!self->_supportDynamicServicesOptimization || v159 && ([(IDSUTunPeerServiceMap *)self->_outgoingServiceMap associateServiceName:*&key withStreamID:v159 remoteInstanceID:self->_remoteInstanceID remoteInstanceIDChanged:&v261], (v261 & 1) != 0))
          {
LABEL_129:
            if (v261 == 1)
            {
              v44 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v263 = messageUUID;
                *&v263[8] = 2112;
                *&v263[10] = key;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Remote instance changed while receiving message %@ with topic %@ - continue and dispatch reconnect", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  selfCopy8 = messageUUID;
                  v154 = key;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    selfCopy8 = messageUUID;
                    v154 = key;
                    _IDSLogV();
                  }
                }
              }

              [(IDSUTunConnection *)self _nonThreadSafeStopConnection:selfCopy8];
              v45 = dispatch_time(0, 0);
              v46 = +[IDSDaemonPriorityQueueController sharedInstance];
              v47 = [v46 queueForPriority:self->_priority];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10056741C;
              block[3] = &unk_100BD6ED0;
              block[4] = self;
              dispatch_after(v45, v47, block);
            }

            goto LABEL_137;
          }

          v260 = 0;
          LOWORD(v216) = 0;
          if (![(IDSUTunPeerServiceMap *)self->_incomingServiceMap translateServiceName:*&key toStreamID:&v216 createIfNotFound:1 mappingCreated:&v260 remoteInstanceID:self->_remoteInstanceID remoteInstanceIDChanged:&v261, selfCopy8, *&v154, *&v155, *&v156, v157])
          {
            if ((v260 & 1) == 0)
            {
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v263 = messageUUID;
                *&v263[8] = 2112;
                *&v263[10] = key;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Cannot create mapping while receiving message %@ with topic %@ - continuing", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                selfCopy8 = messageUUID;
                v154 = key;
                _IDSLogV();
              }
            }

            goto LABEL_129;
          }

          incomingServiceMapUpdateCounter = self->_incomingServiceMapUpdateCounter;
          if (!incomingServiceMapUpdateCounter)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v17 = self->_incomingServiceMapUpdateCounter;
            self->_incomingServiceMapUpdateCounter = Mutable;

            incomingServiceMapUpdateCounter = self->_incomingServiceMapUpdateCounter;
          }

          v18 = [(NSMutableDictionary *)incomingServiceMapUpdateCounter objectForKey:*&key];
          if ([v18 integerValue] < 2)
          {
            if (v18 && [v18 integerValue] < 1)
            {
              goto LABEL_128;
            }

            v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 integerValue] + 1);
            if (v20)
            {
              CFDictionarySetValue(self->_incomingServiceMapUpdateCounter, *&key, v20);
            }
          }

          else
          {
            CFDictionarySetValue(self->_incomingServiceMapUpdateCounter, *&key, &off_100C3CA30);
            v19 = [IDSSocketPairServiceMapMessage alloc];
            v20 = [v19 initWithReason:1 mappedStreamID:v216 serviceName:*&key];
            [(IDSUTunConnection *)self _sendSocketMessage:v20 ignoreSequenceNumber:1];
            v21 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              if (v260)
              {
                v22 = @"YES";
              }

              else
              {
                v22 = @"NO";
              }

              *buf = 138413314;
              *v263 = messageUUID;
              *&v263[8] = 2112;
              *&v263[10] = key;
              *&v263[18] = 1024;
              *&v263[20] = v216;
              *&v263[24] = 2112;
              *&v263[26] = v22;
              *&v263[34] = 2112;
              *&v263[36] = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Incoming message %@ servicename %@ streamID-found %u newly-created %@ (serviceMapMessage %@)", buf, 0x30u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              if (v260)
              {
                *&v23 = COERCE_DOUBLE(@"YES");
              }

              else
              {
                *&v23 = COERCE_DOUBLE(@"NO");
              }

              v156 = *&v23;
              v157 = v20;
              *&v155 = v216;
              selfCopy8 = messageUUID;
              v154 = key;
              _IDSLogV();
            }
          }

LABEL_128:
          goto LABEL_129;
        }

        if (self->_supportDynamicServicesOptimization)
        {
          if (!v159)
          {
            key = 0.0;
            goto LABEL_129;
          }

          incomingServiceMap = self->_incomingServiceMap;
          block[5] = 0;
          v35 = [IDSUTunPeerServiceMap translateStreamID:"translateStreamID:toServiceName:remoteInstanceID:remoteInstanceIDChanged:" toServiceName:? remoteInstanceID:? remoteInstanceIDChanged:?];
          key = COERCE_DOUBLE(0);
          if (v35)
          {
            if (objc_opt_respondsToSelector())
            {
              v36 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                sequenceNumber = [messageCopy sequenceNumber];
                *buf = 138413058;
                *v263 = messageUUID;
                *&v263[8] = 2112;
                *&v263[10] = key;
                *&v263[18] = 1024;
                *&v263[20] = v159;
                *&v263[24] = 1024;
                *&v263[26] = sequenceNumber;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Incoming message %@ servicename-found %@ streamID %u sequenceNumber %u", buf, 0x22u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v155 = *&v159;
                v156 = COERCE_DOUBLE([messageCopy sequenceNumber]);
                selfCopy8 = messageUUID;
                v154 = key;
                _IDSLogV();
              }

              [messageCopy sequenceNumber];
              kdebug_trace();
            }

            else
            {
              v139 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                *v263 = messageUUID;
                *&v263[8] = 2112;
                *&v263[10] = key;
                *&v263[18] = 1024;
                *&v263[20] = v159;
                _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEBUG, "Incoming message %@ servicename-found %@ streamID %u", buf, 0x1Cu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v155 = *&v159;
                selfCopy8 = messageUUID;
                v154 = key;
                _IDSLogV();
              }
            }

            goto LABEL_129;
          }

          if (v261 == 1)
          {
            v43 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v263 = messageUUID;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Remote instance changed while receiving message %@ - drop and reconnect", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                selfCopy8 = messageUUID;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  selfCopy8 = messageUUID;
                  _IDSLogV();
                }
              }
            }

            goto LABEL_270;
          }

          _UTunDeliveryController = [(IDSUTunConnection *)self _UTunDeliveryController];
          [_UTunDeliveryController topicForStreamID:v159];
          *&v135 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v136 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109378;
            *v263 = v159;
            *&v263[4] = 2112;
            *&v263[6] = v135;
            _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "UTunConnection Error: missing expected message topic!! (supports optimization) streamID %u  (topicForStreamID %@)", buf, 0x12u);
          }

          v137 = v159;
          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            selfCopy8 = v159;
            v154 = *&v135;
            _IDSLogTransport();
            v137 = v159;
          }

          v138 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v263 = v137;
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "*************** SERVICEMAP ERROR: FAILED TO GET TOPIC FOR streamID %u ****************", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            selfCopy8 = v159;
            _IDSLogTransport();
          }

          [(IDSUTunPeerServiceMap *)self->_incomingServiceMap dumpServiceMap:selfCopy8];
          [(IDSUTunPeerServiceMap *)self->_outgoingServiceMap dumpServiceMap];
          if (!self->_shouldAbortOnMissingTopic)
          {
LABEL_269:
            key = *&v135;
LABEL_270:
            [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
            [(IDSUTunConnection *)self _checkAndStartConnection];
            goto LABEL_182;
          }

          sleep(1u);
          if (isRunningTests())
          {
            throwsIDSAbortException();
            goto LABEL_269;
          }
        }

        else
        {
          _UTunDeliveryController2 = [(IDSUTunConnection *)self _UTunDeliveryController];
          [_UTunDeliveryController2 topicForStreamID:v159];
          key = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v39 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109378;
            *v263 = v159;
            *&v263[4] = 2112;
            *&v263[6] = key;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "UTunConnection Error: missing expected message topic!! (no optimization) streamID %u  (topicForStreamID %@)", buf, 0x12u);
          }

          v40 = v159;
          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            selfCopy8 = v159;
            v154 = key;
            _IDSLogTransport();
            v40 = v159;
          }

          v41 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v263 = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "*************** SERVICEMAP ERROR: FAILED TO GET TOPIC FOR streamID %u ****************", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            selfCopy8 = v159;
            _IDSLogTransport();
          }

          [(IDSUTunPeerServiceMap *)self->_incomingServiceMap dumpServiceMap:selfCopy8];
          [(IDSUTunPeerServiceMap *)self->_outgoingServiceMap dumpServiceMap];
          if (!self->_shouldAbortOnMissingTopic)
          {
            goto LABEL_182;
          }

          sleep(1u);
          if (isRunningTests())
          {
            throwsIDSAbortException();
LABEL_182:

            goto LABEL_183;
          }
        }

        abort();
      }

      _UTunDeliveryController3 = [(IDSUTunConnection *)self _UTunDeliveryController];
      [_UTunDeliveryController3 topicForStreamID:v159];
      key = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    else
    {
      key = 0.0;
      *&v159 = 0.0;
    }

LABEL_137:
    switch([messageCopy command])
    {
      case 0u:
        goto LABEL_153;
      case 1u:
      case 0x25u:
        v65 = messageCopy;
        v216 = 0;
        v217 = &v216;
        v218 = 0x2020000000;
        v219 = 0x7FFFFFFFFFFFFFFFLL;
        sendingMessages = self->_sendingMessages;
        v213[0] = _NSConcreteStackBlock;
        v213[1] = 3221225472;
        v213[2] = sub_10056814C;
        v213[3] = &unk_100BE0640;
        v213[4] = self;
        v162 = v65;
        v214 = v162;
        v215 = &v216;
        [(NSMutableArray *)sendingMessages enumerateObjectsUsingBlock:v213];
        if (*(v217 + 3) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            sequenceNumber2 = [v162 sequenceNumber];
            *buf = 67109120;
            *v263 = sequenceNumber2;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "  => Message id %d ACK'd but it already timed out...", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              sequenceNumber3 = [v162 sequenceNumber];
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                [v162 sequenceNumber];
                _IDSLogV();
              }
            }
          }

          goto LABEL_291;
        }

        v100 = [(NSMutableArray *)self->_sendingMessages objectAtIndex:?];
        context = [v100 context];
        [context processAckForSocketPairMessage:v100];
        v160 = v100;
        if (![context isDoneSending])
        {
          goto LABEL_279;
        }

        [context timeSent];
        v103 = v102;
        IMTimeOfDay();
        v105 = v104 - v103;
        rtt = self->_rtt;
        if (rtt == 0.0)
        {
          v107 = v105;
        }

        else
        {
          v107 = v105 * 0.1 + rtt * 0.9;
        }

        self->_rtt = v107;
        v108 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          sequenceNumber4 = [v162 sequenceNumber];
          v110 = self->_rtt;
          *buf = 67109888;
          *v263 = sequenceNumber4;
          *&v263[4] = 2048;
          *&v263[6] = v110;
          *&v263[14] = 2048;
          *&v263[16] = v105;
          *&v263[24] = 2048;
          *&v263[26] = v103;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "  => Message id %d ACK'd RTT: %f  [instantaneous %f]  time sent: %f", buf, 0x26u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            sequenceNumber5 = [v162 sequenceNumber];
            v155 = v105;
            v156 = v103;
            v154 = self->_rtt;
            v152 = sequenceNumber5;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              sequenceNumber6 = [v162 sequenceNumber];
              v155 = v105;
              v156 = v103;
              v154 = self->_rtt;
              v152 = sequenceNumber6;
              _IDSLogV();
            }
          }
        }

        if ([(IDSUTunConnection *)self _shouldAWDLogMessage:context, v152, *&v154, *&v155, *&v156])
        {
          v113 = [IDSLocalMessageRTTMetric alloc];
          awdTopic = [context awdTopic];
          v115 = [v113 initWithService:awdTopic isToDefaultPairedDevice:_isMagnetConnection messageSize:objc_msgSend(context linkType:"sentMessageDataSize") deliveryError:-[IDSUTunConnection _currentLink](self RTT:"_currentLink") priority:{0, objc_msgSend(context, "priority")}];

          v116 = +[IDSCoreAnalyticsLogger defaultLogger];
          [v116 logMetric:v115];

          v117 = +[IDSAWDLogging sharedInstance];
          awdTopic2 = [context awdTopic];
          [v117 messageDeliveredForService:awdTopic2 isToDefaultPairedDevice:_isMagnetConnection messageSize:objc_msgSend(context linkType:"sentMessageDataSize") deliveryError:-[IDSUTunConnection _currentLink](self RTT:"_currentLink") priority:{0, (v105 * 1000.0), objc_msgSend(context, "priority")}];

          v100 = v160;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_238;
        }

        completionBlock = v100;
        if ([completionBlock isDone])
        {
          [context setUnderlyingSocketPairMessage:0];
          [(IDSLocalDeliveryQueue *)self->_deliveryQueue dequeueMessage:context];

LABEL_238:
          completionBlock = [context completionBlock];
          v120 = +[IDSDevicePolicyController sharedInstance];
          v121 = [v120 shouldBlackOutDeviceWithCbuuid:self->_cbuuid];

          v122 = self->_rtt;
          if ([v162 command] == 37)
          {
            v123 = +[IDSDaemonPriorityQueueController sharedInstance];
            v124 = v211;
            v211[0] = _NSConcreteStackBlock;
            v211[1] = 3221225472;
            v211[2] = sub_10056824C;
            v211[3] = &unk_100BE0668;
            v211[4] = context;
            *&v211[6] = v122;
            v212 = v121;
            v211[5] = completionBlock;
            [v123 performBlockMainQueue:v211];
          }

          else
          {
            v123 = +[IDSDaemonPriorityQueueController sharedInstance];
            v124 = v209;
            v209[0] = _NSConcreteStackBlock;
            v209[1] = 3221225472;
            v209[2] = sub_100568348;
            v209[3] = &unk_100BE0668;
            v209[4] = context;
            *&v209[6] = v122;
            v210 = v121;
            v209[5] = completionBlock;
            [v123 performBlockMainQueue:v209];
          }
        }

LABEL_279:
        [v162 sequenceNumber];
        kdebug_trace();
        v140 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          messageID = [context messageID];
          sequenceNumber7 = [v162 sequenceNumber];
          v143 = *(v217 + 3);
          v144 = [(NSMutableArray *)self->_sendingMessages count];
          *buf = 67110146;
          *v263 = messageID;
          *&v263[4] = 1024;
          *&v263[6] = sequenceNumber7;
          *&v263[10] = 2048;
          *&v263[12] = v143;
          *&v263[20] = 2112;
          *&v263[22] = v160;
          *&v263[30] = 2048;
          *&v263[32] = v144 - 1;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Removing ack'd message[%u] with sequenceNumber %u (index=%lu), message %@ remaining count %lu", buf, 0x2Cu);
        }

        v145 = v160;
        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          messageID2 = [context messageID];
          v147 = COERCE_DOUBLE([v162 sequenceNumber]);
          v148 = v217[3];
          v156 = *&v160;
          v157 = [(NSMutableArray *)self->_sendingMessages count]- 1;
          v154 = v147;
          v155 = v148;
          v152 = messageID2;
          _IDSLogV();
        }

        [(IDSUTunConnection *)self _removeMessageFromStatistics:context, v152, *&v154, *&v155, *&v156, v157];
        [(NSMutableArray *)self->_sendingMessages removeObjectAtIndex:*(v217 + 3)];
        if (![(NSMutableArray *)self->_sendingMessages count])
        {
          v149 = self->_sendingMessages;
          self->_sendingMessages = 0;

          v145 = v160;
        }

        if (!self->_sendingMessages)
        {
          [(IDSUTunConnection *)self _clearSendingPowerAssertionWithReason:@"No in flight messages remaining"];
        }

        [(NSMutableArray *)self->_fallbackMessages removeObject:context];
        if (![(NSMutableArray *)self->_fallbackMessages count])
        {
          fallbackMessages = self->_fallbackMessages;
          self->_fallbackMessages = 0;

          v145 = v160;
        }

        [v145 setContext:0];
        [v145 setCancelled:1];
        [(IDSUTunConnection *)self _dequeueMessages];

LABEL_291:
        _Block_object_dispose(&v216, 8);

        goto LABEL_173;
      case 3u:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
          v76 = messageCopy;
          v77 = [IDSProtobuf alloc];
          data = [v76 data];
          v79 = [v77 initWithProtobufData:data type:objc_msgSend(v76 isResponse:{"type"), objc_msgSend(v76, "isResponse") != 0}];

          v233[0] = _NSConcreteStackBlock;
          v233[1] = 3221225472;
          v233[2] = sub_100567864;
          v233[3] = &unk_100BE05C8;
          v234 = v76;
          v235 = v79;
          v241 = v159;
          selfCopy = self;
          v80 = *&key;
          v242 = _isMagnetConnection;
          v237 = v80;
          v238 = v75;
          v243 = wantsAppAck;
          v244 = expectsPeerResponse;
          v239 = *&v167;
          v240 = messageUUID;
          v245 = didWakeHint;
          v81 = v75;
          v82 = v79;
          v83 = v76;
          [(IDSUTunConnection *)self _processMessage:v83 withSequenceNumberBlock:v233];
        }

        else
        {
          v125 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v263 = messageCopy;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "LocalDelivery: IDSSocketPairCommandProtobufMessage received incompatible data message of type %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }
        }

        goto LABEL_173;
      case 4u:
        v84 = messageCopy;
        versionNumber = [v84 versionNumber];
        v86 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          identifier = self->_identifier;
          if (self->_needsHandshake)
          {
            v88 = @"YES";
          }

          else
          {
            v88 = @"NO";
          }

          *buf = 138413314;
          *v263 = self;
          *&v263[8] = 2112;
          *&v263[10] = identifier;
          *&v263[18] = 1024;
          *&v263[20] = versionNumber;
          *&v263[24] = 1024;
          *&v263[26] = 4;
          *&v263[30] = 2112;
          *&v263[32] = v88;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%@ [%@] received handshake with version %u. We require %u. Needs handshake? %@", buf, 0x2Cu);
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

        self->_needsHandshake = 0;

        goto LABEL_173;
      case 6u:
        goto LABEL_156;
      case 7u:
        v205[0] = _NSConcreteStackBlock;
        v205[1] = 3221225472;
        v205[2] = sub_100568444;
        v205[3] = &unk_100BE0690;
        v205[4] = self;
        v206 = *&key;
        v208 = _isMagnetConnection;
        v207 = *&v167;
        [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v205];

        goto LABEL_173;
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0x29u:
        [(IDSUTunConnection *)self _sendAckForMessage:messageCopy];
LABEL_156:
        v57 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
        if (objc_opt_respondsToSelector())
        {
          data2 = [messageCopy data];
        }

        else
        {
          data2 = 0;
        }

        v246[0] = _NSConcreteStackBlock;
        v246[1] = 3221225472;
        v246[2] = sub_100567424;
        v246[3] = &unk_100BE05C8;
        v61 = messageCopy;
        v247 = v61;
        v248 = data2;
        selfCopy2 = self;
        v62 = *&key;
        v255 = _isMagnetConnection;
        v254 = v159;
        v250 = v62;
        v251 = v57;
        v256 = wantsAppAck;
        v257 = expectsPeerResponse;
        v252 = *&v167;
        v253 = messageUUID;
        v258 = didWakeHint;
        v63 = v57;
        v64 = data2;
        [(IDSUTunConnection *)self _processMessage:v61 withSequenceNumberBlock:v246];

        goto LABEL_173;
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        [(IDSUTunConnection *)self _sendAckForMessage:messageCopy];
LABEL_153:
        v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
        if (objc_opt_respondsToSelector())
        {
          data3 = [messageCopy data];
        }

        else
        {
          data3 = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ![messageCopy compressed])
        {
          v60 = 0;
        }

        else
        {
          _FTOptionallyDecompressData = [data3 _FTOptionallyDecompressData];

          v60 = 1;
          data3 = _FTOptionallyDecompressData;
        }

        v220[0] = _NSConcreteStackBlock;
        v220[1] = 3221225472;
        v220[2] = sub_100567DF4;
        v220[3] = &unk_100BE05F0;
        v69 = data3;
        v227 = v159;
        v228 = v60;
        v221 = v69;
        selfCopy3 = self;
        v223 = *&key;
        v229 = _isMagnetConnection;
        v70 = v55;
        v224 = v70;
        v230 = wantsAppAck;
        v231 = expectsPeerResponse;
        v225 = *&v167;
        v226 = messageUUID;
        v232 = didWakeHint;
        [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v220];

        goto LABEL_173;
      case 0x15u:
        v71 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "SocketPairConnection should have consumed this and never pass it up", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        goto LABEL_173;
      case 0x16u:
        BYTE1(v154) = didWakeHint;
        LOBYTE(v154) = _isMagnetConnection;
        [(IDSUTunConnection *)self _processIncomingResourceTransferMessage:messageCopy messageUUID:messageUUID streamID:v159 topic:*&key wantsAppAck:wantsAppAck expectsPeerResponse:expectsPeerResponse peerResponseIdentifier:*&v167 isDefaultPairedDevice:*&v154 didWakeHint:?];
        goto LABEL_173;
      case 0x19u:
        v72 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v263 = messageCopy;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "GOT SOCKET PAIR COMMAND MESSAGE OUTGOING NICE PROXY %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v152 = messageCopy;
          _IDSLogV();
        }

        v73 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
        [(IDSUTunConnection *)self _sendAckForMessage:messageCopy];
        if (objc_opt_respondsToSelector())
        {
          compressed = [messageCopy compressed];
        }

        else
        {
          compressed = 1;
        }

        if (objc_opt_respondsToSelector())
        {
          data4 = [messageCopy data];
        }

        else
        {
          data4 = 0;
        }

        if (compressed)
        {
          _FTOptionallyDecompressData2 = [data4 _FTOptionallyDecompressData];

          data4 = _FTOptionallyDecompressData2;
        }

        v193[0] = _NSConcreteStackBlock;
        v193[1] = 3221225472;
        v193[2] = sub_1005685E8;
        v193[3] = &unk_100BE06B8;
        v129 = data4;
        v200 = v159;
        v201 = compressed;
        v194 = v129;
        selfCopy4 = self;
        v196 = *&key;
        v130 = v73;
        v197 = v130;
        v202 = wantsAppAck;
        v203 = expectsPeerResponse;
        v198 = *&v167;
        v199 = messageUUID;
        v204 = didWakeHint;
        [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v193];

        goto LABEL_173;
      case 0x1Au:
        v97 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v263 = messageCopy;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "GOT SOCKET PAIR COMMAND MESSAGE INCOMING NICE PROXY %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v152 = messageCopy;
          _IDSLogV();
        }

        v98 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
        [(IDSUTunConnection *)self _sendAckForMessage:messageCopy];
        if (objc_opt_respondsToSelector())
        {
          compressed2 = [messageCopy compressed];
        }

        else
        {
          compressed2 = 1;
        }

        if (objc_opt_respondsToSelector())
        {
          data5 = [messageCopy data];
        }

        else
        {
          data5 = 0;
        }

        if (compressed2)
        {
          _FTOptionallyDecompressData3 = [data5 _FTOptionallyDecompressData];

          data5 = _FTOptionallyDecompressData3;
        }

        v181[0] = _NSConcreteStackBlock;
        v181[1] = 3221225472;
        v181[2] = sub_100568878;
        v181[3] = &unk_100BE06B8;
        v132 = data5;
        v188 = v159;
        v189 = compressed2;
        v182 = v132;
        selfCopy5 = self;
        v184 = *&key;
        v133 = v98;
        v185 = v133;
        v190 = wantsAppAck;
        v191 = expectsPeerResponse;
        v186 = *&v167;
        v187 = messageUUID;
        v192 = didWakeHint;
        [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v181];

        goto LABEL_173;
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x26u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x33u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
        v48 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v263 = messageCopy;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "GOT SOCKET PAIR COMMAND INCOMMING IMESSAGE COMMAND %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v152 = messageCopy;
          _IDSLogV();
        }

        v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[IDSUTunConnection _socketToNiceCommand:](self, "_socketToNiceCommand:", [messageCopy command]));
        [(IDSUTunConnection *)self _sendAckForMessage:messageCopy];
        if (objc_opt_respondsToSelector())
        {
          compressed3 = [messageCopy compressed];
        }

        else
        {
          compressed3 = 1;
        }

        if (objc_opt_respondsToSelector())
        {
          data6 = [messageCopy data];

          if (!compressed3)
          {
            goto LABEL_151;
          }
        }

        else
        {
          data6 = 0;
          if (!compressed3)
          {
            goto LABEL_151;
          }
        }

        _FTOptionallyDecompressData4 = [data6 _FTOptionallyDecompressData];

        data6 = _FTOptionallyDecompressData4;
LABEL_151:
        v169[0] = _NSConcreteStackBlock;
        v169[1] = 3221225472;
        v169[2] = sub_100568B18;
        v169[3] = &unk_100BE06B8;
        v53 = data6;
        v170 = v53;
        v176 = v159;
        v177 = compressed3;
        v171 = messageUUID;
        selfCopy6 = self;
        v173 = *&key;
        v54 = v49;
        v174 = v54;
        v178 = wantsAppAck;
        v179 = expectsPeerResponse;
        v175 = *&v167;
        v180 = didWakeHint;
        [(IDSUTunConnection *)self _processMessage:messageCopy withSequenceNumberBlock:v169];

LABEL_173:
        if (v165 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:1])
        {
          [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:1];
        }

        if (v164 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:0])
        {
          [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:0];
        }

        if (v163 && ![(IDSUTunConnection *)self _sendingMessageCountForClass:2])
        {
          [(IDSUTunConnection *)self _handleBecomingEmptyForDataProtectionClass:2];
        }

        break;
      case 0x27u:
        v89 = messageCopy;
        LOBYTE(v216) = 0;
        v90 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          reason = [v89 reason];
          serviceName = [v89 serviceName];
          mappedStreamID = [v89 mappedStreamID];
          *buf = 67109634;
          *v263 = reason;
          *&v263[4] = 2112;
          *&v263[6] = serviceName;
          *&v263[14] = 1024;
          *&v263[16] = mappedStreamID;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Got ServiceMapMessage reason %u serviceName %@ streamID %u", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          reason2 = [v89 reason];
          [v89 serviceName];
          v154 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v155 = COERCE_DOUBLE([v89 mappedStreamID]);
          v152 = reason2;
          _IDSLogV();
        }

        outgoingServiceMap = self->_outgoingServiceMap;
        serviceName2 = [v89 serviceName];
        -[IDSUTunPeerServiceMap associateServiceName:withStreamID:remoteInstanceID:remoteInstanceIDChanged:](outgoingServiceMap, "associateServiceName:withStreamID:remoteInstanceID:remoteInstanceIDChanged:", serviceName2, [v89 mappedStreamID], self->_remoteInstanceID, &v216);

        goto LABEL_173;
      default:
        goto LABEL_173;
    }

    goto LABEL_182;
  }

  v24 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_identifier;
    command = [messageCopy command];
    *buf = 138412802;
    *v263 = self;
    *&v263[8] = 2112;
    *&v263[10] = v25;
    *&v263[18] = 1024;
    *&v263[20] = command;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ [%@] received a %d message when it was expecting a handshake!", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v154 = *&self->_identifier;
      v155 = COERCE_DOUBLE([messageCopy command]);
      selfCopy8 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v27 = self->_identifier;
        v28 = COERCE_DOUBLE([messageCopy command]);
        v154 = *&v27;
        v155 = v28;
        selfCopy8 = self;
        _IDSLogV();
      }
    }
  }

  v29 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Incompatible IDS version number!", buf, 2u);
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

  v30 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Incompatible IDS version number - please make sure your build versions match!", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  v31 = [IMLockdownManager sharedInstance:selfCopy8];
  isInternalInstall = [v31 isInternalInstall];

  if (isInternalInstall)
  {
    [(IDSUTunConnection *)self _dumpLogs];
  }

LABEL_183:
}

- (void)_dumpLogs
{
  if (qword_100CBEFE8 != -1)
  {
    sub_100929400();
  }
}

- (void)connectionDidClose:(id)close
{
  closeCopy = close;
  if (self->_socketConnection == closeCopy)
  {
    v5 = +[IDSDaemonPriorityQueueController sharedInstance];
    [v5 assertRunningWithPriority:self->_priority];

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = closeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ informed that utun socket pair connection %@ has closed...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v8 = closeCopy;
      _IDSLogV();
    }

    [(IDSUTunConnection *)self _nonThreadSafeStopConnection:selfCopy2];
    [(IDSUTunConnection *)self _checkAndStartConnection];
  }
}

- (void)connectionDidClose
{
  v3 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v3 assertRunningWithPriority:self->_priority];

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ informed that IDSNWSocketPairConnection has closed.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    _IDSLogV();
  }

  [(IDSUTunConnection *)self _nonThreadSafeStopConnection];
  [(IDSUTunConnection *)self _checkAndStartConnection];
}

- (void)connection:(id)connection didReceiveDataMessage:(id)message
{
  if (self->_socketConnection == connection)
  {
    messageCopy = message;
    v6 = +[IDSDaemonPriorityQueueController sharedInstance];
    [v6 assertRunningWithPriority:self->_priority];

    [(IDSUTunConnection *)self _clearLastFallbackWithReason:@"message received via local link"];
    [(IDSUTunConnection *)self _processIncomingDataMessage:messageCopy];
  }
}

- (void)didReceiveDataMessage:(id)message
{
  messageCopy = message;
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v4 assertRunningWithPriority:self->_priority];

  [(IDSUTunConnection *)self _clearLastFallbackWithReason:@"message received via local link"];
  [(IDSUTunConnection *)self _processIncomingDataMessage:messageCopy];
}

- (void)connectionBecameEmpty:(id)empty
{
  emptyCopy = empty;
  if (self->_socketConnection == emptyCopy)
  {
    v5 = +[IDSDaemonPriorityQueueController sharedInstance];
    [v5 assertRunningWithPriority:self->_priority];

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = emptyCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ connectionBecameEmpty %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v8 = emptyCopy;
      _IDSLogV();
    }

    [(IDSUTunConnection *)self _dequeueMessages:selfCopy2];
  }
}

- (void)connectionDidReachInFlightMessageLowWaterMark:(id)mark
{
  markCopy = mark;
  if (self->_socketConnection == markCopy)
  {
    v5 = +[IDSDaemonPriorityQueueController sharedInstance];
    [v5 assertRunningWithPriority:self->_priority];

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = markCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ connectionDidReachInFlightMessageLowWaterMark %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v8 = markCopy;
      _IDSLogV();
    }

    [(IDSUTunConnection *)self _dequeueMessages:selfCopy2];
  }
}

- (void)connectionDidReceiveBytes:(id)bytes
{
  bytesCopy = bytes;
  if (self->_socketConnection == bytesCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = bytesCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ connectionDidReceiveBytes %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v7 = bytesCopy;
      _IDSLogV();
    }

    [(IDSUTunConnection *)self _clearLastFallbackWithReason:@"local link did receive bytes", selfCopy2, v7];
    [(IDSUTunConnection *)self _dequeueMessages];
  }
}

- (void)forceOTRNegotiation:(id)negotiation priority:(int64_t)priority completionBlock:(id)block
{
  negotiationCopy = negotiation;
  blockCopy = block;
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v9 assertRunningWithPriority:priority];

  v10 = [NSString stringWithFormat:@"%@-%u-%1u", negotiationCopy, priority, 0];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling IDSOTRController:startOTRNegotiationWithDeviceIfNeeded to force session negotiation.", buf, 2u);
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

  v12 = +[IDSOTRController sharedInstance];
  [v12 setOTRTestBlockFromCompletionBlock:blockCopy token:v10];

  v13 = +[IDSOTRController sharedInstance];
  [v13 startOTRNegotiationWithDeviceIfNeeded:IDSDeviceDefaultPairedDeviceUniqueID token:v10 reset:1 errorHandler:0];
}

- (IDSUTunConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end