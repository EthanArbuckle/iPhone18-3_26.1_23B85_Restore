@interface NSURL(DAVExtensions)
+ (id)URLWithDirtyString:()DAVExtensions;
+ (id)URLWithScheme:()DAVExtensions host:port:uri:;
+ (uint64_t)classicPortForScheme:()DAVExtensions;
- (CFURLRef)initWithDirtyString:()DAVExtensions;
- (__CFString)uri;
- (id)URLWithUsername:()DAVExtensions;
- (id)URLWithoutPassword;
- (id)URLWithoutUsername;
- (id)calDAV_leastInfoStringRepresentationRelativeToParentURL:()DAVExtensions;
- (uint64_t)absoluteURLisEqual:()DAVExtensions;
@end

@implementation NSURL(DAVExtensions)

+ (uint64_t)classicPortForScheme:()DAVExtensions
{
  v3 = a3;
  if ([v3 isEqualToString:DAVHTTPScheme])
  {
    v4 = 80;
  }

  else if ([v3 isEqualToString:DAVHTTPSScheme])
  {
    v4 = 443;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)URLWithScheme:()DAVExtensions host:port:uri:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (a5)
  {
    v13 = [objc_opt_class() classicPortForScheme:v9];
    if (v12)
    {
      if (v13 != a5)
      {
        v14 = MEMORY[0x277CBEBC0];
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u%@", v9, v10, a5, v12];
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if (v13 != a5)
    {
      v14 = MEMORY[0x277CBEBC0];
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%u/", v9, v10, a5, v19];
      goto LABEL_10;
    }
  }

  else if (v11)
  {
LABEL_6:
    v14 = MEMORY[0x277CBEBC0];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@%@", v9, v10, v12, v19];
    goto LABEL_10;
  }

  v14 = MEMORY[0x277CBEBC0];
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/", v9, v10, v18, v19];
  v15 = LABEL_10:;
  v16 = [v14 URLWithDirtyString:v15];

  return v16;
}

+ (id)URLWithDirtyString:()DAVExtensions
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithDirtyString:v4];

  return v5;
}

- (CFURLRef)initWithDirtyString:()DAVExtensions
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [v7 mutableCopy];
  [(__CFString *)v8 replaceOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v8 length]];
  v9 = CFURLCreateWithString(0, v8, 0);
  if (!v9)
  {
    v10 = [(__CFString *)v8 stringByXMLUnquoting];
    v9 = CFURLCreateWithString(0, v10, 0);
    if (!v9)
    {
      v11 = v10;
      v12 = [(__CFString *)v11 rangeOfString:@"://"];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 0;
      }

      else
      {
        v15 = v12 + v13;
        v16 = [(__CFString *)v11 substringFromIndex:v12 + v13];
        v17 = [v16 rangeOfString:@"/"];
        v19 = v18;
        v20 = [v16 rangeOfString:@"?"];
        if (v19)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v19)
          {
            v23 = v19 + v15 + v17;
          }

          else if (v21)
          {
            v23 = v21 + v15 + v20;
          }

          else
          {
            v23 = [(__CFString *)v11 length];
          }
        }

        else if (v17 < v20)
        {
          v23 = v19 + v15 + v17;
        }

        else
        {
          v23 = v21 + v15 + v20;
        }

        v14 = [(__CFString *)v11 substringWithRange:0, v23];
        v24 = [(__CFString *)v11 substringFromIndex:v23];

        v11 = v24;
      }

      if ([v14 length] || -[__CFString length](v11, "length"))
      {
        if (initWithDirtyString__onceToken != -1)
        {
          [NSURL(DAVExtensions) initWithDirtyString:];
        }

        v25 = [(__CFString *)v11 stringByAddingPercentEncodingWithAllowedCharacters:initWithDirtyString__allowedCharacterSet];
        if (v25)
        {
          if (v14)
          {
            v26 = [v14 stringByAppendingString:v25];
            v9 = CFURLCreateWithString(0, v26, 0);
          }

          else
          {
            v9 = CFURLCreateWithString(0, v25, 0);
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
    }
  }

  v27 = [a1 initWithString:&stru_285505238];

  return v9;
}

- (__CFString)uri
{
  v2 = [a1 query];
  v3 = CFURLCopyPath(a1);
  v4 = v3;
  if (v3)
  {
    if (v2)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [(__CFString *)v3 stringByURLQuoting];
      v7 = [v5 stringWithFormat:@"%@?%@", v6, v2];
    }

    else
    {
      v7 = v3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)URLWithUsername:()DAVExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:&stru_285505238])
  {
    v7 = [a1 scheme];
    v8 = [v7 stringByAppendingString:@"://"];

    v9 = [a1 absoluteString];
    v10 = [v9 mutableCopy];

    if ([v10 hasPrefix:v8])
    {
      v11 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
      v12 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v11];

      v13 = [v12 stringByAppendingString:@"@"];
      [v10 insertString:v13 atIndex:{objc_msgSend(v8, "length")}];

      v6 = [MEMORY[0x277CBEBC0] URLWithDirtyString:v10];
    }

    else
    {
      v6 = a1;
    }
  }

  else
  {
    v6 = [a1 URLWithoutUsername];
  }

  return v6;
}

- (id)URLWithoutUsername
{
  v2 = [a1 user];

  if (v2)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [a1 scheme];
    v5 = [a1 host];
    v6 = [a1 port];
    v7 = [v6 intValue];
    v8 = [a1 uri];
    v9 = [v3 URLWithScheme:v4 host:v5 port:v7 uri:v8];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)URLWithoutPassword
{
  v2 = [a1 user];
  if (v2)
  {
    v3 = [a1 URLWithoutUsername];
    v4 = [v3 URLWithUsername:v2];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (uint64_t)absoluteURLisEqual:()DAVExtensions
{
  v4 = a3;
  v5 = [a1 absoluteString];
  v6 = [v5 appendSlashIfNeeded];
  v7 = [v4 absoluteString];

  v8 = [v7 appendSlashIfNeeded];
  v9 = [v6 isEqualToString:v8];

  return v9;
}

- (id)calDAV_leastInfoStringRepresentationRelativeToParentURL:()DAVExtensions
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = [v4 scheme];
  v7 = [a1 host];
  v8 = [v4 host];
  v9 = [a1 user];
  v10 = [v4 user];
  v11 = [a1 port];
  if (v11)
  {
    v12 = [a1 port];
    v23 = [v12 intValue];
  }

  else
  {
    v23 = [MEMORY[0x277CBEBC0] classicPortForScheme:v5];
  }

  v13 = [v4 port];
  if (v13)
  {
    [v4 port];
    v15 = v14 = v5;
    v22 = [v15 intValue];

    v5 = v14;
  }

  else
  {
    v22 = [MEMORY[0x277CBEBC0] classicPortForScheme:v6];
  }

  v16 = v7;
  if ((!(v5 | v6) || v6 && [v5 isEqualToString:v6]) && (!(v7 | v8) || v8 && objc_msgSend(v7, "isEqualToString:", v8)))
  {
    if (v9 | v10)
    {
      if (v10)
      {
        if (![v9 isEqualToString:v10] || v23 != v22)
        {
LABEL_22:
          if ([v9 isEqualToString:v10])
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

LABEL_19:
        [a1 absoluteURL];
        v18 = v17 = v5;
        v19 = [v18 CDVRawPath];
LABEL_24:
        v20 = v19;

        v5 = v17;
        goto LABEL_26;
      }
    }

    else if (v23 == v22)
    {
      goto LABEL_19;
    }
  }

  if (!(v9 | v10))
  {
LABEL_23:
    [a1 URLWithoutUsername];
    v18 = v17 = v5;
    v19 = [v18 absoluteString];
    goto LABEL_24;
  }

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_25:
  v20 = [a1 absoluteString];
LABEL_26:

  return v20;
}

@end