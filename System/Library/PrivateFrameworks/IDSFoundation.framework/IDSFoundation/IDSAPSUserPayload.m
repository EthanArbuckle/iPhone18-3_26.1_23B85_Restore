@interface IDSAPSUserPayload
- (IDSAPSUserPayload)initWithBlastDoorObject:(id)a3;
- (id)extractCommandResponseFrom:(id)a3;
- (id)extractCommandWebTunnelResponseFrom:(id)a3;
- (id)extractMadridDeliveryContextFrom:(id)a3;
- (id)extractMadridHttpHeadersFrom:(id)a3;
- (id)extractMadridProtocolPayloadFrom:(id)a3;
- (id)extractQuickRelayAllocationStatusFrom:(id)a3;
- (id)extractQuickRelaySelfAllocTokenFrom:(id)a3;
- (void)logDiffBetween:(id)a3 andTarget:(id)a4 withKeyPath:(id)a5;
- (void)logHeaderDiffAgainstSource:(id)a3;
@end

@implementation IDSAPSUserPayload

- (IDSAPSUserPayload)initWithBlastDoorObject:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSAPSUserPayload;
  v5 = [(IDSAPSUserPayload *)&v11 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"command"];
    v7 = [v6 intValue];

    if (v7 == 97)
    {
      v8 = [(IDSAPSUserPayload *)v5 extractCommandWebTunnelResponseFrom:v4];
    }

    else
    {
      if (v7 == 255)
      {
        [(IDSAPSUserPayload *)v5 extractCommandResponseFrom:v4];
      }

      else
      {
        [(IDSAPSUserPayload *)v5 extractMadridProtocolPayloadFrom:v4];
      }
      v8 = ;
    }

    payload = v5->_payload;
    v5->_payload = v8;
  }

  return v5;
}

- (id)extractCommandResponseFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "command")}];
  [v4 setObject:v6 forKey:@"c"];

  if ([v5 has_messageId])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "messageId")}];
    [v4 setObject:v7 forKey:@"i"];
  }

  v8 = [v5 messageUUID];

  if (v8)
  {
    v9 = [v5 messageUUID];
    [v4 setObject:v9 forKey:@"U"];
  }

  if ([v5 has_responseStatus])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "responseStatus")}];
    [v4 setObject:v10 forKey:@"s"];
  }

  if ([v5 has_failReason])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "failReason")}];
    [v4 setObject:v11 forKey:@"fR"];
  }

  v12 = [v5 token];

  if (v12)
  {
    v13 = [v5 token];
    [v4 setObject:v13 forKey:@"t"];
  }

  if ([v5 has_internalBuild])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "internalBuild")}];
    [v4 setObject:v14 forKey:@"x-internal"];
  }

  if ([v5 has_loggingProfile])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "loggingProfile")}];
    [v4 setObject:v15 forKey:@"x-logging"];
  }

  v16 = [v5 applicationId];

  if (v16)
  {
    v17 = [v5 applicationId];
    [v4 setObject:v17 forKey:@"qai"];
  }

  if ([v5 has_requestType])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "requestType")}];
    [v4 setObject:v18 forKey:@"qat"];
  }

  v19 = [v5 idsSessionId];

  if (v19)
  {
    v20 = [v5 idsSessionId];
    [v4 setObject:v20 forKey:@"qids"];
  }

  if ([v5 has_sharedSession])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "sharedSession")}];
    [v4 setObject:v21 forKey:@"qrss"];
  }

  if ([v5 has_protocolVersion])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "protocolVersion")}];
    [v4 setObject:v22 forKey:@"qv"];
  }

  return v4;
}

- (id)extractCommandWebTunnelResponseFrom:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "command")}];
  [v5 setObject:v7 forKey:@"c"];

  if ([v6 has_messageId])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "messageId")}];
    [v5 setObject:v8 forKey:@"i"];
  }

  v9 = [v6 messageUUID];

  if (v9)
  {
    v10 = [v6 messageUUID];
    [v5 setObject:v10 forKey:@"U"];
  }

  if ([v6 has_responseStatus])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "responseStatus")}];
    [v5 setObject:v11 forKey:@"s"];
  }

  v12 = [v6 contentType];

  if (v12)
  {
    v13 = [v6 contentType];
    [v5 setObject:v13 forKey:@"cT"];
  }

  if ([v6 has_epochTimeNanos])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "epochTimeNanos")}];
    [v5 setObject:v14 forKey:@"e"];
  }

  v15 = [v6 httpUrl];

  if (v15)
  {
    v16 = [v6 httpUrl];
    [v5 setObject:v16 forKey:@"u"];
  }

  v17 = [v6 httpHeaders];
  v18 = [(IDSAPSUserPayload *)self extractMadridHttpHeadersFrom:v17];
  v19 = v18;
  if (v18 && [v18 count])
  {
    [v5 setObject:v19 forKey:@"h"];
  }

  v20 = [v6 httpBody];

  if (v20)
  {
    v21 = [v6 httpBody];
    [v5 setObject:v21 forKey:@"b"];
  }

  v22 = [v6 httpBodyUrl];

  if (v22)
  {
    v23 = [v6 httpBodyUrl];
    [v5 setObject:v23 forKey:@"bu"];
  }

  v24 = [v6 httpBodyKey];

  if (v24)
  {
    v25 = [v6 httpBodyKey];
    [v5 setObject:v25 forKey:@"bk"];
  }

  if ([v6 has_httpResponseStatus])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "httpResponseStatus")}];
    [v5 setObject:v26 forKey:@"hs"];
  }

  v27 = [v6 httpErrorMsg];

  if (v27)
  {
    v28 = [v6 httpErrorMsg];
    [v5 setObject:v28 forKey:@"hr"];
  }

  return v5;
}

- (id)extractMadridHttpHeadersFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3;
  v6 = [v5 adhocServiceOverride];

  if (v6)
  {
    v7 = [v5 adhocServiceOverride];
    [v4 setObject:v7 forKey:@"aS"];
  }

  v8 = [v5 responseIdentifierString];

  if (v8)
  {
    v9 = [v5 responseIdentifierString];
    [v4 setObject:v9 forKey:@"ri"];
  }

  v10 = [v5 strictTransportSecurity];

  if (v10)
  {
    v11 = [v5 strictTransportSecurity];
    [v4 setObject:v11 forKey:@"strict-transport-security"];
  }

  v12 = [v5 traceId];

  if (v12)
  {
    v13 = [v5 traceId];
    [v4 setObject:v13 forKey:@"x-b3-traceid"];
  }

  v14 = [v5 splunkHint];

  if (v14)
  {
    v15 = [v5 splunkHint];
    [v4 setObject:v15 forKey:@"sh"];
  }

  v16 = [v5 asHttpHeader];

  if (v16)
  {
    v17 = [v5 asHttpHeader];
    [v4 setObject:v17 forKey:@"as"];
  }

  return v4;
}

- (id)extractMadridDeliveryContextFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 has_count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    [v4 setObject:v5 forKey:@"c"];
  }

  return v4;
}

- (id)extractQuickRelayAllocationStatusFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3;
  if ([v5 has_participantId])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "participantId")}];
    [v4 setObject:v6 forKey:@"qri"];
  }

  if ([v5 has_allocationStatus])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "allocationStatus")}];
    [v4 setObject:v7 forKey:@"qrs"];
  }

  v8 = [v5 token];

  if (v8)
  {
    v9 = [v5 token];
    [v4 setObject:v9 forKey:@"t"];
  }

  v10 = [v5 destinationId];

  if (v10)
  {
    v11 = [v5 destinationId];
    [v4 setObject:v11 forKey:@"tP"];
  }

  return v4;
}

- (id)extractQuickRelaySelfAllocTokenFrom:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3;
  v6 = [v5 relayIp];

  if (v6)
  {
    v7 = [v5 relayIp];
    [v4 setObject:v7 forKey:@"qrip"];
  }

  v8 = [v5 relayIpv6];

  if (v8)
  {
    v9 = [v5 relayIpv6];
    [v4 setObject:v9 forKey:@"qrip6"];
  }

  if ([v5 has_relayPort])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayPort")}];
    [v4 setObject:v10 forKey:@"qrp"];
  }

  v11 = [v5 relaySessionKey];

  if (v11)
  {
    v12 = [v5 relaySessionKey];
    [v4 setObject:v12 forKey:@"qrsk"];
  }

  v13 = [v5 relaySessionId];

  if (v13)
  {
    v14 = [v5 relaySessionId];
    [v4 setObject:v14 forKey:@"qrsi"];
  }

  v15 = [v5 relayAccessToken];

  if (v15)
  {
    v16 = [v5 relayAccessToken];
    [v4 setObject:v16 forKey:@"qrst"];
  }

  if ([v5 has_relayProvider])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayProvider")}];
    [v4 setObject:v17 forKey:@"qrpr"];
  }

  return v4;
}

- (id)extractMadridProtocolPayloadFrom:(id)a3
{
  v276 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "command")}];
  [v5 setObject:v7 forKey:@"c"];

  if ([v6 has_commandContext])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "commandContext")}];
    [v5 setObject:v8 forKey:@"cc"];
  }

  if ([v6 has_version])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "version")}];
    [v5 setObject:v9 forKey:@"v"];
  }

  v10 = [v6 payload];

  if (v10)
  {
    v11 = [v6 payload];
    [v5 setObject:v11 forKey:@"P"];
  }

  v12 = [v6 bulkedPayload];

  if (v12)
  {
    v13 = [v6 bulkedPayload];
    [v5 setObject:v13 forKey:@"N"];
  }

  v14 = [v6 fanoutPayload];

  if (v14)
  {
    v15 = [v6 fanoutPayload];
    [v5 setObject:v15 forKey:@"fP"];
  }

  v16 = [v6 additionalPayload];

  if (v16)
  {
    v17 = [v6 additionalPayload];
    [v5 setObject:v17 forKey:@"aP"];
  }

  v18 = [v6 payloadMetadata];

  if (v18)
  {
    v19 = [v6 payloadMetadata];
    [v5 setObject:v19 forKey:@"Pm"];
  }

  v20 = [v6 messageId];

  if (v20)
  {
    v21 = [v6 messageId];
    [v5 setObject:v21 forKey:@"i"];
  }

  v22 = [v6 messageUUID];

  if (v22)
  {
    v23 = [v6 messageUUID];
    [v5 setObject:v23 forKey:@"U"];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [v6 queueId];

    if (v24)
    {
      v25 = [v6 queueId];
      [v5 setObject:v25 forKey:@"qI"];
    }
  }

  if ([v6 has_deliveryStatus])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "deliveryStatus")}];
    [v5 setObject:v26 forKey:@"D"];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v6 deliveryContext];
    v28 = [(IDSAPSUserPayload *)self extractMadridDeliveryContextFrom:v27];

    if (v28 && [v28 count])
    {
      [v5 setObject:v28 forKey:@"Dc"];
    }
  }

  if ([v6 has_certifiedDeliveryVersion])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "certifiedDeliveryVersion")}];
    [v5 setObject:v29 forKey:@"cdv"];
  }

  v30 = [v6 certifiedDeliveryRts];

  if (v30)
  {
    v31 = [v6 certifiedDeliveryRts];
    [v5 setObject:v31 forKey:@"cdr"];
  }

  if ([v6 has_noResponseNeeded])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "noResponseNeeded")}];
    [v5 setObject:v32 forKey:@"nr"];
  }

  if ([v6 has_generateDeliveryReceipt])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "generateDeliveryReceipt")}];
    [v5 setObject:v33 forKey:@"gd"];
  }

  v34 = [v6 sessionToken];

  if (v34)
  {
    v35 = [v6 sessionToken];
    [v5 setObject:v35 forKey:@"sT"];
  }

  v36 = [v6 homekitSessionToken];

  if (v36)
  {
    v37 = [v6 homekitSessionToken];
    [v5 setObject:v37 forKey:@"hT"];
  }

  v38 = [v6 destinationId];

  if (v38)
  {
    v39 = [v6 destinationId];
    [v5 setObject:v39 forKey:@"tP"];
  }

  v40 = [v6 userAgent];

  if (v40)
  {
    v41 = [v6 userAgent];
    [v5 setObject:v41 forKey:@"ua"];
  }

  v42 = [v6 MMCSOwnerId];

  if (v42)
  {
    v43 = [v6 MMCSOwnerId];
    [v5 setObject:v43 forKey:@"mO"];
  }

  v44 = [v6 MMCSFileSignature];

  if (v44)
  {
    v45 = [v6 MMCSFileSignature];
    [v5 setObject:v45 forKey:@"mS"];
  }

  if ([v6 has_MMCSFileLength])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "MMCSFileLength")}];
    [v5 setObject:v46 forKey:@"mL"];
  }

  v47 = [v6 MMCSAuthToken];

  if (v47)
  {
    v48 = [v6 MMCSAuthToken];
    [v5 setObject:v48 forKey:@"mA"];
  }

  v49 = [v6 MMCSAuthUrl];

  if (v49)
  {
    v50 = [v6 MMCSAuthUrl];
    [v5 setObject:v50 forKey:@"mR"];
  }

  v51 = [v6 MMCSAuthId];

  if (v51)
  {
    v52 = [v6 MMCSAuthId];
    [v5 setObject:v52 forKey:@"mU"];
  }

  v53 = [v6 MMCSDownloadAuthList];

  if (v53)
  {
    v54 = [v6 MMCSDownloadAuthList];
    [v5 setObject:v54 forKey:@"dal"];
  }

  v55 = [v6 MMCSDownloadUrlList];

  if (v55)
  {
    v56 = [v6 MMCSDownloadUrlList];
    [v5 setObject:v56 forKey:@"dul"];
  }

  v57 = [v6 MMCSDownloadUrl];

  if (v57)
  {
    v58 = [v6 MMCSDownloadUrl];
    [v5 setObject:v58 forKey:@"dR"];
  }

  v59 = [v6 MMCSUploadUrl];

  if (v59)
  {
    v60 = [v6 MMCSUploadUrl];
    [v5 setObject:v60 forKey:@"uR"];
  }

  if ([v6 has_MMCSExpiryNanos])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "MMCSExpiryNanos")}];
    [v5 setObject:v61 forKey:@"mX"];
  }

  if ([v6 has_contentVersion])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "contentVersion")}];
    [v5 setObject:v62 forKey:@"cV"];
  }

  v63 = [v6 contentHeaders];

  if (v63)
  {
    v64 = [v6 contentHeaders];
    [v5 setObject:v64 forKey:@"cH"];
  }

  v65 = [v6 contentBody];

  if (v65)
  {
    v66 = [v6 contentBody];
    [v5 setObject:v66 forKey:@"cB"];
  }

  v67 = [v6 contentReferenceSignature];

  if (v67)
  {
    v68 = [v6 contentReferenceSignature];
    [v5 setObject:v68 forKey:@"cR"];
  }

  if ([v6 has_attachmentSize])
  {
    v69 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "attachmentSize")}];
    [v5 setObject:v69 forKey:@"mT"];
  }

  v70 = [v6 token];

  if (v70)
  {
    v71 = [v6 token];
    [v5 setObject:v71 forKey:@"t"];
  }

  v72 = [v6 senderId];

  if (v72)
  {
    v73 = [v6 senderId];
    [v5 setObject:v73 forKey:@"sP"];
  }

  v74 = [v6 senderOpaqueId];

  if (v74)
  {
    v75 = [v6 senderOpaqueId];
    [v5 setObject:v75 forKey:@"sI"];
  }

  v76 = [v6 mspId];

  if (v76)
  {
    v77 = [v6 mspId];
    [v5 setObject:v77 forKey:@"mP"];
  }

  if ([v6 has_responseStatus])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "responseStatus")}];
    [v5 setObject:v78 forKey:@"s"];
  }

  if ([v6 has_epochTimeNanos])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "epochTimeNanos")}];
    [v5 setObject:v79 forKey:@"e"];
  }

  if ([v6 has_originalEpochTimeNanos])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "originalEpochTimeNanos")}];
    [v5 setObject:v80 forKey:@"oe"];
  }

  if ([v6 has_failReason])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "failReason")}];
    [v5 setObject:v81 forKey:@"fR"];
  }

  v82 = [v6 failMessageId];

  if (v82)
  {
    v83 = [v6 failMessageId];
    [v5 setObject:v83 forKey:@"fU"];
  }

  v84 = [v6 failMessageIdString];

  if (v84)
  {
    v85 = [v6 failMessageIdString];
    [v5 setObject:v85 forKey:@"fM"];
  }

  if ([v6 has_failDownloadAttachmentSize])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "failDownloadAttachmentSize")}];
    [v5 setObject:v86 forKey:@"fFS"];
  }

  if ([v6 has_failUploadAttachmentSize])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "failUploadAttachmentSize")}];
    [v5 setObject:v87 forKey:@"fS"];
  }

  v88 = [v6 failReasonMessage];

  if (v88)
  {
    v89 = [v6 failReasonMessage];
    [v5 setObject:v89 forKey:@"fRM"];
  }

  if ([v6 has_failTimeElapsed])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "failTimeElapsed")}];
    [v5 setObject:v90 forKey:@"fTE"];
  }

  v91 = [v6 encryptionType];

  if (v91)
  {
    v92 = [v6 encryptionType];
    [v5 setObject:v92 forKey:@"E"];
  }

  if ([v6 has_storageFlags])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "storageFlags")}];
    [v5 setObject:v93 forKey:@"H"];
  }

  if ([v6 has_priority])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "priority")}];
    [v5 setObject:v94 forKey:@"pri"];
  }

  if ([v6 has_senderExpectsAck])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "senderExpectsAck")}];
    [v5 setObject:v95 forKey:@"ack"];
  }

  v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v97 = [v6 dstIdTokenList];
  v98 = [v97 countByEnumeratingWithState:&v268 objects:v275 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v269;
    do
    {
      v101 = 0;
      do
      {
        if (*v269 != v100)
        {
          objc_enumerationMutation(v97);
        }

        v102 = [(IDSAPSUserPayload *)self extractMadridProtocolPayloadFrom:*(*(&v268 + 1) + 8 * v101)];
        [v96 addObject:v102];

        ++v101;
      }

      while (v99 != v101);
      v99 = [v97 countByEnumeratingWithState:&v268 objects:v275 count:16];
    }

    while (v99);
  }

  if ([v96 count])
  {
    [v5 setObject:v96 forKey:@"dtl"];
  }

  v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v104 = [v6 madridMessageList];
  v105 = [v104 countByEnumeratingWithState:&v264 objects:v274 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v265;
    do
    {
      v108 = 0;
      do
      {
        if (*v265 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = [(IDSAPSUserPayload *)self extractMadridProtocolPayloadFrom:*(*(&v264 + 1) + 8 * v108)];
        [v103 addObject:v109];

        ++v108;
      }

      while (v106 != v108);
      v106 = [v104 countByEnumeratingWithState:&v264 objects:v274 count:16];
    }

    while (v106);
  }

  if ([v103 count])
  {
    [v5 setObject:v103 forKey:@"mml"];
  }

  if ([v6 has_storageCheckVersion])
  {
    v110 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "storageCheckVersion")}];
    [v5 setObject:v110 forKey:@"scv"];
  }

  if ([v6 has_dateExpirationSeconds])
  {
    v111 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "dateExpirationSeconds")}];
    [v5 setObject:v111 forKey:@"eX"];
  }

  if ([v6 has_madridProtocol])
  {
    v112 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "madridProtocol")}];
    [v5 setObject:v112 forKey:@"xp"];
  }

  if ([v6 has_internalBuild])
  {
    v113 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "internalBuild")}];
    [v5 setObject:v113 forKey:@"x-internal"];
  }

  if ([v6 has_loggingProfile])
  {
    v114 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "loggingProfile")}];
    [v5 setObject:v114 forKey:@"x-logging"];
  }

  if ([v6 has_traceProfile])
  {
    v115 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "traceProfile")}];
    [v5 setObject:v115 forKey:@"x-trace"];
  }

  if ([v6 has_groupMessage])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "groupMessage")}];
    [v5 setObject:v116 forKey:@"gm"];
  }

  v117 = [v6 contentType];

  if (v117)
  {
    v118 = [v6 contentType];
    [v5 setObject:v118 forKey:@"cT"];
  }

  v119 = [v6 adhocServiceOverride];

  if (v119)
  {
    v120 = [v6 adhocServiceOverride];
    [v5 setObject:v120 forKey:@"aS"];
  }

  v121 = [v6 responseIdentifier];

  if (v121)
  {
    v122 = [v6 responseIdentifier];
    [v5 setObject:v122 forKey:@"rI"];
  }

  v123 = [v6 responseIdentifierString];

  if (v123)
  {
    v124 = [v6 responseIdentifierString];
    [v5 setObject:v124 forKey:@"ri"];
  }

  v125 = [v6 strictTransportSecurity];

  if (v125)
  {
    v126 = [v6 strictTransportSecurity];
    [v5 setObject:v126 forKey:@"strict-transport-security"];
  }

  v127 = [v6 traceId];

  if (v127)
  {
    v128 = [v6 traceId];
    [v5 setObject:v128 forKey:@"x-b3-traceid"];
  }

  v129 = [v6 splunkHint];

  if (v129)
  {
    v130 = [v6 splunkHint];
    [v5 setObject:v130 forKey:@"sh"];
  }

  v131 = [v6 asHttpHeader];

  if (v131)
  {
    v132 = [v6 asHttpHeader];
    [v5 setObject:v132 forKey:@"as"];
  }

  if ([v6 has_homekitDeliveryStatus])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "homekitDeliveryStatus")}];
    [v5 setObject:v133 forKey:@"hD"];
  }

  v134 = [v6 homekitReportId];

  if (v134)
  {
    v135 = [v6 homekitReportId];
    [v5 setObject:v135 forKey:@"hI"];
  }

  if ([v6 has_retryCount])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "retryCount")}];
    [v5 setObject:v136 forKey:@"rc"];
  }

  v137 = [v6 testOptions];

  if (v137)
  {
    v138 = [v6 testOptions];
    [v5 setObject:v138 forKey:@"x-test-opts"];
  }

  if ([v6 has_fanoutChunkNumber])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "fanoutChunkNumber")}];
    [v5 setObject:v139 forKey:@"fcn"];
  }

  if ([v6 has_fanoutLastChunk])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "fanoutLastChunk")}];
    [v5 setObject:v140 forKey:@"flc"];
  }

  v141 = [v6 url];

  if (v141)
  {
    v142 = [v6 url];
    [v5 setObject:v142 forKey:@"url"];
  }

  if ([v6 has_faceTimeRetryCount])
  {
    v143 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "faceTimeRetryCount")}];
    [v5 setObject:v143 forKey:@"frc"];
  }

  if ([v6 has_webtunnelVersion])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "webtunnelVersion")}];
    [v5 setObject:v144 forKey:@"wV"];
  }

  v145 = [v6 httpUrl];

  if (v145)
  {
    v146 = [v6 httpUrl];
    [v5 setObject:v146 forKey:@"u"];
  }

  v147 = [v6 httpHeaders];
  v148 = [(IDSAPSUserPayload *)self extractMadridHttpHeadersFrom:v147];
  v149 = v148;
  if (v148 && [v148 count])
  {
    [v5 setObject:v149 forKey:@"h"];
  }

  v150 = [v6 httpBody];

  if (v150)
  {
    v151 = [v6 httpBody];
    [v5 setObject:v151 forKey:@"b"];
  }

  v152 = [v6 httpBodyUrl];

  if (v152)
  {
    v153 = [v6 httpBodyUrl];
    [v5 setObject:v153 forKey:@"bu"];
  }

  v154 = [v6 httpBodyKey];

  if (v154)
  {
    v155 = [v6 httpBodyKey];
    [v5 setObject:v155 forKey:@"bk"];
  }

  if ([v6 has_httpResponseStatus])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "httpResponseStatus")}];
    [v5 setObject:v156 forKey:@"hs"];
  }

  v157 = [v6 httpErrorMsg];

  if (v157)
  {
    v158 = [v6 httpErrorMsg];
    [v5 setObject:v158 forKey:@"hr"];
  }

  if ([v6 has_writeToCloudkit])
  {
    v159 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "writeToCloudkit")}];
    [v5 setObject:v159 forKey:@"ck"];
  }

  if ([v6 has_pessimisticCheck])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "pessimisticCheck")}];
    [v5 setObject:v160 forKey:@"x-pessimistic"];
  }

  if ([v6 has_unfilteredHeaders])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "unfilteredHeaders")}];
    [v5 setObject:v161 forKey:@"nH"];
  }

  if ([v6 has_deliveryStatusFlags])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deliveryStatusFlags")}];
    [v5 setObject:v162 forKey:@"O"];
  }

  v163 = [v6 conferenceURI];

  if (v163)
  {
    v164 = [v6 conferenceURI];
    [v5 setObject:v164 forKey:@"curi"];
  }

  v165 = [v6 selfSessionToken];

  if (v165)
  {
    v166 = [v6 selfSessionToken];
    [v5 setObject:v166 forKey:@"sst"];
  }

  v167 = [v6 queryHash];

  if (v167)
  {
    v168 = [v6 queryHash];
    [v5 setObject:v168 forKey:@"qH"];
  }

  if ([v6 has_testDropPoint])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "testDropPoint")}];
    [v5 setObject:v169 forKey:@"x-dp"];
  }

  if ([v6 has_userPlusOne])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "userPlusOne")}];
    [v5 setObject:v170 forKey:@"up1"];
  }

  if ([v6 has_isInitiatorKey])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isInitiatorKey")}];
    [v5 setObject:v171 forKey:@"is-initiator-key"];
  }

  if ([v6 has_errorCode])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "errorCode")}];
    [v5 setObject:v172 forKey:@"eC"];
  }

  if ([v6 has_messageCheckpoint])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "messageCheckpoint")}];
    [v5 setObject:v173 forKey:@"mc"];
  }

  if ([v6 has_conversationId])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "conversationId")}];
    [v5 setObject:v174 forKey:@"ci"];
  }

  if ([v6 has_protocolVersion])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "protocolVersion")}];
    [v5 setObject:v175 forKey:@"qv"];
  }

  v176 = [v6 applicationId];

  if (v176)
  {
    v177 = [v6 applicationId];
    [v5 setObject:v177 forKey:@"qai"];
  }

  if ([v6 has_reason])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "reason")}];
    [v5 setObject:v178 forKey:@"qr"];
  }

  if ([v6 has_prevErrorCode])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "prevErrorCode")}];
    [v5 setObject:v179 forKey:@"qpec"];
  }

  v180 = [v6 prevAccessToken];

  if (v180)
  {
    v181 = [v6 prevAccessToken];
    [v5 setObject:v181 forKey:@"qpat"];
  }

  v182 = [v6 prevRelayIp];

  if (v182)
  {
    v183 = [v6 prevRelayIp];
    [v5 setObject:v183 forKey:@"qpip"];
  }

  if ([v6 has_prevTimestamp])
  {
    v184 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "prevTimestamp")}];
    [v5 setObject:v184 forKey:@"qpt"];
  }

  v185 = [v6 activeAccessToken];

  if (v185)
  {
    v186 = [v6 activeAccessToken];
    [v5 setObject:v186 forKey:@"qaat"];
  }

  v187 = [v6 activeRelayIp];

  if (v187)
  {
    v188 = [v6 activeRelayIp];
    [v5 setObject:v188 forKey:@"qaip"];
  }

  if ([v6 has_selfAllocTokenCountOld])
  {
    v189 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "selfAllocTokenCountOld")}];
    [v5 setObject:v189 forKey:@"qsatc"];
  }

  if ([v6 has_selfAllocTokenCount])
  {
    v190 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "selfAllocTokenCount")}];
    [v5 setObject:v190 forKey:@"qsats"];
  }

  if ([v6 has_qrNewSession])
  {
    v191 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "qrNewSession")}];
    [v5 setObject:v191 forKey:@"qns"];
  }

  if ([v6 has_requestType])
  {
    v192 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "requestType")}];
    [v5 setObject:v192 forKey:@"qat"];
  }

  v193 = [v6 idsSessionId];

  if (v193)
  {
    v194 = [v6 idsSessionId];
    [v5 setObject:v194 forKey:@"qids"];
  }

  if ([v6 has_relayProvider])
  {
    v195 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayProvider")}];
    [v5 setObject:v195 forKey:@"qrpr"];
  }

  if ([v6 has_sharedSession])
  {
    v196 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "sharedSession")}];
    [v5 setObject:v196 forKey:@"qrss"];
  }

  v197 = [v6 groupId];

  if (v197)
  {
    v198 = [v6 groupId];
    [v5 setObject:v198 forKey:@"qgid"];
  }

  if ([v6 has_groupMemberCount])
  {
    v199 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "groupMemberCount")}];
    [v5 setObject:v199 forKey:@"qgmc"];
  }

  if ([v6 has_allocateInfoAttribute])
  {
    v200 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "allocateInfoAttribute")}];
    [v5 setObject:v200 forKey:@"qia"];
  }

  v201 = [v6 relayIp];

  if (v201)
  {
    v202 = [v6 relayIp];
    [v5 setObject:v202 forKey:@"qrip"];
  }

  v203 = [v6 relayIpv6];

  if (v203)
  {
    v204 = [v6 relayIpv6];
    [v5 setObject:v204 forKey:@"qrip6"];
  }

  if ([v6 has_relayPort])
  {
    v205 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayPort")}];
    [v5 setObject:v205 forKey:@"qrp"];
  }

  v206 = [v6 relayAccessToken];

  if (v206)
  {
    v207 = [v6 relayAccessToken];
    [v5 setObject:v207 forKey:@"qrst"];
  }

  v208 = [v6 relaySessionKey];

  if (v208)
  {
    v209 = [v6 relaySessionKey];
    [v5 setObject:v209 forKey:@"qrsk"];
  }

  v210 = [v6 relaySessionId];

  if (v210)
  {
    v211 = [v6 relaySessionId];
    [v5 setObject:v211 forKey:@"qrsi"];
  }

  if ([v6 has_expiryEpochTimeMillis])
  {
    v212 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "expiryEpochTimeMillis")}];
    [v5 setObject:v212 forKey:@"qe"];
  }

  v213 = [v6 initiatorIp];

  if (v213)
  {
    v214 = [v6 initiatorIp];
    [v5 setObject:v214 forKey:@"qsi"];
  }

  if ([v6 has_participantId])
  {
    v215 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "participantId")}];
    [v5 setObject:v215 forKey:@"qri"];
  }

  v216 = [v6 softwareVersion];

  if (v216)
  {
    v217 = [v6 softwareVersion];
    [v5 setObject:v217 forKey:@"qswv"];
  }

  v218 = [v6 relayBuildVersion];

  if (v218)
  {
    v219 = [v6 relayBuildVersion];
    [v5 setObject:v219 forKey:@"qrbv"];
  }

  if ([v6 has_allocationEpochTimeMillis])
  {
    v220 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "allocationEpochTimeMillis")}];
    [v5 setObject:v220 forKey:@"qsat"];
  }

  if ([v6 has_allocationStatus])
  {
    v221 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "allocationStatus")}];
    [v5 setObject:v221 forKey:@"qrs"];
  }

  v222 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v223 = [v6 allocationStatuses];
  v224 = [v223 countByEnumeratingWithState:&v260 objects:v273 count:16];
  if (v224)
  {
    v225 = v224;
    v226 = *v261;
    do
    {
      v227 = 0;
      do
      {
        if (*v261 != v226)
        {
          objc_enumerationMutation(v223);
        }

        v228 = [(IDSAPSUserPayload *)self extractQuickRelayAllocationStatusFrom:*(*(&v260 + 1) + 8 * v227)];
        [v222 addObject:v228];

        ++v227;
      }

      while (v225 != v227);
      v225 = [v223 countByEnumeratingWithState:&v260 objects:v273 count:16];
    }

    while (v225);
  }

  if ([v222 count])
  {
    [v5 setObject:v222 forKey:@"qal"];
  }

  v229 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v230 = [v6 selfAllocTokenList];
  v231 = [v230 countByEnumeratingWithState:&v256 objects:v272 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v257;
    do
    {
      v234 = 0;
      do
      {
        if (*v257 != v233)
        {
          objc_enumerationMutation(v230);
        }

        v235 = [(IDSAPSUserPayload *)self extractQuickRelaySelfAllocTokenFrom:*(*(&v256 + 1) + 8 * v234)];
        [v229 addObject:v235];

        ++v234;
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v256 objects:v272 count:16];
    }

    while (v232);
  }

  if ([v229 count])
  {
    [v5 setObject:v229 forKey:@"qsatv"];
  }

  v236 = [v6 relayReportingBlob];

  if (v236)
  {
    v237 = [v6 relayReportingBlob];
    [v5 setObject:v237 forKey:@"qrep"];
  }

  if ([v6 has_relayServerType])
  {
    v238 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayServerType")}];
    [v5 setObject:v238 forKey:@"qrast"];
  }

  if ([v6 has_qrErrorCode])
  {
    v239 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "qrErrorCode")}];
    [v5 setObject:v239 forKey:@"qec"];
  }

  if ([v6 has_originalCommand])
  {
    v240 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "originalCommand")}];
    [v5 setObject:v240 forKey:@"oC"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_relayHighPriorityPort])
  {
    v241 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayHighPriorityPort")}];
    [v5 setObject:v241 forKey:@"qrhpp"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_quickRelayUserType])
  {
    v242 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "quickRelayUserType")}];
    [v5 setObject:v242 forKey:@"qtu"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_ipFamilyPreference])
  {
    v243 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "ipFamilyPreference")}];
    [v5 setObject:v243 forKey:@"qipp"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_isBulkedPayload])
  {
    v244 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isBulkedPayload")}];
    [v5 setObject:v244 forKey:@"iB"];
  }

  if ([v6 has_wantsAppAck])
  {
    v245 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "wantsAppAck")}];
    [v5 setObject:v245 forKey:@"wA"];
  }

  if (objc_opt_respondsToSelector())
  {
    v246 = [v6 errorDomain];

    if (v246)
    {
      v247 = [v6 errorDomain];
      [v5 setObject:v247 forKey:@"eD"];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_expectsPeerResponse])
  {
    v248 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "expectsPeerResponse")}];
    [v5 setObject:v248 forKey:@"eR"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_allowGDR])
  {
    v249 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "allowGDR")}];
    [v5 setObject:v249 forKey:@"gdr"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 has_deliveryMinimumTimeDelay])
  {
    v250 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deliveryMinimumTimeDelay")}];
    [v5 setObject:v250 forKey:@"dMTs"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 has_deliveryMinimumTime])
  {
    v251 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "deliveryMinimumTime")}];
    [v5 setObject:v251 forKey:@"dmt"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_sendMode])
  {
    v252 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "sendMode")}];
    [v5 setObject:v252 forKey:@"sm"];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 has_isTrustedSender])
  {
    v253 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isTrustedSender")}];
    [v5 setObject:v253 forKey:@"htu"];
  }

  v254 = v5;

  return v5;
}

- (void)logHeaderDiffAgainstSource:(id)a3
{
  v4 = a3;
  v5 = [(IDSAPSUserPayload *)self payload];
  if (([v5 isEqualToDictionary:v4] & 1) == 0)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Payload received from blastdoor does not match the incoming user payload.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSAPSUserPayload", @"Payload received from blastdoor does not match the incoming user payload.");
    }

    [(IDSAPSUserPayload *)self logDiffBetween:v4 andTarget:v5 withKeyPath:@"."];
  }
}

- (void)logDiffBetween:(id)a3 andTarget:(id)a4 withKeyPath:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v48 = a5;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v9)
  {
    v10 = "IDSAPSUserPayload";
    v11 = *v55;
    v12 = @"IDSAPSUserPayload";
    do
    {
      v13 = 0;
      v46 = v9;
      do
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * v13);
        v15 = [obj objectForKey:{v14, v39, v40, v41, v42}];
        v16 = [v8 objectForKey:v14];
        v17 = v16;
        if (v15)
        {
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ .", v48, v14];
              [(IDSAPSUserPayload *)self logDiffBetween:v15 andTarget:v17 withKeyPath:v18];
            }

            else if (([v15 isEqual:v17] & 1) == 0)
            {
              v19 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v60 = v48;
                v61 = 2112;
                v62 = v14;
                v63 = 2112;
                v64 = v15;
                v65 = 2112;
                v66 = v17;
                _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "HeaderValueMismatch: key {%@%@}}, Source value {%@}, BlastDoor value {%@}", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v41 = v15;
                v42 = v17;
                v39 = v48;
                v40 = v14;
                _IDSLogV(0, @"IDSFoundation", v12, @"HeaderValueMismatch: key {%@%@}}, Source value {%@}, BlastDoor value {%@}");
              }
            }
          }

          else
          {
            v20 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              *buf = 138413058;
              v60 = v48;
              v61 = 2112;
              v62 = v14;
              v63 = 2112;
              v64 = v21;
              v65 = 2112;
              v66 = v15;
              v22 = v8;
              v23 = v11;
              v24 = v12;
              v25 = v10;
              v26 = v21;
              _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "MissingHeader: key {%@%@}, object class{%@}, value {%@}", buf, 0x2Au);

              v10 = v25;
              v12 = v24;
              v11 = v23;
              v8 = v22;
              v9 = v46;
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v41 = objc_opt_class();
              v42 = v15;
              v39 = v48;
              v40 = v14;
              _IDSLogV(0, @"IDSFoundation", v12, @"MissingHeader: key {%@%@}, object class{%@}, value {%@}");
            }
          }
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v9);
  }

  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = [obj allKeys];
  v43 = [v27 initWithArray:v28];

  v29 = objc_alloc(MEMORY[0x1E695DFA8]);
  v30 = [v8 allKeys];
  v45 = [v29 initWithArray:v30];

  [v45 minusSet:v43];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v47 = [v45 allObjects];
  v31 = [v47 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v31)
  {
    v32 = *v51;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v47);
        }

        v34 = *(*(&v50 + 1) + 8 * i);
        v35 = [v8 objectForKey:{v34, v39, v40, v41, v42}];
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = objc_opt_class();
          *buf = 138413058;
          v60 = v48;
          v61 = 2112;
          v62 = v34;
          v63 = 2112;
          v64 = v37;
          v65 = 2112;
          v66 = v35;
          v38 = v37;
          _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "Extraheader: key {%@%@}, object class{%@}, value {%@}", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v41 = objc_opt_class();
          v42 = v35;
          v39 = v48;
          v40 = v34;
          _IDSLogV(0, @"IDSFoundation", @"IDSAPSUserPayload", @"Extraheader: key {%@%@}, object class{%@}, value {%@}");
        }
      }

      v31 = [v47 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v31);
  }
}

@end