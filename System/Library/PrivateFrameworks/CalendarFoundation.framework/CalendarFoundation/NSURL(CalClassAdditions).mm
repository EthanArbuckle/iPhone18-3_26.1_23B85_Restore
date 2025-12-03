@interface NSURL(CalClassAdditions)
+ (BOOL)_isValidURI:()CalClassAdditions;
+ (id)URLWithContactIdentifier:()CalClassAdditions;
+ (id)_URLForAddress:()CalClassAdditions scheme:noAddress:;
+ (id)davCompatibleFilenameForFilename:()CalClassAdditions;
- (BOOL)cal_caseInsensitiveHasScheme:()CalClassAdditions;
- (BOOL)isOnRemoteFileSystem;
- (CFURLRef)initWithCalDirtyString:()CalClassAdditions;
- (id)URLWithUsername:()CalClassAdditions withPassword:;
- (id)cal_emailAddressString;
- (id)cal_hostAfterGoogleRedirects;
- (id)cal_phoneNumberString;
- (id)cal_resourceSpecifierNoLeadingSlashes;
- (id)hostWithoutWWW;
- (id)pathWithoutTrailingRemovingSlash;
- (id)queryParameters;
- (id)serverURL;
- (id)unquotedPassword;
- (uint64_t)_hasDescription:()CalClassAdditions;
- (uint64_t)cal_isEquivalentToEmailAddress:()CalClassAdditions;
- (uint64_t)cal_isEquivalentToPhoneNumber:()CalClassAdditions;
- (uint64_t)compareToLocalString:()CalClassAdditions;
- (uint64_t)compareToLocalURL:()CalClassAdditions;
- (uint64_t)initWithScheme:()CalClassAdditions host:port:path:;
- (uint64_t)isEqualToURLIgnoringScheme:()CalClassAdditions;
@end

@implementation NSURL(CalClassAdditions)

- (BOOL)isOnRemoteFileSystem
{
  v8 = *MEMORY[0x1E69E9840];
  path = [self path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  memset(&v7, 0, 512);
  v3 = statfs([stringByDeletingLastPathComponent fileSystemRepresentation], &v7);
  v4 = (v3 | v7.f_flags & 0x1000) == 0;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
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

+ (id)URLWithContactIdentifier:()CalClassAdditions
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"addressbook://%@", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

+ (id)davCompatibleFilenameForFilename:()CalClassAdditions
{
  v3 = a3;
  string = [MEMORY[0x1E696AD60] string];
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

- (CFURLRef)initWithCalDirtyString:()CalClassAdditions
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v8 = [v7 mutableCopy];
  [(__CFString *)v8 replaceOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v8 length]];
  v9 = CFURLCreateWithString(0, v8, 0);
  if (!v9)
  {
    cDVStringByXMLUnquoting = [(__CFString *)v8 CDVStringByXMLUnquoting];
    v9 = CFURLCreateWithString(0, cDVStringByXMLUnquoting, 0);
    if (!v9)
    {
      v11 = cDVStringByXMLUnquoting;
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
        uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v26 = [(__CFString *)v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

        if (v26)
        {
          if (v14)
          {
            v27 = [v14 stringByAppendingString:v26];
            v9 = CFURLCreateWithString(0, v27, 0);
          }

          else
          {
            v9 = CFURLCreateWithString(0, v26, 0);
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

  v28 = [self initWithString:&stru_1F379FFA8];

  return v9;
}

- (id)queryParameters
{
  v21 = *MEMORY[0x1E69E9840];
  query = [self query];
  v2 = [query componentsSeparatedByString:@"&"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)URLWithUsername:()CalClassAdditions withPassword:
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 isEqualToString:&stru_1F379FFA8])
  {
    if (v7)
    {
      scheme = [self scheme];
      v13 = [scheme stringByAppendingString:@"://"];

      v14 = [self CDVURLWithUser:0];
      absoluteString = [v14 absoluteString];
      v16 = [absoluteString mutableCopy];

      if ([v16 hasPrefix:v13])
      {
        uRLUserAllowedCharacterSet = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
        v18 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];

        uRLPasswordAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
        v20 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:uRLPasswordAllowedCharacterSet];

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@@", v18, v20];
        [v16 insertString:v21 atIndex:{objc_msgSend(v13, "length")}];

        selfCopy = [objc_alloc(MEMORY[0x1E695DFF8]) initWithCalDirtyString:v16];
      }

      else
      {
        selfCopy = self;
      }

      goto LABEL_5;
    }

    selfCopy3 = self;
    v9 = v6;
  }

  else
  {
    selfCopy3 = self;
    v9 = 0;
  }

  selfCopy = [selfCopy3 CDVURLWithUser:v9];
LABEL_5:

  return selfCopy;
}

- (uint64_t)initWithScheme:()CalClassAdditions host:port:path:
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (!a5)
  {
    v20 = objc_opt_new();
    [v20 setScheme:v10];
    [v20 setHost:v11];
    [v20 setPath:v13];
    v18 = [v20 URL];
    stringByAddingPercentEscapes = 0;
    stringByAddingPercentEscapes2 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  if (([v12 isAbsolutePath] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"path %@ is not absolute.", v13}];
  }

  stringByAddingPercentEscapes = [v10 stringByAddingPercentEscapes];
  stringByAddingPercentEscapes2 = [v11 stringByAddingPercentEscapes];
  standardizedURLPath = [v13 standardizedURLPath];
  v17 = standardizedURLPath;
  v18 = 0;
  if (stringByAddingPercentEscapes && stringByAddingPercentEscapes2 && standardizedURLPath)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@:%i%@", stringByAddingPercentEscapes, stringByAddingPercentEscapes2, a5, standardizedURLPath];
    v20 = [self initWithString:v19];

    self = v20;
    v18 = v20;
LABEL_9:
  }

  return v18;
}

- (id)serverURL
{
  port = [self port];

  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
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

- (id)unquotedPassword
{
  password = [self password];
  stringByRemovingPercentEncoding = [password stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (uint64_t)compareToLocalString:()CalClassAdditions
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:?];
  v3 = [self compareToLocalURL:v2];

  return v3;
}

- (uint64_t)compareToLocalURL:()CalClassAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = CFURLCopyPath(self);
    v6 = CFURLCopyPath(v4);
    v7 = v6;
    if (v6)
    {
      v8 = [(__CFString *)v6 isEqualToString:v5]^ 1;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = v5 != 0;
      if (!v5)
      {
LABEL_5:
        if (v7)
        {
          CFRelease(v7);
        }

        if (v8)
        {
          goto LABEL_8;
        }

        port = [(__CFURL *)v4 port];
        port2 = [(__CFURL *)self port];
        v12 = port2;
        if (port)
        {
          if (port2 && ([port isEqualToNumber:port2] & 1) != 0)
          {
LABEL_12:
            absoluteString = [(__CFURL *)v4 absoluteString];
            removeSlashIfNeeded = [absoluteString removeSlashIfNeeded];

            absoluteString2 = [(__CFURL *)self absoluteString];
            removeSlashIfNeeded2 = [absoluteString2 removeSlashIfNeeded];

            if (removeSlashIfNeeded && removeSlashIfNeeded2 && ![removeSlashIfNeeded2 caseInsensitiveCompare:removeSlashIfNeeded])
            {
              v9 = 1;
              goto LABEL_33;
            }

            host = [(__CFURL *)v4 host];
            host2 = [(__CFURL *)self host];
            if ([host isEqualToString:host2])
            {
              goto LABEL_16;
            }

            v19 = [host length];
            v20 = [host2 length];
            if (v19 >= v20)
            {
              v21 = host2;
            }

            else
            {
              v21 = host;
            }

            if (v19 >= v20)
            {
              v22 = host;
            }

            else
            {
              v22 = host2;
            }

            v23 = v21;
            v24 = v22;
            if ([v23 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v25 = [v24 hasPrefix:v23];

              if (v25)
              {
LABEL_16:
                v9 = 1;
LABEL_32:

LABEL_33:
                goto LABEL_34;
              }
            }

            else
            {
            }

            v9 = 0;
            goto LABEL_32;
          }
        }

        else if (!port2)
        {
          goto LABEL_12;
        }

        v9 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    CFRelease(v5);
    goto LABEL_5;
  }

LABEL_8:
  v9 = 0;
LABEL_35:

  return v9;
}

- (uint64_t)isEqualToURLIgnoringScheme:()CalClassAdditions
{
  v4 = a3;
  v5 = [self isEqual:v4];
  if (v5)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v7 = __55__NSURL_CalClassAdditions__isEqualToURLIgnoringScheme___block_invoke(v5, self);
    v8 = __55__NSURL_CalClassAdditions__isEqualToURLIgnoringScheme___block_invoke(v7, v4);
    if ([v7 length] && objc_msgSend(v8, "length"))
    {
      v6 = [v7 isEqualToString:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hostWithoutWWW
{
  host = [self host];
  v2 = [@"//" length];
  v3 = [@"www." length];
  if ([host hasPrefix:@"//"])
  {
    v4 = [host stringByReplacingCharactersInRange:0 withString:{v2, &stru_1F379FFA8}];

    host = v4;
  }

  lowercaseString = [host lowercaseString];
  v6 = [lowercaseString hasPrefix:@"www."];

  if (v6)
  {
    v7 = [host stringByReplacingCharactersInRange:0 withString:{v3, &stru_1F379FFA8}];

    host = v7;
  }

  return host;
}

- (BOOL)cal_caseInsensitiveHasScheme:()CalClassAdditions
{
  v4 = a3;
  scheme = [self scheme];
  v6 = scheme;
  if (scheme)
  {
    v7 = [scheme caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cal_resourceSpecifierNoLeadingSlashes
{
  resourceSpecifier = [self resourceSpecifier];
  if ([resourceSpecifier hasPrefix:@"//"])
  {
    v2 = resourceSpecifier;
    v3 = 2;
LABEL_5:
    v4 = [v2 substringFromIndex:v3];
    goto LABEL_7;
  }

  if ([resourceSpecifier hasPrefix:@"/"])
  {
    v2 = resourceSpecifier;
    v3 = 1;
    goto LABEL_5;
  }

  v4 = resourceSpecifier;
LABEL_7:
  v5 = v4;

  return v5;
}

- (id)cal_emailAddressString
{
  if ([self cal_hasSchemeMailto])
  {
    cal_resourceSpecifierNoLeadingSlashes = [self cal_resourceSpecifierNoLeadingSlashes];
  }

  else
  {
    cal_resourceSpecifierNoLeadingSlashes = 0;
  }

  return cal_resourceSpecifierNoLeadingSlashes;
}

- (id)cal_phoneNumberString
{
  if ([self cal_hasSchemeTel])
  {
    cal_resourceSpecifierNoLeadingSlashes = [self cal_resourceSpecifierNoLeadingSlashes];
  }

  else
  {
    cal_resourceSpecifierNoLeadingSlashes = 0;
  }

  return cal_resourceSpecifierNoLeadingSlashes;
}

- (uint64_t)cal_isEquivalentToEmailAddress:()CalClassAdditions
{
  v4 = a3;
  if (v4 && [self cal_hasSchemeMailto])
  {
    stringRemovingMailto = [v4 stringRemovingMailto];

    cal_resourceSpecifierNoLeadingSlashes = [self cal_resourceSpecifierNoLeadingSlashes];
    v7 = [cal_resourceSpecifierNoLeadingSlashes isEqualToString:stringRemovingMailto];

    v4 = stringRemovingMailto;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)cal_isEquivalentToPhoneNumber:()CalClassAdditions
{
  v4 = a3;
  if (v4 && [self cal_hasSchemeTel])
  {
    stringRemovingTel = [v4 stringRemovingTel];

    cal_resourceSpecifierNoLeadingSlashes = [self cal_resourceSpecifierNoLeadingSlashes];
    v7 = [cal_resourceSpecifierNoLeadingSlashes isEqualToString:stringRemovingTel];

    v4 = stringRemovingTel;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_URLForAddress:()CalClassAdditions scheme:noAddress:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    if (([self _isValidURI:v8] & 1) == 0)
    {
      if ([v9 isEqualToString:@"mailto"] && (objc_msgSend(v8, "rangeOfString:", @"@"), v11) || objc_msgSend(v9, "isEqualToString:", @"tel") && objc_msgSend(v8, "cal_isPhoneNumber"))
      {
        trimWhiteSpace = [v8 trimWhiteSpace];
        v13 = MEMORY[0x1E696AEC0];
        uRLFragmentAllowedCharacterSet = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        v15 = [trimWhiteSpace stringByAddingPercentEncodingWithAllowedCharacters:uRLFragmentAllowedCharacterSet];
        v16 = [v13 stringWithFormat:@"%@:%@", v9, v15];

        v8 = trimWhiteSpace;
      }

      else
      {
        v16 = v10;
      }

      v8 = v16;
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)_isValidURI:()CalClassAdditions
{
  v3 = a3;
  if ([v3 hasPrefix:@"/"])
  {
    v4 = 1;
  }

  else
  {
    [v3 rangeOfString:@":"];
    v4 = v5 != 0;
  }

  return v4;
}

- (uint64_t)_hasDescription:()CalClassAdditions
{
  v4 = a3;
  v5 = [self description];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v7 = [v5 isEqualToString:v4];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 description];
    v8 = [v5 isEqualToString:v9];
  }

  return v8;
}

- (id)cal_hostAfterGoogleRedirects
{
  host = [self host];
  if (![host hasSuffixCaseInsensitive:@".google.com"])
  {
    goto LABEL_9;
  }

  query = [self query];
  if (![query hasPrefix:@"q="])
  {
    goto LABEL_8;
  }

  path = [self path];
  v5 = [path isEqualToString:@"/url"];

  if (v5)
  {
    query2 = [self query];
    query = [query2 substringFromIndex:{objc_msgSend(@"q=", "length")}];

    v7 = [MEMORY[0x1E695DFF8] URLWithString:query];
    v8 = v7;
    if (v7)
    {
      cal_hostAfterGoogleRedirects = [v7 cal_hostAfterGoogleRedirects];
      if (cal_hostAfterGoogleRedirects)
      {
        v10 = cal_hostAfterGoogleRedirects;

        goto LABEL_10;
      }
    }

LABEL_8:
  }

LABEL_9:
  v10 = host;
LABEL_10:

  return v10;
}

@end