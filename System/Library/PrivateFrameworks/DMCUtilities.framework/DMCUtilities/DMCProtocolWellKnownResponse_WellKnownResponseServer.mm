@interface DMCProtocolWellKnownResponse_WellKnownResponseServer
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithVersion:(id)version baseURL:(id)l;
+ (id)buildWithVersion:(id)version baseURL:(id)l;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithVersion:(id)version baseURL:(id)l
{
  lCopy = l;
  versionCopy = version;
  v7 = objc_opt_new();
  [v7 setResponseVersion:versionCopy];

  [v7 setResponseBaseURL:lCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithVersion:(id)version baseURL:(id)l
{
  lCopy = l;
  versionCopy = version;
  v7 = objc_opt_new();
  [v7 setResponseVersion:versionCopy];

  [v7 setResponseBaseURL:lCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x1E695DFA8];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[DMCProtocolWellKnownResponse_WellKnownResponseServer allowedResponseKeys];
  [v10 minusSet:v11];

  if ([v10 count])
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected payload keys: %@", v10, *MEMORY[0x1E696A578]];
      v18[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v12 errorWithDomain:@"error" code:1 userInfo:v14];

LABEL_6:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![(DMCModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Version" forKeyPath:@"responseVersion" isRequired:1 defaultValue:0 error:error])
    {
      goto LABEL_6;
    }

    LOBYTE(error) = [(DMCModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"BaseURL" forKeyPath:@"responseBaseURL" isRequired:1 defaultValue:0 error:error];
  }

  v15 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  responseVersion = [(DMCProtocolWellKnownResponse_WellKnownResponseServer *)self responseVersion];
  [(DMCModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Version" value:responseVersion isRequired:1 defaultValue:0];

  responseBaseURL = [(DMCProtocolWellKnownResponse_WellKnownResponseServer *)self responseBaseURL];
  [(DMCModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"BaseURL" value:responseBaseURL isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = DMCProtocolWellKnownResponse_WellKnownResponseServer;
  v4 = [(DMCModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_responseVersion copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseBaseURL copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end