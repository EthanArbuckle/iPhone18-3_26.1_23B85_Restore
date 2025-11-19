@interface NSURL(EmailFoundationAdditions)
+ (id)ef_accountAllowedCharacterSet;
+ (id)ef_defaultAllowedCharacterSet;
+ (id)ef_gmailAuthAllowedCharacterSet;
+ (id)ef_messageAllowedCharacterSet;
+ (id)ef_urlWithString:()EmailFoundationAdditions;
+ (id)ef_yahooAuthAllowedCharacterSet;
- (BOOL)ef_isHTTPOrHTTPSURL;
- (id)ef_URLByAppendingTimestampedPathComponent:()EmailFoundationAdditions withExtension:;
- (id)ef_caseNormalizedURL;
- (id)ef_highLevelDomain;
- (id)ef_urlByAddingPrefixToScheme:()EmailFoundationAdditions;
- (id)ef_urlByAddingSchemeIfNeeded;
- (id)ef_urlByRemovingPrefixFromScheme:()EmailFoundationAdditions;
- (id)ef_urlByReplacingSchemeWithScheme:()EmailFoundationAdditions;
- (uint64_t)ef_hasHost:()EmailFoundationAdditions;
- (uint64_t)ef_hasScheme:()EmailFoundationAdditions;
- (uint64_t)ef_isEligibleForRichLink;
- (void)ef_hostNilForEmpty;
@end

@implementation NSURL(EmailFoundationAdditions)

+ (id)ef_urlWithString:()EmailFoundationAdditions
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
    v6 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v5];

    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  }

  return v4;
}

- (id)ef_caseNormalizedURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];
  [v1 setScheme:v3];

  v4 = [v1 host];
  v5 = [v4 lowercaseString];
  [v1 setHost:v5];

  v6 = [v1 URL];

  return v6;
}

- (uint64_t)ef_hasScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = [v5 ef_caseInsensitiveIsEqualToString:v4];

  return v6;
}

- (uint64_t)ef_hasHost:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 host];
  v6 = [v5 ef_caseInsensitiveIsEqualToString:v4];

  return v6;
}

- (BOOL)ef_isHTTPOrHTTPSURL
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"http"])
    {
      v3 = [v2 caseInsensitiveCompare:@"https"] == 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)ef_isEligibleForRichLink
{
  if ([a1 ef_isHTTPOrHTTPSURL])
  {
    return 1;
  }

  v3 = [a1 scheme];
  v2 = [v3 length] == 0;

  return v2;
}

- (id)ef_urlByAddingSchemeIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 absoluteString];
  if ([v2 length] && !objc_msgSend(a1, "ef_isHTTPOrHTTPSURL"))
  {
    v4 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:32 error:0];
    [v4 matchesInString:v2 options:1 range:{0, objc_msgSend(v2, "length")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 URL];

          if (v10)
          {
            v3 = [v9 URL];

            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = a1;
LABEL_14:
  }

  else
  {
    v3 = a1;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)ef_highLevelDomain
{
  v1 = [a1 ef_urlByAddingSchemeIfNeeded];
  v2 = [v1 _lp_highLevelDomain];

  return v2;
}

- (void)ef_hostNilForEmpty
{
  v1 = [a1 host];
  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)ef_urlByReplacingSchemeWithScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  [v5 setScheme:v4];
  v6 = [v5 URL];

  return v6;
}

- (id)ef_urlByAddingPrefixToScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v6 = [v5 scheme];
  v7 = [v4 stringByAppendingString:v6];
  [v5 setScheme:v7];

  v8 = [v5 URL];

  return v8;
}

- (id)ef_urlByRemovingPrefixFromScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v6 = [v5 scheme];
  v7 = [v6 substringFromIndex:{objc_msgSend(v4, "length")}];
  [v5 setScheme:v7];

  v8 = [v5 URL];

  return v8;
}

- (id)ef_URLByAppendingTimestampedPathComponent:()EmailFoundationAdditions withExtension:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AB78] ef_isoDateFormatter];
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v9 stringFromDate:v10];
  v12 = [v8 stringWithFormat:@"%@_%@", v6, v11];

  v13 = [a1 URLByAppendingPathComponent:v12];
  v14 = [v13 URLByAppendingPathExtension:v7];

  return v14;
}

+ (id)ef_defaultAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

+ (id)ef_accountAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

+ (id)ef_messageAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

+ (id)ef_gmailAuthAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

+ (id)ef_yahooAuthAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

@end