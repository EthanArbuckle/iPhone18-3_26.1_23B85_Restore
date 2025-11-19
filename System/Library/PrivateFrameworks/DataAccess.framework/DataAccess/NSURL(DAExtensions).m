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
  v6 = [a1 absoluteString];
  v7 = [v5 absoluteString];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v10 = [a1 host];
    v11 = [v5 host];
    if (v10 != v11)
    {
      v12 = [a1 host];
      if (!v12)
      {
        goto LABEL_45;
      }

      v13 = v12;
      v14 = [a1 host];
      v15 = [v5 host];
      if ([v14 caseInsensitiveCompare:v15])
      {

        goto LABEL_45;
      }

      v44 = v15;
      v45 = v14;
      v46 = v13;
    }

    v16 = [a1 scheme];
    v17 = [v5 scheme];
    if (v16 != v17)
    {
      v18 = [a1 scheme];
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = [a1 scheme];
      v3 = [v5 scheme];
      if ([v19 caseInsensitiveCompare:v3])
      {
        v20 = 0;
        goto LABEL_18;
      }

      v40 = v19;
      v41 = v18;
    }

    v21 = [a1 user];
    v22 = [v5 user];
    v23 = v22;
    if (v21 != v22)
    {
      v42 = v3;
      v24 = [a1 user];
      v25 = [v5 user];
      v43 = [v24 isEqualToString:v25];

      if (v16 != v17)
      {
        v19 = v40;
        v18 = v41;
        v20 = v43;
        v3 = v42;
LABEL_18:

        if (v10 != v11)
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

      if (v10 != v11)
      {
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_35:
      v10 = [a1 relativePath];
      v11 = [v5 relativePath];
      v26 = [v10 da_appendSlashIfNeeded];
      v27 = [v11 da_appendSlashIfNeeded];
      v28 = [v26 isEqualToString:v27];

      if (v28)
      {
        v29 = [a1 port];
        v30 = [v29 intValue];

        v31 = [v5 port];
        v32 = [v31 intValue];

        if (v30 == v32)
        {
          v9 = 1;
LABEL_46:

          goto LABEL_47;
        }

        v33 = [a1 scheme];
        v34 = [v33 isEqualToString:@"http"];

        if (v34)
        {
          v35 = 80;
        }

        else
        {
          v36 = [a1 scheme];
          v37 = [v36 isEqualToString:@"https"];

          if (v37)
          {
            v35 = 443;
          }

          else
          {
            v35 = -1;
          }
        }

        if (!v30 || v30 == v35)
        {
          if (v32)
          {
            v39 = v32 == v35;
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

    if (v16 == v17)
    {

      if (v10 != v11)
      {
      }

      goto LABEL_35;
    }

    LOBYTE(v18) = 1;
LABEL_24:

    if (v10 != v11)
    {
    }

    if ((v18 & 1) == 0)
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
  v8 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
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
  v8 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
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
  v8 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
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
  v8 = [[v6 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
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
  v6 = [[v4 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
  [v6 setUser:v5];

  v7 = [v6 URL];

  return v7;
}

- (id)da_urlBySettingPassword:()DAExtensions
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:a1 resolvingAgainstBaseURL:1];
  [v6 setPassword:v5];

  v7 = [v6 URL];

  return v7;
}

- (id)da_urlByRemovingUsername
{
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:1];
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
    v4 = a1;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v6 = [a1 scheme];
    [v5 setScheme:v6];

    v7 = [a1 host];
    [v5 setHost:v7];

    v4 = [v5 URL];
  }

  return v4;
}

- (__CFString)da_rawPath
{
  v1 = CFURLCopyPath(a1);

  return v1;
}

- (id)da_pathWithoutTrailingRemovingSlash
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

+ (CFURLRef)da_URLWithDirtyString:()DAExtensions
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

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
    v16 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v17 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v16];
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