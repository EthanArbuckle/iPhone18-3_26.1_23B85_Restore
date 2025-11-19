@interface NSURL(DAKeychainAddition)
- (__CFString)uri;
- (id)URLByRemovingLastPathComponent;
- (id)URLWithUsername:()DAKeychainAddition;
- (id)URLWithUsername:()DAKeychainAddition withPassword:;
- (id)URLWithoutUsername;
@end

@implementation NSURL(DAKeychainAddition)

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
    v9 = [v3 da_URLWithScheme:v4 host:v5 port:v7 uri:v8];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)URLByRemovingLastPathComponent
{
  v2 = [a1 scheme];
  v3 = [a1 user];
  v4 = [a1 password];
  v5 = [a1 host];
  v6 = [a1 path];
  if ([v6 isEqualToString:@"/"])
  {
    v7 = &stru_2854B2770;
  }

  else
  {
    v7 = [v6 stringByDeletingLastPathComponent];
  }

  v8 = [MEMORY[0x277CBEBC0] da_URLWithScheme:v2 host:v5 port:0 uri:v7];
  v9 = [v8 URLWithUsername:v3 withPassword:v4];

  return v9;
}

- (id)URLWithUsername:()DAKeychainAddition withPassword:
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![(__CFString *)v6 isEqualToString:&stru_2854B2770])
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
        v16 = CFURLCreateStringByAddingPercentEscapes(0, v6, &stru_2854B2770, @"?@/|:", 0x8000100u);
        v17 = CFURLCreateStringByAddingPercentEscapes(0, v7, &stru_2854B2770, @"?@/|:", 0x8000100u);
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@", v16, v17];
        [v15 insertString:v18 atIndex:{objc_msgSend(v12, "length")}];

        v9 = [MEMORY[0x277CBEBC0] da_URLWithDirtyString:v15];
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

- (id)URLWithUsername:()DAKeychainAddition
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![(__CFString *)v4 isEqualToString:&stru_2854B2770])
  {
    v7 = [a1 scheme];
    v8 = [v7 stringByAppendingString:@"://"];

    v9 = [a1 absoluteString];
    v10 = [v9 mutableCopy];

    if ([v10 hasPrefix:v8])
    {
      v11 = CFURLCreateStringByAddingPercentEscapes(0, v5, &stru_2854B2770, @"?@/|:", 0x8000100u);
      v12 = [(__CFString *)v11 stringByAppendingString:@"@"];
      [v10 insertString:v12 atIndex:{objc_msgSend(v8, "length")}];

      v6 = [MEMORY[0x277CBEBC0] da_URLWithDirtyString:v10];
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

@end