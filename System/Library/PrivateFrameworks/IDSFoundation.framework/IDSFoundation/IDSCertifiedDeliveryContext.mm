@interface IDSCertifiedDeliveryContext
- (IDSCertifiedDeliveryContext)initWithCertifiedDeliveryContext:(id)context queryHash:(id)hash;
- (IDSCertifiedDeliveryContext)initWithCoder:(id)coder;
- (IDSCertifiedDeliveryContext)initWithDataRepresentation:(id)representation;
- (IDSCertifiedDeliveryContext)initWithDictionaryRepresentation:(id)representation;
- (IDSCertifiedDeliveryContext)initWithGUID:(id)d service:(id)service encryptionType:(int64_t)type certifiedDeliveryVersion:(int64_t)version certifiedDeliveryRTS:(id)s senderToken:(id)token failureReason:(id)reason failureReasonMessage:(id)self0 replayKey:(id)self1 generateDeliveryReceipt:(BOOL)self2 deliveryStatusContext:(id)self3 localURI:(id)self4 remoteURI:(id)self5 queryHash:(id)self6;
- (NSDictionary)dictionaryRepresentation;
- (id)dataRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSCertifiedDeliveryContext

- (IDSCertifiedDeliveryContext)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v33.receiver = self;
  v33.super_class = IDSCertifiedDeliveryContext;
  v5 = [(IDSCertifiedDeliveryContext *)&v33 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextGUIDKey"];
    originalGUID = v5->_originalGUID;
    v5->_originalGUID = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextServiceKey"];
    service = v5->_service;
    v5->_service = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextReplayKeyKey"];
    if (v10)
    {
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
      replayKey = v5->_replayKey;
      v5->_replayKey = v11;
    }

    v13 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
    v5->_originalEncryptionType = [v13 integerValue];

    v14 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextVersionKey"];
    v5->_certifiedDeliveryVersion = [v14 integerValue];

    v15 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextRTSKey"];
    certifiedDeliveryRTS = v5->_certifiedDeliveryRTS;
    v5->_certifiedDeliveryRTS = v15;

    v17 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextSenderTokenKey"];
    senderToken = v5->_senderToken;
    v5->_senderToken = v17;

    v19 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
    v5->_generateDeliveryReceipt = [v19 BOOLValue];

    v20 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
    deliveryStatusContext = v5->_deliveryStatusContext;
    v5->_deliveryStatusContext = v20;

    v22 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextLocalURIKey"];
    localURI = v5->_localURI;
    v5->_localURI = v22;

    v24 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextRemoteURIKey"];
    remoteURI = v5->_remoteURI;
    v5->_remoteURI = v24;

    v26 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextQueryHashKey"];
    queryHash = v5->_queryHash;
    v5->_queryHash = v26;

    v28 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextFailureReasonKey"];
    failureReason = v5->_failureReason;
    v5->_failureReason = v28;

    v30 = [representationCopy objectForKeyedSubscript:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
    failureReasonMessage = v5->_failureReasonMessage;
    v5->_failureReasonMessage = v30;
  }

  return v5;
}

- (IDSCertifiedDeliveryContext)initWithCertifiedDeliveryContext:(id)context queryHash:(id)hash
{
  hashCopy = hash;
  contextCopy = context;
  originalGUID = [contextCopy originalGUID];
  service = [contextCopy service];
  originalEncryptionType = [contextCopy originalEncryptionType];
  certifiedDeliveryVersion = [contextCopy certifiedDeliveryVersion];
  certifiedDeliveryRTS = [contextCopy certifiedDeliveryRTS];
  senderToken = [contextCopy senderToken];
  failureReason = [contextCopy failureReason];
  failureReasonMessage = [contextCopy failureReasonMessage];
  replayKey = [contextCopy replayKey];
  generateDeliveryReceipt = [contextCopy generateDeliveryReceipt];
  deliveryStatusContext = [contextCopy deliveryStatusContext];
  localURI = [contextCopy localURI];
  remoteURI = [contextCopy remoteURI];

  LOBYTE(v15) = generateDeliveryReceipt;
  v21 = [(IDSCertifiedDeliveryContext *)self initWithGUID:originalGUID service:service encryptionType:originalEncryptionType certifiedDeliveryVersion:certifiedDeliveryVersion certifiedDeliveryRTS:certifiedDeliveryRTS senderToken:senderToken failureReason:failureReason failureReasonMessage:failureReasonMessage replayKey:replayKey generateDeliveryReceipt:v15 deliveryStatusContext:deliveryStatusContext localURI:localURI remoteURI:remoteURI queryHash:hashCopy];

  return v21;
}

- (IDSCertifiedDeliveryContext)initWithGUID:(id)d service:(id)service encryptionType:(int64_t)type certifiedDeliveryVersion:(int64_t)version certifiedDeliveryRTS:(id)s senderToken:(id)token failureReason:(id)reason failureReasonMessage:(id)self0 replayKey:(id)self1 generateDeliveryReceipt:(BOOL)self2 deliveryStatusContext:(id)self3 localURI:(id)self4 remoteURI:(id)self5 queryHash:(id)self6
{
  dCopy = d;
  serviceCopy = service;
  serviceCopy2 = service;
  sCopy = s;
  sCopy2 = s;
  tokenCopy = token;
  tokenCopy2 = token;
  reasonCopy = reason;
  messageCopy = message;
  keyCopy = key;
  contextCopy = context;
  iCopy = i;
  rICopy = rI;
  hashCopy = hash;
  v40.receiver = self;
  v40.super_class = IDSCertifiedDeliveryContext;
  v27 = [(IDSCertifiedDeliveryContext *)&v40 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_originalGUID, d);
    objc_storeStrong(&v28->_service, serviceCopy);
    v28->_originalEncryptionType = type;
    v28->_certifiedDeliveryVersion = version;
    objc_storeStrong(&v28->_certifiedDeliveryRTS, sCopy);
    objc_storeStrong(&v28->_senderToken, tokenCopy);
    objc_storeStrong(&v28->_failureReason, reason);
    objc_storeStrong(&v28->_failureReasonMessage, message);
    objc_storeStrong(&v28->_replayKey, key);
    v28->_generateDeliveryReceipt = receipt;
    objc_storeStrong(&v28->_deliveryStatusContext, context);
    objc_storeStrong(&v28->_localURI, i);
    objc_storeStrong(&v28->_remoteURI, rI);
    objc_storeStrong(&v28->_queryHash, hash);
  }

  return v28;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self->_originalGUID;
  if (v4)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextGUIDKey", v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DA34();
  }

  v5 = self->_service;
  if (v5)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextServiceKey", v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DABC();
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_originalEncryptionType];
  if (v6)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_certifiedDeliveryVersion];
  if (v7)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextVersionKey", v7);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DB44();
  }

  v8 = self->_certifiedDeliveryRTS;
  if (v8)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextRTSKey", v8);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DBCC();
  }

  v9 = self->_senderToken;
  if (v9)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextSenderTokenKey", v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DC54();
  }

  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_replayKey requiringSecureCoding:1 error:0];
  if (v10)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextReplayKeyKey", v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DCDC();
  }

  failureReason = self->_failureReason;
  if (failureReason)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextFailureReasonKey", failureReason);
  }

  failureReasonMessage = self->_failureReasonMessage;
  if (failureReasonMessage)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextFailureReasonMessageKey", failureReasonMessage);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_generateDeliveryReceipt];
  if (v13)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DD64();
  }

  deliveryStatusContext = self->_deliveryStatusContext;
  if (deliveryStatusContext)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextDeliveryStatusContextKey", deliveryStatusContext);
  }

  v15 = self->_localURI;
  if (v15)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextLocalURIKey", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DDEC();
  }

  v16 = self->_remoteURI;
  if (v16)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextRemoteURIKey", v16);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1DE74();
  }

  queryHash = self->_queryHash;
  if (queryHash)
  {
    CFDictionarySetValue(v3, @"IDSCertifiedDeliveryContextQueryHashKey", queryHash);
  }

  return v3;
}

- (IDSCertifiedDeliveryContext)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1DEFC(representationCopy, v6, v7);
    }
  }

  return v5;
}

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1DF84(v3, v4);
    }
  }

  return v2;
}

- (IDSCertifiedDeliveryContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextGUIDKey"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextServiceKey"];
  v4 = [coderCopy decodeIntegerForKey:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
  v19 = [coderCopy decodeIntegerForKey:@"IDSCertifiedDeliveryContextVersionKey"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextRTSKey"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextSenderTokenKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextFailureReasonKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextReplayKeyKey"];
  v8 = [coderCopy decodeBoolForKey:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextLocalURIKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextRemoteURIKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextQueryHashKey"];

  LOBYTE(v13) = v8;
  v20 = [(IDSCertifiedDeliveryContext *)self initWithGUID:v15 service:v21 encryptionType:v4 certifiedDeliveryVersion:v19 certifiedDeliveryRTS:v18 senderToken:v17 failureReason:v5 failureReasonMessage:v6 replayKey:v7 generateDeliveryReceipt:v13 deliveryStatusContext:v14 localURI:v9 remoteURI:v10 queryHash:v11];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  originalGUID = self->_originalGUID;
  coderCopy = coder;
  [coderCopy encodeObject:originalGUID forKey:@"IDSCertifiedDeliveryContextGUIDKey"];
  [coderCopy encodeObject:self->_service forKey:@"IDSCertifiedDeliveryContextServiceKey"];
  [coderCopy encodeInteger:self->_originalEncryptionType forKey:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
  [coderCopy encodeInteger:self->_certifiedDeliveryVersion forKey:@"IDSCertifiedDeliveryContextVersionKey"];
  [coderCopy encodeObject:self->_certifiedDeliveryRTS forKey:@"IDSCertifiedDeliveryContextRTSKey"];
  [coderCopy encodeObject:self->_senderToken forKey:@"IDSCertifiedDeliveryContextSenderTokenKey"];
  [coderCopy encodeObject:self->_failureReason forKey:@"IDSCertifiedDeliveryContextFailureReasonKey"];
  [coderCopy encodeObject:self->_failureReasonMessage forKey:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
  [coderCopy encodeObject:self->_replayKey forKey:@"IDSCertifiedDeliveryContextReplayKeyKey"];
  [coderCopy encodeBool:self->_generateDeliveryReceipt forKey:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
  [coderCopy encodeObject:self->_deliveryStatusContext forKey:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
  [coderCopy encodeObject:self->_localURI forKey:@"IDSCertifiedDeliveryContextLocalURIKey"];
  [coderCopy encodeObject:self->_remoteURI forKey:@"IDSCertifiedDeliveryContextRemoteURIKey"];
  [coderCopy encodeObject:self->_queryHash forKey:@"IDSCertifiedDeliveryContextQueryHashKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  originalGUID = self->_originalGUID;
  service = self->_service;
  certifiedDeliveryVersion = self->_certifiedDeliveryVersion;
  senderToken = self->_senderToken;
  if (self->_generateDeliveryReceipt)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = IDSLoggableDescriptionForHandleOnService(self->_localURI, self->_service);
  v11 = IDSLoggableDescriptionForHandleOnService(self->_remoteURI, self->_service);
  v12 = [v3 stringWithFormat:@"<%@: %p guid: %@, service: %@, version: %lu, senderToken: %@, generateDeliveryReceipt: %@, localURI: %@, remoteURI: %@, failureReason: %@, failureReasonMessage: %@, rts: %@, replayKey: %@, queryHash: %@, deliveryStatusContext: %@>", v4, self, originalGUID, service, certifiedDeliveryVersion, senderToken, v9, v10, v11, self->_failureReason, self->_failureReasonMessage, self->_certifiedDeliveryRTS, self->_replayKey, self->_queryHash, self->_deliveryStatusContext];

  return v12;
}

@end