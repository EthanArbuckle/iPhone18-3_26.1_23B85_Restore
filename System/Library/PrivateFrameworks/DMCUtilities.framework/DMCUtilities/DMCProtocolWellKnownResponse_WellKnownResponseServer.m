@interface DMCProtocolWellKnownResponse_WellKnownResponseServer
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithVersion:(id)a3 baseURL:(id)a4;
+ (id)buildWithVersion:(id)a3 baseURL:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation DMCProtocolWellKnownResponse_WellKnownResponseServer

+ (NSSet)allowedResponseKeys
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"Version";
  v7[1] = @"BaseURL";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)buildWithVersion:(id)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setResponseVersion:v6];

  [v7 setResponseBaseURL:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithVersion:(id)a3 baseURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setResponseVersion:v6];

  [v7 setResponseBaseURL:v5];

  return v7;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[DMCProtocolWellKnownResponse_WellKnownResponseServer allowedResponseKeys];
  [v10 minusSet:v11];

  if ([v10 count])
  {
    if (a5)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected payload keys: %@", v10, *MEMORY[0x1E696A578]];
      v18[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *a5 = [v12 errorWithDomain:@"error" code:1 userInfo:v14];

LABEL_6:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (![(DMCModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Version" forKeyPath:@"responseVersion" isRequired:1 defaultValue:0 error:a5])
    {
      goto LABEL_6;
    }

    LOBYTE(a5) = [(DMCModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"BaseURL" forKeyPath:@"responseBaseURL" isRequired:1 defaultValue:0 error:a5];
  }

  v15 = *MEMORY[0x1E69E9840];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(DMCProtocolWellKnownResponse_WellKnownResponseServer *)self responseVersion];
  [(DMCModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Version" value:v5 isRequired:1 defaultValue:0];

  v6 = [(DMCProtocolWellKnownResponse_WellKnownResponseServer *)self responseBaseURL];
  [(DMCModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"BaseURL" value:v6 isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = DMCProtocolWellKnownResponse_WellKnownResponseServer;
  v4 = [(DMCModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_responseVersion copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseBaseURL copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end