@interface BPSCompletion
+ (id)failureWithError:(id)error;
+ (id)success;
- (BPSCompletion)initWithState:(int64_t)state error:(id)error;
- (id)description;
@end

@implementation BPSCompletion

+ (id)success
{
  v2 = [[self alloc] initWithState:0 error:0];

  return v2;
}

- (id)description
{
  state = [(BPSCompletion *)self state];
  v4 = MEMORY[0x1E696AEC0];
  if (state)
  {
    error = [(BPSCompletion *)self error];
    v6 = [v4 stringWithFormat:@"failure (%@)", error];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"success"];
  }

  return v6;
}

- (BPSCompletion)initWithState:(int64_t)state error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = BPSCompletion;
  v8 = [(BPSCompletion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

+ (id)failureWithError:(id)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];

  v6 = errorCopy;
  if (domain != @"BiomePubSubError")
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = errorCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v7 errorWithDomain:@"BiomePubSubError" code:0 userInfo:v8];
  }

  v9 = [[self alloc] initWithState:1 error:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end