@interface MFMailMessageLibraryRecreateMessageIndicesUpgradeStep
+ (BOOL)runWithConnection:(id)a3;
@end

@implementation MFMailMessageLibraryRecreateMessageIndicesUpgradeStep

+ (BOOL)runWithConnection:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_1F27754F0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F27754F0);
        }

        if (([v3 executeStatementString:*(*(&v10 + 1) + 8 * i) errorMessage:@"Adding index"] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F27754F0 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end