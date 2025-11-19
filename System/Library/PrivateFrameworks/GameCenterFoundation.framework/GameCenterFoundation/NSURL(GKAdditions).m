@interface NSURL(GKAdditions)
- (id)_gkURLByAddingQueryParameters:()GKAdditions;
- (id)_gkURLByReplacingSchemeWithScheme:()GKAdditions;
- (uint64_t)_gkIsSecure;
- (uint64_t)_gkIsValidServerURL;
- (uint64_t)gkFileSystemRepresentation;
@end

@implementation NSURL(GKAdditions)

- (uint64_t)gkFileSystemRepresentation
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 fileSystemRepresentation];

  return [v1 stringWithUTF8String:v2];
}

- (uint64_t)_gkIsValidServerURL
{
  if (_gkIsValidServerURL_onceToken != -1)
  {
    [NSURL(GKAdditions) _gkIsValidServerURL];
  }

  v2 = _gkIsValidServerURL_sValidSchemes;
  v3 = [a1 scheme];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)_gkIsSecure
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"https"];

  return v2;
}

- (id)_gkURLByAddingQueryParameters:()GKAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [a1 absoluteString];
    if (v5)
    {
      v21 = v5;
      v6 = [v5 mutableCopy];
      v7 = [a1 query];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v4;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        if (v7)
        {
          v11 = @"&";
        }

        else
        {
          v11 = @"?";
        }

        v12 = *v24;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [v8 objectForKey:v14];
            v16 = v15;
            if (v15)
            {
              [v6 appendFormat:@"%@%@=%@", v11, v14, v15];
              v11 = @"&";
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v10);
      }

      if (v6)
      {
        v17 = [MEMORY[0x277CBEBC0] URLWithString:v6];
        if (v17)
        {
          v18 = v17;

          v4 = v22;
          goto LABEL_21;
        }
      }

      v5 = v21;
      v4 = v22;
    }
  }

  v18 = a1;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_gkURLByReplacingSchemeWithScheme:()GKAdditions
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = [a1 absoluteString];
  v7 = [v6 substringFromIndex:{objc_msgSend(v5, "length")}];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

@end