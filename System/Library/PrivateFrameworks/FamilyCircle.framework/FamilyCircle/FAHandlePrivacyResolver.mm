@interface FAHandlePrivacyResolver
+ (id)getFamilyCircle;
+ (id)privacySafeInvitees:(id)a3;
+ (void)getFamilyCircle;
@end

@implementation FAHandlePrivacyResolver

+ (id)getFamilyCircle
{
  v2 = objc_alloc_init(FAFetchFamilyCircleRequest);
  [(FAFetchFamilyCircleRequest *)v2 setCachePolicy:0];
  v7 = 0;
  v3 = [(FAFetchFamilyCircleRequest *)v2 fetchFamilyCircleWithError:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(FAHandlePrivacyResolver *)v4];
    }
  }

  return v3;
}

+ (id)privacySafeInvitees:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = (v6 & 0x7FFFFFFF) + 1;
    do
    {
      v8 = [v5 objectAtIndex:v7 - 2];
      v9 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v8];
      v10 = v9;
      if (!v9 || ([v9 fullyQualifiedDigits], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        [v4 addObject:v8];
        [v5 removeObjectAtIndex:v7 - 2];
      }

      --v7;
    }

    while (v7 > 1);
  }

  if ([v5 count])
  {
    v12 = +[FAHandlePrivacyResolver getFamilyCircle];
    if (v12)
    {
      v27 = v5;
      v28 = v3;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            v19 = [v12 memberForPhoneNumber:{v18, v27, v28}];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 appleID];

              if (v21)
              {
                v22 = [v20 appleID];
                [v4 addObject:v22];

                v23 = _FALogSystem();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [v20 appleID];
                  *buf = 138412546;
                  v34 = v18;
                  v35 = 2112;
                  v36 = v24;
                  _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Replaced %@ with %@ in invitee list", buf, 0x16u);
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v15);
      }

      v5 = v27;
      v3 = v28;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)getFamilyCircle
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "FAFetchFamilyCircleRequest failed %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end