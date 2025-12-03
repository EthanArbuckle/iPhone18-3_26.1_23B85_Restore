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
  fileSystemRepresentation = [self fileSystemRepresentation];

  return [v1 stringWithUTF8String:fileSystemRepresentation];
}

- (uint64_t)_gkIsValidServerURL
{
  if (_gkIsValidServerURL_onceToken != -1)
  {
    [NSURL(GKAdditions) _gkIsValidServerURL];
  }

  v2 = _gkIsValidServerURL_sValidSchemes;
  scheme = [self scheme];
  v4 = [v2 containsObject:scheme];

  return v4;
}

- (uint64_t)_gkIsSecure
{
  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"https"];

  return v2;
}

- (id)_gkURLByAddingQueryParameters:()GKAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    absoluteString = [self absoluteString];
    if (absoluteString)
    {
      v21 = absoluteString;
      v6 = [absoluteString mutableCopy];
      query = [self query];

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
        if (query)
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
          selfCopy = v17;

          v4 = v22;
          goto LABEL_21;
        }
      }

      absoluteString = v21;
      v4 = v22;
    }
  }

  selfCopy = self;
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)_gkURLByReplacingSchemeWithScheme:()GKAdditions
{
  v4 = a3;
  scheme = [self scheme];
  absoluteString = [self absoluteString];
  v7 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length")}];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

@end