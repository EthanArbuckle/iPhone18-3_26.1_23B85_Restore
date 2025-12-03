@interface NSURL(DAExtensions)
+ (CFURLRef)da_URLWithDirtyString:()DAExtensions;
+ (id)da_URLWithScheme:()DAExtensions host:user:port:uri:;
+ (uint64_t)da_classicPortForScheme:()DAExtensions;
- (__CFString)da_rawPath;
- (id)da_pathWithoutTrailingRemovingSlash;
- (id)da_urlByRemovingUsername;
- (id)da_urlBySettingHost:()DAExtensions keepUsername:;
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
  v25 = a3;
  host = [self host];
  if (a4)
  {
    user = [self user];

    if (user)
    {
      user2 = [self user];
      v9 = [user2 stringByAppendingFormat:@"@%@", host];

      host = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  port = [self port];
  query3 = &stru_2854B2770;
  if (port)
  {
    v12 = MEMORY[0x277CCACA8];
    port2 = [self port];
    v13 = [v12 stringWithFormat:@":%@", port2];
  }

  else
  {
    v13 = &stru_2854B2770;
  }

  da_rawPath = [self da_rawPath];
  query = [self query];
  if ([query length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  query2 = [self query];
  v18 = [query2 length];
  if (v18)
  {
    query3 = [self query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", v25, host, v13, da_rawPath, v16, query3];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (port)
  {
  }

  return v20;
}

- (id)da_urlBySettingHost:()DAExtensions keepUsername:
{
  v6 = a3;
  if (a4)
  {
    user = [self user];

    if (user)
    {
      user2 = [self user];
      v9 = [user2 stringByAppendingFormat:@"@%@", v6];

      v6 = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  scheme = [self scheme];
  port = [self port];
  query3 = &stru_2854B2770;
  if (port)
  {
    v12 = MEMORY[0x277CCACA8];
    port2 = [self port];
    v13 = [v12 stringWithFormat:@":%@", port2];
  }

  else
  {
    v13 = &stru_2854B2770;
  }

  da_rawPath = [self da_rawPath];
  query = [self query];
  if ([query length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  query2 = [self query];
  v18 = [query2 length];
  if (v18)
  {
    query3 = [self query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", scheme, v6, v13, da_rawPath, v16, query3];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (port)
  {
  }

  return v20;
}

- (id)da_urlBySettingPort:()DAExtensions keepUsername:
{
  v6 = a3;
  host = [self host];
  if (a4)
  {
    user = [self user];

    if (user)
    {
      user2 = [self user];
      v9 = [user2 stringByAppendingFormat:@"@%@", host];

      host = v9;
    }
  }

  if (![v6 intValue])
  {

    v6 = 0;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = MEMORY[0x277CBEBC0];
  scheme = [self scheme];
  query3 = &stru_2854B2770;
  if (v6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", v6];
  }

  else
  {
    v12 = &stru_2854B2770;
  }

  da_rawPath = [self da_rawPath];
  query = [self query];
  if ([query length])
  {
    v15 = @"?";
  }

  else
  {
    v15 = &stru_2854B2770;
  }

  query2 = [self query];
  v17 = [query2 length];
  if (v17)
  {
    query3 = [self query];
  }

  v18 = [v21 stringWithFormat:@"%@://%@%@%@%@%@", scheme, host, v12, da_rawPath, v15, query3];
  v19 = [v22 URLWithString:v18];

  if (v17)
  {
  }

  if (v6)
  {
  }

  return v19;
}

- (id)da_urlBySettingPath:()DAExtensions keepUsername:
{
  v25 = a3;
  host = [self host];
  if (a4)
  {
    user = [self user];

    if (user)
    {
      user2 = [self user];
      v9 = [user2 stringByAppendingFormat:@"@%@", host];

      host = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  scheme = [self scheme];
  port = [self port];
  query3 = &stru_2854B2770;
  if (port)
  {
    v13 = MEMORY[0x277CCACA8];
    port2 = [self port];
    v14 = [v13 stringWithFormat:@":%@", port2];
  }

  else
  {
    v14 = &stru_2854B2770;
  }

  query = [self query];
  if ([query length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  query2 = [self query];
  v18 = [query2 length];
  if (v18)
  {
    query3 = [self query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", scheme, host, v14, v25, v16, query3];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (port)
  {
  }

  return v20;
}

- (id)da_urlBySettingUsername:()DAExtensions
{
  v4 = a3;
  host = [self host];
  v6 = host;
  v23 = v4;
  if (v4)
  {
    v7 = [v4 stringByAppendingFormat:@"@%@", host];

    v6 = v7;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = MEMORY[0x277CBEBC0];
  scheme = [self scheme];
  port = [self port];
  query3 = &stru_2854B2770;
  if (port)
  {
    v10 = MEMORY[0x277CCACA8];
    port2 = [self port];
    v11 = [v10 stringWithFormat:@":%@", port2];
  }

  else
  {
    v11 = &stru_2854B2770;
  }

  da_rawPath = [self da_rawPath];
  query = [self query];
  if ([query length])
  {
    v14 = @"?";
  }

  else
  {
    v14 = &stru_2854B2770;
  }

  query2 = [self query];
  v16 = [query2 length];
  if (v16)
  {
    query3 = [self query];
  }

  v17 = [v21 stringWithFormat:@"%@://%@%@%@%@%@", scheme, v6, v11, da_rawPath, v14, query3];
  v18 = [v22 URLWithString:v17];

  if (v16)
  {
  }

  if (port)
  {
  }

  return v18;
}

- (id)da_urlByRemovingUsername
{
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x277CBEBC0];
  scheme = [self scheme];
  host = [self host];
  port = [self port];
  query3 = &stru_2854B2770;
  if (port)
  {
    v5 = MEMORY[0x277CCACA8];
    port2 = [self port];
    v6 = [v5 stringWithFormat:@":%@", port2];
  }

  else
  {
    v6 = &stru_2854B2770;
  }

  da_rawPath = [self da_rawPath];
  query = [self query];
  if ([query length])
  {
    v9 = @"?";
  }

  else
  {
    v9 = &stru_2854B2770;
  }

  query2 = [self query];
  v11 = [query2 length];
  if (v11)
  {
    query3 = [self query];
  }

  v12 = [v16 stringWithFormat:@"%@://%@%@%@%@%@", scheme, host, v6, da_rawPath, v9, query3];
  v13 = [v17 URLWithString:v12];

  if (v11)
  {
  }

  if (port)
  {
  }

  return v13;
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
    v5 = MEMORY[0x277CBEBC0];
    v6 = MEMORY[0x277CCACA8];
    scheme = [self scheme];
    host = [self host];
    v9 = [v6 stringWithFormat:@"%@://%@", scheme, host];
    selfCopy = [v5 URLWithString:v9];
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
    v16 = [v13 stringByAppendingFormat:@"@%@", v12];

    v12 = v16;
  }

LABEL_4:
  v17 = MEMORY[0x277CBEBC0];
  if (v14)
  {
    if (v15)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@%@", v11, v12, v14, v22];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u%@", v11, v12, a6, v14];
    }
  }

  else if (v15)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/", v11, v12, v21, v22];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u/", v11, v12, a6, v22];
  }
  v18 = ;
  v19 = [v17 da_URLWithDirtyString:v18];

  return v19;
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