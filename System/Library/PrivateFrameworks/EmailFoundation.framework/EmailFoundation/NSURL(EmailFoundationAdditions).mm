@interface NSURL(EmailFoundationAdditions)
+ (id)ef_urlWithString:()EmailFoundationAdditions;
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
    ef_defaultAllowedCharacterSet = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
    v6 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:ef_defaultAllowedCharacterSet];

    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  }

  return v4;
}

- (id)ef_caseNormalizedURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  scheme = [v1 scheme];
  lowercaseString = [scheme lowercaseString];
  [v1 setScheme:lowercaseString];

  host = [v1 host];
  lowercaseString2 = [host lowercaseString];
  [v1 setHost:lowercaseString2];

  v6 = [v1 URL];

  return v6;
}

- (uint64_t)ef_hasScheme:()EmailFoundationAdditions
{
  v4 = a3;
  scheme = [self scheme];
  v6 = [scheme ef_caseInsensitiveIsEqualToString:v4];

  return v6;
}

- (uint64_t)ef_hasHost:()EmailFoundationAdditions
{
  v4 = a3;
  host = [self host];
  v6 = [host ef_caseInsensitiveIsEqualToString:v4];

  return v6;
}

- (BOOL)ef_isHTTPOrHTTPSURL
{
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    if ([scheme caseInsensitiveCompare:@"http"])
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
  if ([self ef_isHTTPOrHTTPSURL])
  {
    return 1;
  }

  scheme = [self scheme];
  v2 = [scheme length] == 0;

  return v2;
}

- (id)ef_urlByAddingSchemeIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  absoluteString = [self absoluteString];
  if ([absoluteString length] && !objc_msgSend(self, "ef_isHTTPOrHTTPSURL"))
  {
    v4 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:32 error:0];
    [v4 matchesInString:absoluteString options:1 range:{0, objc_msgSend(absoluteString, "length")}];
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
            selfCopy2 = [v9 URL];

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

    selfCopy2 = self;
LABEL_14:
  }

  else
  {
    selfCopy2 = self;
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

- (id)ef_highLevelDomain
{
  ef_urlByAddingSchemeIfNeeded = [self ef_urlByAddingSchemeIfNeeded];
  _lp_highLevelDomain = [ef_urlByAddingSchemeIfNeeded _lp_highLevelDomain];

  return _lp_highLevelDomain;
}

- (void)ef_hostNilForEmpty
{
  host = [self host];
  if ([host length])
  {
    v2 = host;
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
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  [v5 setScheme:v4];
  v6 = [v5 URL];

  return v6;
}

- (id)ef_urlByAddingPrefixToScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  scheme = [v5 scheme];
  v7 = [v4 stringByAppendingString:scheme];
  [v5 setScheme:v7];

  v8 = [v5 URL];

  return v8;
}

- (id)ef_urlByRemovingPrefixFromScheme:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  scheme = [v5 scheme];
  v7 = [scheme substringFromIndex:{objc_msgSend(v4, "length")}];
  [v5 setScheme:v7];

  v8 = [v5 URL];

  return v8;
}

- (id)ef_URLByAppendingTimestampedPathComponent:()EmailFoundationAdditions withExtension:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  ef_isoDateFormatter = [MEMORY[0x1E696AB78] ef_isoDateFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v11 = [ef_isoDateFormatter stringFromDate:date];
  v12 = [v8 stringWithFormat:@"%@_%@", v6, v11];

  v13 = [self URLByAppendingPathComponent:v12];
  v14 = [v13 URLByAppendingPathExtension:v7];

  return v14;
}

@end