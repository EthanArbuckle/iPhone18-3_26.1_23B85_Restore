@interface SiriNLUTypesUtils
+ (BOOL)isSdaAskRepeat:(id)repeat;
+ (BOOL)isTopSdaAskRepeat:(id)repeat;
@end

@implementation SiriNLUTypesUtils

+ (BOOL)isSdaAskRepeat:(id)repeat
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  prompted = [repeat prompted];
  target = [prompted target];
  identifiers = [target identifiers];

  v6 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(identifiers);
        }

        value = [*(*(&v15 + 1) + 8 * i) value];
        v11 = [value isEqual:@"SystemPrompted_SystemAskedUserToRepeat"];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [identifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (BOOL)isTopSdaAskRepeat:(id)repeat
{
  turnContext = [repeat turnContext];
  nlContext = [turnContext nlContext];
  systemDialogActs = [nlContext systemDialogActs];

  if (systemDialogActs && [systemDialogActs count])
  {
    v7 = [systemDialogActs objectAtIndex:0];
    v8 = [self isSdaAskRepeat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end