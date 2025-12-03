@interface IDSPeerAggregatableMessage
- (IDSPeerAggregatableMessage)initWithTargetToken:(id)token sessionToken:(id)sessionToken targetPeerID:(id)d encryptedData:(id)data wantsDeliveryStatus:(BOOL)status wantsCertifiedDelivery:(BOOL)delivery ackBlock:(id)block completionBlock:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)sizeOfKeysWithValues;
@end

@implementation IDSPeerAggregatableMessage

- (IDSPeerAggregatableMessage)initWithTargetToken:(id)token sessionToken:(id)sessionToken targetPeerID:(id)d encryptedData:(id)data wantsDeliveryStatus:(BOOL)status wantsCertifiedDelivery:(BOOL)delivery ackBlock:(id)block completionBlock:(id)self0
{
  statusCopy = status;
  tokenCopy = token;
  sessionTokenCopy = sessionToken;
  dCopy = d;
  dataCopy = data;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v32.receiver = self;
  v32.super_class = IDSPeerAggregatableMessage;
  v20 = [(IDSPeerAggregatableMessage *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_targetToken, token);
    objc_storeStrong(&v21->_targetSessionToken, sessionToken);
    objc_storeStrong(&v21->_targetPeerID, d);
    objc_storeStrong(&v21->_encryptedData, data);
    v22 = objc_retainBlock(blockCopy);
    ackBlock = v21->_ackBlock;
    v21->_ackBlock = v22;

    v24 = objc_retainBlock(completionBlockCopy);
    completionBlock = v21->_completionBlock;
    v21->_completionBlock = v24;

    if (statusCopy)
    {
      v26 = [NSNumber numberWithBool:1];
      wantsDeliveryStatus = v21->_wantsDeliveryStatus;
      v21->_wantsDeliveryStatus = v26;
    }

    v21->_wantsCertifiedDelivery = delivery;
  }

  return v21;
}

- (id)dictionaryRepresentation
{
  Mutable = objc_alloc_init(NSMutableDictionary);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  targetToken = [(IDSPeerAggregatableMessage *)self targetToken];
  rawToken = [targetToken rawToken];

  if (rawToken)
  {
    CFDictionarySetValue(Mutable, @"t", rawToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091EC58();
  }

  targetSessionToken = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  if (targetSessionToken)
  {
    CFDictionarySetValue(Mutable, @"sT", targetSessionToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091ECE0();
  }

  targetPeerID = [(IDSPeerAggregatableMessage *)self targetPeerID];
  prefixedURI = [targetPeerID prefixedURI];

  if (prefixedURI)
  {
    CFDictionarySetValue(Mutable, @"tP", prefixedURI);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091ED68();
  }

  targetShortHandle = [(IDSPeerAggregatableMessage *)self targetShortHandle];
  if (targetShortHandle)
  {
    CFDictionarySetValue(Mutable, @"tPs", targetShortHandle);
  }

  senderShortHandle = [(IDSPeerAggregatableMessage *)self senderShortHandle];
  if (senderShortHandle)
  {
    CFDictionarySetValue(Mutable, @"sTs", senderShortHandle);
  }

  encryptedData = [(IDSPeerAggregatableMessage *)self encryptedData];
  if (encryptedData)
  {
    CFDictionarySetValue(Mutable, @"P", encryptedData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091EDF0();
  }

  wantsDeliveryStatus = [(IDSPeerAggregatableMessage *)self wantsDeliveryStatus];
  if (wantsDeliveryStatus)
  {
    CFDictionarySetValue(Mutable, @"D", wantsDeliveryStatus);
  }

  if ([(IDSPeerAggregatableMessage *)self wantsCertifiedDelivery])
  {
    v13 = [NSNumber numberWithInteger:_IDSCertifiedDeliveryVersion()];
    if (v13)
    {
      CFDictionarySetValue(Mutable, IDSCertifiedDeliveryVersionKey, v13);
    }
  }

  anonymizedSenderID = [(IDSPeerAggregatableMessage *)self anonymizedSenderID];
  if (anonymizedSenderID)
  {
    CFDictionarySetValue(Mutable, @"sI", anonymizedSenderID);
  }

  encryptionType = [(IDSPeerAggregatableMessage *)self encryptionType];
  if (encryptionType)
  {
    CFDictionarySetValue(Mutable, @"E", encryptionType);
  }

  payloadMetadata = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  if (payloadMetadata)
  {
    CFDictionarySetValue(Mutable, @"Pm", payloadMetadata);
  }

  dataLength = [(IDSPeerAggregatableMessage *)self dataLength];
  if (dataLength)
  {
    CFDictionarySetValue(Mutable, @"mT", dataLength);
  }

  return Mutable;
}

- (unint64_t)sizeOfKeysWithValues
{
  encryptedData = [(IDSPeerAggregatableMessage *)self encryptedData];
  v4 = [encryptedData length];

  targetToken = [(IDSPeerAggregatableMessage *)self targetToken];
  rawToken = [targetToken rawToken];
  v7 = [rawToken length];

  targetSessionToken = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  v9 = [targetSessionToken length];

  targetPeerID = [(IDSPeerAggregatableMessage *)self targetPeerID];
  prefixedURI = [targetPeerID prefixedURI];
  v12 = [prefixedURI lengthOfBytesUsingEncoding:4];

  payloadMetadata = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  v14 = [payloadMetadata length];

  return v7 + v9 + v4 + v14 + v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  encryptedData = [(IDSPeerAggregatableMessage *)self encryptedData];
  [v4 setEncryptedData:encryptedData];

  targetPeerID = [(IDSPeerAggregatableMessage *)self targetPeerID];
  [v4 setTargetPeerID:targetPeerID];

  targetToken = [(IDSPeerAggregatableMessage *)self targetToken];
  [v4 setTargetToken:targetToken];

  targetSessionToken = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  [v4 setTargetSessionToken:targetSessionToken];

  targetShortHandle = [(IDSPeerAggregatableMessage *)self targetShortHandle];
  [v4 setTargetShortHandle:targetShortHandle];

  senderShortHandle = [(IDSPeerAggregatableMessage *)self senderShortHandle];
  [v4 setSenderShortHandle:senderShortHandle];

  completionBlock = [(IDSPeerAggregatableMessage *)self completionBlock];
  [v4 setCompletionBlock:completionBlock];

  ackBlock = [(IDSPeerAggregatableMessage *)self ackBlock];
  [v4 setAckBlock:ackBlock];

  wantsDeliveryStatus = [(IDSPeerAggregatableMessage *)self wantsDeliveryStatus];
  [v4 setWantsDeliveryStatus:wantsDeliveryStatus];

  [v4 setWantsCertifiedDelivery:{-[IDSPeerAggregatableMessage wantsCertifiedDelivery](self, "wantsCertifiedDelivery")}];
  anonymizedSenderID = [(IDSPeerAggregatableMessage *)self anonymizedSenderID];
  [v4 setAnonymizedSenderID:anonymizedSenderID];

  encryptionType = [(IDSPeerAggregatableMessage *)self encryptionType];
  [v4 setEncryptionType:encryptionType];

  payloadMetadata = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  [v4 setPayloadMetadata:payloadMetadata];

  [v4 setCommand:self->_command];
  [v4 setDataLength:self->_dataLength];
  [v4 setExpirationDate:self->_expirationDate];
  return v4;
}

@end