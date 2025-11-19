@interface HKFamilyCircleUtilities
+ (void)fetchFamilyContacts:(id)a3;
@end

@implementation HKFamilyCircleUtilities

+ (void)fetchFamilyContacts:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E699C070]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__HKFamilyCircleUtilities_fetchFamilyContacts___block_invoke;
    v5[3] = &unk_1E81BB908;
    v6 = v3;
    [v4 startRequestWithCompletionHandler:v5];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] hk_error:110 format:@"Unauthorized for Contact's access."];
    (*(v3 + 2))(v3, 0, v4);
  }
}

void __47__HKFamilyCircleUtilities_fetchFamilyContacts___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v3 members];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if (([v10 isMe] & 1) == 0)
          {
            v11 = [v10 contact];

            if (v11)
            {
              v12 = [v10 contact];
              v13 = [v10 contact];
              v14 = [v13 identifier];
              [v4 setObject:v12 forKeyedSubscript:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v15 = *(a1 + 32);
    v16 = [v4 allValues];
    (*(v15 + 16))(v15, v16, 0);
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696ABC0] hk_error:2000 format:@"Unable to start the family circle request."];
    (*(v17 + 16))(v17, 0, v18);
  }
}

@end