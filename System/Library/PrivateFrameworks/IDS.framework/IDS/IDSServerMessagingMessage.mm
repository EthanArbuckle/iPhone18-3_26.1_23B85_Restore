@interface IDSServerMessagingMessage
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (int64_t)command;
@end

@implementation IDSServerMessagingMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSServerMessagingMessage;
  v4 = [(IDSMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSServerMessagingMessage *)self expirationDate];
  [v4 setExpirationDate:v5];

  v6 = [(IDSServerMessagingMessage *)self messageID];
  [v4 setMessageID:v6];

  v7 = [(IDSServerMessagingMessage *)self messageData];
  [v4 setMessageData:v7];

  return v4;
}

- (int64_t)command
{
  v3 = [(IDSServerMessagingMessage *)self userSpecifiedCommand];

  if (!v3)
  {
    return 100;
  }

  v4 = [(IDSServerMessagingMessage *)self userSpecifiedCommand];
  v5 = [v4 integerValue];

  return v5;
}

- (id)messageBody
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = IDSServerMessagingMessage;
  v3 = [(IDSMessage *)&v23 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(IDSServerMessagingMessage *)self messageID];
  if (v5)
  {
    v6 = v5;
    v7 = [(IDSServerMessagingMessage *)self messageID];
    v8 = [v7 UTF8String];

    if (v8)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v8, uu);
      v22 = 0;
      jw_uuid_to_data();
      v9 = 0;
      if (v9)
      {
        CFDictionarySetValue(v4, @"U", v9);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B44CD8();
      }
    }
  }

  v10 = [(IDSServerMessagingMessage *)self messageData];
  if (v10)
  {
    CFDictionarySetValue(v4, @"P", v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195B44D60();
  }

  v11 = [(IDSBaseMessage *)self pushToken];
  if (v11)
  {
    CFDictionarySetValue(v4, @"t", v11);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195B44DE8();
  }

  v12 = [(IDSServerMessagingMessage *)self expirationDate];

  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(IDSServerMessagingMessage *)self expirationDate];
    [v14 timeIntervalSince1970];
    v16 = [v13 numberWithUnsignedLong:v15];

    if (v16)
    {
      CFDictionarySetValue(v4, *MEMORY[0x1E69A4C80], v16);
    }
  }

  v17 = [(IDSServerMessagingMessage *)self userDefinedTopLevelFields];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(IDSServerMessagingMessage *)self userDefinedTopLevelFields];
    [(__CFDictionary *)v4 addEntriesFromDictionary:v19];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

@end