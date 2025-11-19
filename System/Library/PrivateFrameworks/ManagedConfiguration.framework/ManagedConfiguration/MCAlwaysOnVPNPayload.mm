@interface MCAlwaysOnVPNPayload
+ (id)typeStrings;
- (MCAlwaysOnVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_validatePayload:(id)a3;
@end

@implementation MCAlwaysOnVPNPayload

- (MCAlwaysOnVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v15.receiver = self;
  v15.super_class = MCAlwaysOnVPNPayload;
  v9 = [(MCVPNPayloadBase *)&v15 initWithDictionary:v8 profile:a4 outError:a5];
  if (v9)
  {
    if ([v8 count])
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_validatePayload:(id)a3
{
  v4 = a3;
  if (MCNEProfileIngestionClass())
  {
    v5 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo.isa)) initWithPayload:v4];
    [(MCVPNPayloadBase *)self setNePayloadBase:v5];

    v6 = [(MCVPNPayloadBase *)self nePayloadBase];
    v7 = [v6 validatePayload];
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
    v7 = [v16 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2005 descriptionArray:v17 errorType:@"MCFatalError"];
  }

  return v7;
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