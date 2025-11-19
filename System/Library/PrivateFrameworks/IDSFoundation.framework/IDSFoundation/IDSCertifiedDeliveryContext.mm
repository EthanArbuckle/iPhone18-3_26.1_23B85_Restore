@interface IDSCertifiedDeliveryContext
- (IDSCertifiedDeliveryContext)initWithCertifiedDeliveryContext:(id)a3 queryHash:(id)a4;
- (IDSCertifiedDeliveryContext)initWithCoder:(id)a3;
- (IDSCertifiedDeliveryContext)initWithDataRepresentation:(id)a3;
- (IDSCertifiedDeliveryContext)initWithDictionaryRepresentation:(id)a3;
- (IDSCertifiedDeliveryContext)initWithGUID:(id)a3 service:(id)a4 encryptionType:(int64_t)a5 certifiedDeliveryVersion:(int64_t)a6 certifiedDeliveryRTS:(id)a7 senderToken:(id)a8 failureReason:(id)a9 failureReasonMessage:(id)a10 replayKey:(id)a11 generateDeliveryReceipt:(BOOL)a12 deliveryStatusContext:(id)a13 localURI:(id)a14 remoteURI:(id)a15 queryHash:(id)a16;
- (NSDictionary)dictionaryRepresentation;
- (id)dataRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSCertifiedDeliveryContext

- (IDSCertifiedDeliveryContext)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = IDSCertifiedDeliveryContext;
  v5 = [(IDSCertifiedDeliveryContext *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextGUIDKey"];
    originalGUID = v5->_originalGUID;
    v5->_originalGUID = v6;

    v8 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextServiceKey"];
    service = v5->_service;
    v5->_service = v8;

    v10 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextReplayKeyKey"];
    if (v10)
    {
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
      replayKey = v5->_replayKey;
      v5->_replayKey = v11;
    }

    v13 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
    v5->_originalEncryptionType = [v13 integerValue];

    v14 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextVersionKey"];
    v5->_certifiedDeliveryVersion = [v14 integerValue];

    v15 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextRTSKey"];
    certifiedDeliveryRTS = v5->_certifiedDeliveryRTS;
    v5->_certifiedDeliveryRTS = v15;

    v17 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextSenderTokenKey"];
    senderToken = v5->_senderToken;
    v5->_senderToken = v17;

    v19 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
    v5->_generateDeliveryReceipt = [v19 BOOLValue];

    v20 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
    deliveryStatusContext = v5->_deliveryStatusContext;
    v5->_deliveryStatusContext = v20;

    v22 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextLocalURIKey"];
    localURI = v5->_localURI;
    v5->_localURI = v22;

    v24 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextRemoteURIKey"];
    remoteURI = v5->_remoteURI;
    v5->_remoteURI = v24;

    v26 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextQueryHashKey"];
    queryHash = v5->_queryHash;
    v5->_queryHash = v26;

    v28 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextFailureReasonKey"];
    failureReason = v5->_failureReason;
    v5->_failureReason = v28;

    v30 = [v4 objectForKeyedSubscript:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
    failureReasonMessage = v5->_failureReasonMessage;
    v5->_failureReasonMessage = v30;
  }

  return v5;
}

- (IDSCertifiedDeliveryContext)initWithCertifiedDeliveryContext:(id)a3 queryHash:(id)a4
{
  v6 = a4;
  v7 = a3;
  v23 = [v7 originalGUID];
  v22 = [v7 service];
  v20 = [v7 originalEncryptionType];
  v19 = [v7 certifiedDeliveryVersion];
  v18 = [v7 certifiedDeliveryRTS];
  v17 = [v7 senderToken];
  v16 = [v7 failureReason];
  v8 = [v7 failureReasonMessage];
  v9 = [v7 replayKey];
  v10 = [v7 generateDeliveryReceipt];
  v11 = [v7 deliveryStatusContext];
  v12 = [v7 localURI];
  v13 = [v7 remoteURI];

  LOBYTE(v15) = v10;
  v21 = [(IDSCertifiedDeliveryContext *)self initWithGUID:v23 service:v22 encryptionType:v20 certifiedDeliveryVersion:v19 certifiedDeliveryRTS:v18 senderToken:v17 failureReason:v16 failureReasonMessage:v8 replayKey:v9 generateDeliveryReceipt:v15 deliveryStatusContext:v11 localURI:v12 remoteURI:v13 queryHash:v6];

  return v21;
}

- (IDSCertifiedDeliveryContext)initWithGUID:(id)a3 service:(id)a4 encryptionType:(int64_t)a5 certifiedDeliveryVersion:(int64_t)a6 certifiedDeliveryRTS:(id)a7 senderToken:(id)a8 failureReason:(id)a9 failureReasonMessage:(id)a10 replayKey:(id)a11 generateDeliveryReceipt:(BOOL)a12 deliveryStatusContext:(id)a13 localURI:(id)a14 remoteURI:(id)a15 queryHash:(id)a16
{
  v37 = a3;
  v31 = a4;
  v19 = a4;
  v34 = a7;
  v20 = a7;
  v35 = a8;
  v21 = a8;
  v39 = a9;
  v38 = a10;
  v22 = a11;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v40.receiver = self;
  v40.super_class = IDSCertifiedDeliveryContext;
  v27 = [(IDSCertifiedDeliveryContext *)&v40 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_originalGUID, a3);
    objc_storeStrong(&v28->_service, v31);
    v28->_originalEncryptionType = a5;
    v28->_certifiedDeliveryVersion = a6;
    objc_storeStrong(&v28->_certifiedDeliveryRTS, v34);
    objc_storeStrong(&v28->_senderToken, v35);
    objc_storeStrong(&v28->_failureReason, a9);
    objc_storeStrong(&v28->_failureReasonMessage, a10);
    objc_storeStrong(&v28->_replayKey, a11);
    v28->_generateDeliveryReceipt = a12;
    objc_storeStrong(&v28->_deliveryStatusContext, a13);
    objc_storeStrong(&v28->_localURI, a14);
    objc_storeStrong(&v28->_remoteURI, a15);
    objc_storeStrong(&v28->_queryHash, a16);
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

- (IDSCertifiedDeliveryContext)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1DEFC(v4, v6, v7);
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

- (IDSCertifiedDeliveryContext)initWithCoder:(id)a3
{
  v3 = a3;
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextGUIDKey"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextServiceKey"];
  v4 = [v3 decodeIntegerForKey:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
  v19 = [v3 decodeIntegerForKey:@"IDSCertifiedDeliveryContextVersionKey"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextRTSKey"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextSenderTokenKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextFailureReasonKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextReplayKeyKey"];
  v8 = [v3 decodeBoolForKey:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextLocalURIKey"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextRemoteURIKey"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSCertifiedDeliveryContextQueryHashKey"];

  LOBYTE(v13) = v8;
  v20 = [(IDSCertifiedDeliveryContext *)self initWithGUID:v15 service:v21 encryptionType:v4 certifiedDeliveryVersion:v19 certifiedDeliveryRTS:v18 senderToken:v17 failureReason:v5 failureReasonMessage:v6 replayKey:v7 generateDeliveryReceipt:v13 deliveryStatusContext:v14 localURI:v9 remoteURI:v10 queryHash:v11];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  originalGUID = self->_originalGUID;
  v5 = a3;
  [v5 encodeObject:originalGUID forKey:@"IDSCertifiedDeliveryContextGUIDKey"];
  [v5 encodeObject:self->_service forKey:@"IDSCertifiedDeliveryContextServiceKey"];
  [v5 encodeInteger:self->_originalEncryptionType forKey:@"IDSCertifiedDeliveryContextOriginalEncryptionTypeKey"];
  [v5 encodeInteger:self->_certifiedDeliveryVersion forKey:@"IDSCertifiedDeliveryContextVersionKey"];
  [v5 encodeObject:self->_certifiedDeliveryRTS forKey:@"IDSCertifiedDeliveryContextRTSKey"];
  [v5 encodeObject:self->_senderToken forKey:@"IDSCertifiedDeliveryContextSenderTokenKey"];
  [v5 encodeObject:self->_failureReason forKey:@"IDSCertifiedDeliveryContextFailureReasonKey"];
  [v5 encodeObject:self->_failureReasonMessage forKey:@"IDSCertifiedDeliveryContextFailureReasonMessageKey"];
  [v5 encodeObject:self->_replayKey forKey:@"IDSCertifiedDeliveryContextReplayKeyKey"];
  [v5 encodeBool:self->_generateDeliveryReceipt forKey:@"IDSCertifiedDeliveryContextGenerateDeliveryReceiptKey"];
  [v5 encodeObject:self->_deliveryStatusContext forKey:@"IDSCertifiedDeliveryContextDeliveryStatusContextKey"];
  [v5 encodeObject:self->_localURI forKey:@"IDSCertifiedDeliveryContextLocalURIKey"];
  [v5 encodeObject:self->_remoteURI forKey:@"IDSCertifiedDeliveryContextRemoteURIKey"];
  [v5 encodeObject:self->_queryHash forKey:@"IDSCertifiedDeliveryContextQueryHashKey"];
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