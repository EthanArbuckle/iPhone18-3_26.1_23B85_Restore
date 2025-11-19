@interface SiriNLUTypesUtils
+ (BOOL)isSdaAskRepeat:(id)a3;
+ (BOOL)isTopSdaAskRepeat:(id)a3;
@end

@implementation SiriNLUTypesUtils

+ (BOOL)isSdaAskRepeat:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a3 prompted];
  v4 = [v3 target];
  v5 = [v4 identifiers];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) value];
        v11 = [v10 isEqual:@"SystemPrompted_SystemAskedUserToRepeat"];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)isTopSdaAskRepeat:(id)a3
{
  v4 = [a3 turnContext];
  v5 = [v4 nlContext];
  v6 = [v5 systemDialogActs];

  if (v6 && [v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [a1 isSdaAskRepeat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end