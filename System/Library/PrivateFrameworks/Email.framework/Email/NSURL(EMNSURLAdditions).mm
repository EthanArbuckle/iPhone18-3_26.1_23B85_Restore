@interface NSURL(EMNSURLAdditions)
+ (id)em_mailToFromQueryItemKey;
- (BOOL)em_isAccountURL;
- (BOOL)em_isInternalMessageURL;
- (BOOL)em_isMailboxURL;
- (BOOL)em_isMessageURL;
- (EMInternalMessageID)em_internalMessageID;
- (id)em_messageIDHeader;
@end

@implementation NSURL(EMNSURLAdditions)

+ (id)em_mailToFromQueryItemKey
{
  if (em_mailToFromQueryItemKey_onceToken != -1)
  {
    +[NSURL(EMNSURLAdditions) em_mailToFromQueryItemKey];
  }

  v1 = em_mailToFromQueryItemKey_mailToFromQueryItem;

  return v1;
}

- (BOOL)em_isMessageURL
{
  v1 = [a1 em_messageIDHeader];
  v2 = v1 != 0;

  return v2;
}

- (id)em_messageIDHeader
{
  if ([a1 ef_hasScheme:@"message"])
  {
    v2 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
    [v2 setQuery:0];
    v3 = [v2 URL];
    v4 = [v3 absoluteString];

    v5 = [v4 substringFromIndex:{objc_msgSend(@"message", "length") + 1}];
    if ([v5 hasPrefix:@"//"])
    {
      v6 = [v5 substringFromIndex:{objc_msgSend(@"//", "length")}];

      v5 = v6;
    }

    v7 = [v5 stringByRemovingPercentEncoding];

    if ([(NSURL *)a1 _isValidMessageID:v7])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)em_isInternalMessageURL
{
  v1 = [(NSURL *)a1 _databaseID];
  v2 = v1 != 0;

  return v2;
}

- (EMInternalMessageID)em_internalMessageID
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(NSURL *)a1 _databaseID];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 queryItems];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 name];
          if ([v9 caseInsensitiveCompare:@"uuid"])
          {
          }

          else
          {
            v10 = [v8 value];
            v11 = v10 == 0;

            if (!v11)
            {
              v5 = [v8 value];
              goto LABEL_15;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v12 = -[EMInternalMessageID initWithDatabaseID:externalID:]([EMInternalMessageID alloc], "initWithDatabaseID:externalID:", [v2 longLongValue], v5);
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)em_isAccountURL
{
  if (![(NSURL *)a1 _hasAccountScheme])
  {
    return 0;
  }

  v2 = [a1 host];
  v3 = [v2 length];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 pathComponents];
  v5 = [v4 count] < 2;

  return v5;
}

- (BOOL)em_isMailboxURL
{
  if (![(NSURL *)a1 _hasAccountScheme])
  {
    return 0;
  }

  v2 = [a1 host];
  v3 = [v2 length];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 pathComponents];
  v5 = [v4 count] > 1;

  return v5;
}

@end