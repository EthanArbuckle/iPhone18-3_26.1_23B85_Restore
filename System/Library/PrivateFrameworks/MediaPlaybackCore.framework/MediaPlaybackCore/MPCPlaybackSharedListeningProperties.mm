@interface MPCPlaybackSharedListeningProperties
+ (MPCPlaybackSharedListeningProperties)propertiesWithSessionIdentifier:(id)identifier sessionKey:(id)key;
+ (id)payloadValueFromJSONValue:(id)value;
- (MPCPlaybackSharedListeningProperties)initWithCoder:(id)coder;
- (id)mpc_jsonValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCPlaybackSharedListeningProperties

- (id)mpc_jsonValue
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sessionID";
  sessionIdentifier = [(MPCPlaybackSharedListeningProperties *)self sessionIdentifier];
  v9[1] = @"sessionKey";
  v10[0] = sessionIdentifier;
  sessionKey = [(MPCPlaybackSharedListeningProperties *)self sessionKey];
  v5 = sessionKey;
  v6 = &stru_1F454A698;
  if (sessionKey)
  {
    v6 = sessionKey;
  }

  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)payloadValueFromJSONValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy objectForKeyedSubscript:@"sessionID"];
  v5 = [valueCopy objectForKeyedSubscript:@"sessionKey"];

  v6 = [MPCPlaybackSharedListeningProperties propertiesWithSessionIdentifier:v4 sessionKey:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sid"];
  [coderCopy encodeObject:self->_sessionKey forKey:@"skey"];
}

- (MPCPlaybackSharedListeningProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPCPlaybackSharedListeningProperties *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skey"];
    sessionKey = v5->_sessionKey;
    v5->_sessionKey = v8;
  }

  return v5;
}

+ (MPCPlaybackSharedListeningProperties)propertiesWithSessionIdentifier:(id)identifier sessionKey:(id)key
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = objc_alloc_init(MPCPlaybackSharedListeningProperties);
  v8 = [identifierCopy copy];

  sessionIdentifier = v7->_sessionIdentifier;
  v7->_sessionIdentifier = v8;

  v10 = [keyCopy copy];
  sessionKey = v7->_sessionKey;
  v7->_sessionKey = v10;

  return v7;
}

@end