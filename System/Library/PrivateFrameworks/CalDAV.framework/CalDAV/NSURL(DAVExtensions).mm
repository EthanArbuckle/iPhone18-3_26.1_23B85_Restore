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
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v8 = [v7 mutableCopy];
  [(__CFString *)v8 replaceOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v8 length]];
  v9 = CFURLCreateWithString(0, v8, 0);
  if (!v9)
  {
    stringByXMLUnquoting = [(__CFString *)v8 stringByXMLUnquoting];
    v9 = CFURLCreateWithString(0, stringByXMLUnquoting, 0);
    if (!v9)
    {
      v11 = stringByXMLUnquoting;
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

  v27 = [self initWithString:&stru_285505238];

  return v9;
}

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

- (id)URLWithUsername:()DAVExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:&stru_285505238])
  {
    scheme = [self scheme];
    v8 = [scheme stringByAppendingString:@"://"];

    absoluteString = [self absoluteString];
    v10 = [absoluteString mutableCopy];

    if ([v10 hasPrefix:v8])
    {
      uRLUserAllowedCharacterSet = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
      v12 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];

      v13 = [v12 stringByAppendingString:@"@"];
      [v10 insertString:v13 atIndex:{objc_msgSend(v8, "length")}];

      selfCopy = [MEMORY[0x277CBEBC0] URLWithDirtyString:v10];
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
    selfCopy = [v3 URLWithScheme:scheme host:host port:intValue uri:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)URLWithoutPassword
{
  user = [self user];
  if (user)
  {
    uRLWithoutUsername = [self URLWithoutUsername];
    selfCopy = [uRLWithoutUsername URLWithUsername:user];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)absoluteURLisEqual:()DAVExtensions
{
  v4 = a3;
  absoluteString = [self absoluteString];
  appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];
  absoluteString2 = [v4 absoluteString];

  appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];
  v9 = [appendSlashIfNeeded isEqualToString:appendSlashIfNeeded2];

  return v9;
}

- (id)calDAV_leastInfoStringRepresentationRelativeToParentURL:()DAVExtensions
{
  v4 = a3;
  scheme = [self scheme];
  scheme2 = [v4 scheme];
  host = [self host];
  host2 = [v4 host];
  user = [self user];
  user2 = [v4 user];
  port = [self port];
  if (port)
  {
    port2 = [self port];
    intValue = [port2 intValue];
  }

  else
  {
    intValue = [MEMORY[0x277CBEBC0] classicPortForScheme:scheme];
  }

  port3 = [v4 port];
  if (port3)
  {
    [v4 port];
    v15 = v14 = scheme;
    intValue2 = [v15 intValue];

    scheme = v14;
  }

  else
  {
    intValue2 = [MEMORY[0x277CBEBC0] classicPortForScheme:scheme2];
  }

  v16 = host;
  if ((!(scheme | scheme2) || scheme2 && [scheme isEqualToString:scheme2]) && (!(host | host2) || host2 && objc_msgSend(host, "isEqualToString:", host2)))
  {
    if (user | user2)
    {
      if (user2)
      {
        if (![user isEqualToString:user2] || intValue != intValue2)
        {
LABEL_22:
          if ([user isEqualToString:user2])
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

LABEL_19:
        [self absoluteURL];
        v18 = v17 = scheme;
        cDVRawPath = [v18 CDVRawPath];
LABEL_24:
        absoluteString = cDVRawPath;

        scheme = v17;
        goto LABEL_26;
      }
    }

    else if (intValue == intValue2)
    {
      goto LABEL_19;
    }
  }

  if (!(user | user2))
  {
LABEL_23:
    [self URLWithoutUsername];
    v18 = v17 = scheme;
    cDVRawPath = [v18 absoluteString];
    goto LABEL_24;
  }

  if (user2)
  {
    goto LABEL_22;
  }

LABEL_25:
  absoluteString = [self absoluteString];
LABEL_26:

  return absoluteString;
}

@end