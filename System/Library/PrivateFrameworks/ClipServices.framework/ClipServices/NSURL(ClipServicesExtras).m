@interface NSURL(ClipServicesExtras)
+ (id)cps_preIngestedURLWithBundleIdentifier:()ClipServicesExtras;
+ (id)cps_resolvedURLWithStoreIconURLString:()ClipServicesExtras iconSize:;
- (BOOL)cps_isDemoLink;
- (BOOL)cps_isFileURL;
- (BOOL)cps_isHTTPFamilyURL;
- (id)cps_domain;
- (id)cps_embeddedBundleIdentifierInDefaultLink;
- (id)cps_embeddedBundleIdentifierInDemoLink;
- (id)cps_embeddedItemID;
- (id)cps_fallbackBundleIdentifier;
- (id)cps_sanitizedURL;
@end

@implementation NSURL(ClipServicesExtras)

+ (id)cps_resolvedURLWithStoreIconURLString:()ClipServicesExtras iconSize:
{
  v20[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v19[0] = @"{w}";
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v20[0] = v6;
    v19[1] = @"{h}";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v20[1] = v7;
    v19[2] = @"{f}";
    v19[3] = @"{c}";
    v20[2] = @"png";
    v20[3] = @"bb";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = [v5 copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__NSURL_ClipServicesExtras__cps_resolvedURLWithStoreIconURLString_iconSize___block_invoke;
    v12[3] = &unk_278DCE228;
    v12[4] = &v13;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v14[5]];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)cps_preIngestedURLWithBundleIdentifier:()ClipServicesExtras
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"https://pre-ingested.apple.com/", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (BOOL)cps_isHTTPFamilyURL
{
  v2 = [a1 scheme];
  if ([v2 caseInsensitiveCompare:@"https"])
  {
    v3 = [a1 scheme];
    v4 = [v3 caseInsensitiveCompare:@"http"] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)cps_isFileURL
{
  v1 = [a1 scheme];
  v2 = [v1 caseInsensitiveCompare:@"file"] == 0;

  return v2;
}

- (id)cps_domain
{
  v1 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v2 = [v1 host];
  v3 = v2;
  if (v2)
  {
    if ([v2 rangeOfString:@"www." options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 substringFromIndex:4];
    }

    v6 = v4;
    if ([v4 length])
    {
      v5 = [v6 lowercaseString];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cps_fallbackBundleIdentifier
{
  v2 = [a1 cps_embeddedBundleIdentifierInDefaultLink];
  if (!v2)
  {
    v2 = [a1 cps_embeddedBundleIdentifierInDemoLink];
  }

  return v2;
}

- (id)cps_embeddedBundleIdentifierInDefaultLink
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v3 = [v2 host];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"appclip.apple.com"];

  if (v5 && ([a1 lastPathComponent], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "caseInsensitiveCompare:", @"id"), v6, !v7))
  {
    v10 = [v2 queryItems];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectAtIndexedSubscript:0];
      v13 = [v12 name];
      v14 = [v13 caseInsensitiveCompare:@"p"];

      v8 = 0;
      if (!v14)
      {
        v15 = [v12 value];
        v16 = [v15 stringByRemovingPercentEncoding];

        v17 = [v16 componentsSeparatedByString:@"."];
        if ([v17 count] >= 3)
        {
          v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          if ([v16 rangeOfCharacterFromSet:v18] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = v16;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cps_embeddedBundleIdentifierInDemoLink
{
  v2 = [a1 cps_embeddedItemID];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
    v4 = [v3 queryItems];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      v7 = [v6 name];
      v8 = [v7 caseInsensitiveCompare:@"app-clip-bundle-id"];

      v9 = 0;
      if (!v8)
      {
        v10 = [v6 value];
        v11 = [v10 stringByRemovingPercentEncoding];

        v12 = [v11 componentsSeparatedByString:@"."];
        if ([v12 count] >= 3)
        {
          v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          if ([v11 rangeOfCharacterFromSet:v13] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = v11;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cps_sanitizedURL
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 cps_embeddedItemID];
  if (!v2)
  {
    v8 = a1;
    goto LABEL_14;
  }

  v3 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v4 = [a1 pathComponents];
  v5 = [MEMORY[0x277CCAB68] string];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__NSURL_ClipServicesExtras__cps_sanitizedURL__block_invoke;
  v23[3] = &unk_278DCE250;
  v23[4] = &v24;
  [v4 enumerateObjectsUsingBlock:v23];
  v6 = v25[3];
  if (v6 == 2)
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    v9 = [v4 objectAtIndexedSubscript:2];
    [v5 appendFormat:@"/%@/%@", v7, v9];

    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    [v5 appendFormat:@"/%@", v7];
LABEL_7:
  }

  v10 = [a1 lastPathComponent];
  v11 = [v10 lowercaseString];

  if ([v11 containsString:@"id"])
  {
    [v5 appendFormat:@"/%@", v11];
    v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v13 = [v3 scheme];
    [v12 setScheme:v13];

    v14 = [v3 host];
    [v12 setHost:v14];

    [v12 setPath:v5];
    v15 = [v3 queryItems];
    v16 = [v15 firstObject];

    v17 = [v16 name];
    v18 = [v17 lowercaseString];
    v19 = [v18 isEqualToString:@"app-clip-bundle-id"];

    if (v19)
    {
      v28[0] = v16;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      [v12 setQueryItems:v20];
    }

    v8 = [v12 URL];
  }

  else
  {
    v8 = a1;
  }

  _Block_object_dispose(&v24, 8);
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)cps_embeddedItemID
{
  v2 = [MEMORY[0x277CCACE0] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v3 = [v2 host];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"apps.apple.com"];

  if (v5)
  {
    v6 = [a1 pathComponents];
    if ([v6 count] >= 2)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __47__NSURL_ClipServicesExtras__cps_embeddedItemID__block_invoke;
      v12[3] = &unk_278DCE250;
      v12[4] = &v13;
      [v6 enumerateObjectsUsingBlock:v12];
      if ((v14[3] - 1) >= 2)
      {
        v7 = 0;
      }

      else
      {
        v8 = [a1 lastPathComponent];
        v9 = [v8 lowercaseString];

        if ([v9 containsString:@"id"])
        {
          v10 = [v9 substringFromIndex:2];
          if ([v10 cps_looksLikeStoreItemIdentifier])
          {
            v7 = v10;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)cps_isDemoLink
{
  v1 = [a1 cps_embeddedItemID];
  v2 = v1 != 0;

  return v2;
}

@end