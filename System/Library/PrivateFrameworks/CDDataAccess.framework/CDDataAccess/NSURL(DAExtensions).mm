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
  v25 = a3;
  v6 = [a1 host];
  if (a4)
  {
    v7 = [a1 user];

    if (v7)
    {
      v8 = [a1 user];
      v9 = [v8 stringByAppendingFormat:@"@%@", v6];

      v6 = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  v10 = [a1 port];
  v11 = &stru_2854B2770;
  if (v10)
  {
    v12 = MEMORY[0x277CCACA8];
    v22 = [a1 port];
    v13 = [v12 stringWithFormat:@":%@", v22];
  }

  else
  {
    v13 = &stru_2854B2770;
  }

  v14 = [a1 da_rawPath];
  v15 = [a1 query];
  if ([v15 length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  v17 = [a1 query];
  v18 = [v17 length];
  if (v18)
  {
    v11 = [a1 query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", v25, v6, v13, v14, v16, v11];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (v10)
  {
  }

  return v20;
}

- (id)da_urlBySettingHost:()DAExtensions keepUsername:
{
  v6 = a3;
  if (a4)
  {
    v7 = [a1 user];

    if (v7)
    {
      v8 = [a1 user];
      v9 = [v8 stringByAppendingFormat:@"@%@", v6];

      v6 = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  v25 = [a1 scheme];
  v10 = [a1 port];
  v11 = &stru_2854B2770;
  if (v10)
  {
    v12 = MEMORY[0x277CCACA8];
    v22 = [a1 port];
    v13 = [v12 stringWithFormat:@":%@", v22];
  }

  else
  {
    v13 = &stru_2854B2770;
  }

  v14 = [a1 da_rawPath];
  v15 = [a1 query];
  if ([v15 length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  v17 = [a1 query];
  v18 = [v17 length];
  if (v18)
  {
    v11 = [a1 query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", v25, v6, v13, v14, v16, v11];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (v10)
  {
  }

  return v20;
}

- (id)da_urlBySettingPort:()DAExtensions keepUsername:
{
  v6 = a3;
  v23 = [a1 host];
  if (a4)
  {
    v7 = [a1 user];

    if (v7)
    {
      v8 = [a1 user];
      v9 = [v8 stringByAppendingFormat:@"@%@", v23];

      v23 = v9;
    }
  }

  if (![v6 intValue])
  {

    v6 = 0;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = MEMORY[0x277CBEBC0];
  v10 = [a1 scheme];
  v11 = &stru_2854B2770;
  if (v6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", v6];
  }

  else
  {
    v12 = &stru_2854B2770;
  }

  v13 = [a1 da_rawPath];
  v14 = [a1 query];
  if ([v14 length])
  {
    v15 = @"?";
  }

  else
  {
    v15 = &stru_2854B2770;
  }

  v16 = [a1 query];
  v17 = [v16 length];
  if (v17)
  {
    v11 = [a1 query];
  }

  v18 = [v21 stringWithFormat:@"%@://%@%@%@%@%@", v10, v23, v12, v13, v15, v11];
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
  v6 = [a1 host];
  if (a4)
  {
    v7 = [a1 user];

    if (v7)
    {
      v8 = [a1 user];
      v9 = [v8 stringByAppendingFormat:@"@%@", v6];

      v6 = v9;
    }
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = MEMORY[0x277CBEBC0];
  v10 = [a1 scheme];
  v11 = [a1 port];
  v12 = &stru_2854B2770;
  if (v11)
  {
    v13 = MEMORY[0x277CCACA8];
    v22 = [a1 port];
    v14 = [v13 stringWithFormat:@":%@", v22];
  }

  else
  {
    v14 = &stru_2854B2770;
  }

  v15 = [a1 query];
  if ([v15 length])
  {
    v16 = @"?";
  }

  else
  {
    v16 = &stru_2854B2770;
  }

  v17 = [a1 query];
  v18 = [v17 length];
  if (v18)
  {
    v12 = [a1 query];
  }

  v19 = [v23 stringWithFormat:@"%@://%@%@%@%@%@", v10, v6, v14, v25, v16, v12];
  v20 = [v24 URLWithString:v19];

  if (v18)
  {
  }

  if (v11)
  {
  }

  return v20;
}

- (id)da_urlBySettingUsername:()DAExtensions
{
  v4 = a3;
  v5 = [a1 host];
  v6 = v5;
  v23 = v4;
  if (v4)
  {
    v7 = [v4 stringByAppendingFormat:@"@%@", v5];

    v6 = v7;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = MEMORY[0x277CBEBC0];
  v24 = [a1 scheme];
  v8 = [a1 port];
  v9 = &stru_2854B2770;
  if (v8)
  {
    v10 = MEMORY[0x277CCACA8];
    v20 = [a1 port];
    v11 = [v10 stringWithFormat:@":%@", v20];
  }

  else
  {
    v11 = &stru_2854B2770;
  }

  v12 = [a1 da_rawPath];
  v13 = [a1 query];
  if ([v13 length])
  {
    v14 = @"?";
  }

  else
  {
    v14 = &stru_2854B2770;
  }

  v15 = [a1 query];
  v16 = [v15 length];
  if (v16)
  {
    v9 = [a1 query];
  }

  v17 = [v21 stringWithFormat:@"%@://%@%@%@%@%@", v24, v6, v11, v12, v14, v9];
  v18 = [v22 URLWithString:v17];

  if (v16)
  {
  }

  if (v8)
  {
  }

  return v18;
}

- (id)da_urlByRemovingUsername
{
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x277CBEBC0];
  v18 = [a1 scheme];
  v2 = [a1 host];
  v3 = [a1 port];
  v4 = &stru_2854B2770;
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v15 = [a1 port];
    v6 = [v5 stringWithFormat:@":%@", v15];
  }

  else
  {
    v6 = &stru_2854B2770;
  }

  v7 = [a1 da_rawPath];
  v8 = [a1 query];
  if ([v8 length])
  {
    v9 = @"?";
  }

  else
  {
    v9 = &stru_2854B2770;
  }

  v10 = [a1 query];
  v11 = [v10 length];
  if (v11)
  {
    v4 = [a1 query];
  }

  v12 = [v16 stringWithFormat:@"%@://%@%@%@%@%@", v18, v2, v6, v7, v9, v4];
  v13 = [v17 URLWithString:v12];

  if (v11)
  {
  }

  if (v3)
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
    v4 = a1;
  }

  else
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = MEMORY[0x277CCACA8];
    v7 = [a1 scheme];
    v8 = [a1 host];
    v9 = [v6 stringWithFormat:@"%@://%@", v7, v8];
    v4 = [v5 URLWithString:v9];
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