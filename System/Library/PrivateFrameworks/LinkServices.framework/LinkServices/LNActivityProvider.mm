@interface LNActivityProvider
- (BOOL)queryAppIntentActivityForBundleIdentifier:(id)identifier sinceSeconds:(double)seconds;
- (BOOL)shouldLogRBSError:(id)error;
@end

@implementation LNActivityProvider

- (BOOL)shouldLogRBSError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x1E69C76A0]])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != 3)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)queryAppIntentActivityForBundleIdentifier:(id)identifier sinceSeconds:(double)seconds
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:identifierCopy];
  v25 = 0;
  v8 = [MEMORY[0x1E69C75D0] handleForPredicate:v7 error:&v25];
  v9 = v25;
  if (v9)
  {
    if (![(LNActivityProvider *)self shouldLogRBSError:v9])
    {
      goto LABEL_10;
    }

    assertions = getLNLogCategoryGeneral();
    if (os_log_type_enabled(assertions, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_19763D000, assertions, OS_LOG_TYPE_ERROR, "Failed to obtain process handle for %@: %@", buf, 0x16u);
    }
  }

  else
  {
    currentState = [v8 currentState];
    assertions = [currentState assertions];

    if (assertions)
    {
      v12 = [assertions valueForKey:@"domain"];
      if (v12)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = @"com.apple.siri";
        v15 = @"IntentStartupGrant";
        v16 = [v13 stringWithFormat:@"%@:%@", @"com.apple.siri", @"IntentStartupGrant"];

        v17 = [v12 containsObject:v16];
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }
  }

LABEL_10:
  if (seconds != 0.0)
  {
    assertions = [objc_alloc(MEMORY[0x1E698F2E0]) initWithUseCase:@"LNActivityProvider"];
    v18 = [MEMORY[0x1E695DF00] now];
    [v18 timeIntervalSince1970];
    v20 = v19 - seconds;

    v12 = [assertions executeQuery:@"SELECT eventTimestamp FROM App.Intents.Transcript WHERE bundleID=%@ AND eventTimestamp >= %f", identifierCopy, *&v20];
    if (([v12 next] & 1) == 0)
    {
      error = [v12 error];

      if (error)
      {
        error = getLNLogCategoryGeneral();
        if (os_log_type_enabled(error, OS_LOG_TYPE_ERROR))
        {
          error2 = [v12 error];
          *buf = 138412290;
          v27 = error2;
          _os_log_impl(&dword_19763D000, error, OS_LOG_TYPE_ERROR, "Failed to query Biome transcript: %@", buf, 0xCu);
        }

        LOBYTE(error) = 0;
      }

      goto LABEL_18;
    }

LABEL_12:
    LOBYTE(error) = 1;
LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(error) = 0;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
  return error;
}

@end