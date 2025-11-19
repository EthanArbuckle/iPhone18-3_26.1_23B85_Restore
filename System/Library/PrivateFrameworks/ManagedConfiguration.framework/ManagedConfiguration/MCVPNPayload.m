@interface MCVPNPayload
- (MCVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
@end

@implementation MCVPNPayload

- (MCVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v15.receiver = self;
  v15.super_class = MCVPNPayload;
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

@end