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
  query = [self query];
  v2 = [query componentsSeparatedByString:@"&"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
              [dictionary setObject:v12 forKey:v11];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)URLWithUsername:()CALExtensions withPassword:
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 isEqualToString:&stru_285505238])
  {
    if (v7)
    {
      scheme = [self scheme];
      v12 = [scheme stringByAppendingString:@"://"];

      uRLWithoutUsername = [self URLWithoutUsername];
      absoluteString = [uRLWithoutUsername absoluteString];
      v15 = [absoluteString mutableCopy];

      if ([v15 hasPrefix:v12])
      {
        uRLUserAllowedCharacterSet = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
        v17 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];

        uRLPasswordAllowedCharacterSet = [MEMORY[0x277CCA900] URLPasswordAllowedCharacterSet];
        v19 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:uRLPasswordAllowedCharacterSet];

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@", v17, v19];
        [v15 insertString:v20 atIndex:{objc_msgSend(v12, "length")}];

        selfCopy = [MEMORY[0x277CBEBC0] URLWithDirtyString:v15];
      }

      else
      {
        selfCopy = self;
      }

      goto LABEL_5;
    }

    uRLWithoutUsername2 = [self URLWithUsername:v6];
  }

  else
  {
    uRLWithoutUsername2 = [self URLWithoutUsername];
  }

  selfCopy = uRLWithoutUsername2;
LABEL_5:

  return selfCopy;
}

+ (id)davCompatibleFilenameForFilename:()CALExtensions
{
  v3 = a3;
  string = [MEMORY[0x277CCAB68] string];
  uTF8String = [v3 UTF8String];
  v6 = *uTF8String;
  if (*uTF8String)
  {
    v7 = uTF8String + 1;
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

      [string appendFormat:v8, v6];
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  return string;
}

+ (id)iDiskSmallNameCompatibleNameForFilename:()CALExtensions
{
  v4 = a3;
  pathExtension = [v4 pathExtension];
  stringByDeletingPathExtension = [v4 stringByDeletingPathExtension];
  v7 = [stringByDeletingPathExtension mutableCopy];
  v8 = [self davCompatibleFilenameForFilename:v7];
  if ([v8 length] < 0x1F)
  {
    v10 = v8;
  }

  else
  {
    do
    {
      [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 1, 1}];
      v9 = [v7 stringByAppendingPathExtension:pathExtension];
      v10 = [self davCompatibleFilenameForFilename:v9];

      v8 = v10;
    }

    while ([v10 length] > 0x1E);
  }

  v11 = [v7 stringByAppendingPathExtension:pathExtension];

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

  stringByAddingPercentEscapes = [v10 stringByAddingPercentEscapes];
  stringByAddingPercentEscapes2 = [v12 stringByAddingPercentEscapes];

  standardizedURLPath = [v11 standardizedURLPath];
  v16 = standardizedURLPath;
  selfCopy = 0;
  if (stringByAddingPercentEscapes && stringByAddingPercentEscapes2 && standardizedURLPath)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    if (a5)
    {
      v19 = [v18 initWithFormat:@"%@://%@:%i%@", stringByAddingPercentEscapes, stringByAddingPercentEscapes2, a5, v16];
    }

    else
    {
      v19 = [v18 initWithFormat:@"%@://%@%@", stringByAddingPercentEscapes, stringByAddingPercentEscapes2, v16, v22];
    }

    v20 = v19;
    self = [self initWithString:v19];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)unquotedPassword
{
  password = [self password];
  stringByRemovingPercentEncoding = [password stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (id)serverURL
{
  port = [self port];

  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  scheme = [self scheme];
  host = [self host];
  v7 = host;
  if (port)
  {
    port2 = [self port];
    v9 = [v4 stringWithFormat:@"%@://%@:%@/", scheme, v7, port2];
    v10 = [v3 URLWithString:v9];
  }

  else
  {
    port2 = [v4 stringWithFormat:@"%@://%@/", scheme, host];
    v10 = [v3 URLWithString:port2];
  }

  return v10;
}

- (id)pathWithoutTrailingRemovingSlash
{
  path = [self path];
  if (([path hasSuffix:@"/"] & 1) == 0)
  {
    absoluteString = [self absoluteString];
    v4 = [absoluteString hasSuffix:@"/"];

    if (v4)
    {
      v5 = [path stringByAppendingString:@"/"];

      path = v5;
    }
  }

  return path;
}

- (__CFString)pathWithoutDecodingAndRemovingTrailingSlash
{
  v1 = CFURLCopyPath(self);

  return v1;
}

@end