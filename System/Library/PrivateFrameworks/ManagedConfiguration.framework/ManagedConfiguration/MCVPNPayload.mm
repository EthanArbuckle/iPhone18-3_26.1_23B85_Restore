@interface MCVPNPayload
- (MCVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
@end

@implementation MCVPNPayload

- (MCVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MCVPNPayload;
  v9 = [(MCVPNPayloadBase *)&v15 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    if ([dictionaryCopy count])
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v17 = friendlyName;
        v18 = 2114;
        v19 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

@end