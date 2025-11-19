@interface IDSMMCSAccessRequestMessage
- (IDSMMCSAccessRequestMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSMMCSAccessRequestMessage

- (IDSMMCSAccessRequestMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSMMCSAccessRequestMessage;
  v2 = [(IDSMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSBaseMessage *)v2 setWantsResponse:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = IDSMMCSAccessRequestMessage;
  v4 = [(IDSMessage *)&v11 copyWithZone:a3];
  v5 = [(NSArray *)self->_downloadAuths copy];
  [v4 setDownloadAuths:v5];

  v6 = [(NSData *)self->_downloadingDeviceToken copy];
  [v4 setDownloadingDeviceToken:v6];

  v7 = [(NSData *)self->_sessionToken copy];
  [v4 setSessionToken:v7];

  v8 = [(NSString *)self->_downloadingDeviceID copy];
  [v4 setDownloadingDeviceID:v8];

  v9 = [(NSString *)self->_senderID copy];
  [v4 setSenderID:v9];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:@"dal"];
  [v2 addObject:@"t"];
  [v2 addObject:@"sT"];
  [v2 addObject:@"tP"];
  [v2 addObject:@"sP"];

  return v2;
}

- (id)messageBody
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = IDSMMCSAccessRequestMessage;
  v3 = [(IDSMessage *)&v22 messageBody];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_downloadAuths;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = v5;
  if (v12)
  {
    CFDictionarySetValue(v4, @"dal", v12);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E142CC();
  }

  v13 = self->_downloadingDeviceToken;
  if (v13)
  {
    CFDictionarySetValue(v4, @"t", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E14354();
  }

  v14 = self->_sessionToken;
  if (v14)
  {
    CFDictionarySetValue(v4, @"sT", v14);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E143DC();
  }

  v15 = self->_downloadingDeviceID;
  if (v15)
  {
    CFDictionarySetValue(v4, @"tP", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E14464();
  }

  v16 = self->_senderID;
  if (v16)
  {
    CFDictionarySetValue(v4, @"sP", v16);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E144EC();
  }

  return v4;
}

@end