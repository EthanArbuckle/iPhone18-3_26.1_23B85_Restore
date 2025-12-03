@interface IDSDOutgoingMessage
- (BOOL)canCombineWithMessage:(id)message;
- (IDSDOutgoingMessage)initWithMessage:(id)message data:(id)data protobuf:(id)protobuf fromID:(id)d toDestinations:(id)destinations accountGUID:(id)iD useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)self0 encryptPayload:(BOOL)self1 compressPayload:(BOOL)self2 wantsResponse:(BOOL)self3 expirationDate:(id)self4 enforceRemoteTimeouts:(BOOL)self5 command:(id)self6 wantsDeliveryStatus:(BOOL)self7 deliveryStatusContext:(id)self8 messageUUID:(id)self9 priority:(int64_t)priority guid:(id)guid alternateGUID:(id)gUID identifier:(id)identifier forcedLocal:(BOOL)local peerResponseIdentifier:(id)responseIdentifier expectsPeerResponse:(BOOL)peerResponse wantsAppAck:(BOOL)ack fireAndForget:(BOOL)forget nonWaking:(BOOL)waking nonCloudWaking:(BOOL)message0 storedSize:(id)message1 duetIdentifiersOverride:(id)message2 bypassDuet:(BOOL)message3 mainAccountGuid:(id)message4 localDestinationDeviceUUID:(id)message5 enqueuedDate:(id)message6 messageType:(id)message7 alwaysSkipSelf:(BOOL)message8 alwaysIncludeSelf:(BOOL)message9 pushPriority:(id)data0 queueOneIdentifier:(id)data1 liveMessageDelivery:(BOOL)data2 requireBluetooth:(BOOL)data3 requireLocalWiFi:(BOOL)data4 sent:(BOOL)data5 wantsProgress:(BOOL)data6 ignoreMaxRetryCount:(BOOL)data7 wantsCertifiedDelivery:(BOOL)data8 originalTimestamp:(id)data9 ktUriVerificationMap:(id)protobuf0 wantsFirewallDonation:(BOOL)protobuf1 sendMode:(id)protobuf2 deliveryMinimumTimeDelay:(id)protobuf3 deliveryMinimumTime:(id)protobuf4 sendReasonContainer:(id)protobuf5;
- (id)copySendParameters;
- (void)combineWithMessage:(id)message;
@end

@implementation IDSDOutgoingMessage

- (IDSDOutgoingMessage)initWithMessage:(id)message data:(id)data protobuf:(id)protobuf fromID:(id)d toDestinations:(id)destinations accountGUID:(id)iD useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)self0 encryptPayload:(BOOL)self1 compressPayload:(BOOL)self2 wantsResponse:(BOOL)self3 expirationDate:(id)self4 enforceRemoteTimeouts:(BOOL)self5 command:(id)self6 wantsDeliveryStatus:(BOOL)self7 deliveryStatusContext:(id)self8 messageUUID:(id)self9 priority:(int64_t)priority guid:(id)guid alternateGUID:(id)gUID identifier:(id)identifier forcedLocal:(BOOL)local peerResponseIdentifier:(id)responseIdentifier expectsPeerResponse:(BOOL)peerResponse wantsAppAck:(BOOL)ack fireAndForget:(BOOL)forget nonWaking:(BOOL)waking nonCloudWaking:(BOOL)message0 storedSize:(id)message1 duetIdentifiersOverride:(id)message2 bypassDuet:(BOOL)message3 mainAccountGuid:(id)message4 localDestinationDeviceUUID:(id)message5 enqueuedDate:(id)message6 messageType:(id)message7 alwaysSkipSelf:(BOOL)message8 alwaysIncludeSelf:(BOOL)message9 pushPriority:(id)data0 queueOneIdentifier:(id)data1 liveMessageDelivery:(BOOL)data2 requireBluetooth:(BOOL)data3 requireLocalWiFi:(BOOL)data4 sent:(BOOL)data5 wantsProgress:(BOOL)data6 ignoreMaxRetryCount:(BOOL)data7 wantsCertifiedDelivery:(BOOL)data8 originalTimestamp:(id)data9 ktUriVerificationMap:(id)protobuf0 wantsFirewallDonation:(BOOL)protobuf1 sendMode:(id)protobuf2 deliveryMinimumTimeDelay:(id)protobuf3 deliveryMinimumTime:(id)protobuf4 sendReasonContainer:(id)protobuf5
{
  messageCopy = message;
  dataCopy = data;
  protobufCopy = protobuf;
  dCopy = d;
  destinationsCopy = destinations;
  iDCopy = iD;
  encryptCopy = encrypt;
  dateCopy = date;
  commandCopy = command;
  contextCopy = context;
  uIDCopy = uID;
  guidCopy = guid;
  gUIDCopy = gUID;
  identifierCopy = identifier;
  responseIdentifierCopy = responseIdentifier;
  sizeCopy = size;
  overrideCopy = override;
  accountGuidCopy = accountGuid;
  uUIDCopy = uUID;
  enqueuedDateCopy = enqueuedDate;
  typeCopy = type;
  pushPriorityCopy = pushPriority;
  oneIdentifierCopy = oneIdentifier;
  timestampCopy = timestamp;
  mapCopy = map;
  modeCopy = mode;
  delayCopy = delay;
  timeCopy = time;
  containerCopy = container;
  v93.receiver = self;
  v93.super_class = IDSDOutgoingMessage;
  v69 = [(IDSDOutgoingMessage *)&v93 init];
  v70 = v69;
  if (v69)
  {
    [(IDSDOutgoingMessage *)v69 setMessage:messageCopy];
    [(IDSDOutgoingMessage *)v70 setData:dataCopy];
    [(IDSDOutgoingMessage *)v70 setProtobuf:protobufCopy];
    [(IDSDOutgoingMessage *)v70 setFromID:dCopy];
    [(IDSDOutgoingMessage *)v70 setDestinations:destinationsCopy];
    [(IDSDOutgoingMessage *)v70 setAccountGUID:iDCopy];
    [(IDSDOutgoingMessage *)v70 setUseDictAsTopLevel:level];
    [(IDSDOutgoingMessage *)v70 setDataToEncrypt:encryptCopy];
    [(IDSDOutgoingMessage *)v70 setEncryptPayload:payload];
    [(IDSDOutgoingMessage *)v70 setCompressPayload:compressPayload];
    [(IDSDOutgoingMessage *)v70 setWantsResponse:response];
    [(IDSDOutgoingMessage *)v70 setExpirationDate:dateCopy];
    [(IDSDOutgoingMessage *)v70 setEnforceRemoteTimeouts:timeouts];
    [(IDSDOutgoingMessage *)v70 setCommand:commandCopy];
    [(IDSDOutgoingMessage *)v70 setWantsDeliveryStatus:status];
    [(IDSDOutgoingMessage *)v70 setDeliveryStatusContext:contextCopy];
    [(IDSDOutgoingMessage *)v70 setMessageUUID:uIDCopy];
    [(IDSDOutgoingMessage *)v70 setPriority:priority];
    [(IDSDOutgoingMessage *)v70 setGuid:guidCopy];
    [(IDSDOutgoingMessage *)v70 setAlternateGUID:gUIDCopy];
    [(IDSDOutgoingMessage *)v70 setIdentifier:identifierCopy];
    [(IDSDOutgoingMessage *)v70 setForcedLocal:local];
    [(IDSDOutgoingMessage *)v70 setPeerResponseIdentifier:responseIdentifierCopy];
    [(IDSDOutgoingMessage *)v70 setExpectsPeerResponse:peerResponse];
    [(IDSDOutgoingMessage *)v70 setWantsAppAck:ack];
    [(IDSDOutgoingMessage *)v70 setFireAndForget:forget];
    [(IDSDOutgoingMessage *)v70 setNonWaking:waking];
    [(IDSDOutgoingMessage *)v70 setNonCloudWaking:cloudWaking];
    [(IDSDOutgoingMessage *)v70 setStoredSize:sizeCopy];
    [(IDSDOutgoingMessage *)v70 setDuetIdentifiersOverride:overrideCopy];
    [(IDSDOutgoingMessage *)v70 setBypassDuet:duet];
    [(IDSDOutgoingMessage *)v70 setQueueOneIdentifier:oneIdentifierCopy];
    [(IDSDOutgoingMessage *)v70 setMainAccountGuid:accountGuidCopy];
    [(IDSDOutgoingMessage *)v70 setLocalDestinationDeviceUUID:uUIDCopy];
    [(IDSDOutgoingMessage *)v70 setEnqueuedDate:enqueuedDateCopy];
    [(IDSDOutgoingMessage *)v70 setMessageType:typeCopy];
    [(IDSDOutgoingMessage *)v70 setAlwaysSkipSelf:self];
    [(IDSDOutgoingMessage *)v70 setAlwaysIncludeSelf:includeSelf];
    [(IDSDOutgoingMessage *)v70 setPushPriority:pushPriorityCopy];
    [(IDSDOutgoingMessage *)v70 setLiveMessageDelivery:delivery];
    [(IDSDOutgoingMessage *)v70 setRequireBluetooth:bluetooth];
    [(IDSDOutgoingMessage *)v70 setRequireLocalWiFi:fi];
    [(IDSDOutgoingMessage *)v70 setSent:sent];
    [(IDSDOutgoingMessage *)v70 setWantsProgress:progress];
    [(IDSDOutgoingMessage *)v70 setIgnoreMaxRetryCount:count];
    [(IDSDOutgoingMessage *)v70 setWantsCertifiedDelivery:certifiedDelivery];
    [(IDSDOutgoingMessage *)v70 setOriginalTimestamp:timestampCopy];
    [(IDSDOutgoingMessage *)v70 setKtUriVerificationMap:mapCopy];
    [(IDSDOutgoingMessage *)v70 setWantsFirewallDonation:donation];
    [(IDSDOutgoingMessage *)v70 setSendMode:modeCopy];
    [(IDSDOutgoingMessage *)v70 setDeliveryMinimumTimeDelay:delayCopy];
    [(IDSDOutgoingMessage *)v70 setDeliveryMinimumTime:timeCopy];
    [(IDSDOutgoingMessage *)v70 setSendReasonContainer:containerCopy];
  }

  return v70;
}

- (BOOL)canCombineWithMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_18;
  }

  dataToEncrypt = [messageCopy dataToEncrypt];
  if (dataToEncrypt || ([v5 encryptPayload] & 1) != 0 || (objc_msgSend(v5, "useDictAsTopLevel") & 1) != 0)
  {
    goto LABEL_12;
  }

  deliveryStatusContext = [v5 deliveryStatusContext];
  if (!deliveryStatusContext)
  {
    dataToEncrypt = [(IDSDOutgoingMessage *)self dataToEncrypt];
    if (dataToEncrypt)
    {
      goto LABEL_12;
    }

    if ([(IDSDOutgoingMessage *)self encryptPayload])
    {
      goto LABEL_12;
    }

    if ([(IDSDOutgoingMessage *)self useDictAsTopLevel])
    {
      goto LABEL_12;
    }

    dataToEncrypt = [(IDSDOutgoingMessage *)self deliveryStatusContext];
    if (dataToEncrypt || [(IDSDOutgoingMessage *)self expectsPeerResponse])
    {
      goto LABEL_12;
    }

    deliveryStatusContext = [(IDSDOutgoingMessage *)self peerResponseIdentifier];
    if (!deliveryStatusContext)
    {
      deliveryStatusContext = [(IDSDOutgoingMessage *)self protobuf];
      if (!deliveryStatusContext)
      {
        selfCopy = self;
        deliveryStatusContext = [(IDSDOutgoingMessage *)self data];
        if (!deliveryStatusContext)
        {
          queueOneIdentifier = [(IDSDOutgoingMessage *)self queueOneIdentifier];

          if (!queueOneIdentifier)
          {
            dataToEncrypt = [(IDSDOutgoingMessage *)self fromID];
            fromID = [v5 fromID];
            if ([dataToEncrypt isEqual:fromID])
            {
              destinations = [(IDSDOutgoingMessage *)selfCopy destinations];
              destinations2 = [v5 destinations];
              if ([destinations isEqual:destinations2])
              {
                accountGUID = [(IDSDOutgoingMessage *)selfCopy accountGUID];
                accountGUID2 = [v5 accountGUID];
                if ([accountGUID isEqual:accountGUID2] && (v17 = -[IDSDOutgoingMessage wantsResponse](selfCopy, "wantsResponse"), v17 == objc_msgSend(v5, "wantsResponse")))
                {
                  command = [(IDSDOutgoingMessage *)selfCopy command];
                  command2 = [v5 command];
                  v31 = command;
                  if ([command isEqual:command2])
                  {
                    command3 = [(IDSDOutgoingMessage *)selfCopy command];
                    if ([command3 integerValue] == 227 && (v20 = -[IDSDOutgoingMessage wantsDeliveryStatus](selfCopy, "wantsDeliveryStatus"), v20 == objc_msgSend(v5, "wantsDeliveryStatus")) && (v21 = -[IDSDOutgoingMessage wantsCertifiedDelivery](selfCopy, "wantsCertifiedDelivery"), v21 == objc_msgSend(v5, "wantsCertifiedDelivery")))
                    {
                      originalTimestamp = [(IDSDOutgoingMessage *)selfCopy originalTimestamp];
                      originalTimestamp2 = [v5 originalTimestamp];
                      v29 = originalTimestamp;
                      v8 = [originalTimestamp isEqual:?] && (v23 = -[IDSDOutgoingMessage wantsAppAck](selfCopy, "wantsAppAck"), v23 == objc_msgSend(v5, "wantsAppAck")) && (v24 = -[IDSDOutgoingMessage fireAndForget](selfCopy, "fireAndForget"), v24 == objc_msgSend(v5, "fireAndForget")) && (v25 = -[IDSDOutgoingMessage nonWaking](selfCopy, "nonWaking"), v25 == objc_msgSend(v5, "nonWaking")) && (v26 = -[IDSDOutgoingMessage nonCloudWaking](selfCopy, "nonCloudWaking"), v26 == objc_msgSend(v5, "nonCloudWaking")) && (v27 = -[IDSDOutgoingMessage priority](selfCopy, "priority"), v27 == objc_msgSend(v5, "priority")) && -[IDSDOutgoingMessage priority](selfCopy, "priority") != 300;
                    }

                    else
                    {
                      v8 = 0;
                    }
                  }

                  else
                  {
                    v8 = 0;
                  }
                }

                else
                {
                  v8 = 0;
                }
              }

              else
              {
                v8 = 0;
              }
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_13;
          }

LABEL_18:
          v8 = 0;
          goto LABEL_19;
        }
      }
    }
  }

  dataToEncrypt = deliveryStatusContext;
LABEL_12:
  v8 = 0;
LABEL_13:

LABEL_19:
  return v8;
}

- (void)combineWithMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (messageCopy)
  {
    combinedMessages = selfCopy->_combinedMessages;
    if (!combinedMessages)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = selfCopy->_combinedMessages;
      selfCopy->_combinedMessages = v6;

      combinedMessages = selfCopy->_combinedMessages;
    }

    [(NSMutableArray *)combinedMessages addObject:messageCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)copySendParameters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(IDSSendParameters);
  message = [(IDSDOutgoingMessage *)selfCopy message];
  [v3 setMessage:message];

  data = [(IDSDOutgoingMessage *)selfCopy data];
  [v3 setData:data];

  protobuf = [(IDSDOutgoingMessage *)selfCopy protobuf];
  [v3 setProtobuf:protobuf];

  accountGUID = [(IDSDOutgoingMessage *)selfCopy accountGUID];
  [v3 setAccountUUID:accountGUID];

  destinations = [(IDSDOutgoingMessage *)selfCopy destinations];
  [v3 setDestinations:destinations];

  expirationDate = [(IDSDOutgoingMessage *)selfCopy expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(IDSDOutgoingMessage *)selfCopy expirationDate];
    [expirationDate2 timeIntervalSinceNow];
    [v3 setTimeout:?];
  }

  [v3 setEnforceRemoteTimeouts:{-[IDSDOutgoingMessage enforceRemoteTimeouts](selfCopy, "enforceRemoteTimeouts")}];
  [v3 setEncryptPayload:{-[IDSDOutgoingMessage encryptPayload](selfCopy, "encryptPayload")}];
  [v3 setCompressPayload:{-[IDSDOutgoingMessage compressPayload](selfCopy, "compressPayload")}];
  [v3 setPriority:{-[IDSDOutgoingMessage priority](selfCopy, "priority")}];
  [v3 setLocalDelivery:{-[IDSDOutgoingMessage forcedLocal](selfCopy, "forcedLocal")}];
  identifier = [(IDSDOutgoingMessage *)selfCopy identifier];
  [v3 setIdentifier:identifier];

  alternateGUID = [(IDSDOutgoingMessage *)selfCopy alternateGUID];
  [v3 setAlternateCallbackID:alternateGUID];

  [v3 setExpectsPeerResponse:{-[IDSDOutgoingMessage expectsPeerResponse](selfCopy, "expectsPeerResponse")}];
  peerResponseIdentifier = [(IDSDOutgoingMessage *)selfCopy peerResponseIdentifier];
  [v3 setPeerResponseIdentifier:peerResponseIdentifier];

  fromID = [(IDSDOutgoingMessage *)selfCopy fromID];
  [v3 setFromID:fromID];

  [v3 setUseDictAsTopLevel:{-[IDSDOutgoingMessage useDictAsTopLevel](selfCopy, "useDictAsTopLevel")}];
  [v3 setWantsResponse:{-[IDSDOutgoingMessage wantsResponse](selfCopy, "wantsResponse")}];
  dataToEncrypt = [(IDSDOutgoingMessage *)selfCopy dataToEncrypt];
  [v3 setDataToEncrypt:dataToEncrypt];

  messageUUID = [(IDSDOutgoingMessage *)selfCopy messageUUID];
  [v3 setMessageUUID:messageUUID];

  command = [(IDSDOutgoingMessage *)selfCopy command];
  [v3 setCommand:command];

  [v3 setWantsDeliveryStatus:{-[IDSDOutgoingMessage wantsDeliveryStatus](selfCopy, "wantsDeliveryStatus")}];
  deliveryStatusContext = [(IDSDOutgoingMessage *)selfCopy deliveryStatusContext];
  [v3 setDeliveryStatusContext:deliveryStatusContext];

  [v3 setWantsAppAck:{-[IDSDOutgoingMessage wantsAppAck](selfCopy, "wantsAppAck")}];
  [v3 setNonWaking:{-[IDSDOutgoingMessage nonWaking](selfCopy, "nonWaking")}];
  [v3 setNonCloudWaking:{-[IDSDOutgoingMessage nonCloudWaking](selfCopy, "nonCloudWaking")}];
  [v3 setFireAndForget:{-[IDSDOutgoingMessage fireAndForget](selfCopy, "fireAndForget")}];
  duetIdentifiersOverride = [(IDSDOutgoingMessage *)selfCopy duetIdentifiersOverride];
  [v3 setDuetIdentifiersOverride:duetIdentifiersOverride];

  [v3 setBypassDuet:{-[IDSDOutgoingMessage bypassDuet](selfCopy, "bypassDuet")}];
  queueOneIdentifier = [(IDSDOutgoingMessage *)selfCopy queueOneIdentifier];
  [v3 setQueueOneIdentifier:queueOneIdentifier];

  mainAccountGuid = [(IDSDOutgoingMessage *)selfCopy mainAccountGuid];
  [v3 setMainAccountUUID:mainAccountGuid];

  localDestinationDeviceUUID = [(IDSDOutgoingMessage *)selfCopy localDestinationDeviceUUID];
  [v3 setLocalDestinationDeviceUUID:localDestinationDeviceUUID];

  messageType = [(IDSDOutgoingMessage *)selfCopy messageType];
  [v3 setMessageType:messageType];

  [v3 setWantsProgress:{-[IDSDOutgoingMessage wantsProgress](selfCopy, "wantsProgress")}];
  [v3 setAlwaysSkipSelf:{-[IDSDOutgoingMessage alwaysSkipSelf](selfCopy, "alwaysSkipSelf")}];
  [v3 setAlwaysIncludeSelf:{-[IDSDOutgoingMessage alwaysIncludeSelf](selfCopy, "alwaysIncludeSelf")}];
  pushPriority = [(IDSDOutgoingMessage *)selfCopy pushPriority];
  [v3 setPushPriority:pushPriority];

  [v3 setLiveMessageDelivery:{-[IDSDOutgoingMessage liveMessageDelivery](selfCopy, "liveMessageDelivery")}];
  [v3 setRequireBluetooth:{-[IDSDOutgoingMessage requireBluetooth](selfCopy, "requireBluetooth")}];
  [v3 setRequireLocalWiFi:{-[IDSDOutgoingMessage requireLocalWiFi](selfCopy, "requireLocalWiFi")}];
  [v3 setIgnoreMaxRetryCount:{-[IDSDOutgoingMessage ignoreMaxRetryCount](selfCopy, "ignoreMaxRetryCount")}];
  [v3 setWantsCertifiedDelivery:{-[IDSDOutgoingMessage wantsCertifiedDelivery](selfCopy, "wantsCertifiedDelivery")}];
  originalTimestamp = [(IDSDOutgoingMessage *)selfCopy originalTimestamp];
  [v3 setOriginalTimestamp:originalTimestamp];

  ktUriVerificationMap = [(IDSDOutgoingMessage *)selfCopy ktUriVerificationMap];
  [v3 setKeyTransparencyURIVerificationMap:ktUriVerificationMap];

  sendMode = [(IDSDOutgoingMessage *)selfCopy sendMode];
  [v3 setSendMode:sendMode];

  deliveryMinimumTimeDelay = [(IDSDOutgoingMessage *)selfCopy deliveryMinimumTimeDelay];
  [v3 setDeliveryMinimumTimeDelay:deliveryMinimumTimeDelay];

  deliveryMinimumTime = [(IDSDOutgoingMessage *)selfCopy deliveryMinimumTime];
  [v3 setDeliveryMinimumTime:deliveryMinimumTime];

  [v3 setWantsFirewallDonation:{-[IDSDOutgoingMessage wantsFirewallDonation](selfCopy, "wantsFirewallDonation")}];
  sendReasonContainer = [(IDSDOutgoingMessage *)selfCopy sendReasonContainer];
  [v3 setSendReasonContainer:sendReasonContainer];

  objc_sync_exit(selfCopy);
  return v3;
}

@end