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
  query = [self query];
  v3 = CFURLCopyPath(self);
  v4 = v3;
  if (v3)
  {
    if (query)
    {
      v5 = MEMORY[0x277CCACA8];
      stringByURLQuoting = [(__CFString *)v3 stringByURLQuoting];
      v7 = [v5 stringWithFormat:@"%@?%@", stringByURLQuoting, query];
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
  user = [self user];

  if (user)
  {
    v3 = MEMORY[0x277CBEBC0];
    scheme = [self scheme];
    host = [self host];
    port = [self port];
    intValue = [port intValue];
    v8 = [self uri];
    selfCopy = [v3 da_URLWithScheme:scheme host:host port:intValue uri:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)URLByRemovingLastPathComponent
{
  scheme = [self scheme];
  user = [self user];
  password = [self password];
  host = [self host];
  path = [self path];
  if ([path isEqualToString:@"/"])
  {
    stringByDeletingLastPathComponent = &stru_2854B2770;
  }

  else
  {
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  }

  v8 = [MEMORY[0x277CBEBC0] da_URLWithScheme:scheme host:host port:0 uri:stringByDeletingLastPathComponent];
  v9 = [v8 URLWithUsername:user withPassword:password];

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
      scheme = [self scheme];
      v12 = [scheme stringByAppendingString:@"://"];

      uRLWithoutUsername = [self URLWithoutUsername];
      absoluteString = [uRLWithoutUsername absoluteString];
      v15 = [absoluteString mutableCopy];

      if ([v15 hasPrefix:v12])
      {
        v16 = CFURLCreateStringByAddingPercentEscapes(0, v6, &stru_2854B2770, @"?@/|:", 0x8000100u);
        v17 = CFURLCreateStringByAddingPercentEscapes(0, v7, &stru_2854B2770, @"?@/|:", 0x8000100u);
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@@", v16, v17];
        [v15 insertString:v18 atIndex:{objc_msgSend(v12, "length")}];

        selfCopy = [MEMORY[0x277CBEBC0] da_URLWithDirtyString:v15];
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

- (id)URLWithUsername:()DAKeychainAddition
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![(__CFString *)v4 isEqualToString:&stru_2854B2770])
  {
    scheme = [self scheme];
    v8 = [scheme stringByAppendingString:@"://"];

    absoluteString = [self absoluteString];
    v10 = [absoluteString mutableCopy];

    if ([v10 hasPrefix:v8])
    {
      v11 = CFURLCreateStringByAddingPercentEscapes(0, v5, &stru_2854B2770, @"?@/|:", 0x8000100u);
      v12 = [(__CFString *)v11 stringByAppendingString:@"@"];
      [v10 insertString:v12 atIndex:{objc_msgSend(v8, "length")}];

      selfCopy = [MEMORY[0x277CBEBC0] da_URLWithDirtyString:v10];
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = [self URLWithoutUsername];
  }

  return selfCopy;
}

@end