@interface IDSDOutgoingMessage
- (BOOL)canCombineWithMessage:(id)a3;
- (IDSDOutgoingMessage)initWithMessage:(id)a3 data:(id)a4 protobuf:(id)a5 fromID:(id)a6 toDestinations:(id)a7 accountGUID:(id)a8 useDictAsTopLevel:(BOOL)a9 dataToEncrypt:(id)a10 encryptPayload:(BOOL)a11 compressPayload:(BOOL)a12 wantsResponse:(BOOL)a13 expirationDate:(id)a14 enforceRemoteTimeouts:(BOOL)a15 command:(id)a16 wantsDeliveryStatus:(BOOL)a17 deliveryStatusContext:(id)a18 messageUUID:(id)a19 priority:(int64_t)a20 guid:(id)a21 alternateGUID:(id)a22 identifier:(id)a23 forcedLocal:(BOOL)a24 peerResponseIdentifier:(id)a25 expectsPeerResponse:(BOOL)a26 wantsAppAck:(BOOL)a27 fireAndForget:(BOOL)a28 nonWaking:(BOOL)a29 nonCloudWaking:(BOOL)a30 storedSize:(id)a31 duetIdentifiersOverride:(id)a32 bypassDuet:(BOOL)a33 mainAccountGuid:(id)a34 localDestinationDeviceUUID:(id)a35 enqueuedDate:(id)a36 messageType:(id)a37 alwaysSkipSelf:(BOOL)a38 alwaysIncludeSelf:(BOOL)a39 pushPriority:(id)a40 queueOneIdentifier:(id)a41 liveMessageDelivery:(BOOL)a42 requireBluetooth:(BOOL)a43 requireLocalWiFi:(BOOL)a44 sent:(BOOL)a45 wantsProgress:(BOOL)a46 ignoreMaxRetryCount:(BOOL)a47 wantsCertifiedDelivery:(BOOL)a48 originalTimestamp:(id)a49 ktUriVerificationMap:(id)a50 wantsFirewallDonation:(BOOL)a51 sendMode:(id)a52 deliveryMinimumTimeDelay:(id)a53 deliveryMinimumTime:(id)a54 sendReasonContainer:(id)a55;
- (id)copySendParameters;
- (void)combineWithMessage:(id)a3;
@end

@implementation IDSDOutgoingMessage

- (IDSDOutgoingMessage)initWithMessage:(id)a3 data:(id)a4 protobuf:(id)a5 fromID:(id)a6 toDestinations:(id)a7 accountGUID:(id)a8 useDictAsTopLevel:(BOOL)a9 dataToEncrypt:(id)a10 encryptPayload:(BOOL)a11 compressPayload:(BOOL)a12 wantsResponse:(BOOL)a13 expirationDate:(id)a14 enforceRemoteTimeouts:(BOOL)a15 command:(id)a16 wantsDeliveryStatus:(BOOL)a17 deliveryStatusContext:(id)a18 messageUUID:(id)a19 priority:(int64_t)a20 guid:(id)a21 alternateGUID:(id)a22 identifier:(id)a23 forcedLocal:(BOOL)a24 peerResponseIdentifier:(id)a25 expectsPeerResponse:(BOOL)a26 wantsAppAck:(BOOL)a27 fireAndForget:(BOOL)a28 nonWaking:(BOOL)a29 nonCloudWaking:(BOOL)a30 storedSize:(id)a31 duetIdentifiersOverride:(id)a32 bypassDuet:(BOOL)a33 mainAccountGuid:(id)a34 localDestinationDeviceUUID:(id)a35 enqueuedDate:(id)a36 messageType:(id)a37 alwaysSkipSelf:(BOOL)a38 alwaysIncludeSelf:(BOOL)a39 pushPriority:(id)a40 queueOneIdentifier:(id)a41 liveMessageDelivery:(BOOL)a42 requireBluetooth:(BOOL)a43 requireLocalWiFi:(BOOL)a44 sent:(BOOL)a45 wantsProgress:(BOOL)a46 ignoreMaxRetryCount:(BOOL)a47 wantsCertifiedDelivery:(BOOL)a48 originalTimestamp:(id)a49 ktUriVerificationMap:(id)a50 wantsFirewallDonation:(BOOL)a51 sendMode:(id)a52 deliveryMinimumTimeDelay:(id)a53 deliveryMinimumTime:(id)a54 sendReasonContainer:(id)a55
{
  v92 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v64 = a8;
  v65 = a10;
  v66 = a14;
  v67 = a16;
  v91 = a18;
  v68 = a19;
  v90 = a21;
  v89 = a22;
  v88 = a23;
  v87 = a25;
  v86 = a31;
  v85 = a32;
  v84 = a34;
  v83 = a35;
  v82 = a36;
  v81 = a37;
  v80 = a40;
  v79 = a41;
  v78 = a49;
  v77 = a50;
  v76 = a52;
  v75 = a53;
  v74 = a54;
  v73 = a55;
  v93.receiver = self;
  v93.super_class = IDSDOutgoingMessage;
  v69 = [(IDSDOutgoingMessage *)&v93 init];
  v70 = v69;
  if (v69)
  {
    [(IDSDOutgoingMessage *)v69 setMessage:v92];
    [(IDSDOutgoingMessage *)v70 setData:v60];
    [(IDSDOutgoingMessage *)v70 setProtobuf:v61];
    [(IDSDOutgoingMessage *)v70 setFromID:v62];
    [(IDSDOutgoingMessage *)v70 setDestinations:v63];
    [(IDSDOutgoingMessage *)v70 setAccountGUID:v64];
    [(IDSDOutgoingMessage *)v70 setUseDictAsTopLevel:a9];
    [(IDSDOutgoingMessage *)v70 setDataToEncrypt:v65];
    [(IDSDOutgoingMessage *)v70 setEncryptPayload:a11];
    [(IDSDOutgoingMessage *)v70 setCompressPayload:a12];
    [(IDSDOutgoingMessage *)v70 setWantsResponse:a13];
    [(IDSDOutgoingMessage *)v70 setExpirationDate:v66];
    [(IDSDOutgoingMessage *)v70 setEnforceRemoteTimeouts:a15];
    [(IDSDOutgoingMessage *)v70 setCommand:v67];
    [(IDSDOutgoingMessage *)v70 setWantsDeliveryStatus:a17];
    [(IDSDOutgoingMessage *)v70 setDeliveryStatusContext:v91];
    [(IDSDOutgoingMessage *)v70 setMessageUUID:v68];
    [(IDSDOutgoingMessage *)v70 setPriority:a20];
    [(IDSDOutgoingMessage *)v70 setGuid:v90];
    [(IDSDOutgoingMessage *)v70 setAlternateGUID:v89];
    [(IDSDOutgoingMessage *)v70 setIdentifier:v88];
    [(IDSDOutgoingMessage *)v70 setForcedLocal:a24];
    [(IDSDOutgoingMessage *)v70 setPeerResponseIdentifier:v87];
    [(IDSDOutgoingMessage *)v70 setExpectsPeerResponse:a26];
    [(IDSDOutgoingMessage *)v70 setWantsAppAck:a27];
    [(IDSDOutgoingMessage *)v70 setFireAndForget:a28];
    [(IDSDOutgoingMessage *)v70 setNonWaking:a29];
    [(IDSDOutgoingMessage *)v70 setNonCloudWaking:a30];
    [(IDSDOutgoingMessage *)v70 setStoredSize:v86];
    [(IDSDOutgoingMessage *)v70 setDuetIdentifiersOverride:v85];
    [(IDSDOutgoingMessage *)v70 setBypassDuet:a33];
    [(IDSDOutgoingMessage *)v70 setQueueOneIdentifier:v79];
    [(IDSDOutgoingMessage *)v70 setMainAccountGuid:v84];
    [(IDSDOutgoingMessage *)v70 setLocalDestinationDeviceUUID:v83];
    [(IDSDOutgoingMessage *)v70 setEnqueuedDate:v82];
    [(IDSDOutgoingMessage *)v70 setMessageType:v81];
    [(IDSDOutgoingMessage *)v70 setAlwaysSkipSelf:a38];
    [(IDSDOutgoingMessage *)v70 setAlwaysIncludeSelf:a39];
    [(IDSDOutgoingMessage *)v70 setPushPriority:v80];
    [(IDSDOutgoingMessage *)v70 setLiveMessageDelivery:a42];
    [(IDSDOutgoingMessage *)v70 setRequireBluetooth:a43];
    [(IDSDOutgoingMessage *)v70 setRequireLocalWiFi:a44];
    [(IDSDOutgoingMessage *)v70 setSent:a45];
    [(IDSDOutgoingMessage *)v70 setWantsProgress:a46];
    [(IDSDOutgoingMessage *)v70 setIgnoreMaxRetryCount:a47];
    [(IDSDOutgoingMessage *)v70 setWantsCertifiedDelivery:a48];
    [(IDSDOutgoingMessage *)v70 setOriginalTimestamp:v78];
    [(IDSDOutgoingMessage *)v70 setKtUriVerificationMap:v77];
    [(IDSDOutgoingMessage *)v70 setWantsFirewallDonation:a51];
    [(IDSDOutgoingMessage *)v70 setSendMode:v76];
    [(IDSDOutgoingMessage *)v70 setDeliveryMinimumTimeDelay:v75];
    [(IDSDOutgoingMessage *)v70 setDeliveryMinimumTime:v74];
    [(IDSDOutgoingMessage *)v70 setSendReasonContainer:v73];
  }

  return v70;
}

- (BOOL)canCombineWithMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = [v4 dataToEncrypt];
  if (v6 || ([v5 encryptPayload] & 1) != 0 || (objc_msgSend(v5, "useDictAsTopLevel") & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v5 deliveryStatusContext];
  if (!v7)
  {
    v6 = [(IDSDOutgoingMessage *)self dataToEncrypt];
    if (v6)
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

    v6 = [(IDSDOutgoingMessage *)self deliveryStatusContext];
    if (v6 || [(IDSDOutgoingMessage *)self expectsPeerResponse])
    {
      goto LABEL_12;
    }

    v7 = [(IDSDOutgoingMessage *)self peerResponseIdentifier];
    if (!v7)
    {
      v7 = [(IDSDOutgoingMessage *)self protobuf];
      if (!v7)
      {
        v9 = self;
        v7 = [(IDSDOutgoingMessage *)self data];
        if (!v7)
        {
          v10 = [(IDSDOutgoingMessage *)self queueOneIdentifier];

          if (!v10)
          {
            v6 = [(IDSDOutgoingMessage *)self fromID];
            v12 = [v5 fromID];
            if ([v6 isEqual:v12])
            {
              v13 = [(IDSDOutgoingMessage *)v9 destinations];
              v14 = [v5 destinations];
              if ([v13 isEqual:v14])
              {
                v15 = [(IDSDOutgoingMessage *)v9 accountGUID];
                v16 = [v5 accountGUID];
                if ([v15 isEqual:v16] && (v17 = -[IDSDOutgoingMessage wantsResponse](v9, "wantsResponse"), v17 == objc_msgSend(v5, "wantsResponse")))
                {
                  v18 = [(IDSDOutgoingMessage *)v9 command];
                  v19 = [v5 command];
                  v31 = v18;
                  if ([v18 isEqual:v19])
                  {
                    v30 = [(IDSDOutgoingMessage *)v9 command];
                    if ([v30 integerValue] == 227 && (v20 = -[IDSDOutgoingMessage wantsDeliveryStatus](v9, "wantsDeliveryStatus"), v20 == objc_msgSend(v5, "wantsDeliveryStatus")) && (v21 = -[IDSDOutgoingMessage wantsCertifiedDelivery](v9, "wantsCertifiedDelivery"), v21 == objc_msgSend(v5, "wantsCertifiedDelivery")))
                    {
                      v22 = [(IDSDOutgoingMessage *)v9 originalTimestamp];
                      v28 = [v5 originalTimestamp];
                      v29 = v22;
                      v8 = [v22 isEqual:?] && (v23 = -[IDSDOutgoingMessage wantsAppAck](v9, "wantsAppAck"), v23 == objc_msgSend(v5, "wantsAppAck")) && (v24 = -[IDSDOutgoingMessage fireAndForget](v9, "fireAndForget"), v24 == objc_msgSend(v5, "fireAndForget")) && (v25 = -[IDSDOutgoingMessage nonWaking](v9, "nonWaking"), v25 == objc_msgSend(v5, "nonWaking")) && (v26 = -[IDSDOutgoingMessage nonCloudWaking](v9, "nonCloudWaking"), v26 == objc_msgSend(v5, "nonCloudWaking")) && (v27 = -[IDSDOutgoingMessage priority](v9, "priority"), v27 == objc_msgSend(v5, "priority")) && -[IDSDOutgoingMessage priority](v9, "priority") != 300;
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

  v6 = v7;
LABEL_12:
  v8 = 0;
LABEL_13:

LABEL_19:
  return v8;
}

- (void)combineWithMessage:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v8)
  {
    combinedMessages = v4->_combinedMessages;
    if (!combinedMessages)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = v4->_combinedMessages;
      v4->_combinedMessages = v6;

      combinedMessages = v4->_combinedMessages;
    }

    [(NSMutableArray *)combinedMessages addObject:v8];
  }

  objc_sync_exit(v4);
}

- (id)copySendParameters
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(IDSSendParameters);
  v4 = [(IDSDOutgoingMessage *)v2 message];
  [v3 setMessage:v4];

  v5 = [(IDSDOutgoingMessage *)v2 data];
  [v3 setData:v5];

  v6 = [(IDSDOutgoingMessage *)v2 protobuf];
  [v3 setProtobuf:v6];

  v7 = [(IDSDOutgoingMessage *)v2 accountGUID];
  [v3 setAccountUUID:v7];

  v8 = [(IDSDOutgoingMessage *)v2 destinations];
  [v3 setDestinations:v8];

  v9 = [(IDSDOutgoingMessage *)v2 expirationDate];

  if (v9)
  {
    v10 = [(IDSDOutgoingMessage *)v2 expirationDate];
    [v10 timeIntervalSinceNow];
    [v3 setTimeout:?];
  }

  [v3 setEnforceRemoteTimeouts:{-[IDSDOutgoingMessage enforceRemoteTimeouts](v2, "enforceRemoteTimeouts")}];
  [v3 setEncryptPayload:{-[IDSDOutgoingMessage encryptPayload](v2, "encryptPayload")}];
  [v3 setCompressPayload:{-[IDSDOutgoingMessage compressPayload](v2, "compressPayload")}];
  [v3 setPriority:{-[IDSDOutgoingMessage priority](v2, "priority")}];
  [v3 setLocalDelivery:{-[IDSDOutgoingMessage forcedLocal](v2, "forcedLocal")}];
  v11 = [(IDSDOutgoingMessage *)v2 identifier];
  [v3 setIdentifier:v11];

  v12 = [(IDSDOutgoingMessage *)v2 alternateGUID];
  [v3 setAlternateCallbackID:v12];

  [v3 setExpectsPeerResponse:{-[IDSDOutgoingMessage expectsPeerResponse](v2, "expectsPeerResponse")}];
  v13 = [(IDSDOutgoingMessage *)v2 peerResponseIdentifier];
  [v3 setPeerResponseIdentifier:v13];

  v14 = [(IDSDOutgoingMessage *)v2 fromID];
  [v3 setFromID:v14];

  [v3 setUseDictAsTopLevel:{-[IDSDOutgoingMessage useDictAsTopLevel](v2, "useDictAsTopLevel")}];
  [v3 setWantsResponse:{-[IDSDOutgoingMessage wantsResponse](v2, "wantsResponse")}];
  v15 = [(IDSDOutgoingMessage *)v2 dataToEncrypt];
  [v3 setDataToEncrypt:v15];

  v16 = [(IDSDOutgoingMessage *)v2 messageUUID];
  [v3 setMessageUUID:v16];

  v17 = [(IDSDOutgoingMessage *)v2 command];
  [v3 setCommand:v17];

  [v3 setWantsDeliveryStatus:{-[IDSDOutgoingMessage wantsDeliveryStatus](v2, "wantsDeliveryStatus")}];
  v18 = [(IDSDOutgoingMessage *)v2 deliveryStatusContext];
  [v3 setDeliveryStatusContext:v18];

  [v3 setWantsAppAck:{-[IDSDOutgoingMessage wantsAppAck](v2, "wantsAppAck")}];
  [v3 setNonWaking:{-[IDSDOutgoingMessage nonWaking](v2, "nonWaking")}];
  [v3 setNonCloudWaking:{-[IDSDOutgoingMessage nonCloudWaking](v2, "nonCloudWaking")}];
  [v3 setFireAndForget:{-[IDSDOutgoingMessage fireAndForget](v2, "fireAndForget")}];
  v19 = [(IDSDOutgoingMessage *)v2 duetIdentifiersOverride];
  [v3 setDuetIdentifiersOverride:v19];

  [v3 setBypassDuet:{-[IDSDOutgoingMessage bypassDuet](v2, "bypassDuet")}];
  v20 = [(IDSDOutgoingMessage *)v2 queueOneIdentifier];
  [v3 setQueueOneIdentifier:v20];

  v21 = [(IDSDOutgoingMessage *)v2 mainAccountGuid];
  [v3 setMainAccountUUID:v21];

  v22 = [(IDSDOutgoingMessage *)v2 localDestinationDeviceUUID];
  [v3 setLocalDestinationDeviceUUID:v22];

  v23 = [(IDSDOutgoingMessage *)v2 messageType];
  [v3 setMessageType:v23];

  [v3 setWantsProgress:{-[IDSDOutgoingMessage wantsProgress](v2, "wantsProgress")}];
  [v3 setAlwaysSkipSelf:{-[IDSDOutgoingMessage alwaysSkipSelf](v2, "alwaysSkipSelf")}];
  [v3 setAlwaysIncludeSelf:{-[IDSDOutgoingMessage alwaysIncludeSelf](v2, "alwaysIncludeSelf")}];
  v24 = [(IDSDOutgoingMessage *)v2 pushPriority];
  [v3 setPushPriority:v24];

  [v3 setLiveMessageDelivery:{-[IDSDOutgoingMessage liveMessageDelivery](v2, "liveMessageDelivery")}];
  [v3 setRequireBluetooth:{-[IDSDOutgoingMessage requireBluetooth](v2, "requireBluetooth")}];
  [v3 setRequireLocalWiFi:{-[IDSDOutgoingMessage requireLocalWiFi](v2, "requireLocalWiFi")}];
  [v3 setIgnoreMaxRetryCount:{-[IDSDOutgoingMessage ignoreMaxRetryCount](v2, "ignoreMaxRetryCount")}];
  [v3 setWantsCertifiedDelivery:{-[IDSDOutgoingMessage wantsCertifiedDelivery](v2, "wantsCertifiedDelivery")}];
  v25 = [(IDSDOutgoingMessage *)v2 originalTimestamp];
  [v3 setOriginalTimestamp:v25];

  v26 = [(IDSDOutgoingMessage *)v2 ktUriVerificationMap];
  [v3 setKeyTransparencyURIVerificationMap:v26];

  v27 = [(IDSDOutgoingMessage *)v2 sendMode];
  [v3 setSendMode:v27];

  v28 = [(IDSDOutgoingMessage *)v2 deliveryMinimumTimeDelay];
  [v3 setDeliveryMinimumTimeDelay:v28];

  v29 = [(IDSDOutgoingMessage *)v2 deliveryMinimumTime];
  [v3 setDeliveryMinimumTime:v29];

  [v3 setWantsFirewallDonation:{-[IDSDOutgoingMessage wantsFirewallDonation](v2, "wantsFirewallDonation")}];
  v30 = [(IDSDOutgoingMessage *)v2 sendReasonContainer];
  [v3 setSendReasonContainer:v30];

  objc_sync_exit(v2);
  return v3;
}

@end