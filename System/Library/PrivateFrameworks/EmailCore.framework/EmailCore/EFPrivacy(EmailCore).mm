@interface EFPrivacy(EmailCore)
+ (__CFString)ec_partiallyRedactedStringForAddress:()EmailCore;
+ (id)_redactedMailboxPathForMailboxPath:()EmailCore;
+ (id)ec_partiallyRedactedStringForAddress:()EmailCore localPart:domain:;
+ (id)ec_partiallyRedactedStringForSubjectOrSummary:()EmailCore;
+ (id)ec_redactedQueryStringForSearchableQueryString:()EmailCore;
+ (id)ec_redactedStringForMailboxURL:()EmailCore;
@end

@implementation EFPrivacy(EmailCore)

+ (id)ec_partiallyRedactedStringForSubjectOrSummary:()EmailCore
{
  v3 = [self partiallyRedactedStringForString:a3 maximumUnredactedLength:3];

  return v3;
}

+ (__CFString)ec_partiallyRedactedStringForAddress:()EmailCore
{
  v4 = a3;
  emailAddressValue = [v4 emailAddressValue];
  if (emailAddressValue)
  {
    stringValue = [v4 stringValue];
    localPart = [emailAddressValue localPart];
    domain = [emailAddressValue domain];
    v9 = [self ec_partiallyRedactedStringForAddress:stringValue localPart:localPart domain:domain];
  }

  else
  {
    stringValue = [v4 stringValue];
    if (stringValue)
    {
      v9 = [self partiallyRedactedStringForString:stringValue];
    }

    else
    {
      v9 = @"NULL";
    }
  }

  return v9;
}

+ (id)ec_partiallyRedactedStringForAddress:()EmailCore localPart:domain:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length])
  {
    v10 = [v7 length];
    v11 = [objc_alloc(MEMORY[0x277D071C0]) initWithString:v7];
    if ([v8 length])
    {
      v12 = [v8 rangeOfComposedCharacterSequenceAtIndex:0];
      v14 = [v8 substringToIndex:v12 + v13];
    }

    else
    {
      v14 = &stru_284041D88;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [v9 rangeOfComposedCharacterSequenceAtIndex:0];
    v19 = [v9 substringToIndex:v17 + v18];
    redactedStringValue = [v11 redactedStringValue];
    v15 = [v16 stringWithFormat:@"%@...@%@...<%lu chars, hash=%@>", v14, v19, v10, redactedStringValue];
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

+ (id)ec_redactedStringForMailboxURL:()EmailCore
{
  v4 = a3;
  scheme = [v4 scheme];
  host = [v4 host];
  path = [v4 path];
  v8 = [self _redactedMailboxPathForMailboxPath:path];

  v9 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v9 setScheme:scheme];
  [v9 setHost:host];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v8];
  [v9 setPath:v10];

  absoluteString = [v4 absoluteString];
  v12 = [self partiallyRedactedStringForString:absoluteString maximumUnredactedLength:0];

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  string = [v9 string];
  v15 = [v13 initWithFormat:@"%@%@", string, v12];

  return v15;
}

+ (id)_redactedMailboxPathForMailboxPath:()EmailCore
{
  v4 = a3;
  if ([self _isWellKnownMailboxName:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D07198] fullyRedactedStringForString:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)ec_redactedQueryStringForSearchableQueryString:()EmailCore
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", CFSTR("\\(("));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [&unk_284050878 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(&unk_284050878);
        }

        [v4 appendFormat:@"%@|", *(*(&v21 + 1) + 8 * i)];
      }

      v5 = [&unk_284050878 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [v4 appendString:@" = '([^']+)'\\]"));
  v20 = 0;
  v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:0 error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = v3;
  }

  else
  {
    v11 = [v3 mutableCopy];
    v12 = [v3 length];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__EFPrivacy_EmailCore__ec_redactedQueryStringForSearchableQueryString___block_invoke;
    v17[3] = &unk_27874C5B0;
    v18 = v3;
    v13 = v11;
    v19 = v13;
    [v8 enumerateMatchesInString:v18 options:0 range:0 usingBlock:{v12, v17}];
    v14 = v19;
    v10 = v13;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

@end