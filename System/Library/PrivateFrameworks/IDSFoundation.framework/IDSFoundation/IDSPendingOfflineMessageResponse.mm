@interface IDSPendingOfflineMessageResponse
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageBody;
@end

@implementation IDSPendingOfflineMessageResponse

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = IDSPendingOfflineMessageResponse;
  return [(IDSMessage *)&v4 copyWithZone:zone];
}

- (id)messageBody
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = IDSPendingOfflineMessageResponse;
  messageBody = [(IDSMessage *)&v16 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = _IDSStorageCheckVersionNumber();
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"scv", v5);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(IDSPendingOfflineMessageResponse *)self ssm];
    if (v6)
    {
      CFDictionarySetValue(Mutable, @"ssm", v6);
    }

    v7 = MEMORY[0x1AC562F80](@"com.apple.ids", @"ForceBatchCount");
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"forceBatchCount=%d", objc_msgSend(v7, "unsignedIntValue")];
      if (v9)
      {
        CFDictionarySetValue(Mutable, @"x-test-opts", v9);
      }
    }
  }

  messageIdentifier = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
  if (messageIdentifier)
  {
    v11 = messageIdentifier;
    messageIdentifier2 = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
    uTF8String = [messageIdentifier2 UTF8String];

    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
      jw_uuid_to_data();
      v14 = 0;
      if (v14)
      {
        CFDictionarySetValue(Mutable, @"U", v14);
      }
    }
  }

  return Mutable;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  messageIdentifier = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
  v5 = [(IDSPendingOfflineMessageResponse *)self ssm];
  __imHexString = [v5 __imHexString];
  lowercaseString = [__imHexString lowercaseString];
  retryCount = [(IDSBaseMessage *)self retryCount];
  v9 = [v3 stringWithFormat:@"<IDSPendingOfflineMessageResponse: %p> messageID: %@ ssm: %@ retryCount: %@", self, messageIdentifier, lowercaseString, retryCount];

  return v9;
}

@end