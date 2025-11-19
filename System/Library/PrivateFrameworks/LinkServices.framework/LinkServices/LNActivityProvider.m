@interface LNActivityProvider
- (BOOL)queryAppIntentActivityForBundleIdentifier:(id)a3 sinceSeconds:(double)a4;
- (BOOL)shouldLogRBSError:(id)a3;
@end

@implementation LNActivityProvider

- (BOOL)shouldLogRBSError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x1E69C76A0]])
  {

    goto LABEL_5;
  }

  v5 = [v3 code];

  if (v5 != 3)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)queryAppIntentActivityForBundleIdentifier:(id)a3 sinceSeconds:(double)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v6];
  v25 = 0;
  v8 = [MEMORY[0x1E69C75D0] handleForPredicate:v7 error:&v25];
  v9 = v25;
  if (v9)
  {
    if (![(LNActivityProvider *)self shouldLogRBSError:v9])
    {
      goto LABEL_10;
    }

    v10 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "Failed to obtain process handle for %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [v8 currentState];
    v10 = [v11 assertions];

    if (v10)
    {
      v12 = [v10 valueForKey:@"domain"];
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
  if (a4 != 0.0)
  {
    v10 = [objc_alloc(MEMORY[0x1E698F2E0]) initWithUseCase:@"LNActivityProvider"];
    v18 = [MEMORY[0x1E695DF00] now];
    [v18 timeIntervalSince1970];
    v20 = v19 - a4;

    v12 = [v10 executeQuery:@"SELECT eventTimestamp FROM App.Intents.Transcript WHERE bundleID=%@ AND eventTimestamp >= %f", v6, *&v20];
    if (([v12 next] & 1) == 0)
    {
      v21 = [v12 error];

      if (v21)
      {
        v21 = getLNLogCategoryGeneral();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [v12 error];
          *buf = 138412290;
          v27 = v22;
          _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "Failed to query Biome transcript: %@", buf, 0xCu);
        }

        LOBYTE(v21) = 0;
      }

      goto LABEL_18;
    }

LABEL_12:
    LOBYTE(v21) = 1;
LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(v21) = 0;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

@end