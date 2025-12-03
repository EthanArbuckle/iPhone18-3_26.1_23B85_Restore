@interface FCTagFilterUtilities
+ (BOOL)filterTag:(id)tag options:(int64_t)options context:(id)context;
+ (id)filterTags:(id)tags options:(int64_t)options context:(id)context;
@end

@implementation FCTagFilterUtilities

+ (BOOL)filterTag:(id)tag options:(int64_t)options context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  contextCopy = context;
  v9 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v9 contentStoreFrontID];

  if ((options & 4) != 0 && !contentStoreFrontID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if ((options & 2) == 0)
    {
LABEL_5:
      isDeprecated = 0;
      if ((options & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_5;
  }

  isDeprecated = [tagCopy isDeprecated];
  if ((options & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = +[FCRestrictions sharedInstance];
  isExplicitContentAllowed = [v13 isExplicitContentAllowed];

  if (((isDeprecated | isExplicitContentAllowed) & 1) == 0)
  {
    isDeprecated = [tagCopy isExplicitContent];
  }

LABEL_11:
  if ((options & 4) == 0)
  {
    goto LABEL_24;
  }

  blockedStorefrontIDs = [tagCopy blockedStorefrontIDs];
  if ([blockedStorefrontIDs count])
  {
  }

  else
  {
    allowedStorefrontIDs = [tagCopy allowedStorefrontIDs];
    v17 = [allowedStorefrontIDs count];

    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if (isDeprecated)
  {
    v18 = 1;
    goto LABEL_30;
  }

  blockedStorefrontIDs2 = [tagCopy blockedStorefrontIDs];
  if ([blockedStorefrontIDs2 containsObject:contentStoreFrontID])
  {
    isDeprecated = 1;
  }

  else
  {
    allowedStorefrontIDs2 = [tagCopy allowedStorefrontIDs];
    if ([allowedStorefrontIDs2 count])
    {
      allowedStorefrontIDs3 = [tagCopy allowedStorefrontIDs];
      isDeprecated = [allowedStorefrontIDs3 containsObject:contentStoreFrontID] ^ 1;
    }

    else
    {
      isDeprecated = 0;
    }
  }

LABEL_24:
  v22 = (options >> 4) & 1 | isDeprecated;
  if ((options & 0x10) != 0 && (isDeprecated & 1) == 0)
  {
    v23 = +[FCRestrictions sharedInstance];
    v22 = [v23 isNewsVersionAllowed:{objc_msgSend(tagCopy, "minimumNewsVersion")}] ^ 1;
  }

  v18 = ((options & 0x20) != 0) | v22;
  if ((options & 0x20) != 0 && (v22 & 1) == 0)
  {
    subscriptionList = [contextCopy subscriptionList];
    mutedTagIDs = [subscriptionList mutedTagIDs];
    identifier = [tagCopy identifier];
    v18 = [mutedTagIDs containsObject:identifier];
  }

LABEL_30:

  v27 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

+ (id)filterTags:(id)tags options:(int64_t)options context:(id)context
{
  contextCopy = context;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__FCTagFilterUtilities_filterTags_options_context___block_invoke;
  v12[3] = &unk_1E7C44890;
  selfCopy = self;
  optionsCopy = options;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = [tags fc_arrayOfObjectsFailingTest:v12];

  return v10;
}

@end