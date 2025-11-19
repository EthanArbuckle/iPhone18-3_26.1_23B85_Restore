@interface BPSCompletion
+ (id)failureWithError:(id)a3;
+ (id)success;
- (BPSCompletion)initWithState:(int64_t)a3 error:(id)a4;
- (id)description;
@end

@implementation BPSCompletion

+ (id)success
{
  v2 = [[a1 alloc] initWithState:0 error:0];

  return v2;
}

- (id)description
{
  v3 = [(BPSCompletion *)self state];
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [(BPSCompletion *)self error];
    v6 = [v4 stringWithFormat:@"failure (%@)", v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"success"];
  }

  return v6;
}

- (BPSCompletion)initWithState:(int64_t)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BPSCompletion;
  v8 = [(BPSCompletion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

+ (id)failureWithError:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];

  v6 = v4;
  if (v5 != @"BiomePubSubError")
  {
    v7 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696AA08];
    v13[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v7 errorWithDomain:@"BiomePubSubError" code:0 userInfo:v8];
  }

  v9 = [[a1 alloc] initWithState:1 error:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end