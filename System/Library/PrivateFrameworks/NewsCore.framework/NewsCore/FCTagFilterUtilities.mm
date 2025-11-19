@interface FCTagFilterUtilities
+ (BOOL)filterTag:(id)a3 options:(int64_t)a4 context:(id)a5;
+ (id)filterTags:(id)a3 options:(int64_t)a4 context:(id)a5;
@end

@implementation FCTagFilterUtilities

+ (BOOL)filterTag:(id)a3 options:(int64_t)a4 context:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = +[FCAppleAccount sharedAccount];
  v10 = [v9 contentStoreFrontID];

  if ((a4 & 4) != 0 && !v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "(filterOptions & FCTagFilterBlockedStorefronts) == 0 || contentStoreFrontID != nil"];
    *buf = 136315906;
    v30 = "+[FCTagFilterUtilities filterTag:options:context:]";
    v31 = 2080;
    v32 = "FCTagFilterUtilities.m";
    v33 = 1024;
    v34 = 28;
    v35 = 2114;
    v36 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if ((a4 & 2) == 0)
    {
LABEL_5:
      v11 = 0;
      if ((a4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_5;
  }

  v11 = [v7 isDeprecated];
  if ((a4 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = +[FCRestrictions sharedInstance];
  v14 = [v13 isExplicitContentAllowed];

  if (((v11 | v14) & 1) == 0)
  {
    v11 = [v7 isExplicitContent];
  }

LABEL_11:
  if ((a4 & 4) == 0)
  {
    goto LABEL_24;
  }

  v15 = [v7 blockedStorefrontIDs];
  if ([v15 count])
  {
  }

  else
  {
    v16 = [v7 allowedStorefrontIDs];
    v17 = [v16 count];

    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    v18 = 1;
    goto LABEL_30;
  }

  v19 = [v7 blockedStorefrontIDs];
  if ([v19 containsObject:v10])
  {
    v11 = 1;
  }

  else
  {
    v20 = [v7 allowedStorefrontIDs];
    if ([v20 count])
    {
      v21 = [v7 allowedStorefrontIDs];
      v11 = [v21 containsObject:v10] ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_24:
  v22 = (a4 >> 4) & 1 | v11;
  if ((a4 & 0x10) != 0 && (v11 & 1) == 0)
  {
    v23 = +[FCRestrictions sharedInstance];
    v22 = [v23 isNewsVersionAllowed:{objc_msgSend(v7, "minimumNewsVersion")}] ^ 1;
  }

  v18 = ((a4 & 0x20) != 0) | v22;
  if ((a4 & 0x20) != 0 && (v22 & 1) == 0)
  {
    v24 = [v8 subscriptionList];
    v25 = [v24 mutedTagIDs];
    v26 = [v7 identifier];
    v18 = [v25 containsObject:v26];
  }

LABEL_30:

  v27 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

+ (id)filterTags:(id)a3 options:(int64_t)a4 context:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__FCTagFilterUtilities_filterTags_options_context___block_invoke;
  v12[3] = &unk_1E7C44890;
  v14 = a1;
  v15 = a4;
  v13 = v8;
  v9 = v8;
  v10 = [a3 fc_arrayOfObjectsFailingTest:v12];

  return v10;
}

@end