@interface IDSPeerAggregatableMessage
- (IDSPeerAggregatableMessage)initWithTargetToken:(id)a3 sessionToken:(id)a4 targetPeerID:(id)a5 encryptedData:(id)a6 wantsDeliveryStatus:(BOOL)a7 wantsCertifiedDelivery:(BOOL)a8 ackBlock:(id)a9 completionBlock:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)sizeOfKeysWithValues;
@end

@implementation IDSPeerAggregatableMessage

- (IDSPeerAggregatableMessage)initWithTargetToken:(id)a3 sessionToken:(id)a4 targetPeerID:(id)a5 encryptedData:(id)a6 wantsDeliveryStatus:(BOOL)a7 wantsCertifiedDelivery:(BOOL)a8 ackBlock:(id)a9 completionBlock:(id)a10
{
  v29 = a7;
  v31 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = a10;
  v32.receiver = self;
  v32.super_class = IDSPeerAggregatableMessage;
  v20 = [(IDSPeerAggregatableMessage *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_targetToken, a3);
    objc_storeStrong(&v21->_targetSessionToken, a4);
    objc_storeStrong(&v21->_targetPeerID, a5);
    objc_storeStrong(&v21->_encryptedData, a6);
    v22 = objc_retainBlock(v18);
    ackBlock = v21->_ackBlock;
    v21->_ackBlock = v22;

    v24 = objc_retainBlock(v19);
    completionBlock = v21->_completionBlock;
    v21->_completionBlock = v24;

    if (v29)
    {
      v26 = [NSNumber numberWithBool:1];
      wantsDeliveryStatus = v21->_wantsDeliveryStatus;
      v21->_wantsDeliveryStatus = v26;
    }

    v21->_wantsCertifiedDelivery = a8;
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

  v4 = [(IDSPeerAggregatableMessage *)self targetToken];
  v5 = [v4 rawToken];

  if (v5)
  {
    CFDictionarySetValue(Mutable, @"t", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091EC58();
  }

  v6 = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"sT", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091ECE0();
  }

  v7 = [(IDSPeerAggregatableMessage *)self targetPeerID];
  v8 = [v7 prefixedURI];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"tP", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091ED68();
  }

  v9 = [(IDSPeerAggregatableMessage *)self targetShortHandle];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"tPs", v9);
  }

  v10 = [(IDSPeerAggregatableMessage *)self senderShortHandle];
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"sTs", v10);
  }

  v11 = [(IDSPeerAggregatableMessage *)self encryptedData];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"P", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091EDF0();
  }

  v12 = [(IDSPeerAggregatableMessage *)self wantsDeliveryStatus];
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"D", v12);
  }

  if ([(IDSPeerAggregatableMessage *)self wantsCertifiedDelivery])
  {
    v13 = [NSNumber numberWithInteger:_IDSCertifiedDeliveryVersion()];
    if (v13)
    {
      CFDictionarySetValue(Mutable, IDSCertifiedDeliveryVersionKey, v13);
    }
  }

  v14 = [(IDSPeerAggregatableMessage *)self anonymizedSenderID];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"sI", v14);
  }

  v15 = [(IDSPeerAggregatableMessage *)self encryptionType];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"E", v15);
  }

  v16 = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"Pm", v16);
  }

  v17 = [(IDSPeerAggregatableMessage *)self dataLength];
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"mT", v17);
  }

  return Mutable;
}

- (unint64_t)sizeOfKeysWithValues
{
  v3 = [(IDSPeerAggregatableMessage *)self encryptedData];
  v4 = [v3 length];

  v5 = [(IDSPeerAggregatableMessage *)self targetToken];
  v6 = [v5 rawToken];
  v7 = [v6 length];

  v8 = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  v9 = [v8 length];

  v10 = [(IDSPeerAggregatableMessage *)self targetPeerID];
  v11 = [v10 prefixedURI];
  v12 = [v11 lengthOfBytesUsingEncoding:4];

  v13 = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  v14 = [v13 length];

  return v7 + v9 + v4 + v14 + v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(IDSPeerAggregatableMessage *)self encryptedData];
  [v4 setEncryptedData:v5];

  v6 = [(IDSPeerAggregatableMessage *)self targetPeerID];
  [v4 setTargetPeerID:v6];

  v7 = [(IDSPeerAggregatableMessage *)self targetToken];
  [v4 setTargetToken:v7];

  v8 = [(IDSPeerAggregatableMessage *)self targetSessionToken];
  [v4 setTargetSessionToken:v8];

  v9 = [(IDSPeerAggregatableMessage *)self targetShortHandle];
  [v4 setTargetShortHandle:v9];

  v10 = [(IDSPeerAggregatableMessage *)self senderShortHandle];
  [v4 setSenderShortHandle:v10];

  v11 = [(IDSPeerAggregatableMessage *)self completionBlock];
  [v4 setCompletionBlock:v11];

  v12 = [(IDSPeerAggregatableMessage *)self ackBlock];
  [v4 setAckBlock:v12];

  v13 = [(IDSPeerAggregatableMessage *)self wantsDeliveryStatus];
  [v4 setWantsDeliveryStatus:v13];

  [v4 setWantsCertifiedDelivery:{-[IDSPeerAggregatableMessage wantsCertifiedDelivery](self, "wantsCertifiedDelivery")}];
  v14 = [(IDSPeerAggregatableMessage *)self anonymizedSenderID];
  [v4 setAnonymizedSenderID:v14];

  v15 = [(IDSPeerAggregatableMessage *)self encryptionType];
  [v4 setEncryptionType:v15];

  v16 = [(IDSPeerAggregatableMessage *)self payloadMetadata];
  [v4 setPayloadMetadata:v16];

  [v4 setCommand:self->_command];
  [v4 setDataLength:self->_dataLength];
  [v4 setExpirationDate:self->_expirationDate];
  return v4;
}

@end