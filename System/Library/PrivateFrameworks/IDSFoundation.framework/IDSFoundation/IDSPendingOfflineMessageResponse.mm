@interface IDSPendingOfflineMessageResponse
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageBody;
@end

@implementation IDSPendingOfflineMessageResponse

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = IDSPendingOfflineMessageResponse;
  return [(IDSMessage *)&v4 copyWithZone:a3];
}

- (id)messageBody
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = IDSPendingOfflineMessageResponse;
  v3 = [(IDSMessage *)&v16 messageBody];
  Mutable = [v3 mutableCopy];

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

  v10 = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
    v13 = [v12 UTF8String];

    if (v13)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v13, uu);
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
  v4 = [(IDSPendingOfflineMessageResponse *)self messageIdentifier];
  v5 = [(IDSPendingOfflineMessageResponse *)self ssm];
  v6 = [v5 __imHexString];
  v7 = [v6 lowercaseString];
  v8 = [(IDSBaseMessage *)self retryCount];
  v9 = [v3 stringWithFormat:@"<IDSPendingOfflineMessageResponse: %p> messageID: %@ ssm: %@ retryCount: %@", self, v4, v7, v8];

  return v9;
}

@end