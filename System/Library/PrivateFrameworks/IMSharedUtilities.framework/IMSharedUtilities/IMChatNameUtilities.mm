@interface IMChatNameUtilities
+ (id)getDisplayNameFromParticipantNames:(id)names;
@end

@implementation IMChatNameUtilities

+ (id)getDisplayNameFromParticipantNames:(id)names
{
  v33 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v4 = [namesCopy count];
  if (v4)
  {
    v25 = v4 - 1;
    if (v4 == 1)
    {
      firstObject = [namesCopy firstObject];
      v6 = [firstObject copy];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v24 = namesCopy;
      obj = namesCopy;
      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v6 = 0;
        v9 = 0;
        v10 = *v29;
        do
        {
          v11 = 0;
          v12 = v25 - v9;
          v26 = v9;
          v13 = -v9;
          do
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v28 + 1) + 8 * v11);
            if (v13 == v11)
            {
              v15 = MEMORY[0x1E696AEC0];
              v16 = IMSharedUtilitiesFrameworkBundle();
              v17 = [v16 localizedStringForKey:@"PARTICIPANT_ADDRESS_FIRST_ITEM" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
              [v15 localizedStringWithFormat:v17, v14];
              v6 = v18 = v6;
            }

            else
            {
              v19 = MEMORY[0x1E696AEC0];
              v20 = IMSharedUtilitiesFrameworkBundle();
              v16 = v20;
              if (v12 == v11)
              {
                v21 = @"PARTICIPANT_ADDRESS_FINAL_ITEM";
              }

              else
              {
                v21 = @"PARTICIPANT_ADDRESS_NON_FINAL_ITEM";
              }

              v17 = [v20 localizedStringForKey:v21 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
              v18 = [v19 localizedStringWithFormat:v17, v14];
              v22 = [v6 stringByAppendingString:v18];

              v6 = v22;
            }

            ++v11;
          }

          while (v8 != v11);
          v9 = v26 + v8;
          v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v8);
      }

      else
      {
        v6 = 0;
      }

      namesCopy = v24;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end