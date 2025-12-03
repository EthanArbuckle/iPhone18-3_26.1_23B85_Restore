@interface MPCSharedListeningPlaybackIntentTracklistToken
+ (id)payloadValueFromJSONValue:(id)value;
- (MPCSharedListeningPlaybackIntentTracklistToken)initWithCoder:(id)coder;
- (id)mpc_jsonValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCSharedListeningPlaybackIntentTracklistToken

- (id)mpc_jsonValue
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"props";
  sharedListeningProperties = [(MPCSharedListeningPlaybackIntentTracklistToken *)self sharedListeningProperties];
  mpc_jsonValue = [sharedListeningProperties mpc_jsonValue];
  v9[1] = @"identity";
  v10[0] = mpc_jsonValue;
  identity = [(MPCSharedListeningPlaybackIntentTracklistToken *)self identity];
  mpc_jsonValue2 = [identity mpc_jsonValue];
  v10[1] = mpc_jsonValue2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)payloadValueFromJSONValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(MPCSharedListeningPlaybackIntentTracklistToken);
  v5 = [valueCopy objectForKeyedSubscript:@"props"];
  v6 = [MPCPlaybackSharedListeningProperties payloadValueFromJSONValue:v5];
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v4 setSharedListeningProperties:v6];

  v7 = MEMORY[0x1E69E4450];
  v8 = [valueCopy objectForKeyedSubscript:@"identity"];

  v9 = [v7 payloadValueFromJSONValue:v8];
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v4 setIdentity:v9];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sharedListeningProperties = self->_sharedListeningProperties;
  coderCopy = coder;
  [coderCopy encodeObject:sharedListeningProperties forKey:@"tshlp"];
  [coderCopy encodeObject:self->_identity forKey:@"tid"];
}

- (MPCSharedListeningPlaybackIntentTracklistToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPCSharedListeningPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tshlp"];
    sharedListeningProperties = v5->_sharedListeningProperties;
    v5->_sharedListeningProperties = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tid"];
    identity = v5->_identity;
    v5->_identity = v8;
  }

  return v5;
}

@end