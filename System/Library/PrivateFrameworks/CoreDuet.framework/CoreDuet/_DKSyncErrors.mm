@interface _DKSyncErrors
+ (id)couldNotSaveForSync;
+ (id)disabled;
+ (id)failedToApplyRemoteChanges;
+ (id)failedToFetchChanges;
+ (id)internalFailure;
+ (id)invalidData;
+ (id)invalidRequest;
+ (id)invalidResponse;
+ (id)missingHighWaterMark;
+ (id)temporaryFailure;
+ (id)unavailableForCurrentUser;
@end

@implementation _DKSyncErrors

+ (id)internalFailure
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Internal failure";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:-1 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)disabled
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Syncing is disabled";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:1 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)unavailableForCurrentUser
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Syncing is not available for the current user";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:2 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)couldNotSaveForSync
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Could not save changes for sync";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:3 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)failedToApplyRemoteChanges
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Failed to apply remote changes";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:4 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)failedToFetchChanges
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Failed to fetch changes for sync";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:5 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)invalidData
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Invalid data encountered";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:6 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)invalidRequest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Invalid request";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:7 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)invalidResponse
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Invalid response";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:8 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)missingHighWaterMark
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Missing high water mark";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:9 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)temporaryFailure
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Temporary failure";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:domain code:10 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end