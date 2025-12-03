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
- (IDSMessageContext)initWithCoder:(id)coder;
- (IDSMessageContext)initWithDictionary:(id)dictionary boostContext:(id)context;
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
- (id)objectForKey:(id)key;
- (int64_t)broadcastID;
- (int64_t)connectionType;
- (unint64_t)serverTimestampInNanoseconds;
- (void)encodeWithCoder:(id)coder;
- (void)setBroadcastID:(int64_t)d;
- (void)setBroadcastTime:(id)time;
- (void)setBytesSent:(id)sent;
- (void)setConnectionType:(int64_t)type;
- (void)setDeliveryStatusContext:(id)context;
- (void)setDestinationCorrelationIdentifier:(id)identifier;
- (void)setEngramGroupID:(id)d;
- (void)setExpectsPeerResponse:(BOOL)response;
- (void)setFromID:(id)d;
- (void)setFromServerStorage:(BOOL)storage;
- (void)setIncomingMessageMetrics:(id)metrics;
- (void)setIncomingResponseIdentifier:(id)identifier;
- (void)setIsDirectMessage:(BOOL)message;
- (void)setIsFromTrustedSender:(BOOL)sender;
- (void)setLastFromServerStorage:(BOOL)storage;
- (void)setNeedsDeliveryReceipt:(BOOL)receipt;
- (void)setOriginalCommand:(id)command;
- (void)setOriginalDestinationDevice:(id)device;
- (void)setOriginalGuid:(id)guid;
- (void)setOriginalTimestamp:(id)timestamp;
- (void)setOutgoingResponseIdentifier:(id)identifier;
- (void)setPriority:(id)priority;
- (void)setPublicIntentAction:(id)action;
- (void)setQueueOneIdentifier:(id)identifier;
- (void)setResourceTransferMetadata:(id)metadata;
- (void)setResourceTransferSandboxExtension:(id)extension;
- (void)setResourceTransferURLString:(id)string;
- (void)setSamplingUUID:(id)d;
- (void)setSenderCorrelationIdentifier:(id)identifier;
- (void)setSenderPushToken:(id)token;
- (void)setServerTimestamp:(id)timestamp;
- (void)setServiceIdentifier:(id)identifier;
- (void)setShouldShowPeerErrors:(BOOL)errors;
- (void)setSnapTrustedUser:(id)user;
- (void)setStorageContext:(id)context;
- (void)setStorageGuid:(id)guid;
- (void)setToID:(id)d;
- (void)setTotalBytes:(id)bytes;
- (void)setUsedEngram:(BOOL)engram;
- (void)setWPConnectionError:(id)error;
- (void)setWantsAppAck:(BOOL)ack;
- (void)setWantsCheckpointing:(BOOL)checkpointing;
- (void)setWantsManualAck:(BOOL)ack;
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
  serverTimestamp = [(IDSMessageContext *)self serverTimestamp];
  v3 = serverTimestamp;
  if (serverTimestamp)
  {
    v4 = MEMORY[0x1E695DF00];
    [serverTimestamp doubleValue];
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

- (IDSMessageContext)initWithDictionary:(id)dictionary boostContext:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  v143.receiver = self;
  v143.super_class = IDSMessageContext;
  v8 = [(IDSMessageContext *)&v143 init];
  if (v8)
  {
    v9 = os_transaction_create();
    transaction = v8->_transaction;
    v8->_transaction = v9;

    objc_storeStrong(&v8->_boostContext, context);
    v8->_lock._os_unfair_lock_opaque = 0;
    v11 = [dictionaryCopy objectForKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
    v12 = objc_opt_self();
    outgoingResponseIdentifier = v8->_outgoingResponseIdentifier;
    v8->_outgoingResponseIdentifier = v12;

    v14 = [dictionaryCopy objectForKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
    v15 = objc_opt_self();
    incomingResponseIdentifier = v8->_incomingResponseIdentifier;
    v8->_incomingResponseIdentifier = v15;

    v17 = [dictionaryCopy objectForKey:@"IDSMessageContextServiceIdentifierKey"];
    v18 = objc_opt_self();
    serviceIdentifier = v8->_serviceIdentifier;
    v8->_serviceIdentifier = v18;

    v20 = [dictionaryCopy objectForKey:@"IDSMessageContextStorageGuidKey"];
    v21 = objc_opt_self();
    storageGuid = v8->_storageGuid;
    v8->_storageGuid = v21;

    v23 = [dictionaryCopy objectForKey:@"IDSMessageContextFromIDKey"];
    v24 = objc_opt_self();
    fromID = v8->_fromID;
    v8->_fromID = v24;

    v26 = [dictionaryCopy objectForKey:@"IDSMessageContextToIDKey"];
    v27 = objc_opt_self();
    toID = v8->_toID;
    v8->_toID = v27;

    v29 = [dictionaryCopy objectForKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
    v30 = objc_opt_self();
    originalDestinationDevice = v8->_originalDestinationDevice;
    v8->_originalDestinationDevice = v30;

    v32 = [dictionaryCopy objectForKey:@"IDSMessageContextOriginalGUIDKey"];
    v33 = objc_opt_self();
    originalGUID = v8->_originalGUID;
    v8->_originalGUID = v33;

    v35 = [dictionaryCopy objectForKey:@"IDSMessageContextEngramGroupIDKey"];
    v36 = objc_opt_self();
    engramGroupID = v8->_engramGroupID;
    v8->_engramGroupID = v36;

    v38 = [dictionaryCopy objectForKey:@"IDSMessageContextOriginalCommandKey"];
    v39 = objc_opt_self();
    originalCommand = v8->_originalCommand;
    v8->_originalCommand = v39;

    v41 = [dictionaryCopy objectForKey:@"IDSMessageContextIncomingOCKey"];
    v42 = objc_opt_self();
    incomingOC = v8->_incomingOC;
    v8->_incomingOC = v42;

    v44 = [dictionaryCopy objectForKey:@"IDSMessageContextPublicIntentActionKey"];
    v45 = objc_opt_self();
    publicIntentAction = v8->_publicIntentAction;
    v8->_publicIntentAction = v45;

    v47 = [dictionaryCopy objectForKey:@"IDSMessageContextBroadcastTimeKey"];
    v48 = objc_opt_self();
    broadcastTime = v8->_broadcastTime;
    v8->_broadcastTime = v48;

    v50 = [dictionaryCopy objectForKey:@"IDSMessageContextPriorityKey"];
    v51 = objc_opt_self();
    priority = v8->_priority;
    v8->_priority = v51;

    v53 = [dictionaryCopy objectForKey:@"IDSMessageContextServerTimestampKey"];
    v54 = objc_opt_self();
    serverTimestamp = v8->_serverTimestamp;
    v8->_serverTimestamp = v54;

    v56 = [dictionaryCopy objectForKey:@"IDSMessageContextOriginalTimestampKey"];
    v57 = objc_opt_self();
    originalTimestamp = v8->_originalTimestamp;
    v8->_originalTimestamp = v57;

    v59 = [dictionaryCopy objectForKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
    v60 = objc_opt_self();
    senderCorrelationIdentifier = v8->_senderCorrelationIdentifier;
    v8->_senderCorrelationIdentifier = v60;

    v62 = [dictionaryCopy objectForKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
    v63 = objc_opt_self();
    destinationCorrelationIdentifier = v8->_destinationCorrelationIdentifier;
    v8->_destinationCorrelationIdentifier = v63;

    v65 = [dictionaryCopy objectForKey:@"IDSMessageContextSequenceNumberKey"];
    v66 = objc_opt_self();
    messageSequenceNumber = v8->_messageSequenceNumber;
    v8->_messageSequenceNumber = v66;

    v68 = [dictionaryCopy objectForKey:@"IDSMessageContextBytesSent"];
    v69 = objc_opt_self();
    bytesSent = v8->_bytesSent;
    v8->_bytesSent = v69;

    v71 = [dictionaryCopy objectForKey:@"IDSMessageContextTotalBytes"];
    v72 = objc_opt_self();
    totalBytes = v8->_totalBytes;
    v8->_totalBytes = v72;

    v74 = [dictionaryCopy objectForKey:@"IDSMessageContextTargettedPseudonymKey"];
    v75 = objc_opt_self();
    targettedPseudonymDict = v8->_targettedPseudonymDict;
    v8->_targettedPseudonymDict = v75;

    v77 = [dictionaryCopy objectForKey:@"IDSMessageContextStorageContextKey"];
    v78 = objc_opt_self();
    storageContext = v8->_storageContext;
    v8->_storageContext = v78;

    v80 = [dictionaryCopy objectForKey:@"IDSMessageContextIncomingMessageMetricsKey"];
    v81 = objc_opt_self();
    incomingMessageMetrics = v8->_incomingMessageMetrics;
    v8->_incomingMessageMetrics = v81;

    v83 = [dictionaryCopy objectForKey:@"IDSMessageContextSamplingUUIDKey"];
    v84 = objc_opt_self();
    samplingUUID = v8->_samplingUUID;
    v8->_samplingUUID = v84;

    v86 = [dictionaryCopy objectForKey:@"IDSMessageContextQueueOneIdentifierKey"];
    v87 = objc_opt_self();
    queueOneIdentifier = v8->_queueOneIdentifier;
    v8->_queueOneIdentifier = v87;

    v89 = [dictionaryCopy objectForKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
    v8->_needsDeliveryReceipt = [v89 BOOLValue];

    v90 = [dictionaryCopy objectForKey:@"IDSMessageContextExpectsPeerResponseKey"];
    v8->_expectsPeerResponse = [v90 BOOLValue];

    v91 = [dictionaryCopy objectForKey:@"IDSMessageContextWantsAppAckKey"];
    v8->_wantsAppAck = [v91 BOOLValue];

    v92 = [dictionaryCopy objectForKey:@"IDSMessageContextIsDirectMessage"];
    v8->_isDirectMessage = [v92 BOOLValue];

    v93 = [dictionaryCopy objectForKey:@"IDSMessageContextBroadcastIDKey"];
    v8->_broadcastID = [v93 longLongValue];

    v94 = [dictionaryCopy objectForKey:@"IDSMessageContextWantsManualAckKey"];
    v8->_wantsManualAck = [v94 BOOLValue];

    v95 = [dictionaryCopy objectForKey:@"IDSMessageContextFromServerStorageKey"];
    v8->_fromServerStorage = [v95 BOOLValue];

    v96 = [dictionaryCopy objectForKey:@"IDSMessageContextLastFromServerStorageKey"];
    v8->_lastFromServerStorage = [v96 BOOLValue];

    v97 = [dictionaryCopy objectForKey:@"IDSMessageContextConnectionTypeKey"];
    v8->_connectionType = [v97 longLongValue];

    v98 = [dictionaryCopy objectForKey:@"IDSMessageContextUsedEngramKey"];
    v8->_usedEngram = [v98 BOOLValue];

    v99 = [dictionaryCopy objectForKey:@"IDSMessageContextAverageLocalRTTKey"];
    [v99 doubleValue];
    v8->_averageLocalRTT = v100;

    v101 = [dictionaryCopy objectForKey:@"IDSMessageContextLocalMessageStateKey"];
    v8->_localMessageState = [v101 integerValue];

    v102 = [dictionaryCopy objectForKey:@"IDSMessageContextEndpointStateKey"];
    v8->_endpointState = [v102 integerValue];

    v103 = [dictionaryCopy objectForKey:@"IDSMessageContextDeviceBlackedOutKey"];
    v8->_deviceBlackedOut = [v103 BOOLValue];

    v104 = [dictionaryCopy objectForKey:@"IDSMessageContextMessageHadEncryptedData"];
    v8->_messageHadEncryptedData = [v104 BOOLValue];

    v105 = [dictionaryCopy objectForKey:@"IDSMessageContextIsFromTrustedSender"];
    v8->_isFromTrustedSender = [v105 BOOLValue];

    v106 = [dictionaryCopy objectForKey:@"IDSMessageContextFileSize"];
    v8->_fileSize = [v106 integerValue];

    v107 = [dictionaryCopy objectForKey:@"IDSMessageContextWantsCheckpointing"];
    v8->_wantsCheckpointing = [v107 BOOLValue];

    v108 = [dictionaryCopy objectForKey:@"IDSMessageContextShouldShowPeerErrors"];
    v8->_shouldShowPeerErrors = [v108 BOOLValue];

    v109 = [dictionaryCopy objectForKey:@"IDSMessageContextWPConnectionErrorDomainKey"];
    v110 = objc_opt_self();

    v111 = [dictionaryCopy objectForKey:@"IDSMessageContextWPConnectionErrorCodeKey"];
    v112 = objc_opt_self();

    v113 = [dictionaryCopy objectForKey:@"IDSMessageContextWPConnectionErrorUserInfoKey"];
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

    v118 = [dictionaryCopy objectForKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
    if (v118)
    {
      v119 = [[IDSCertifiedDeliveryContext alloc] initWithDictionaryRepresentation:v118];
      certifiedDeliveryContext = v8->_certifiedDeliveryContext;
      v8->_certifiedDeliveryContext = v119;
    }

    v121 = [dictionaryCopy objectForKey:@"IDSMessageContextServerStorageFetchContextKey"];
    if (v121)
    {
      v122 = [[IDSServerStorageFetchContext alloc] initWithDictionary:v121];
      serverStorageFetchContext = v8->_serverStorageFetchContext;
      v8->_serverStorageFetchContext = v122;
    }

    v124 = [dictionaryCopy objectForKey:@"ids-message-resource-transfer-url"];
    v125 = objc_opt_self();
    resourceTransferURLString = v8->_resourceTransferURLString;
    v8->_resourceTransferURLString = v125;

    v127 = [dictionaryCopy objectForKey:@"ids-message-resource-transfer-metadata"];
    v128 = objc_opt_self();
    resourceTransferMetadata = v8->_resourceTransferMetadata;
    v8->_resourceTransferMetadata = v128;

    v130 = [dictionaryCopy objectForKey:@"ids-message-resource-transfer-sandbox-extension"];
    v131 = objc_opt_self();
    resourceTransferSandboxExtension = v8->_resourceTransferSandboxExtension;
    v8->_resourceTransferSandboxExtension = v131;

    v133 = [dictionaryCopy objectForKey:@"IDSMessageContextSenderPushToken"];
    v134 = objc_opt_self();
    senderPushToken = v8->_senderPushToken;
    v8->_senderPushToken = v134;

    v136 = [dictionaryCopy objectForKey:@"IDSMessageContextSnapTrustedUser"];
    v137 = objc_opt_self();
    snapTrustedUser = v8->_snapTrustedUser;
    v8->_snapTrustedUser = v137;

    v139 = [dictionaryCopy objectForKey:@"IDSMessageContextDeliveryStatusContext"];
    v140 = objc_opt_self();
    deliveryStatusContext = v8->_deliveryStatusContext;
    v8->_deliveryStatusContext = v140;
  }

  return v8;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1A4A4(keyCopy, registration);
  }

  return 0;
}

- (unint64_t)serverTimestampInNanoseconds
{
  serverTimestamp = [(IDSMessageContext *)self serverTimestamp];
  [serverTimestamp doubleValue];
  v4 = (v3 * 1000000000.0);

  return v4;
}

- (void)setOutgoingResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  outgoingResponseIdentifier = self->_outgoingResponseIdentifier;
  self->_outgoingResponseIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIncomingResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  incomingResponseIdentifier = self->_incomingResponseIdentifier;
  self->_incomingResponseIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)incomingResponseIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_incomingResponseIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  serviceIdentifier = self->_serviceIdentifier;
  self->_serviceIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)serviceIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStorageGuid:(id)guid
{
  guidCopy = guid;
  os_unfair_lock_lock(&self->_lock);
  storageGuid = self->_storageGuid;
  self->_storageGuid = guidCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFromID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  fromID = self->_fromID;
  self->_fromID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)fromID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_fromID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setToID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  toID = self->_toID;
  self->_toID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)toID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_toID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalDestinationDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lock);
  originalDestinationDevice = self->_originalDestinationDevice;
  self->_originalDestinationDevice = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)originalDestinationDevice
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalDestinationDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalGuid:(id)guid
{
  guidCopy = guid;
  os_unfair_lock_lock(&self->_lock);
  originalGUID = self->_originalGUID;
  self->_originalGUID = guidCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)originalGUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalGUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEngramGroupID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  engramGroupID = self->_engramGroupID;
  self->_engramGroupID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)engramGroupID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_engramGroupID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOriginalCommand:(id)command
{
  commandCopy = command;
  os_unfair_lock_lock(&self->_lock);
  originalCommand = self->_originalCommand;
  self->_originalCommand = commandCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBroadcastTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock(&self->_lock);
  broadcastTime = self->_broadcastTime;
  self->_broadcastTime = timeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPriority:(id)priority
{
  priorityCopy = priority;
  os_unfair_lock_lock(&self->_lock);
  priority = self->_priority;
  self->_priority = priorityCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServerTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  os_unfair_lock_lock(&self->_lock);
  serverTimestamp = self->_serverTimestamp;
  self->_serverTimestamp = timestampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setOriginalTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  os_unfair_lock_lock(&self->_lock);
  originalTimestamp = self->_originalTimestamp;
  self->_originalTimestamp = timestampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)originalTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_originalTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSenderCorrelationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  senderCorrelationIdentifier = self->_senderCorrelationIdentifier;
  self->_senderCorrelationIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)senderCorrelationIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_senderCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDestinationCorrelationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  destinationCorrelationIdentifier = self->_destinationCorrelationIdentifier;
  self->_destinationCorrelationIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)destinationCorrelationIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_destinationCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPublicIntentAction:(id)action
{
  actionCopy = action;
  os_unfair_lock_lock(&self->_lock);
  publicIntentAction = self->_publicIntentAction;
  self->_publicIntentAction = actionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)publicIntentAction
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_publicIntentAction;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSenderPushToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  senderPushToken = self->_senderPushToken;
  self->_senderPushToken = tokenCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)senderPushToken
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_senderPushToken;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStorageContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  storageContext = self->_storageContext;
  self->_storageContext = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)storageContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_storageContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSnapTrustedUser:(id)user
{
  userCopy = user;
  os_unfair_lock_lock(&self->_lock);
  snapTrustedUser = self->_snapTrustedUser;
  self->_snapTrustedUser = userCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)snapTrustedUser
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_snapTrustedUser;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeliveryStatusContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  deliveryStatusContext = self->_deliveryStatusContext;
  self->_deliveryStatusContext = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)deliveryStatusContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deliveryStatusContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIncomingMessageMetrics:(id)metrics
{
  metricsCopy = metrics;
  os_unfair_lock_lock(&self->_lock);
  incomingMessageMetrics = self->_incomingMessageMetrics;
  self->_incomingMessageMetrics = metricsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)incomingMessageMetrics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_incomingMessageMetrics;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSamplingUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  samplingUUID = self->_samplingUUID;
  self->_samplingUUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)samplingUUID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_samplingUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQueueOneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  queueOneIdentifier = self->_queueOneIdentifier;
  self->_queueOneIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)queueOneIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_queueOneIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setWPConnectionError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  wpConnectionError = self->_wpConnectionError;
  self->_wpConnectionError = errorCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSError)wpConnectionError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_wpConnectionError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBytesSent:(id)sent
{
  sentCopy = sent;
  os_unfair_lock_lock(&self->_lock);
  bytesSent = self->_bytesSent;
  self->_bytesSent = sentCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTotalBytes:(id)bytes
{
  bytesCopy = bytes;
  os_unfair_lock_lock(&self->_lock);
  totalBytes = self->_totalBytes;
  self->_totalBytes = bytesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)totalBytes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_totalBytes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferURLString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferURLString = self->_resourceTransferURLString;
  self->_resourceTransferURLString = stringCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)resourceTransferURLString
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferURLString;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferMetadata:(id)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferMetadata = self->_resourceTransferMetadata;
  self->_resourceTransferMetadata = metadataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)resourceTransferMetadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferMetadata;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResourceTransferSandboxExtension:(id)extension
{
  extensionCopy = extension;
  os_unfair_lock_lock(&self->_lock);
  resourceTransferSandboxExtension = self->_resourceTransferSandboxExtension;
  self->_resourceTransferSandboxExtension = extensionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)resourceTransferSandboxExtension
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_resourceTransferSandboxExtension;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNeedsDeliveryReceipt:(BOOL)receipt
{
  os_unfair_lock_lock(&self->_lock);
  self->_needsDeliveryReceipt = receipt;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)needsDeliveryReceipt
{
  os_unfair_lock_lock(&self->_lock);
  needsDeliveryReceipt = self->_needsDeliveryReceipt;
  os_unfair_lock_unlock(&self->_lock);
  return needsDeliveryReceipt;
}

- (void)setExpectsPeerResponse:(BOOL)response
{
  os_unfair_lock_lock(&self->_lock);
  self->_expectsPeerResponse = response;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)expectsPeerResponse
{
  os_unfair_lock_lock(&self->_lock);
  expectsPeerResponse = self->_expectsPeerResponse;
  os_unfair_lock_unlock(&self->_lock);
  return expectsPeerResponse;
}

- (void)setWantsAppAck:(BOOL)ack
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsAppAck = ack;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsDirectMessage:(BOOL)message
{
  os_unfair_lock_lock(&self->_lock);
  self->_isDirectMessage = message;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBroadcastID:(int64_t)d
{
  os_unfair_lock_lock(&self->_lock);
  self->_broadcastID = d;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWantsManualAck:(BOOL)ack
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsManualAck = ack;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wantsManualAck
{
  os_unfair_lock_lock(&self->_lock);
  wantsManualAck = self->_wantsManualAck;
  os_unfair_lock_unlock(&self->_lock);
  return wantsManualAck;
}

- (void)setFromServerStorage:(BOOL)storage
{
  os_unfair_lock_lock(&self->_lock);
  self->_fromServerStorage = storage;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)fromServerStorage
{
  os_unfair_lock_lock(&self->_lock);
  fromServerStorage = self->_fromServerStorage;
  os_unfair_lock_unlock(&self->_lock);
  return fromServerStorage;
}

- (void)setLastFromServerStorage:(BOOL)storage
{
  os_unfair_lock_lock(&self->_lock);
  self->_lastFromServerStorage = storage;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)lastFromServerStorage
{
  os_unfair_lock_lock(&self->_lock);
  lastFromServerStorage = self->_lastFromServerStorage;
  os_unfair_lock_unlock(&self->_lock);
  return lastFromServerStorage;
}

- (void)setConnectionType:(int64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_connectionType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUsedEngram:(BOOL)engram
{
  os_unfair_lock_lock(&self->_lock);
  self->_usedEngram = engram;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsFromTrustedSender:(BOOL)sender
{
  os_unfair_lock_lock(&self->_lock);
  self->_isFromTrustedSender = sender;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFromTrustedSender
{
  os_unfair_lock_lock(&self->_lock);
  isFromTrustedSender = self->_isFromTrustedSender;
  os_unfair_lock_unlock(&self->_lock);
  return isFromTrustedSender;
}

- (void)setWantsCheckpointing:(BOOL)checkpointing
{
  os_unfair_lock_lock(&self->_lock);
  self->_wantsCheckpointing = checkpointing;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wantsCheckpointing
{
  os_unfair_lock_lock(&self->_lock);
  wantsCheckpointing = self->_wantsCheckpointing;
  os_unfair_lock_unlock(&self->_lock);
  return wantsCheckpointing;
}

- (void)setShouldShowPeerErrors:(BOOL)errors
{
  os_unfair_lock_lock(&self->_lock);
  self->_shouldShowPeerErrors = errors;

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

- (void)encodeWithCoder:(id)coder
{
  outgoingResponseIdentifier = self->_outgoingResponseIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:outgoingResponseIdentifier forKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
  [coderCopy encodeObject:self->_incomingResponseIdentifier forKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"IDSMessageContextServiceIdentifierKey"];
  [coderCopy encodeObject:self->_storageGuid forKey:@"IDSMessageContextStorageGuidKey"];
  [coderCopy encodeObject:self->_fromID forKey:@"IDSMessageContextFromIDKey"];
  [coderCopy encodeObject:self->_toID forKey:@"IDSMessageContextToIDKey"];
  [coderCopy encodeObject:self->_originalDestinationDevice forKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
  [coderCopy encodeObject:self->_originalGUID forKey:@"IDSMessageContextOriginalGUIDKey"];
  [coderCopy encodeObject:self->_engramGroupID forKey:@"IDSMessageContextEngramGroupIDKey"];
  [coderCopy encodeObject:self->_originalCommand forKey:@"IDSMessageContextOriginalCommandKey"];
  [coderCopy encodeObject:self->_incomingOC forKey:@"IDSMessageContextIncomingOCKey"];
  [coderCopy encodeObject:self->_publicIntentAction forKey:@"IDSMessageContextPublicIntentActionKey"];
  [coderCopy encodeObject:self->_broadcastTime forKey:@"IDSMessageContextBroadcastTimeKey"];
  [coderCopy encodeObject:self->_priority forKey:@"IDSMessageContextPriorityKey"];
  [coderCopy encodeObject:self->_serverTimestamp forKey:@"IDSMessageContextServerTimestampKey"];
  [coderCopy encodeObject:self->_originalTimestamp forKey:@"IDSMessageContextOriginalTimestampKey"];
  [coderCopy encodeObject:self->_senderCorrelationIdentifier forKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
  [coderCopy encodeObject:self->_destinationCorrelationIdentifier forKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
  [coderCopy encodeObject:self->_messageSequenceNumber forKey:@"IDSMessageContextSequenceNumberKey"];
  [coderCopy encodeObject:self->_bytesSent forKey:@"IDSMessageContextBytesSent"];
  [coderCopy encodeObject:self->_totalBytes forKey:@"IDSMessageContextTotalBytes"];
  [coderCopy encodeObject:self->_targettedPseudonymDict forKey:@"IDSMessageContextTargettedPseudonymKey"];
  [coderCopy encodeBool:self->_needsDeliveryReceipt forKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
  [coderCopy encodeBool:self->_expectsPeerResponse forKey:@"IDSMessageContextExpectsPeerResponseKey"];
  [coderCopy encodeBool:self->_wantsAppAck forKey:@"IDSMessageContextWantsAppAckKey"];
  [coderCopy encodeBool:self->_isDirectMessage forKey:@"IDSMessageContextIsDirectMessage"];
  [coderCopy encodeInt64:self->_broadcastID forKey:@"IDSMessageContextBroadcastIDKey"];
  [coderCopy encodeBool:self->_wantsManualAck forKey:@"IDSMessageContextWantsManualAckKey"];
  [coderCopy encodeBool:self->_fromServerStorage forKey:@"IDSMessageContextFromServerStorageKey"];
  [coderCopy encodeBool:self->_lastFromServerStorage forKey:@"IDSMessageContextLastFromServerStorageKey"];
  [coderCopy encodeInt64:self->_connectionType forKey:@"IDSMessageContextConnectionTypeKey"];
  [coderCopy encodeBool:self->_usedEngram forKey:@"IDSMessageContextUsedEngramKey"];
  [coderCopy encodeDouble:@"IDSMessageContextAverageLocalRTTKey" forKey:self->_averageLocalRTT];
  [coderCopy encodeInteger:self->_localMessageState forKey:@"IDSMessageContextLocalMessageStateKey"];
  [coderCopy encodeInteger:self->_endpointState forKey:@"IDSMessageContextEndpointStateKey"];
  [coderCopy encodeBool:self->_deviceBlackedOut forKey:@"IDSMessageContextDeviceBlackedOutKey"];
  [coderCopy encodeBool:self->_messageHadEncryptedData forKey:@"IDSMessageContextMessageHadEncryptedData"];
  [coderCopy encodeBool:self->_isFromTrustedSender forKey:@"IDSMessageContextIsFromTrustedSender"];
  [coderCopy encodeBool:self->_wantsCheckpointing forKey:@"IDSMessageContextWantsCheckpointing"];
  [coderCopy encodeBool:self->_shouldShowPeerErrors forKey:@"IDSMessageContextShouldShowPeerErrors"];
  [coderCopy encodeInteger:self->_fileSize forKey:@"IDSMessageContextFileSize"];
  [coderCopy encodeObject:self->_wpConnectionError forKey:@"IDSMessageContextWPConnectionErrorKey"];
  [coderCopy encodeObject:self->_certifiedDeliveryContext forKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
  [coderCopy encodeObject:self->_serverStorageFetchContext forKey:@"IDSMessageContextServerStorageFetchContextKey"];
  [coderCopy encodeObject:self->_resourceTransferURLString forKey:@"ids-message-resource-transfer-url"];
  [coderCopy encodeObject:self->_resourceTransferMetadata forKey:@"ids-message-resource-transfer-metadata"];
  [coderCopy encodeObject:self->_resourceTransferSandboxExtension forKey:@"ids-message-resource-transfer-sandbox-extension"];
  [coderCopy encodeObject:self->_senderPushToken forKey:@"IDSMessageContextSenderPushToken"];
  [coderCopy encodeObject:self->_storageContext forKey:@"IDSMessageContextStorageContextKey"];
  [coderCopy encodeObject:self->_snapTrustedUser forKey:@"IDSMessageContextSnapTrustedUser"];
  [coderCopy encodeObject:self->_deliveryStatusContext forKey:@"IDSMessageContextDeliveryStatusContext"];
  [coderCopy encodeObject:self->_incomingMessageMetrics forKey:@"IDSMessageContextIncomingMessageMetricsKey"];
  [coderCopy encodeObject:self->_samplingUUID forKey:@"IDSMessageContextSamplingUUIDKey"];
  [coderCopy encodeObject:self->_queueOneIdentifier forKey:@"IDSMessageContextQueueOneIdentifierKey"];
}

- (IDSMessageContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v78.receiver = self;
  v78.super_class = IDSMessageContext;
  v5 = [(IDSMessageContext *)&v78 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOutgoingResponseIdentifierKey"];
    outgoingResponseIdentifier = v5->_outgoingResponseIdentifier;
    v5->_outgoingResponseIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingResponseIdentifierKey"];
    incomingResponseIdentifier = v5->_incomingResponseIdentifier;
    v5->_incomingResponseIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServiceIdentifierKey"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextStorageGuidKey"];
    storageGuid = v5->_storageGuid;
    v5->_storageGuid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextFromIDKey"];
    fromID = v5->_fromID;
    v5->_fromID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextToIDKey"];
    toID = v5->_toID;
    v5->_toID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalDestinationDeviceKey"];
    originalDestinationDevice = v5->_originalDestinationDevice;
    v5->_originalDestinationDevice = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalGUIDKey"];
    originalGUID = v5->_originalGUID;
    v5->_originalGUID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextEngramGroupIDKey"];
    engramGroupID = v5->_engramGroupID;
    v5->_engramGroupID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalCommandKey"];
    originalCommand = v5->_originalCommand;
    v5->_originalCommand = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingOCKey"];
    incomingOC = v5->_incomingOC;
    v5->_incomingOC = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextPublicIntentActionKey"];
    publicIntentAction = v5->_publicIntentAction;
    v5->_publicIntentAction = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextBroadcastTimeKey"];
    broadcastTime = v5->_broadcastTime;
    v5->_broadcastTime = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextPriorityKey"];
    priority = v5->_priority;
    v5->_priority = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServerTimestampKey"];
    serverTimestamp = v5->_serverTimestamp;
    v5->_serverTimestamp = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextOriginalTimestampKey"];
    originalTimestamp = v5->_originalTimestamp;
    v5->_originalTimestamp = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSenderCorrelationIdentifierKey"];
    senderCorrelationIdentifier = v5->_senderCorrelationIdentifier;
    v5->_senderCorrelationIdentifier = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextDestinationCorrelationIdentifierKey"];
    destinationCorrelationIdentifier = v5->_destinationCorrelationIdentifier;
    v5->_destinationCorrelationIdentifier = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSequenceNumberKey"];
    messageSequenceNumber = v5->_messageSequenceNumber;
    v5->_messageSequenceNumber = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextBytesSent"];
    bytesSent = v5->_bytesSent;
    v5->_bytesSent = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextTotalBytes"];
    totalBytes = v5->_totalBytes;
    v5->_totalBytes = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextTargettedPseudonymKey"];
    targettedPseudonymDict = v5->_targettedPseudonymDict;
    v5->_targettedPseudonymDict = v48;

    v5->_needsDeliveryReceipt = [coderCopy decodeBoolForKey:@"IDSMessageContextNeedsDeliveryReceiptKey"];
    v5->_expectsPeerResponse = [coderCopy decodeBoolForKey:@"IDSMessageContextExpectsPeerResponseKey"];
    v5->_wantsAppAck = [coderCopy decodeBoolForKey:@"IDSMessageContextWantsAppAckKey"];
    v5->_isDirectMessage = [coderCopy decodeBoolForKey:@"IDSMessageContextIsDirectMessage"];
    v5->_broadcastID = [coderCopy decodeInt64ForKey:@"IDSMessageContextBroadcastIDKey"];
    v5->_wantsManualAck = [coderCopy decodeBoolForKey:@"IDSMessageContextWantsManualAckKey"];
    v5->_fromServerStorage = [coderCopy decodeBoolForKey:@"IDSMessageContextFromServerStorageKey"];
    v5->_lastFromServerStorage = [coderCopy decodeBoolForKey:@"IDSMessageContextLastFromServerStorageKey"];
    v5->_connectionType = [coderCopy decodeInt64ForKey:@"IDSMessageContextConnectionTypeKey"];
    v5->_usedEngram = [coderCopy decodeBoolForKey:@"IDSMessageContextUsedEngramKey"];
    [coderCopy decodeDoubleForKey:@"IDSMessageContextAverageLocalRTTKey"];
    v5->_averageLocalRTT = v50;
    v5->_localMessageState = [coderCopy decodeIntegerForKey:@"IDSMessageContextLocalMessageStateKey"];
    v5->_endpointState = [coderCopy decodeIntegerForKey:@"IDSMessageContextEndpointStateKey"];
    v5->_deviceBlackedOut = [coderCopy decodeBoolForKey:@"IDSMessageContextDeviceBlackedOutKey"];
    v5->_messageHadEncryptedData = [coderCopy decodeBoolForKey:@"IDSMessageContextMessageHadEncryptedData"];
    v5->_isFromTrustedSender = [coderCopy decodeBoolForKey:@"IDSMessageContextIsFromTrustedSender"];
    v5->_wantsCheckpointing = [coderCopy decodeBoolForKey:@"IDSMessageContextWantsCheckpointing"];
    v5->_shouldShowPeerErrors = [coderCopy decodeBoolForKey:@"IDSMessageContextShouldShowPeerErrors"];
    v5->_fileSize = [coderCopy decodeIntegerForKey:@"IDSMessageContextFileSize"];
    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextWPConnectionErrorKey"];
    wpConnectionError = v5->_wpConnectionError;
    v5->_wpConnectionError = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextCertifiedDeliveryContextKey"];
    certifiedDeliveryContext = v5->_certifiedDeliveryContext;
    v5->_certifiedDeliveryContext = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextServerStorageFetchContextKey"];
    serverStorageFetchContext = v5->_serverStorageFetchContext;
    v5->_serverStorageFetchContext = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-url"];
    resourceTransferURLString = v5->_resourceTransferURLString;
    v5->_resourceTransferURLString = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-metadata"];
    resourceTransferMetadata = v5->_resourceTransferMetadata;
    v5->_resourceTransferMetadata = v59;

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ids-message-resource-transfer-sandbox-extension"];
    resourceTransferSandboxExtension = v5->_resourceTransferSandboxExtension;
    v5->_resourceTransferSandboxExtension = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSenderPushToken"];
    senderPushToken = v5->_senderPushToken;
    v5->_senderPushToken = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextStorageContextKey"];
    storageContext = v5->_storageContext;
    v5->_storageContext = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSnapTrustedUser"];
    snapTrustedUser = v5->_snapTrustedUser;
    v5->_snapTrustedUser = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextDeliveryStatusContext"];
    deliveryStatusContext = v5->_deliveryStatusContext;
    v5->_deliveryStatusContext = v69;

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextIncomingMessageMetricsKey"];
    incomingMessageMetrics = v5->_incomingMessageMetrics;
    v5->_incomingMessageMetrics = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextSamplingUUIDKey"];
    samplingUUID = v5->_samplingUUID;
    v5->_samplingUUID = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSMessageContextQueueOneIdentifierKey"];
    queueOneIdentifier = v5->_queueOneIdentifier;
    v5->_queueOneIdentifier = v75;
  }

  return v5;
}

@end