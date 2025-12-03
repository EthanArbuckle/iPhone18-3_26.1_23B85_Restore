@interface NSURL(DAExtensions)
+ (CFURLRef)da_URLWithDirtyString:()DAExtensions;
+ (id)da_URLWithScheme:()DAExtensions host:user:port:uri:;
+ (uint64_t)da_classicPortForScheme:()DAExtensions;
- (__CFString)da_rawPath;
- (id)da_pathWithoutTrailingRemovingSlash;
- (id)da_urlByRemovingUsername;
- (id)da_urlBySettingHost:()DAExtensions keepUsername:;
- (id)da_urlBySettingPassword:()DAExtensions;
- (id)da_urlBySettingPath:()DAExtensions keepUsername:;
- (id)da_urlBySettingPort:()DAExtensions keepUsername:;
- (id)da_urlBySettingScheme:()DAExtensions keepUsername:;
- (id)da_urlBySettingUsername:()DAExtensions;
- (id)da_urlForLogging;
- (uint64_t)da_isEqualToDAVURL:()DAExtensions;
@end

@implementation NSURL(DAExtensions)

- (uint64_t)da_isEqualToDAVURL:()DAExtensions
{
  v5 = a3;
  absoluteString = [self absoluteString];
  absoluteString2 = [v5 absoluteString];
  v8 = [absoluteString isEqualToString:absoluteString2];

  if ((v8 & 1) == 0)
  {
    host = [self host];
    host2 = [v5 host];
    if (host != host2)
    {
      host3 = [self host];
      if (!host3)
      {
        goto LABEL_45;
      }

      v13 = host3;
      host4 = [self host];
      host5 = [v5 host];
      if ([host4 caseInsensitiveCompare:host5])
      {

        goto LABEL_45;
      }

      v44 = host5;
      v45 = host4;
      v46 = v13;
    }

    scheme = [self scheme];
    scheme2 = [v5 scheme];
    if (scheme != scheme2)
    {
      scheme3 = [self scheme];
      if (!scheme3)
      {
        goto LABEL_24;
      }

      scheme4 = [self scheme];
      scheme5 = [v5 scheme];
      if ([scheme4 caseInsensitiveCompare:scheme5])
      {
        v20 = 0;
        goto LABEL_18;
      }

      v40 = scheme4;
      v41 = scheme3;
    }

    user = [self user];
    user2 = [v5 user];
    v23 = user2;
    if (user != user2)
    {
      v42 = scheme5;
      user3 = [self user];
      user4 = [v5 user];
      v43 = [user3 isEqualToString:user4];

      if (scheme != scheme2)
      {
        scheme4 = v40;
        scheme3 = v41;
        v20 = v43;
        scheme5 = v42;
LABEL_18:

        if (host != host2)
        {
        }

        if (v20)
        {
          goto LABEL_35;
        }

LABEL_31:
        v9 = 0;
        goto LABEL_47;
      }

      if (host != host2)
      {
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_35:
      host = [self relativePath];
      host2 = [v5 relativePath];
      da_appendSlashIfNeeded = [host da_appendSlashIfNeeded];
      da_appendSlashIfNeeded2 = [host2 da_appendSlashIfNeeded];
      v28 = [da_appendSlashIfNeeded isEqualToString:da_appendSlashIfNeeded2];

      if (v28)
      {
        port = [self port];
        intValue = [port intValue];

        port2 = [v5 port];
        intValue2 = [port2 intValue];

        if (intValue == intValue2)
        {
          v9 = 1;
LABEL_46:

          goto LABEL_47;
        }

        scheme6 = [self scheme];
        v34 = [scheme6 isEqualToString:@"http"];

        if (v34)
        {
          v35 = 80;
        }

        else
        {
          scheme7 = [self scheme];
          v37 = [scheme7 isEqualToString:@"https"];

          if (v37)
          {
            v35 = 443;
          }

          else
          {
            v35 = -1;
          }
        }

        if (!intValue || intValue == v35)
        {
          if (intValue2)
          {
            v39 = intValue2 == v35;
          }

          else
          {
            v39 = 1;
          }

          v9 = v39;
          goto LABEL_46;
        }
      }

LABEL_45:
      v9 = 0;
      goto LABEL_46;
    }

    if (scheme == scheme2)
    {

      if (host != host2)
      {
      }

      goto LABEL_35;
    }

    LOBYTE(scheme3) = 1;
LABEL_24:

    if (host != host2)
    {
    }

    if ((scheme3 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v9 = 1;
LABEL_47:

  return v9;
}

- (id)da_urlBySettingScheme:()DAExtensions keepUsername:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v8 setScheme:v7];

  if ((a4 & 1) == 0)
  {
    [v8 setUser:0];
  }

  v9 = [v8 URL];

  return v9;
}

- (id)da_urlBySettingHost:()DAExtensions keepUsername:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v8 setHost:v7];

  if ((a4 & 1) == 0)
  {
    [v8 setUser:0];
  }

  v9 = [v8 URL];

  return v9;
}

- (id)da_urlBySettingPort:()DAExtensions keepUsername:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  if ([v7 intValue])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [v8 setPort:v9];

  if ((a4 & 1) == 0)
  {
    [v8 setUser:0];
  }

  v10 = [v8 URL];

  return v10;
}

- (id)da_urlBySettingPath:()DAExtensions keepUsername:
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v8 setPath:v7];

  if ((a4 & 1) == 0)
  {
    [v8 setUser:0];
  }

  v9 = [v8 URL];

  return v9;
}

- (id)da_urlBySettingUsername:()DAExtensions
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v6 setUser:v5];

  v7 = [v6 URL];

  return v7;
}

- (id)da_urlBySettingPassword:()DAExtensions
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:self resolvingAgainstBaseURL:1];
  [v6 setPassword:v5];

  v7 = [v6 URL];

  return v7;
}

- (id)da_urlByRemovingUsername
{
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:self resolvingAgainstBaseURL:1];
  [v1 setUser:0];
  v2 = [v1 URL];

  return v2;
}

- (id)da_urlForLogging
{
  v2 = DALoggingwithCategory();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    selfCopy = self;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    scheme = [self scheme];
    [v5 setScheme:scheme];

    host = [self host];
    [v5 setHost:host];

    selfCopy = [v5 URL];
  }

  return selfCopy;
}

- (__CFString)da_rawPath
{
  v1 = CFURLCopyPath(self);

  return v1;
}

- (id)da_pathWithoutTrailingRemovingSlash
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

+ (CFURLRef)da_URLWithDirtyString:()DAExtensions
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 mutableCopy];
  [(__CFString *)v7 replaceOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v7 length]];
  v8 = CFURLCreateWithString(0, v7, 0);

  return v8;
}

+ (id)da_URLWithScheme:()DAExtensions host:user:port:uri:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6)
  {
    v15 = [objc_opt_class() da_classicPortForScheme:v11] == a6;
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 1;
  if (v13)
  {
LABEL_3:
    uRLFragmentAllowedCharacterSet = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v17 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];
    v18 = [v17 stringByAppendingFormat:@"@%@", v12];

    v12 = v18;
  }

LABEL_4:
  v19 = MEMORY[0x277CBEBC0];
  if (v14)
  {
    if (v15)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@%@", v11, v12, v14, v24];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u%@", v11, v12, a6, v14];
    }
  }

  else if (v15)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/", v11, v12, v23, v24];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u/", v11, v12, a6, v24];
  }
  v20 = ;
  v21 = [v19 da_URLWithDirtyString:v20];

  return v21;
}

+ (uint64_t)da_classicPortForScheme:()DAExtensions
{
  v3 = a3;
  if ([v3 isEqualToString:@"http"])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:@"https"])
  {
    v4 = 443;
  }

  else if ([v3 isEqualToString:@"ftp"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end