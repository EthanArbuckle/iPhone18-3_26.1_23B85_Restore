@interface MPCSharedListeningPlaybackIntentTracklistToken
+ (id)payloadValueFromJSONValue:(id)a3;
- (MPCSharedListeningPlaybackIntentTracklistToken)initWithCoder:(id)a3;
- (id)mpc_jsonValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCSharedListeningPlaybackIntentTracklistToken

- (id)mpc_jsonValue
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"props";
  v3 = [(MPCSharedListeningPlaybackIntentTracklistToken *)self sharedListeningProperties];
  v4 = [v3 mpc_jsonValue];
  v9[1] = @"identity";
  v10[0] = v4;
  v5 = [(MPCSharedListeningPlaybackIntentTracklistToken *)self identity];
  v6 = [v5 mpc_jsonValue];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)payloadValueFromJSONValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MPCSharedListeningPlaybackIntentTracklistToken);
  v5 = [v3 objectForKeyedSubscript:@"props"];
  v6 = [MPCPlaybackSharedListeningProperties payloadValueFromJSONValue:v5];
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v4 setSharedListeningProperties:v6];

  v7 = MEMORY[0x1E69E4450];
  v8 = [v3 objectForKeyedSubscript:@"identity"];

  v9 = [v7 payloadValueFromJSONValue:v8];
  [(MPCSharedListeningPlaybackIntentTracklistToken *)v4 setIdentity:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  sharedListeningProperties = self->_sharedListeningProperties;
  v5 = a3;
  [v5 encodeObject:sharedListeningProperties forKey:@"tshlp"];
  [v5 encodeObject:self->_identity forKey:@"tid"];
}

- (MPCSharedListeningPlaybackIntentTracklistToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPCSharedListeningPlaybackIntentTracklistToken *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tshlp"];
    sharedListeningProperties = v5->_sharedListeningProperties;
    v5->_sharedListeningProperties = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tid"];
    identity = v5->_identity;
    v5->_identity = v8;
  }

  return v5;
}

@end