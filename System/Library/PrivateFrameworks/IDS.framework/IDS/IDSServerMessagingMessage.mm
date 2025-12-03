@interface IDSServerMessagingMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (int64_t)command;
@end

@implementation IDSServerMessagingMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSServerMessagingMessage;
  v4 = [(IDSMessage *)&v9 copyWithZone:zone];
  expirationDate = [(IDSServerMessagingMessage *)self expirationDate];
  [v4 setExpirationDate:expirationDate];

  messageID = [(IDSServerMessagingMessage *)self messageID];
  [v4 setMessageID:messageID];

  messageData = [(IDSServerMessagingMessage *)self messageData];
  [v4 setMessageData:messageData];

  return v4;
}

- (int64_t)command
{
  userSpecifiedCommand = [(IDSServerMessagingMessage *)self userSpecifiedCommand];

  if (!userSpecifiedCommand)
  {
    return 100;
  }

  userSpecifiedCommand2 = [(IDSServerMessagingMessage *)self userSpecifiedCommand];
  integerValue = [userSpecifiedCommand2 integerValue];

  return integerValue;
}

- (id)messageBody
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = IDSServerMessagingMessage;
  messageBody = [(IDSMessage *)&v23 messageBody];
  v4 = [messageBody mutableCopy];

  messageID = [(IDSServerMessagingMessage *)self messageID];
  if (messageID)
  {
    v6 = messageID;
    messageID2 = [(IDSServerMessagingMessage *)self messageID];
    uTF8String = [messageID2 UTF8String];

    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
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

  messageData = [(IDSServerMessagingMessage *)self messageData];
  if (messageData)
  {
    CFDictionarySetValue(v4, @"P", messageData);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195B44D60();
  }

  pushToken = [(IDSBaseMessage *)self pushToken];
  if (pushToken)
  {
    CFDictionarySetValue(v4, @"t", pushToken);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195B44DE8();
  }

  expirationDate = [(IDSServerMessagingMessage *)self expirationDate];

  if (expirationDate)
  {
    v13 = MEMORY[0x1E696AD98];
    expirationDate2 = [(IDSServerMessagingMessage *)self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v16 = [v13 numberWithUnsignedLong:v15];

    if (v16)
    {
      CFDictionarySetValue(v4, *MEMORY[0x1E69A4C80], v16);
    }
  }

  userDefinedTopLevelFields = [(IDSServerMessagingMessage *)self userDefinedTopLevelFields];
  v18 = [userDefinedTopLevelFields count];

  if (v18)
  {
    userDefinedTopLevelFields2 = [(IDSServerMessagingMessage *)self userDefinedTopLevelFields];
    [(__CFDictionary *)v4 addEntriesFromDictionary:userDefinedTopLevelFields2];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

@end