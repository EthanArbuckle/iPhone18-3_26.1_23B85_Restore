@interface IDSOffGridEncryptedMessage
+ (id)_daemonListener;
+ (int64_t)maxPayloadSize;
- (IDSOffGridEncryptedMessage)initWithCoder:(id)coder;
- (IDSOffGridEncryptedMessage)initWithDictionaryMessage:(id)message;
- (IDSOffGridEncryptedMessage)initWithMessage:(id)message senderURI:(id)i recipientURI:(id)rI encryptionProperties:(id)properties;
- (IDSOffGridEncryptedMessage)initWithPayload:(id)payload senderURI:(id)i recipientURI:(id)rI;
- (IDSOffGridEncryptedMessage)initWithSegments:(id)segments;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)payload;
- (id)splitMessageIntoMessagesThatFit;
- (int64_t)compare:(id)compare;
- (int64_t)maxPayloadSizeRemaining;
- (int64_t)preferredServiceType;
- (int64_t)serviceTypeFromNumber:(id)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridEncryptedMessage

+ (id)_daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  listener = [v2 listener];

  return listener;
}

+ (int64_t)maxPayloadSize
{
  _daemonListener = [self _daemonListener];
  maxIMLPayloadSize = [_daemonListener maxIMLPayloadSize];

  return maxIMLPayloadSize - 3;
}

- (IDSOffGridEncryptedMessage)initWithMessage:(id)message senderURI:(id)i recipientURI:(id)rI encryptionProperties:(id)properties
{
  messageCopy = message;
  iCopy = i;
  rICopy = rI;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = IDSOffGridEncryptedMessage;
  v15 = [(IDSOffGridEncryptedMessage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_message, message);
    objc_storeStrong(&v16->_senderURI, i);
    objc_storeStrong(&v16->_recipientURI, rI);
    objc_storeStrong(&v16->_encryptionProperties, properties);
  }

  return v16;
}

- (IDSOffGridEncryptedMessage)initWithPayload:(id)payload senderURI:(id)i recipientURI:(id)rI
{
  payloadCopy = payload;
  iCopy = i;
  rICopy = rI;
  v23.receiver = self;
  v23.super_class = IDSOffGridEncryptedMessage;
  v11 = [(IDSOffGridEncryptedMessage *)&v23 init];
  if (!v11)
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if ([payloadCopy length] >= 4)
  {
    v13 = [payloadCopy subdataWithRange:{0, 1}];
    v14 = [payloadCopy subdataWithRange:{1, 2}];
    v15 = [payloadCopy subdataWithRange:{3, objc_msgSend(payloadCopy, "length") - 3}];
    v22 = 0;
    [v14 getBytes:&v22 length:2];
    objc_storeStrong(&v11->_message, v15);
    objc_storeStrong(&v11->_senderURI, i);
    objc_storeStrong(&v11->_recipientURI, rI);
    v16 = objc_alloc_init(IDSOffGridEncryptionProperties);
    encryptionProperties = v11->_encryptionProperties;
    v11->_encryptionProperties = v16;

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v22];
    [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setRatchetCounter:v18];

    [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setEncryptionKeyID:v13];
    v19 = [payloadCopy length];
    if (v19 >= 0x13)
    {
      v20 = [payloadCopy subdataWithRange:{v19 - 16, 16}];
      [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setAuthTag:v20];
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (IDSOffGridEncryptedMessage)initWithDictionaryMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v28.receiver = self;
    v28.super_class = IDSOffGridEncryptedMessage;
    v5 = [(IDSOffGridEncryptedMessage *)&v28 init];
    if (v5)
    {
      v6 = [messageCopy objectForKeyedSubscript:@"message"];
      message = v5->_message;
      v5->_message = v6;

      v8 = [messageCopy objectForKeyedSubscript:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v8;

      v10 = [messageCopy objectForKeyedSubscript:@"senderURI"];
      senderURI = v5->_senderURI;
      v5->_senderURI = v10;

      v12 = [messageCopy objectForKeyedSubscript:@"recipientURI"];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v12;

      v14 = [IDSOffGridEncryptionProperties alloc];
      v15 = [messageCopy objectForKeyedSubscript:@"encryptionProperties"];
      v16 = [(IDSOffGridEncryptionProperties *)v14 initWithDictionary:v15];
      encryptionProperties = v5->_encryptionProperties;
      v5->_encryptionProperties = v16;

      v18 = [messageCopy objectForKeyedSubscript:@"date"];
      date = v5->_date;
      v5->_date = v18;

      v20 = [messageCopy objectForKeyedSubscript:@"pendingTotalCount"];
      pendingTotalCount = v5->_pendingTotalCount;
      v5->_pendingTotalCount = v20;

      v22 = [messageCopy objectForKeyedSubscript:@"pendingCount"];
      pendingCount = v5->_pendingCount;
      v5->_pendingCount = v22;

      v24 = [messageCopy objectForKeyedSubscript:@"preferredService"];
      preferredService = v5->_preferredService;
      v5->_preferredService = v24;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSOffGridEncryptedMessage)initWithSegments:(id)segments
{
  v28 = *MEMORY[0x1E69E9840];
  [segments sortedArrayUsingSelector:sel_compare_];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        message = [*(*(&v23 + 1) + 8 * i) message];
        v11 = message;
        if (v7)
        {
          [v7 appendData:message];
        }

        else
        {
          v7 = [message mutableCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  firstObject = [v4 firstObject];
  v13 = [firstObject copy];

  [(IDSOffGridEncryptedMessage *)v13 setMessage:v7];
  encryptionProperties = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
  [encryptionProperties setSegmentNumber:&unk_1F0A29A38];

  encryptionProperties2 = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
  [encryptionProperties2 setTotalSegments:&unk_1F0A29A38];

  v16 = [v7 length];
  if (v16 >= 0x13)
  {
    v17 = [v7 subdataWithRange:{v16 - 16, 16}];
    encryptionProperties3 = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
    [encryptionProperties3 setAuthTag:v17];
  }

  firstObject2 = [v4 firstObject];
  date = [firstObject2 date];
  [(IDSOffGridEncryptedMessage *)v13 setDate:date];

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)maxPayloadSizeRemaining
{
  maxPayloadSize = [objc_opt_class() maxPayloadSize];
  message = [(IDSOffGridEncryptedMessage *)self message];
  v5 = maxPayloadSize - [message length];

  return v5;
}

- (id)splitMessageIntoMessagesThatFit
{
  v54[1] = *MEMORY[0x1E69E9840];
  maxPayloadSizeRemaining = [(IDSOffGridEncryptedMessage *)self maxPayloadSizeRemaining];
  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FCF4(self, maxPayloadSizeRemaining, iDSOffGridMessenger);
  }

  iDSOffGridMessenger2 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger2, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FE00(self);
  }

  iDSOffGridMessenger3 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger3, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FEA0(self);
  }

  if (maxPayloadSizeRemaining < 0)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    message = [(IDSOffGridEncryptedMessage *)self message];
    v10 = [message length];
    maxPayloadSize = [objc_opt_class() maxPayloadSize];
    v12 = [message length];
    if (v10)
    {
      v14 = 0;
      v15 = v12 + maxPayloadSizeRemaining;
      v16 = 1;
      *&v13 = 134218752;
      v38 = v13;
      do
      {
        v17 = [message length];
        if (v15 >= v17 - v14)
        {
          v18 = v17 - v14;
        }

        else
        {
          v18 = v15;
        }

        v19 = [message subdataWithRange:{v14, v18}];
        v20 = [(IDSOffGridEncryptedMessage *)self copy];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        encryptionProperties = [v20 encryptionProperties];
        [encryptionProperties setSegmentNumber:v21];

        [v20 setMessage:v19];
        [v39 addObject:v20];
        iDSOffGridMessenger4 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
        if (os_log_type_enabled(iDSOffGridMessenger4, OS_LOG_TYPE_DEBUG))
        {
          *buf = v38;
          selfCopy = self;
          v48 = 1024;
          v49 = v16;
          v50 = 2048;
          v51 = v18;
          v52 = 2048;
          v53 = v20;
          _os_log_debug_impl(&dword_1959FF000, iDSOffGridMessenger4, OS_LOG_TYPE_DEBUG, "%p - split message part %d {size: %lld, ptr: %p}", buf, 0x26u);
        }

        v14 += v18;

        ++v16;
        v15 = maxPayloadSize;
      }

      while (v14 < v10);
      v10 = v16 - 1;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v39;
    v24 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v8);
          }

          v28 = *(*(&v41 + 1) + 8 * i);
          encryptionProperties2 = [v28 encryptionProperties];
          segmentNumber = [encryptionProperties2 segmentNumber];
          integerValue = [segmentNumber integerValue];

          if (integerValue != v10)
          {
            encryptionProperties3 = [v28 encryptionProperties];
            [encryptionProperties3 setAuthTag:0];
          }

          v33 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          encryptionProperties4 = [v28 encryptionProperties];
          [encryptionProperties4 setTotalSegments:v33];
        }

        v25 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v25);
    }

    iDSOffGridMessenger5 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(iDSOffGridMessenger5, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3FF58(self, v10, iDSOffGridMessenger5);
    }
  }

  else
  {
    encryptionProperties5 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
    [encryptionProperties5 setSegmentNumber:&unk_1F0A29A38];

    encryptionProperties6 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
    [encryptionProperties6 setTotalSegments:&unk_1F0A29A38];

    v54[0] = self;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  encryptionProperties = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  encryptionProperties2 = [compareCopy encryptionProperties];

  v7 = [encryptionProperties compare:encryptionProperties2];
  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  message = self->_message;
  if (message)
  {
    CFDictionarySetValue(v3, @"message", message);
  }

  identifier = self->_identifier;
  if (identifier)
  {
    CFDictionarySetValue(v4, @"identifier", identifier);
  }

  dictionaryRepresentation = [(IDSOffGridEncryptionProperties *)self->_encryptionProperties dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    CFDictionarySetValue(v4, @"encryptionProperties", dictionaryRepresentation);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v4, @"service", service);
  }

  prefixedURI = [(IDSURI *)self->_senderURI prefixedURI];
  if (prefixedURI)
  {
    CFDictionarySetValue(v4, @"senderURI", prefixedURI);
  }

  senderShortHandle = self->_senderShortHandle;
  if (senderShortHandle)
  {
    CFDictionarySetValue(v4, @"senderShortHandle", senderShortHandle);
  }

  prefixedURI2 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (prefixedURI2)
  {
    CFDictionarySetValue(v4, @"recipientURI", prefixedURI2);
  }

  recipientShortHandle = self->_recipientShortHandle;
  if (recipientShortHandle)
  {
    CFDictionarySetValue(v4, @"recipientShortHandle", recipientShortHandle);
  }

  date = self->_date;
  if (date)
  {
    CFDictionarySetValue(v4, @"date", date);
  }

  pendingTotalCount = self->_pendingTotalCount;
  if (pendingTotalCount)
  {
    CFDictionarySetValue(v4, @"pendingTotalCount", pendingTotalCount);
  }

  pendingCount = self->_pendingCount;
  if (pendingCount)
  {
    CFDictionarySetValue(v4, @"pendingCount", pendingCount);
  }

  preferredService = self->_preferredService;
  if (preferredService)
  {
    CFDictionarySetValue(v4, @"preferredService", preferredService);
  }

  v17 = [(__CFDictionary *)v4 copy];

  return v17;
}

- (id)payload
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  encryptionProperties = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  encryptionKeyID = [encryptionProperties encryptionKeyID];

  v6 = [encryptionKeyID subdataWithRange:{0, 1}];
  [v3 appendData:v6];

  iDSOffGridMessenger = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger, OS_LOG_TYPE_DEBUG))
  {
    v17 = [encryptionKeyID debugDescription];
    *buf = 134218498;
    selfCopy2 = self;
    v23 = 2112;
    v24 = v17;
    v25 = 2048;
    v26 = [v3 length];
    _os_log_debug_impl(&dword_1959FF000, iDSOffGridMessenger, OS_LOG_TYPE_DEBUG, "%p - payload call, added keyID %@ {len: %lld}", buf, 0x20u);
  }

  encryptionProperties2 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  ratchetCounter = [encryptionProperties2 ratchetCounter];
  unsignedShortValue = [ratchetCounter unsignedShortValue];

  v20 = unsignedShortValue;
  [v3 appendBytes:&v20 length:2];
  iDSOffGridMessenger2 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger2, OS_LOG_TYPE_DEBUG))
  {
    v18 = v20;
    v19 = [v3 length];
    *buf = 134218496;
    selfCopy2 = self;
    v23 = 2048;
    v24 = v18;
    v25 = 2048;
    v26 = v19;
    _os_log_debug_impl(&dword_1959FF000, iDSOffGridMessenger2, OS_LOG_TYPE_DEBUG, "%p - payload call, added ratchet ctr %lld {len: %lld}", buf, 0x20u);
  }

  message = [(IDSOffGridEncryptedMessage *)self message];
  [v3 appendData:message];

  iDSOffGridMessenger3 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger3, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FFE0(self, v3);
  }

  iDSOffGridMessenger4 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(iDSOffGridMessenger4, OS_LOG_TYPE_DEBUG))
  {
    sub_195B40070(self, v3);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)preferredServiceType
{
  preferredService = [(IDSOffGridEncryptedMessage *)self preferredService];
  v4 = [(IDSOffGridEncryptedMessage *)self serviceTypeFromNumber:preferredService];

  return v4;
}

- (int64_t)serviceTypeFromNumber:(id)number
{
  if (!number)
  {
    return -1;
  }

  integerValue = [number integerValue];
  if (integerValue == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (integerValue)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  message = [(IDSOffGridEncryptedMessage *)self message];
  senderURI = [(IDSOffGridEncryptedMessage *)self senderURI];
  recipientURI = [(IDSOffGridEncryptedMessage *)self recipientURI];
  encryptionProperties = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  v9 = [encryptionProperties copy];
  v10 = [v4 initWithMessage:message senderURI:senderURI recipientURI:recipientURI encryptionProperties:v9];

  preferredService = [(IDSOffGridEncryptedMessage *)self preferredService];
  [v10 setPreferredService:preferredService];

  return v10;
}

- (IDSOffGridEncryptedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionProperties"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderShortHandle"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientShortHandle"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingTotalCount"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingCount"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredService"];

  v10 = [[IDSOffGridEncryptedMessage alloc] initWithMessage:v18 senderURI:v14 recipientURI:v4 encryptionProperties:v5];
  [(IDSOffGridEncryptedMessage *)v10 setIdentifier:v17];
  [(IDSOffGridEncryptedMessage *)v10 setService:v6];
  [(IDSOffGridEncryptedMessage *)v10 setSenderShortHandle:v7];
  [(IDSOffGridEncryptedMessage *)v10 setRecipientShortHandle:v8];
  [(IDSOffGridEncryptedMessage *)v10 setDate:v15];
  [(IDSOffGridEncryptedMessage *)v10 setPendingTotalCount:v13];
  [(IDSOffGridEncryptedMessage *)v10 setPendingCount:v12];
  [(IDSOffGridEncryptedMessage *)v10 setPreferredService:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy encodeObject:message forKey:@"message"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_senderURI forKey:@"senderURI"];
  [coderCopy encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [coderCopy encodeObject:self->_encryptionProperties forKey:@"encryptionProperties"];
  [coderCopy encodeObject:self->_service forKey:@"service"];
  [coderCopy encodeObject:self->_senderShortHandle forKey:@"senderShortHandle"];
  [coderCopy encodeObject:self->_recipientShortHandle forKey:@"recipientShortHandle"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_pendingTotalCount forKey:@"pendingTotalCount"];
  [coderCopy encodeObject:self->_pendingCount forKey:@"pendingCount"];
  [coderCopy encodeObject:self->_preferredService forKey:@"preferredService"];
}

@end