@interface NSURL(CALExtensions)
+ (id)davCompatibleFilenameForFilename:()CALExtensions;
+ (id)iDiskSmallNameCompatibleNameForFilename:()CALExtensions;
- (__CFString)pathWithoutDecodingAndRemovingTrailingSlash;
- (id)URLWithUsername:()CALExtensions withPassword:;
- (id)initWithScheme:()CALExtensions host:port:path:;
- (id)pathWithoutTrailingRemovingSlash;
- (id)queryParameters;
- (id)serverURL;
- (id)unquotedPassword;
@end

@implementation NSURL(CALExtensions)

- (id)queryParameters
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [a1 query];
  v2 = [v1 componentsSeparatedByString:@"&"];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 length])
        {
          v10 = [v9 componentsSeparatedByString:@"="];
          if ([v10 count] == 2)
          {
            v11 = [v10 objectAtIndex:0];
            v12 = [v10 objectAtIndex:1];
            if (v12)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13 && [v11 length])
            {
              [v3 setObject:v12 forKey:v11];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)URLWithUsername:()CALExtensions withPassword:
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 isEqualToString:&stru_285505238])
  {
    if (v7)
    {
      v11 = [a1 scheme];
      v12 = [v11 stringByAppendingString:@"://"];

      v13 = [a1 URLWithoutUsername];
      v14 = [v13 absoluteString];
      v15 = [v14 mutableCopy];

      if ([v15 hasPrefix:v12])
      {
        v16 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
        v17 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v16];

        v18 = [MEMORY[0x277CCA900] URLPasswordAllowedCharacterSet];
        v19 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v18];

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@", v17, v19];
        [v15 insertString:v20 atIndex:{objc_msgSend(v12, "length")}];

        v9 = [MEMORY[0x277CBEBC0] URLWithDirtyString:v15];
      }

      else
      {
        v9 = a1;
      }

      goto LABEL_5;
    }

    v8 = [a1 URLWithUsername:v6];
  }

  else
  {
    v8 = [a1 URLWithoutUsername];
  }

  v9 = v8;
LABEL_5:

  return v9;
}

+ (id)davCompatibleFilenameForFilename:()CALExtensions
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 UTF8String];
  v6 = *v5;
  if (*v5)
  {
    v7 = v5 + 1;
    do
    {
      if ((v6 - 48) < 0xA)
      {
        v8 = @"%c";
      }

      else
      {
        v8 = @"%c";
        if ((v6 & 0xDF) - 65 >= 0x1A)
        {
          if ((v6 - 33) > 0x3E || (v8 = @"%c", ((1 << (v6 - 33)) & 0x40000000000033C1) == 0))
          {
            if (v6 == 126)
            {
              v8 = @"%c";
            }

            else
            {
              v8 = @"%02X";
            }
          }
        }
      }

      [v4 appendFormat:v8, v6];
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  return v4;
}

+ (id)iDiskSmallNameCompatibleNameForFilename:()CALExtensions
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v4 stringByDeletingPathExtension];
  v7 = [v6 mutableCopy];
  v8 = [a1 davCompatibleFilenameForFilename:v7];
  if ([v8 length] < 0x1F)
  {
    v10 = v8;
  }

  else
  {
    do
    {
      [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
      v9 = [v7 stringByAppendingPathExtension:v5];
      v10 = [a1 davCompatibleFilenameForFilename:v9];

      v8 = v10;
    }

    while ([v10 length] > 0x1E);
  }

  v11 = [v7 stringByAppendingPathExtension:v5];

  return v11;
}

- (id)initWithScheme:()CALExtensions host:port:path:
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  if (([v11 isAbsolutePath] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"path %@ is not absolute.", v11}];
  }

  v13 = [v10 stringByAddingPercentEscapes];
  v14 = [v12 stringByAddingPercentEscapes];

  v15 = [v11 standardizedURLPath];
  v16 = v15;
  v17 = 0;
  if (v13 && v14 && v15)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    if (a5)
    {
      v19 = [v18 initWithFormat:@"%@://%@:%i%@", v13, v14, a5, v16];
    }

    else
    {
      v19 = [v18 initWithFormat:@"%@://%@%@", v13, v14, v16, v22];
    }

    v20 = v19;
    a1 = [a1 initWithString:v19];

    v17 = a1;
  }

  return v17;
}

- (id)unquotedPassword
{
  v1 = [a1 password];
  v2 = [v1 stringByRemovingPercentEncoding];

  return v2;
}

- (id)serverURL
{
  v2 = [a1 port];

  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 scheme];
  v6 = [a1 host];
  v7 = v6;
  if (v2)
  {
    v8 = [a1 port];
    v9 = [v4 stringWithFormat:@"%@://%@:%@/", v5, v7, v8];
    v10 = [v3 URLWithString:v9];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@://%@/", v5, v6];
    v10 = [v3 URLWithString:v8];
  }

  return v10;
}

- (id)pathWithoutTrailingRemovingSlash
{
  v2 = [a1 path];
  if (([v2 hasSuffix:@"/"] & 1) == 0)
  {
    v3 = [a1 absoluteString];
    v4 = [v3 hasSuffix:@"/"];

    if (v4)
    {
      v5 = [v2 stringByAppendingString:@"/"];

      v2 = v5;
    }
  }

  return v2;
}

- (__CFString)pathWithoutDecodingAndRemovingTrailingSlash
{
  v1 = CFURLCopyPath(a1);

  return v1;
}

@end