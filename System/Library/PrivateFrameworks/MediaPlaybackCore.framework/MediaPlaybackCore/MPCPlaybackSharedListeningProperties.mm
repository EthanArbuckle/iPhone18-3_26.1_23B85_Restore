@interface MPCPlaybackSharedListeningProperties
+ (MPCPlaybackSharedListeningProperties)propertiesWithSessionIdentifier:(id)a3 sessionKey:(id)a4;
+ (id)payloadValueFromJSONValue:(id)a3;
- (MPCPlaybackSharedListeningProperties)initWithCoder:(id)a3;
- (id)mpc_jsonValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCPlaybackSharedListeningProperties

- (id)mpc_jsonValue
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sessionID";
  v3 = [(MPCPlaybackSharedListeningProperties *)self sessionIdentifier];
  v9[1] = @"sessionKey";
  v10[0] = v3;
  v4 = [(MPCPlaybackSharedListeningProperties *)self sessionKey];
  v5 = v4;
  v6 = &stru_1F454A698;
  if (v4)
  {
    v6 = v4;
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)payloadValueFromJSONValue:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"sessionID"];
  v5 = [v3 objectForKeyedSubscript:@"sessionKey"];

  v6 = [MPCPlaybackSharedListeningProperties propertiesWithSessionIdentifier:v4 sessionKey:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sid"];
  [v5 encodeObject:self->_sessionKey forKey:@"skey"];
}

- (MPCPlaybackSharedListeningProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPCPlaybackSharedListeningProperties *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skey"];
    sessionKey = v5->_sessionKey;
    v5->_sessionKey = v8;
  }

  return v5;
}

+ (MPCPlaybackSharedListeningProperties)propertiesWithSessionIdentifier:(id)a3 sessionKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPCPlaybackSharedListeningProperties);
  v8 = [v6 copy];

  sessionIdentifier = v7->_sessionIdentifier;
  v7->_sessionIdentifier = v8;

  v10 = [v5 copy];
  sessionKey = v7->_sessionKey;
  v7->_sessionKey = v10;

  return v7;
}

@end