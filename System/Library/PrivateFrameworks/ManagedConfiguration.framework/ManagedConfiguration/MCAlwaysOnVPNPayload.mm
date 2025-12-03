@interface MCAlwaysOnVPNPayload
+ (id)typeStrings;
- (MCAlwaysOnVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_validatePayload:(id)payload;
@end

@implementation MCAlwaysOnVPNPayload

- (MCAlwaysOnVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MCAlwaysOnVPNPayload;
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

- (id)_validatePayload:(id)payload
{
  payloadCopy = payload;
  if (MCNEProfileIngestionClass())
  {
    v5 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo.isa)) initWithPayload:payloadCopy];
    [(MCVPNPayloadBase *)self setNePayloadBase:v5];

    nePayloadBase = [(MCVPNPayloadBase *)self nePayloadBase];
    validatePayload = [nePayloadBase validatePayload];
  }

  else
  {
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_ERROR, "MCAlwaysOnVPNPayload failed to load NE bundle", buf, 2u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = MCErrorArray(@"ERROR_ALWAYS_ON_VPN_INTERNAL_ERROR", v9, v10, v11, v12, v13, v14, v15, 0);
    validatePayload = [v16 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2005 descriptionArray:v17 errorType:@"MCFatalError"];
  }

  return validatePayload;
}

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.vpn.managed.alwayson";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end