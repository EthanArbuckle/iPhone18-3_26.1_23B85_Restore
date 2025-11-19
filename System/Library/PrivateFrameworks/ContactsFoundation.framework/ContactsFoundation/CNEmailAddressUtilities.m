@interface CNEmailAddressUtilities
+ (BOOL)isStringEmailAddress:(id)a3;
+ (id)expandAliasedDomainsInAddress:(id)a3;
+ (id)makeEmailRegex;
+ (id)safeUserVisibleEmailAddress:(id)a3;
+ (void)makeEmailRegex;
@end

@implementation CNEmailAddressUtilities

+ (id)expandAliasedDomainsInAddress:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (off_1EF440708(&__block_literal_global_120, v3))
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [objc_opt_class() aliasedDomains];
    v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __57__CNEmailAddressUtilities_expandAliasedDomainsInAddress___block_invoke;
          v20[3] = &unk_1E6ED80E0;
          v10 = v3;
          v21 = v10;
          v11 = [v9 _cn_firstObjectPassingTest:v20];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 substringWithRange:{0, objc_msgSend(v10, "length") - objc_msgSend(v11, "length")}];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __57__CNEmailAddressUtilities_expandAliasedDomainsInAddress___block_invoke_2;
            v18[3] = &unk_1E6ED8108;
            v19 = v13;
            v14 = v13;
            v4 = [v9 _cn_map:v18];

            goto LABEL_13;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v26 = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)safeUserVisibleEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    v7 = [v3 substringFromIndex:v4 + 1];
    v8 = [v7 _lp_userVisibleHost];
    if ([v7 isEqualToString:v8])
    {
      v5 = v3;
    }

    else
    {
      v9 = [v3 substringToIndex:v6 + 1];
      v5 = [v9 stringByAppendingString:v8];
    }
  }

  return v5;
}

+ (BOOL)isStringEmailAddress:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNEmailAddressUtilities_isStringEmailAddress___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isStringEmailAddress__cn_once_token_1 != -1)
  {
    dispatch_once(&isStringEmailAddress__cn_once_token_1, block);
  }

  if (isStringEmailAddress__cn_once_object_1)
  {
    v5 = isStringEmailAddress__cn_once_object_1;
    v6 = [v5 numberOfMatchesInString:v4 options:4 range:{0, objc_msgSend(v4, "length")}];

    v7 = v6 == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__CNEmailAddressUtilities_isStringEmailAddress___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeEmailRegex];
  v2 = isStringEmailAddress__cn_once_object_1;
  isStringEmailAddress__cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)makeEmailRegex
{
  v6 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2 options:}+$" error:{1, &v6}];
  v3 = v6;
  if (!v2)
  {
    v4 = +[CNLogging sdkBreakageLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(CNEmailAddressUtilities *)v3];
    }
  }

  return v2;
}

+ (void)makeEmailRegex
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1859F0000, a2, OS_LOG_TYPE_ERROR, "Error creating email address regex: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end