@interface IDSMessageContext
- (BOOL)expectsPeerResponse;
- (BOOL)fromServerStorage;
- (BOOL)isDirectMessage;
- (BOOL)isFromTrustedSender;
- (BOOL)lastFromServerStorage;
- (BOOL)needsDeliveryReceipt;
- (BOOL)shouldShowPeerErrors;
- (BOOL)usedEngram;
- (BOOL)wantsAppAck;
- (BOOL)wantsCheckpointing;
- (BOOL)wantsManualAck;
- (IDSMessageContext)initWithCoder:(id)a3;
- (IDSMessageContext)initWithDictionary:(id)a3 boostContext:(id)a4;
- (IDSPseudonym)targettedPseudonym;
- (NSData)engramGroupID;
- (NSData)senderPushToken;
- (NSDate)serverReceivedTime;
- (NSDictionary)deliveryStatusContext;
- (NSDictionary)incomingMessageMetrics;
- (NSDictionary)resourceTransferMetadata;
- (NSError)wpConnectionError;
- (NSNumber)broadcastTime;
- (NSNumber)bytesSent;
- (NSNumber)originalCommand;
- (NSNumber)originalTimestamp;
- (NSNumber)priority;
- (NSNumber)publicIntentAction;
- (NSNumber)serverTimestamp;
- (NSNumber)snapTrustedUser;
- (NSNumber)storageContext;
- (NSNumber)totalBytes;
- (NSString)destinationCorrelationIdentifier;
- (NSString)fromID;
- (NSString)incomingResponseIdentifier;
- (NSString)originalDestinationDevice;
- (NSString)originalGUID;
- (NSString)outgoingResponseIdentifier;
- (NSString)queueOneIdentifier;
- (NSString)resourceTransferSandboxExtension;
- (NSString)resourceTransferURLString;
- (NSString)samplingUUID;
- (NSString)senderCorrelationIdentifier;
- (NSString)serviceIdentifier;
- (NSString)storageGuid;
- (NSString)toID;
- (id)objectForKey:(id)a3;
- (int64_t)broadcastID;
- (int64_t)connectionType;
- (unint64_t)serverTimestampInNanoseconds;
- (void)encodeWithCoder:(id)a3;
- (void)setBroadcastID:(int64_t)a3;
- (void)setBroadcastTime:(id)a3;
- (void)setBytesSent:(id)a3;
- (void)setConnectionType:(int64_t)a3;
- (void)setDeliveryStatusContext:(id)a3;
- (void)setDestinationCorrelationIdentifier:(id)a3;
- (void)setEngramGroupID:(id)a3;
- (void)setExpectsPeerResponse:(BOOL)a3;
- (void)setFromID:(id)a3;
- (void)setFromServerStorage:(BOOL)a3;
- (void)setIncomingMessageMetrics:(id)a3;
- (void)setIncomingResponseIdentifier:(id)a3;
- (void)setIsDirectMessage:(BOOL)a3;
- (void)setIsFromTrustedSender:(BOOL)a3;
- (void)setLastFromServerStorage:(BOOL)a3;
- (void)setNeedsDeliveryReceipt:(BOOL)a3;
- (void)setOriginalCommand:(id)a3;
- (void)setOriginalDestinationDevice:(id)a3;
- (void)setOriginalGuid:(id)a3;
- (void)setOriginalTimestamp:(id)a3;
- (void)setOutgoingResponseIdentifier:(id)a3;
- (void)setPriority:(id)a3;
- (void)setPublicIntentAction:(id)a3;
- (void)setQueueOneIdentifier:(id)a3;
- (void)setResourceTransferMetadata:(id)a3;
- (void)setResourceTransferSandboxExtension:(id)a3;
- (void)setResourceTransferURLString:(id)a3;
- (void)setSamplingUUID:(id)a3;
- (void)setSenderCorrelationIdentifier:(id)a3;
- (void)setSenderPushToken:(id)a3;
- (void)setServerTimestamp:(id)a3;
- (void)setServiceIdentifier:(id)a3;
- (void)setShouldShowPeerErrors:(BOOL)a3;
- (void)setSnapTrustedUser:(id)a3;
- (void)setStorageContext:(id)a3;
- (void)setStorageGuid:(id)a3;
- (void)setToID:(id)a3;
- (void)setTotalBytes:(id)a3;
- (void)setUsedEngram:(BOOL)a3;
- (void)setWPConnectionError:(id)a3;
- (void)setWantsAppAck:(BOOL)a3;
- (void)setWantsCheckpointing:(BOOL)a3;
- (void)setWantsManualAck:(BOOL)a3;
@end

@implementation IDSMessageContext

- (NSNumber)originalCommand
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalCommand;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)serverReceivedTime
{
  v2 = [(IDSMessageContext *)self serverTimestamp];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)serverTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serverTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)bytesSent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_bytesSent;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)outgoingResponseIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_outgoingResponseIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)priority
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_priority;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)broadcastID
{
  os_unfair_lock_lock(&self->_lock);
  broadcastID = self->_broadcastID;
  os_unfair_lock_unlock(&self->_lock);
  return broadcastID;
}

- (int64_t)connectionType
{
  os_unfair_lock_lock(&self->_lock);
  connectionType = self->_connectionType;
  os_unfair_lock_unlock(&self->_lock);
  return connectionType;
}

- (BOOL)usedEngram
{
  os_unfair_lock_lock(&self->_lock);
  usedEngram = self->_usedEngram;
  os_unfair_lock_unlock(&self->_lock);
  return usedEngram;
}

- (BOOL)wantsAppAck
{
  os_unfair_lock_lock(&self->_lock);
  wantsAppAck = self->_wantsAppAck;
  os_unfair_lock_unlock(&self->_lock);
  return wantsAppAck;
}

- (BOOL)isDirectMessage
{
  os_unfair_lock_lock(&self->_lock);
  isDirectMessage = self->_isDirectMessage;
  os_unfair_lock_unlock(&self->_lock);
  return isDirectMessage;
}

- (NSString)storageGuid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_storageGuid;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSNumber)broadcastTime
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_broadcastTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (IDSMessageContext)initWithDictionary:(id)a3 boostContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v143.receiver = self;
  v143.super_class = IDSMessageContext;
  v8 = [(IDSMessageContext *)&v143 init];
  if (v8)
  {
    v9 = os_transaction_create();
    transaction = v8->_transaction;
    v8->_transaction = v9;

    objc_storeStrong(&v8->_boostContext, a4);
    v8->_lock._os_unfair_lock_opaque = 0;
    v11 = [v6 objectForKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
    v12 = objc_opt_self();
    outgoingResponseIdentifier = v8->_outgoingResponseIdentifier;
    v8->_outgoingResponseIdentifier = v12;

    v14 = [v6 objectForKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
    v15 = objc_opt_self();
    incomingResponseIdentifier = v8->_incomingResponseIdentifier;
    v8->_incomingResponseIdentifier = v15;

    v17 = [v6 objectForKey:@"IDSMessageContextServiceIdentifierKey"];
    v18 = objc_opt_self();
    serviceIdentifier = v8->_serviceIdentifier;
    v8->_serviceIdentifier = v18;

    v20 = [v6 objectForKey:@"IDSMessageContextStorageGuidKey"];
    v21 = objc_opt_self();
    storageGuid = v8->_storageGuid;
    v8->_storageGuid = v21;

    v23 = [v6 objectForKey:@"IDSMessageContextFromIDKey"];
    v24 = objc_opt_self();
    fromID = v8->_fromID;
    v8->_fromID = v24;

    v26 = [v6 objectForKey:@"IDSMessageContextToIDKey"];
    v27 = objc_opt_self();
    toID = v8->_toID;
    v8->_toID = v27;

    v29 = [v6 objectForKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
    v30 = objc_opt_self();
    originalDestinationDevice = v8->_originalDestinationDevice;
    v8->_originalDestinationDevice = v30;

    v32 = [v6 objectForKey:@"IDSMessageContextOriginalGUIDKey"];
    v33 = objc_opt_self();
    originalGUID = v8->_originalGUID;
    v8->_originalGUID = v33;

    v35 = [v6 objectForKey:@"IDSMessageContextEngramGroupIDKey"];
    v36 = objc_opt_self();
    engramGroupID = v8->_engramGroupID;
    v8->_engramGroupID = v36;

    v38 = [v6 objectForKey:@"IDSMessageContextOriginalCommandKey"];
    v39 = objc_opt_self();
    originalCommand = v8->_originalCommand;
    v8->_originalCommand = v39;

    v41 = [v6 objectForKey:@"IDSMessageContextIncomingOCKey"];
    v42 = objc_opt_self();
    incomingOC = v8->_incomingOC;
    v8->_incomingOC = v42;

    v44 = [v6 objectForKey:@"IDSMessageContextPublicIntentActionKey"];
    v45 = objc_opt_self();
    publicIntentAction = v8->_publicIntentAction;
    v8->_publicIntentAction = v45;

    v47 = [v6 objectForKey:@"IDSMessageContextBroadcastTimeKey"];
    v48 = objc_opt_self();
    broadcastTime = v8->_broadcastTime;
    v8->_broadcastTime = v48;

    v50 = [v6 objectForKey:@"IDSMessageContextPriorityKey"];
    v51 = objc_opt_self();
    priority = v8->_priority;
    v8->_priority = v51;

    v53 = [v6 objectForKey:@"IDSMessageContextServerTimestampKey"];
    v54 = objc_opt_self();
    serverTimestamp = v8->_serverTimestamp;
    v8->_serverTimestamp = v54;

    v56 = [v6 objectForKey:@"IDSMessageContextOriginalTimestampKey"];
    v57 = objc_opt_self();
    originalTimestamp = v8->_originalTimestamp;
    v8->_originalTimestamp = v57;

    v59 = [v6 objectForKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
    v60 = objc_opt_self();
    senderCorrelationIdentifier = v8->_senderCorrelationIdentifier;
    v8->_senderCorrelationIdentifier = v60;

    v62 = [v6 objectForKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
    v63 = objc_opt_self();
    destinationCorrelationIdentifier = v8->_destinationCorrelationIdentifier;
    v8->_destinationCorrelationIdentifier = v63;

    v65 = [v6 objectForKey:@"IDSMessageContextSequenceNumberKey"];
    v66 = objc_opt_self();
    messageSequenceNumber = v8->_messageSequenceNumber;
    v8->_messageSequenceNumber = v66;

    v68 = [v6 objectForKey:@"IDSMessageContextBytesSent"];
    v69 = objc_opt_self();
    bytesSent = v8->_bytesSent;
    v8->_bytesSent = v69;

    v71 = [v6 objectForKey:@"IDSMessageContextTotalBytes"];
    v72 = objc_opt_self();
    totalBytes = v8->_totalBytes;
    v8->_totalBytes = v72;

    v74 = [v6 objectForKey:@"IDSMessageContextTargettedPseudonymKey"];
    v75 = objc_opt_self();
    targettedPseudonymDict = v8->_targettedPseudonymDict;
    v8->_targettedPseudonymDict = v75;

    v77 = [v6 objectForKey:@"IDSMessageContextStorageContextKey"];
    v78 = objc_opt_self();
    storageContext = v8->_storageContext;
    v8->_storageContext = v78;

    v80 = [v6 objectForKey:@"IDSMessageContextIncomingMessageMetricsKey"];
    v81 = objc_opt_self();
    incomingMessageMetrics = v8->_incomingMessageMetrics;
    v8->_incomingMessageMetrics = v81;

    v83 = [v6 objectForKey:@"IDSMessageContextSamplingUUIDKey"];
    v84 = objc_opt_self();
    samplingUUID = v8->_samplingUUID;
    v8->_samplingUUID = v84;

    v86 = [v6 objectForKey:@"IDSMessageContextQueueOneIdentifierKey"];
    v87 = objc_opt_self();
    queueOneIdentifier = v8->_queueOneIdentifier;
    v8->_queueOneIdentifier = v87;

    v89 = [v6 objectForKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
    v8->_needsDeliveryReceipt = [v89 BOOLValue];

    v90 = [v6 objectForKey:@"IDSMessageContextExpectsPeerResponseKey"];
    v8->_expectsPeerResponse = [v90 BOOLValue];

    v91 = [v6 objectForKey:@"IDSMessageContextWantsAppAckKey"];
    v8->_wantsAppAck = [v91 BOOLValue];

    v92 = [v6 objectForKey:@"IDSMessageContextIsDirectMessage"];
    v8->_isDirectMessage = [v92 BOOLValue];

    v93 = [v6 objectForKey:@"IDSMessageContextBroadcastIDKey"];
    v8->_broadcastID = [v93 longLongValue];

    v94 = [v6 objectForKey:@"IDSMessageContextWantsManualAckKey"];
    v8->_wantsManualAck = [v94 BOOLValue];

    v95 = [v6 objectForKey:@"IDSMessageContextFromServerStorageKey"];
    v8->_fromServerStorage = [v95 BOOLValue];

    v96 = [v6 objectForKey:@"IDSMessageContextLastFromServerStorageKey"];
    v8->_lastFromServerStorage = [v96 BOOLValue];

    v97 = [v6 objectForKey:@"IDSMessageContextConnectionTypeKey"];
    v8->_connectionType = [v97 longLongValue];

    v98 = [v6 objectForKey:@"IDSMessageContextUsedEngramKey"];
    v8->_usedEngram = [v98 BOOLValue];

    v99 = [v6 objectForKey:@"IDSMessageContextAverageLocalRTTKey"];
    [v99 doubleValue];
    v8->_averageLocalRTT = v100;

    v101 = [v6 objectForKey:@"IDSMessageContextLocalMessageStateKey"];
    v8->_localMessageState = [v101 integerValue];

    v102 = [v6 objectForKey:@"IDSMessageContextEndpointStateKey"];
    v8->_endpointState = [v102 integerValue];

    v103 = [v6 objectForKey:@"IDSMessageContextDeviceBlackedOutKey"];
    v8->_deviceBlackedOut = [v103 BOOLValue];

    v104 = [v6 objectForKey:@"IDSMessageContextMessageHadEncryptedData"];
    v8->_messageHadEncryptedData = [v104 BOOLValue];

    v105 = [v6 objectForKey:@"IDSMessageContextIsFromTrustedSender"];
    v8->_isFromTrustedSender = [v105 BOOLValue];

    v106 = [v6 objectForKey:@"IDSMessageContextFileSize"];
    v8->_fileSize = [v106 integerValue];

    v107 = [v6 objectForKey:@"IDSMessageContextWantsCheckpointing"];
    v8->_wantsCheckpointing = [v107 BOOLValue];

    v108 = [v6 objectForKey:@"IDSMessageContextShouldShowPeerErrors"];
    v8->_shouldShowPeerErrors = [v108 BOOLValue];

    v109 = [v6 objectForKey:@"IDSMessageContextWPConnectionErrorDomainKey"];
    v110 = objc_opt_self();

    v111 = [v6 objectForKey:@"IDSMessageContextWPConnectionErrorCodeKey"];
    v112 = objc_opt_self();

    v113 = [v6 objectForKey:@"IDSMessageContextWPConnectionErrorUserInfoKey"];
    v114 = objc_opt_self();

    if (v110)
    {
      v115 = v110;
    }

    else
    {
      v115 = @"com.apple.ids.idssenderrordomain";
    }

    v116 = [MEMORY[0x1E696ABC0] errorWithDomain:v115 code:objc_msgSend(v112 userInfo:{"integerValue"), v114}];
    wpConnectionError = v8->_wpConnectionError;
    v8->_wpConnectionError = v116;

    v118 = [v6 objectForKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
    if (v118)
    {
      v119 = [[IDSCertifiedDeliveryContext alloc] initWithDictionaryRepresentation:v118];
      certifiedDeliveryContext = v8->_certifiedDeliveryContext;
      v8->_certifiedDeliveryContext = v119;
    }

    v121 = [v6 objectForKey:@"IDSMessageContextServerStorageFetchContextKey"];
    if (v121)
    {
      v122 = [[IDSServerStorageFetchContext alloc] initWithDictionary:v121];
      serverStorageFetchContext = v8->_serverStorageFetchContext;
      v8->_serverStorageFetchContext = v122;
    }

    v124 = [v6 objectForKey:@"ids-message-resource-transfer-url"];
    v125 = objc_opt_self();
    resourceTransferURLString = v8->_resourceTransferURLString;
    v8->_resourceTransferURLString = v125;

    v127 = [v6 objectForKey:@"ids-message-resource-transfer-metadata"];
    v128 = objc_opt_self();
    resourceTransferMetadata = v8->_resourceTransferMetadata;
    v8->_resourceTransferMetadata = v128;

    v130 = [v6 objectForKey:@"ids-message-resource-transfer-sandbox-extension"];
    v131 = objc_opt_self();
    resourceTransferSandboxExtension = v8->_resourceTransferSandboxExtension;
    v8->_resourceTransferSandboxExtension = v131;

    v133 = [v6 objectForKey:@"IDSMessageContextSenderPushToken"];
    v134 = objc_opt_self();
    senderPushToken = v8->_senderPushToken;
    v8->_senderPushToken = v134;

    v136 = [v6 objectForKey:@"IDSMessageContextSnapTrustedUser"];
    v137 = objc_opt_self();
    snapTrustedUser = v8->_snapTrustedUser;
    v8->_snapTrustedUser = v137;

    v139 = [v6 objectForKey:@"IDSMessageContextDeliveryStatusContext"];
    v140 = objc_opt_self();
    deliveryStatusContext = v8->_deliveryStatusContext;
    v8->_deliveryStatusContext = v140;
  }

  return v8;
}

- (id)objectForKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A4A4(v3, v4);
  }

  return 0;
}

- (unint64_t)serverTimestampInNanoseconds
{
  v2 = [(IDSMessageContext *)self serverTimestamp];
  [v2 doubleValue];
  v4 = (v3 * 1000000000.0);

  return v4;
}

- (void)setOutgoingResponseIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  outgoingResponseIdentifier = self->_outgoingResponseIdentifier;
  self->_outgoingResponseIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIncomingResponseIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  incomingResponseIdentifier = self->_incomingResponseIdentifier;
  self->_incomingResponseIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)incomingResponseIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_incomingResponseIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setServiceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  serviceIdentifier = self->_serviceIdentifier;
  self->_serviceIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)serviceIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStorageGuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  storageGuid = self->_storageGuid;
  self->_storageGuid = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFromID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  fromID = self->_fromID;
  self->_fromID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)fromID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_fromID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setToID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  toID = self->_toID;
  self->_toID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)toID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_toID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalDestinationDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  originalDestinationDevice = self->_originalDestinationDevice;
  self->_originalDestinationDevice = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)originalDestinationDevice
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalDestinationDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalGuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  originalGUID = self->_originalGUID;
  self->_originalGUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)originalGUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalGUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEngramGroupID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  engramGroupID = self->_engramGroupID;
  self->_engramGroupID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)engramGroupID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_engramGroupID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalCommand:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  originalCommand = self->_originalCommand;
  self->_originalCommand = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBroadcastTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  broadcastTime = self->_broadcastTime;
  self->_broadcastTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPriority:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  priority = self->_priority;
  self->_priority = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServerTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  serverTimestamp = self->_serverTimestamp;
  self->_serverTimestamp = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOriginalTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  originalTimestamp = self->_originalTimestamp;
  self->_originalTimestamp = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)originalTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSenderCorrelationIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  senderCorrelationIdentifier = self->_senderCorrelationIdentifier;
  self->_senderCorrelationIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)senderCorrelationIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_senderCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDestinationCorrelationIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  destinationCorrelationIdentifier = self->_destinationCorrelationIdentifier;
  self->_destinationCorrelationIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)destinationCorrelationIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_destinationCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPublicIntentAction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  publicIntentAction = self->_publicIntentAction;
  self->_publicIntentAction = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)publicIntentAction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_publicIntentAction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSenderPushToken:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  senderPushToken = self->_senderPushToken;
  self->_senderPushToken = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)senderPushToken
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_senderPushToken;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStorageContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  storageContext = self->_storageContext;
  self->_storageContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)storageContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_storageContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSnapTrustedUser:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  snapTrustedUser = self->_snapTrustedUser;
  self->_snapTrustedUser = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)snapTrustedUser
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_snapTrustedUser;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeliveryStatusContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  deliveryStatusContext = self->_deliveryStatusContext;
  self->_deliveryStatusContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)deliveryStatusContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deliveryStatusContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIncomingMessageMetrics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  incomingMessageMetrics = self->_incomingMessageMetrics;
  self->_incomingMessageMetrics = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)incomingMessageMetrics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_incomingMessageMetrics;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSamplingUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  samplingUUID = self->_samplingUUID;
  self->_samplingUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)samplingUUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_samplingUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQueueOneIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  queueOneIdentifier = self->_queueOneIdentifier;
  self->_queueOneIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)queueOneIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_queueOneIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setWPConnectionError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  wpConnectionError = self->_wpConnectionError;
  self->_wpConnectionError = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSError)wpConnectionError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_wpConnectionError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBytesSent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  bytesSent = self->_bytesSent;
  self->_bytesSent = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTotalBytes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  totalBytes = self->_totalBytes;
  self->_totalBytes = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)totalBytes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_totalBytes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferURLString:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferURLString = self->_resourceTransferURLString;
  self->_resourceTransferURLString = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)resourceTransferURLString
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferURLString;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferMetadata = self->_resourceTransferMetadata;
  self->_resourceTransferMetadata = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)resourceTransferMetadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferMetadata;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferSandboxExtension:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferSandboxExtension = self->_resourceTransferSandboxExtension;
  self->_resourceTransferSandboxExtension = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)resourceTransferSandboxExtension
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferSandboxExtension;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNeedsDeliveryReceipt:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_needsDeliveryReceipt = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)needsDeliveryReceipt
{
  os_unfair_lock_lock(&self->_lock);
  needsDeliveryReceipt = self->_needsDeliveryReceipt;
  os_unfair_lock_unlock(&self->_lock);
  return needsDeliveryReceipt;
}

- (void)setExpectsPeerResponse:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_expectsPeerResponse = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)expectsPeerResponse
{
  os_unfair_lock_lock(&self->_lock);
  expectsPeerResponse = self->_expectsPeerResponse;
  os_unfair_lock_unlock(&self->_lock);
  return expectsPeerResponse;
}

- (void)setWantsAppAck:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsAppAck = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsDirectMessage:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_isDirectMessage = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBroadcastID:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_broadcastID = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWantsManualAck:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsManualAck = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wantsManualAck
{
  os_unfair_lock_lock(&self->_lock);
  wantsManualAck = self->_wantsManualAck;
  os_unfair_lock_unlock(&self->_lock);
  return wantsManualAck;
}

- (void)setFromServerStorage:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_fromServerStorage = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)fromServerStorage
{
  os_unfair_lock_lock(&self->_lock);
  fromServerStorage = self->_fromServerStorage;
  os_unfair_lock_unlock(&self->_lock);
  return fromServerStorage;
}

- (void)setLastFromServerStorage:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lastFromServerStorage = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)lastFromServerStorage
{
  os_unfair_lock_lock(&self->_lock);
  lastFromServerStorage = self->_lastFromServerStorage;
  os_unfair_lock_unlock(&self->_lock);
  return lastFromServerStorage;
}

- (void)setConnectionType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_connectionType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUsedEngram:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_usedEngram = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsFromTrustedSender:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_isFromTrustedSender = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFromTrustedSender
{
  os_unfair_lock_lock(&self->_lock);
  isFromTrustedSender = self->_isFromTrustedSender;
  os_unfair_lock_unlock(&self->_lock);
  return isFromTrustedSender;
}

- (void)setWantsCheckpointing:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsCheckpointing = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wantsCheckpointing
{
  os_unfair_lock_lock(&self->_lock);
  wantsCheckpointing = self->_wantsCheckpointing;
  os_unfair_lock_unlock(&self->_lock);
  return wantsCheckpointing;
}

- (void)setShouldShowPeerErrors:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_shouldShowPeerErrors = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldShowPeerErrors
{
  os_unfair_lock_lock(&self->_lock);
  shouldShowPeerErrors = self->_shouldShowPeerErrors;
  os_unfair_lock_unlock(&self->_lock);
  return shouldShowPeerErrors;
}

- (IDSPseudonym)targettedPseudonym
{
  if (self->_targettedPseudonymDict)
  {
    v3 = [[IDSPseudonym alloc] initWithDictionaryRepresentation:self->_targettedPseudonymDict];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  outgoingResponseIdentifier = self->_outgoingResponseIdentifier;
  v5 = a3;
  [v5 encodeObject:outgoingResponseIdentifier forKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
  [v5 encodeObject:self->_incomingResponseIdentifier forKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"IDSMessageContextServiceIdentifierKey"];
  [v5 encodeObject:self->_storageGuid forKey:@"IDSMessageContextStorageGuidKey"];
  [v5 encodeObject:self->_fromID forKey:@"IDSMessageContextFromIDKey"];
  [v5 encodeObject:self->_toID forKey:@"IDSMessageContextToIDKey"];
  [v5 encodeObject:self->_originalDestinationDevice forKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
  [v5 encodeObject:self->_originalGUID forKey:@"IDSMessageContextOriginalGUIDKey"];
  [v5 encodeObject:self->_engramGroupID forKey:@"IDSMessageContextEngramGroupIDKey"];
  [v5 encodeObject:self->_originalCommand forKey:@"IDSMessageContextOriginalCommandKey"];
  [v5 encodeObject:self->_incomingOC forKey:@"IDSMessageContextIncomingOCKey"];
  [v5 encodeObject:self->_publicIntentAction forKey:@"IDSMessageContextPublicIntentActionKey"];
  [v5 encodeObject:self->_broadcastTime forKey:@"IDSMessageContextBroadcastTimeKey"];
  [v5 encodeObject:self->_priority forKey:@"IDSMessageContextPriorityKey"];
  [v5 encodeObject:self->_serverTimestamp forKey:@"IDSMessageContextServerTimestampKey"];
  [v5 encodeObject:self->_originalTimestamp forKey:@"IDSMessageContextOriginalTimestampKey"];
  [v5 encodeObject:self->_senderCorrelationIdentifier forKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
  [v5 encodeObject:self->_destinationCorrelationIdentifier forKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
  [v5 encodeObject:self->_messageSequenceNumber forKey:@"IDSMessageContextSequenceNumberKey"];
  [v5 encodeObject:self->_bytesSent forKey:@"IDSMessageContextBytesSent"];
  [v5 encodeObject:self->_totalBytes forKey:@"IDSMessageContextTotalBytes"];
  [v5 encodeObject:self->_targettedPseudonymDict forKey:@"IDSMessageContextTargettedPseudonymKey"];
  [v5 encodeBool:self->_needsDeliveryReceipt forKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
  [v5 encodeBool:self->_expectsPeerResponse forKey:@"IDSMessageContextExpectsPeerResponseKey"];
  [v5 encodeBool:self->_wantsAppAck forKey:@"IDSMessageContextWantsAppAckKey"];
  [v5 encodeBool:self->_isDirectMessage forKey:@"IDSMessageContextIsDirectMessage"];
  [v5 encodeInt64:self->_broadcastID forKey:@"IDSMessageContextBroadcastIDKey"];
  [v5 encodeBool:self->_wantsManualAck forKey:@"IDSMessageContextWantsManualAckKey"];
  [v5 encodeBool:self->_fromServerStorage forKey:@"IDSMessageContextFromServerStorageKey"];
  [v5 encodeBool:self->_lastFromServerStorage forKey:@"IDSMessageContextLastFromServerStorageKey"];
  [v5 encodeInt64:self->_connectionType forKey:@"IDSMessageContextConnectionTypeKey"];
  [v5 encodeBool:self->_usedEngram forKey:@"IDSMessageContextUsedEngramKey"];
  [v5 encodeDouble:@"IDSMessageContextAverageLocalRTTKey" forKey:self->_averageLocalRTT];
  [v5 encodeInteger:self->_localMessageState forKey:@"IDSMessageContextLocalMessageStateKey"];
  [v5 encodeInteger:self->_endpointState forKey:@"IDSMessageContextEndpointStateKey"];
  [v5 encodeBool:self->_deviceBlackedOut forKey:@"IDSMessageContextDeviceBlackedOutKey"];
  [v5 encodeBool:self->_messageHadEncryptedData forKey:@"IDSMessageContextMessageHadEncryptedData"];
  [v5 encodeBool:self->_isFromTrustedSender forKey:@"IDSMessageContextIsFromTrustedSender"];
  [v5 encodeBool:self->_wantsCheckpointing forKey:@"IDSMessageContextWantsCheckpointing"];
  [v5 encodeBool:self->_shouldShowPeerErrors forKey:@"IDSMessageContextShouldShowPeerErrors"];
  [v5 encodeInteger:self->_fileSize forKey:@"IDSMessageContextFileSize"];
  [v5 encodeObject:self->_wpConnectionError forKey:@"IDSMessageContextWPConnectionErrorKey"];
  [v5 encodeObject:self->_certifiedDeliveryContext forKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
  [v5 encodeObject:self->_serverStorageFetchContext forKey:@"IDSMessageContextServerStorageFetchContextKey"];
  [v5 encodeObject:self->_resourceTransferURLString forKey:@"ids-message-resource-transfer-url"];
  [v5 encodeObject:self->_resourceTransferMetadata forKey:@"ids-message-resource-transfer-metadata"];
  [v5 encodeObject:self->_resourceTransferSandboxExtension forKey:@"ids-message-resource-transfer-sandbox-extension"];
  [v5 encodeObject:self->_senderPushToken forKey:@"IDSMessageContextSenderPushToken"];
  [v5 encodeObject:self->_storageContext forKey:@"IDSMessageContextStorageContextKey"];
  [v5 encodeObject:self->_snapTrustedUser forKey:@"IDSMessageContextSnapTrustedUser"];
  [v5 encodeObject:self->_deliveryStatusContext forKey:@"IDSMessageContextDeliveryStatusContext"];
  [v5 encodeObject:self->_incomingMessageMetrics forKey:@"IDSMessageContextIncomingMessageMetricsKey"];
  [v5 encodeObject:self->_samplingUUID forKey:@"IDSMessageContextSamplingUUIDKey"];
  [v5 encodeObject:self->_queueOneIdentifier forKey:@"IDSMessageContextQueueOneIdentifierKey"];
}

- (IDSMessageContext)initWithCoder:(id)a3
{
  v4 = a3;
  v78.receiver = self;
  v78.super_class = IDSMessageContext;
  v5 = [(IDSMessageContext *)&v78 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
    outgoingResponseIdentifier = v5->_outgoingResponseIdentifier;
    v5->_outgoingResponseIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
    incomingResponseIdentifier = v5->_incomingResponseIdentifier;
    v5->_incomingResponseIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServiceIdentifierKey"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextStorageGuidKey"];
    storageGuid = v5->_storageGuid;
    v5->_storageGuid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextFromIDKey"];
    fromID = v5->_fromID;
    v5->_fromID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextToIDKey"];
    toID = v5->_toID;
    v5->_toID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
    originalDestinationDevice = v5->_originalDestinationDevice;
    v5->_originalDestinationDevice = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalGUIDKey"];
    originalGUID = v5->_originalGUID;
    v5->_originalGUID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextEngramGroupIDKey"];
    engramGroupID = v5->_engramGroupID;
    v5->_engramGroupID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalCommandKey"];
    originalCommand = v5->_originalCommand;
    v5->_originalCommand = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingOCKey"];
    incomingOC = v5->_incomingOC;
    v5->_incomingOC = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextPublicIntentActionKey"];
    publicIntentAction = v5->_publicIntentAction;
    v5->_publicIntentAction = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextBroadcastTimeKey"];
    broadcastTime = v5->_broadcastTime;
    v5->_broadcastTime = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextPriorityKey"];
    priority = v5->_priority;
    v5->_priority = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServerTimestampKey"];
    serverTimestamp = v5->_serverTimestamp;
    v5->_serverTimestamp = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalTimestampKey"];
    originalTimestamp = v5->_originalTimestamp;
    v5->_originalTimestamp = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
    senderCorrelationIdentifier = v5->_senderCorrelationIdentifier;
    v5->_senderCorrelationIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
    destinationCorrelationIdentifier = v5->_destinationCorrelationIdentifier;
    v5->_destinationCorrelationIdentifier = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSequenceNumberKey"];
    messageSequenceNumber = v5->_messageSequenceNumber;
    v5->_messageSequenceNumber = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextBytesSent"];
    bytesSent = v5->_bytesSent;
    v5->_bytesSent = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextTotalBytes"];
    totalBytes = v5->_totalBytes;
    v5->_totalBytes = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextTargettedPseudonymKey"];
    targettedPseudonymDict = v5->_targettedPseudonymDict;
    v5->_targettedPseudonymDict = v48;

    v5->_needsDeliveryReceipt = [v4 decodeBoolForKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
    v5->_expectsPeerResponse = [v4 decodeBoolForKey:@"IDSMessageContextExpectsPeerResponseKey"];
    v5->_wantsAppAck = [v4 decodeBoolForKey:@"IDSMessageContextWantsAppAckKey"];
    v5->_isDirectMessage = [v4 decodeBoolForKey:@"IDSMessageContextIsDirectMessage"];
    v5->_broadcastID = [v4 decodeInt64ForKey:@"IDSMessageContextBroadcastIDKey"];
    v5->_wantsManualAck = [v4 decodeBoolForKey:@"IDSMessageContextWantsManualAckKey"];
    v5->_fromServerStorage = [v4 decodeBoolForKey:@"IDSMessageContextFromServerStorageKey"];
    v5->_lastFromServerStorage = [v4 decodeBoolForKey:@"IDSMessageContextLastFromServerStorageKey"];
    v5->_connectionType = [v4 decodeInt64ForKey:@"IDSMessageContextConnectionTypeKey"];
    v5->_usedEngram = [v4 decodeBoolForKey:@"IDSMessageContextUsedEngramKey"];
    [v4 decodeDoubleForKey:@"IDSMessageContextAverageLocalRTTKey"];
    v5->_averageLocalRTT = v50;
    v5->_localMessageState = [v4 decodeIntegerForKey:@"IDSMessageContextLocalMessageStateKey"];
    v5->_endpointState = [v4 decodeIntegerForKey:@"IDSMessageContextEndpointStateKey"];
    v5->_deviceBlackedOut = [v4 decodeBoolForKey:@"IDSMessageContextDeviceBlackedOutKey"];
    v5->_messageHadEncryptedData = [v4 decodeBoolForKey:@"IDSMessageContextMessageHadEncryptedData"];
    v5->_isFromTrustedSender = [v4 decodeBoolForKey:@"IDSMessageContextIsFromTrustedSender"];
    v5->_wantsCheckpointing = [v4 decodeBoolForKey:@"IDSMessageContextWantsCheckpointing"];
    v5->_shouldShowPeerErrors = [v4 decodeBoolForKey:@"IDSMessageContextShouldShowPeerErrors"];
    v5->_fileSize = [v4 decodeIntegerForKey:@"IDSMessageContextFileSize"];
    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextWPConnectionErrorKey"];
    wpConnectionError = v5->_wpConnectionError;
    v5->_wpConnectionError = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
    certifiedDeliveryContext = v5->_certifiedDeliveryContext;
    v5->_certifiedDeliveryContext = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServerStorageFetchContextKey"];
    serverStorageFetchContext = v5->_serverStorageFetchContext;
    v5->_serverStorageFetchContext = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-url"];
    resourceTransferURLString = v5->_resourceTransferURLString;
    v5->_resourceTransferURLString = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-metadata"];
    resourceTransferMetadata = v5->_resourceTransferMetadata;
    v5->_resourceTransferMetadata = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-sandbox-extension"];
    resourceTransferSandboxExtension = v5->_resourceTransferSandboxExtension;
    v5->_resourceTransferSandboxExtension = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSenderPushToken"];
    senderPushToken = v5->_senderPushToken;
    v5->_senderPushToken = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextStorageContextKey"];
    storageContext = v5->_storageContext;
    v5->_storageContext = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSnapTrustedUser"];
    snapTrustedUser = v5->_snapTrustedUser;
    v5->_snapTrustedUser = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextDeliveryStatusContext"];
    deliveryStatusContext = v5->_deliveryStatusContext;
    v5->_deliveryStatusContext = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingMessageMetricsKey"];
    incomingMessageMetrics = v5->_incomingMessageMetrics;
    v5->_incomingMessageMetrics = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSamplingUUIDKey"];
    samplingUUID = v5->_samplingUUID;
    v5->_samplingUUID = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextQueueOneIdentifierKey"];
    queueOneIdentifier = v5->_queueOneIdentifier;
    v5->_queueOneIdentifier = v75;
  }

  return v5;
}

@end