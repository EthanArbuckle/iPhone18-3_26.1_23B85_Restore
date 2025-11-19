@interface IDSOffGridEncryptedMessage
+ (id)_daemonListener;
+ (int64_t)maxPayloadSize;
- (IDSOffGridEncryptedMessage)initWithCoder:(id)a3;
- (IDSOffGridEncryptedMessage)initWithDictionaryMessage:(id)a3;
- (IDSOffGridEncryptedMessage)initWithMessage:(id)a3 senderURI:(id)a4 recipientURI:(id)a5 encryptionProperties:(id)a6;
- (IDSOffGridEncryptedMessage)initWithPayload:(id)a3 senderURI:(id)a4 recipientURI:(id)a5;
- (IDSOffGridEncryptedMessage)initWithSegments:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)payload;
- (id)splitMessageIntoMessagesThatFit;
- (int64_t)compare:(id)a3;
- (int64_t)maxPayloadSizeRemaining;
- (int64_t)preferredServiceType;
- (int64_t)serviceTypeFromNumber:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridEncryptedMessage

+ (id)_daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  v3 = [v2 listener];

  return v3;
}

+ (int64_t)maxPayloadSize
{
  v2 = [a1 _daemonListener];
  v3 = [v2 maxIMLPayloadSize];

  return v3 - 3;
}

- (IDSOffGridEncryptedMessage)initWithMessage:(id)a3 senderURI:(id)a4 recipientURI:(id)a5 encryptionProperties:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSOffGridEncryptedMessage;
  v15 = [(IDSOffGridEncryptedMessage *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_message, a3);
    objc_storeStrong(&v16->_senderURI, a4);
    objc_storeStrong(&v16->_recipientURI, a5);
    objc_storeStrong(&v16->_encryptionProperties, a6);
  }

  return v16;
}

- (IDSOffGridEncryptedMessage)initWithPayload:(id)a3 senderURI:(id)a4 recipientURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = IDSOffGridEncryptedMessage;
  v11 = [(IDSOffGridEncryptedMessage *)&v23 init];
  if (!v11)
  {
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if ([v8 length] >= 4)
  {
    v13 = [v8 subdataWithRange:{0, 1}];
    v14 = [v8 subdataWithRange:{1, 2}];
    v15 = [v8 subdataWithRange:{3, objc_msgSend(v8, "length") - 3}];
    v22 = 0;
    [v14 getBytes:&v22 length:2];
    objc_storeStrong(&v11->_message, v15);
    objc_storeStrong(&v11->_senderURI, a4);
    objc_storeStrong(&v11->_recipientURI, a5);
    v16 = objc_alloc_init(IDSOffGridEncryptionProperties);
    encryptionProperties = v11->_encryptionProperties;
    v11->_encryptionProperties = v16;

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v22];
    [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setRatchetCounter:v18];

    [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setEncryptionKeyID:v13];
    v19 = [v8 length];
    if (v19 >= 0x13)
    {
      v20 = [v8 subdataWithRange:{v19 - 16, 16}];
      [(IDSOffGridEncryptionProperties *)v11->_encryptionProperties setAuthTag:v20];
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (IDSOffGridEncryptedMessage)initWithDictionaryMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v28.receiver = self;
    v28.super_class = IDSOffGridEncryptedMessage;
    v5 = [(IDSOffGridEncryptedMessage *)&v28 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"message"];
      message = v5->_message;
      v5->_message = v6;

      v8 = [v4 objectForKeyedSubscript:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v8;

      v10 = [v4 objectForKeyedSubscript:@"senderURI"];
      senderURI = v5->_senderURI;
      v5->_senderURI = v10;

      v12 = [v4 objectForKeyedSubscript:@"recipientURI"];
      recipientURI = v5->_recipientURI;
      v5->_recipientURI = v12;

      v14 = [IDSOffGridEncryptionProperties alloc];
      v15 = [v4 objectForKeyedSubscript:@"encryptionProperties"];
      v16 = [(IDSOffGridEncryptionProperties *)v14 initWithDictionary:v15];
      encryptionProperties = v5->_encryptionProperties;
      v5->_encryptionProperties = v16;

      v18 = [v4 objectForKeyedSubscript:@"date"];
      date = v5->_date;
      v5->_date = v18;

      v20 = [v4 objectForKeyedSubscript:@"pendingTotalCount"];
      pendingTotalCount = v5->_pendingTotalCount;
      v5->_pendingTotalCount = v20;

      v22 = [v4 objectForKeyedSubscript:@"pendingCount"];
      pendingCount = v5->_pendingCount;
      v5->_pendingCount = v22;

      v24 = [v4 objectForKeyedSubscript:@"preferredService"];
      preferredService = v5->_preferredService;
      v5->_preferredService = v24;
    }

    self = v5;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (IDSOffGridEncryptedMessage)initWithSegments:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  [a3 sortedArrayUsingSelector:sel_compare_];
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

        v10 = [*(*(&v23 + 1) + 8 * i) message];
        v11 = v10;
        if (v7)
        {
          [v7 appendData:v10];
        }

        else
        {
          v7 = [v10 mutableCopy];
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

  v12 = [v4 firstObject];
  v13 = [v12 copy];

  [(IDSOffGridEncryptedMessage *)v13 setMessage:v7];
  v14 = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
  [v14 setSegmentNumber:&unk_1F0A29A38];

  v15 = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
  [v15 setTotalSegments:&unk_1F0A29A38];

  v16 = [v7 length];
  if (v16 >= 0x13)
  {
    v17 = [v7 subdataWithRange:{v16 - 16, 16}];
    v18 = [(IDSOffGridEncryptedMessage *)v13 encryptionProperties];
    [v18 setAuthTag:v17];
  }

  v19 = [v4 firstObject];
  v20 = [v19 date];
  [(IDSOffGridEncryptedMessage *)v13 setDate:v20];

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)maxPayloadSizeRemaining
{
  v3 = [objc_opt_class() maxPayloadSize];
  v4 = [(IDSOffGridEncryptedMessage *)self message];
  v5 = v3 - [v4 length];

  return v5;
}

- (id)splitMessageIntoMessagesThatFit
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = [(IDSOffGridEncryptedMessage *)self maxPayloadSizeRemaining];
  v3 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FCF4(self, v2, v3);
  }

  v4 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FE00(self);
  }

  v5 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FEA0(self);
  }

  if (v2 < 0)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [(IDSOffGridEncryptedMessage *)self message];
    v10 = [v9 length];
    v11 = [objc_opt_class() maxPayloadSize];
    v12 = [v9 length];
    if (v10)
    {
      v14 = 0;
      v15 = v12 + v2;
      v16 = 1;
      *&v13 = 134218752;
      v38 = v13;
      do
      {
        v17 = [v9 length];
        if (v15 >= v17 - v14)
        {
          v18 = v17 - v14;
        }

        else
        {
          v18 = v15;
        }

        v19 = [v9 subdataWithRange:{v14, v18}];
        v20 = [(IDSOffGridEncryptedMessage *)self copy];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        v22 = [v20 encryptionProperties];
        [v22 setSegmentNumber:v21];

        [v20 setMessage:v19];
        [v39 addObject:v20];
        v23 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = v38;
          v47 = self;
          v48 = 1024;
          v49 = v16;
          v50 = 2048;
          v51 = v18;
          v52 = 2048;
          v53 = v20;
          _os_log_debug_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEBUG, "%p - split message part %d {size: %lld, ptr: %p}", buf, 0x26u);
        }

        v14 += v18;

        ++v16;
        v15 = v11;
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
          v29 = [v28 encryptionProperties];
          v30 = [v29 segmentNumber];
          v31 = [v30 integerValue];

          if (v31 != v10)
          {
            v32 = [v28 encryptionProperties];
            [v32 setAuthTag:0];
          }

          v33 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v34 = [v28 encryptionProperties];
          [v34 setTotalSegments:v33];
        }

        v25 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v25);
    }

    v35 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3FF58(self, v10, v35);
    }
  }

  else
  {
    v6 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
    [v6 setSegmentNumber:&unk_1F0A29A38];

    v7 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
    [v7 setTotalSegments:&unk_1F0A29A38];

    v54[0] = self;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  v6 = [v4 encryptionProperties];

  v7 = [v5 compare:v6];
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

  v7 = [(IDSOffGridEncryptionProperties *)self->_encryptionProperties dictionaryRepresentation];
  if (v7)
  {
    CFDictionarySetValue(v4, @"encryptionProperties", v7);
  }

  service = self->_service;
  if (service)
  {
    CFDictionarySetValue(v4, @"service", service);
  }

  v9 = [(IDSURI *)self->_senderURI prefixedURI];
  if (v9)
  {
    CFDictionarySetValue(v4, @"senderURI", v9);
  }

  senderShortHandle = self->_senderShortHandle;
  if (senderShortHandle)
  {
    CFDictionarySetValue(v4, @"senderShortHandle", senderShortHandle);
  }

  v11 = [(IDSURI *)self->_recipientURI prefixedURI];
  if (v11)
  {
    CFDictionarySetValue(v4, @"recipientURI", v11);
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
  v4 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  v5 = [v4 encryptionKeyID];

  v6 = [v5 subdataWithRange:{0, 1}];
  [v3 appendData:v6];

  v7 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v5 debugDescription];
    *buf = 134218498;
    v22 = self;
    v23 = 2112;
    v24 = v17;
    v25 = 2048;
    v26 = [v3 length];
    _os_log_debug_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEBUG, "%p - payload call, added keyID %@ {len: %lld}", buf, 0x20u);
  }

  v8 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  v9 = [v8 ratchetCounter];
  v10 = [v9 unsignedShortValue];

  v20 = v10;
  [v3 appendBytes:&v20 length:2];
  v11 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = v20;
    v19 = [v3 length];
    *buf = 134218496;
    v22 = self;
    v23 = 2048;
    v24 = v18;
    v25 = 2048;
    v26 = v19;
    _os_log_debug_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEBUG, "%p - payload call, added ratchet ctr %lld {len: %lld}", buf, 0x20u);
  }

  v12 = [(IDSOffGridEncryptedMessage *)self message];
  [v3 appendData:v12];

  v13 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_195B3FFE0(self, v3);
  }

  v14 = [MEMORY[0x1E69A5270] IDSOffGridMessenger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_195B40070(self, v3);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)preferredServiceType
{
  v3 = [(IDSOffGridEncryptedMessage *)self preferredService];
  v4 = [(IDSOffGridEncryptedMessage *)self serviceTypeFromNumber:v3];

  return v4;
}

- (int64_t)serviceTypeFromNumber:(id)a3
{
  if (!a3)
  {
    return -1;
  }

  v3 = [a3 integerValue];
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IDSOffGridEncryptedMessage *)self message];
  v6 = [(IDSOffGridEncryptedMessage *)self senderURI];
  v7 = [(IDSOffGridEncryptedMessage *)self recipientURI];
  v8 = [(IDSOffGridEncryptedMessage *)self encryptionProperties];
  v9 = [v8 copy];
  v10 = [v4 initWithMessage:v5 senderURI:v6 recipientURI:v7 encryptionProperties:v9];

  v11 = [(IDSOffGridEncryptedMessage *)self preferredService];
  [v10 setPreferredService:v11];

  return v10;
}

- (IDSOffGridEncryptedMessage)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"senderURI"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"recipientURI"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionProperties"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"senderShortHandle"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"recipientShortHandle"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pendingTotalCount"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pendingCount"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"preferredService"];

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

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 encodeObject:message forKey:@"message"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_senderURI forKey:@"senderURI"];
  [v5 encodeObject:self->_recipientURI forKey:@"recipientURI"];
  [v5 encodeObject:self->_encryptionProperties forKey:@"encryptionProperties"];
  [v5 encodeObject:self->_service forKey:@"service"];
  [v5 encodeObject:self->_senderShortHandle forKey:@"senderShortHandle"];
  [v5 encodeObject:self->_recipientShortHandle forKey:@"recipientShortHandle"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_pendingTotalCount forKey:@"pendingTotalCount"];
  [v5 encodeObject:self->_pendingCount forKey:@"pendingCount"];
  [v5 encodeObject:self->_preferredService forKey:@"preferredService"];
}

@end