@interface BlastDoorAPSUserPayload
- (BlastDoorAPSUserPayload)init;
- (BlastDoorAPSUserPayloadDeliveryContext)deliveryContext;
- (BlastDoorAPSUserPayloadHttpHeaders)httpHeaders;
- (NSArray)MMCSDownloadAuthList;
- (NSArray)MMCSDownloadUrlList;
- (NSData)MMCSFileSignature;
- (NSData)activeAccessToken;
- (NSData)activeRelayIp;
- (NSData)additionalPayload;
- (NSData)contentBody;
- (NSData)contentReferenceSignature;
- (NSData)failMessageId;
- (NSData)fanoutPayload;
- (NSData)homekitSessionToken;
- (NSData)httpBody;
- (NSData)httpBodyKey;
- (NSData)idsSessionId;
- (NSData)initiatorIp;
- (NSData)messageUUID;
- (NSData)prevAccessToken;
- (NSData)prevRelayIp;
- (NSData)queryHash;
- (NSData)relayAccessToken;
- (NSData)relayIp;
- (NSData)relayIpv6;
- (NSData)relayReportingBlob;
- (NSData)relaySessionId;
- (NSData)relaySessionKey;
- (NSData)responseIdentifier;
- (NSData)selfSessionToken;
- (NSData)sessionToken;
- (NSData)softwareVersion;
- (NSData)token;
- (NSString)MMCSAuthId;
- (NSString)MMCSAuthToken;
- (NSString)MMCSAuthUrl;
- (NSString)MMCSDownloadUrl;
- (NSString)MMCSOwnerId;
- (NSString)MMCSUploadUrl;
- (NSString)adhocServiceOverride;
- (NSString)applicationId;
- (NSString)asHttpHeader;
- (NSString)conferenceURI;
- (NSString)contentHeaders;
- (NSString)contentType;
- (NSString)description;
- (NSString)destinationId;
- (NSString)encryptionType;
- (NSString)errorDomain;
- (NSString)failMessageIdString;
- (NSString)failReasonMessage;
- (NSString)groupId;
- (NSString)homekitReportId;
- (NSString)httpBodyUrl;
- (NSString)httpErrorMsg;
- (NSString)httpUrl;
- (NSString)messageId;
- (NSString)mspId;
- (NSString)pluginConfig;
- (NSString)pluginName;
- (NSString)queueId;
- (NSString)relayBuildVersion;
- (NSString)responseIdentifierString;
- (NSString)senderId;
- (NSString)senderOpaqueId;
- (NSString)splunkHint;
- (NSString)strictTransportSecurity;
- (NSString)testOptions;
- (NSString)traceId;
- (NSString)url;
- (NSString)userAgent;
- (int64_t)MMCSExpiryNanos;
- (int64_t)MMCSFileLength;
- (int64_t)allocateInfoAttribute;
- (int64_t)allocationEpochTimeMillis;
- (int64_t)allocationStatus;
- (int64_t)allowGDR;
- (int64_t)attachmentSize;
- (int64_t)certifiedDeliveryVersion;
- (int64_t)command;
- (int64_t)commandContext;
- (int64_t)contentVersion;
- (int64_t)conversationId;
- (int64_t)dateExpirationSeconds;
- (int64_t)deliveryStatusFlags;
- (int64_t)epochTimeNanos;
- (int64_t)errorCode;
- (int64_t)expiryEpochTimeMillis;
- (int64_t)faceTimeRetryCount;
- (int64_t)failDownloadAttachmentSize;
- (int64_t)failReason;
- (int64_t)failTimeElapsed;
- (int64_t)failUploadAttachmentSize;
- (int64_t)fanoutChunkNumber;
- (int64_t)groupMemberCount;
- (int64_t)homekitDeliveryStatus;
- (int64_t)httpResponseStatus;
- (int64_t)ipFamilyPreference;
- (int64_t)madridProtocol;
- (int64_t)originalCommand;
- (int64_t)originalEpochTimeNanos;
- (int64_t)pluginStream;
- (int64_t)prevErrorCode;
- (int64_t)prevTimestamp;
- (int64_t)priority;
- (int64_t)protocolVersion;
- (int64_t)qrErrorCode;
- (int64_t)quickRelayUserType;
- (int64_t)reason;
- (int64_t)relayHighPriorityPort;
- (int64_t)relayPort;
- (int64_t)relayProvider;
- (int64_t)relayServerType;
- (int64_t)requestType;
- (int64_t)responseStatus;
- (int64_t)retryCount;
- (int64_t)selfAllocTokenCount;
- (int64_t)selfAllocTokenCountOld;
- (int64_t)sendMode;
- (int64_t)senderExpectsAck;
- (int64_t)storageCheckVersion;
- (int64_t)storageFlags;
- (int64_t)testDropPoint;
- (int64_t)version;
- (int64_t)webtunnelVersion;
- (unint64_t)participantId;
@end

@implementation BlastDoorAPSUserPayload

- (NSString)description
{
  v2 = MEMORY[0x28223BE20](self);
  memcpy(v7, (v2 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload), 0x89BuLL);
  memcpy(__dst, (v2 + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload), sizeof(__dst));
  sub_2142E1BD4(v7, &v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (int64_t)command
{
  if ((self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 16] & 1) == 0)
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 8];
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

- (int64_t)commandContext
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 32])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 24];
  }
}

- (int64_t)version
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 48])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 40];
  }
}

- (NSData)fanoutPayload
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 96];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 88];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)additionalPayload
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 112];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 104];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)messageId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 144])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 136];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 144];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)messageUUID
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 160];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 152];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)queueId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 176])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 168];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 176];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorAPSUserPayloadDeliveryContext)deliveryContext
{
  v4 = self + OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload;
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 201])
  {
    v5 = 0;
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v7 = v4[208];
    v8 = *(v4 + 25);
    v9 = type metadata accessor for _ObjCAPSUserPayloadDeliveryContextWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorAPSUserPayloadDeliveryContext_aPSUserPayloadDeliveryContext];
    *v11 = v8;
    v11[8] = v7 & 1;
    v12.receiver = v10;
    v12.super_class = v9;
    v5 = [(BlastDoorAPSUserPayload *)&v12 init];
  }

  return v5;
}

- (int64_t)certifiedDeliveryVersion
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 216])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 208];
  }
}

- (NSData)sessionToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 256];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 248];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)homekitSessionToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 272];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 264];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)destinationId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 288])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 280];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 288];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)userAgent
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 304])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 296];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 304];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)MMCSOwnerId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 320])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 312];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 320];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)MMCSFileSignature
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 336];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 328];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)MMCSFileLength
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 352])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 344];
  }
}

- (NSString)MMCSAuthToken
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 368])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 360];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 368];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)MMCSAuthUrl
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 384])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 376];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 384];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)MMCSAuthId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 400])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 392];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 400];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)MMCSDownloadAuthList
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 408])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 408];

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)MMCSDownloadUrlList
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 416])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 416];

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)MMCSDownloadUrl
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 432])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 424];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 432];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)MMCSUploadUrl
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 448])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 440];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 448];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)MMCSExpiryNanos
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 464])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 456];
  }
}

- (int64_t)contentVersion
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 480])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 472];
  }
}

- (NSString)contentHeaders
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 496])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 488];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 496];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)contentBody
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 512];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 504];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)contentReferenceSignature
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 528];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 520];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)attachmentSize
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 544])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 536];
  }
}

- (NSData)token
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 560];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 552];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)senderId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 576])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 568];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 576];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)senderOpaqueId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 592])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 584];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 592];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)mspId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 608])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 600];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 608];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)responseStatus
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 624])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 616];
  }
}

- (int64_t)epochTimeNanos
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 640])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 632];
  }
}

- (int64_t)originalEpochTimeNanos
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 656])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 648];
  }
}

- (int64_t)failReason
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 672])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 664];
  }
}

- (NSData)failMessageId
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 688];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 680];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)failMessageIdString
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 704])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 696];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 704];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)failDownloadAttachmentSize
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 720])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 712];
  }
}

- (int64_t)failUploadAttachmentSize
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 736])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 728];
  }
}

- (NSString)failReasonMessage
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 752])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 744];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 752];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)failTimeElapsed
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 768])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 760];
  }
}

- (NSString)encryptionType
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 784])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 776];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 784];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)storageFlags
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 800])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 792];
  }
}

- (int64_t)priority
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 816])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 808];
  }
}

- (int64_t)senderExpectsAck
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 832])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 824];
  }
}

- (int64_t)storageCheckVersion
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 864])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 856];
  }
}

- (int64_t)dateExpirationSeconds
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 880])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 872];
  }
}

- (int64_t)madridProtocol
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 896])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 888];
  }
}

- (NSString)contentType
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 912])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 904];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 912];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)adhocServiceOverride
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 928])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 920];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 928];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)responseIdentifier
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 944];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 936];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)responseIdentifierString
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 960])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 952];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 960];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)strictTransportSecurity
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 976])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 968];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 976];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)traceId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 992])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 984];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 992];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)splunkHint
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1008])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1000];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1008];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)asHttpHeader
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1024])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1016];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1024];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)homekitDeliveryStatus
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1040])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1032];
  }
}

- (NSString)homekitReportId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1056])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1048];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1056];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)retryCount
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1072])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1064];
  }
}

- (NSString)testOptions
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1088])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1080];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1088];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)fanoutChunkNumber
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1104])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1096];
  }
}

- (NSString)url
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1120])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1112];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1120];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)faceTimeRetryCount
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1136])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1128];
  }
}

- (int64_t)webtunnelVersion
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1152])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1144];
  }
}

- (NSString)httpUrl
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1168])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1160];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1168];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorAPSUserPayloadHttpHeaders)httpHeaders
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1176];
  v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1184];
  v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1208];
  v5 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1240];
  v23 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1224];
  v24 = v5;
  v25 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1256];
  v21 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1192];
  v22 = v4;
  v28 = v23;
  v29 = v5;
  v30 = v25;
  v26 = v21;
  v27 = v4;
  if (v3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = type metadata accessor for _ObjCAPSUserPayloadHttpHeadersWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorAPSUserPayloadHttpHeaders_aPSUserPayloadHttpHeaders];
    *v9 = v2;
    *(v9 + 1) = v3;
    v10 = v29;
    *(v9 + 3) = v28;
    *(v9 + 4) = v10;
    *(v9 + 5) = v30;
    v11 = v27;
    *(v9 + 1) = v26;
    *(v9 + 2) = v11;
    v15[0] = v2;
    v15[1] = v3;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_21454AF44(v15, v14);
    v13.receiver = v8;
    v13.super_class = v7;
    v6 = [(BlastDoorAPSUserPayload *)&v13 init];
  }

  return v6;
}

- (NSData)httpBody
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1280];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1272];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)httpBodyUrl
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1296])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1288];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1296];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)httpBodyKey
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1312];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1304];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)httpResponseStatus
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1328])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1320];
  }
}

- (NSString)httpErrorMsg
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1344])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1336];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1344];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)deliveryStatusFlags
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1368])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1360];
  }
}

- (NSString)conferenceURI
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1384])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1376];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1384];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)selfSessionToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1400];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1392];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)queryHash
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1416];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1408];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)testDropPoint
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1432])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1424];
  }
}

- (int64_t)quickRelayUserType
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1448])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1440];
  }
}

- (int64_t)errorCode
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1464])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1456];
  }
}

- (int64_t)conversationId
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1480])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1472];
  }
}

- (int64_t)protocolVersion
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1496])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1488];
  }
}

- (NSString)applicationId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1512])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1504];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1512];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)reason
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1528])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1520];
  }
}

- (int64_t)prevErrorCode
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1544])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1536];
  }
}

- (NSData)prevAccessToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1560];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1552];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)prevRelayIp
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1576];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1568];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)prevTimestamp
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1592])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1584];
  }
}

- (NSData)activeAccessToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1608];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1600];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)activeRelayIp
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1624];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1616];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)selfAllocTokenCountOld
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1640])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1632];
  }
}

- (int64_t)selfAllocTokenCount
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1656])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1648];
  }
}

- (NSString)pluginName
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1680])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1672];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1680];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)pluginConfig
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1696])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1688];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1696];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)pluginStream
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1712])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1704];
  }
}

- (int64_t)requestType
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1728])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1720];
  }
}

- (NSData)idsSessionId
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1744];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1736];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)relayProvider
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1760])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1752];
  }
}

- (NSString)groupId
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1776])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1768];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1776];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)groupMemberCount
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1792])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1784];
  }
}

- (int64_t)allocateInfoAttribute
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1808])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1800];
  }
}

- (NSData)relayIp
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1824];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1816];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)relayIpv6
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1840];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1832];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)relayPort
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1856])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1848];
  }
}

- (NSData)relayAccessToken
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1872];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1864];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)relaySessionKey
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1888];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1880];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSData)relaySessionId
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1904];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1896];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)expiryEpochTimeMillis
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1920])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1912];
  }
}

- (NSData)initiatorIp
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1936];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1928];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (unint64_t)participantId
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1952])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1944];
  }
}

- (NSData)softwareVersion
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1968];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1960];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)relayBuildVersion
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1984])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1976];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1984];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)relayHighPriorityPort
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2000])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 1992];
  }
}

- (int64_t)ipFamilyPreference
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2016])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2008];
  }
}

- (int64_t)allocationEpochTimeMillis
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2032])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2024];
  }
}

- (int64_t)allocationStatus
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2048])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2040];
  }
}

- (NSData)relayReportingBlob
{
  v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2080];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2072];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)relayServerType
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2096])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2088];
  }
}

- (int64_t)qrErrorCode
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2120])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2112];
  }
}

- (int64_t)originalCommand
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2136])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2128];
  }
}

- (NSString)errorDomain
{
  if (*&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2152])
  {
    v2 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2144];
    v3 = *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2152];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)allowGDR
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2176])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2168];
  }
}

- (int64_t)sendMode
{
  if (self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2192])
  {
    return 0;
  }

  else
  {
    return *&self->aPSUserPayload[OBJC_IVAR___BlastDoorAPSUserPayload_aPSUserPayload + 2184];
  }
}

- (BlastDoorAPSUserPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end