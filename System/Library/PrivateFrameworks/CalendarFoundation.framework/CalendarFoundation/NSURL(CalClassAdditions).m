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
  v1 = [a1 path];
  v2 = [v1 stringByDeletingLastPathComponent];

  memset(&v7, 0, 512);
  v3 = statfs([v2 fileSystemRepresentation], &v7);
  v4 = (v3 | v7.f_flags & 0x1000) == 0;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)pathWithoutTrailingRemovingSlash
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
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 UTF8String];
  v6 = *v5;
  if (*v5)
  {
    v7 = v5 + 1;
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

      [v4 appendFormat:v8, v6];
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  return v4;
}

- (CFURLRef)initWithCalDirtyString:()CalClassAdditions
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [v7 mutableCopy];
  [(__CFString *)v8 replaceOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v8 length]];
  v9 = CFURLCreateWithString(0, v8, 0);
  if (!v9)
  {
    v10 = [(__CFString *)v8 CDVStringByXMLUnquoting];
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
        v25 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v26 = [(__CFString *)v11 stringByAddingPercentEncodingWithAllowedCharacters:v25];

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

  v28 = [a1 initWithString:&stru_1F379FFA8];

  return v9;
}

- (id)queryParameters
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = [a1 query];
  v2 = [v1 componentsSeparatedByString:@"&"];

  v3 = [MEMORY[0x1E695DF90] dictionary];
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
              [v3 setObject:v12 forKey:v11];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)URLWithUsername:()CalClassAdditions withPassword:
{
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 isEqualToString:&stru_1F379FFA8])
  {
    if (v7)
    {
      v12 = [a1 scheme];
      v13 = [v12 stringByAppendingString:@"://"];

      v14 = [a1 CDVURLWithUser:0];
      v15 = [v14 absoluteString];
      v16 = [v15 mutableCopy];

      if ([v16 hasPrefix:v13])
      {
        v17 = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
        v18 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v17];

        v19 = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
        v20 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v19];

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@@", v18, v20];
        [v16 insertString:v21 atIndex:{objc_msgSend(v13, "length")}];

        v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithCalDirtyString:v16];
      }

      else
      {
        v10 = a1;
      }

      goto LABEL_5;
    }

    v8 = a1;
    v9 = v6;
  }

  else
  {
    v8 = a1;
    v9 = 0;
  }

  v10 = [v8 CDVURLWithUser:v9];
LABEL_5:

  return v10;
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
    v14 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  if (([v12 isAbsolutePath] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"path %@ is not absolute.", v13}];
  }

  v14 = [v10 stringByAddingPercentEscapes];
  v15 = [v11 stringByAddingPercentEscapes];
  v16 = [v13 standardizedURLPath];
  v17 = v16;
  v18 = 0;
  if (v14 && v15 && v16)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@:%i%@", v14, v15, a5, v16];
    v20 = [a1 initWithString:v19];

    a1 = v20;
    v18 = v20;
LABEL_9:
  }

  return v18;
}

- (id)serverURL
{
  v2 = [a1 port];

  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 scheme];
  v6 = [a1 host];
  v7 = v6;
  if (v2)
  {
    v8 = [a1 port];
    v9 = [v4 stringWithFormat:@"%@://%@:%@/", v5, v7, v8];
    v10 = [v3 URLWithString:v9];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@://%@/", v5, v6];
    v10 = [v3 URLWithString:v8];
  }

  return v10;
}

- (id)unquotedPassword
{
  v1 = [a1 password];
  v2 = [v1 stringByRemovingPercentEncoding];

  return v2;
}

- (uint64_t)compareToLocalString:()CalClassAdditions
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:?];
  v3 = [a1 compareToLocalURL:v2];

  return v3;
}

- (uint64_t)compareToLocalURL:()CalClassAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = CFURLCopyPath(a1);
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

        v10 = [(__CFURL *)v4 port];
        v11 = [(__CFURL *)a1 port];
        v12 = v11;
        if (v10)
        {
          if (v11 && ([v10 isEqualToNumber:v11] & 1) != 0)
          {
LABEL_12:
            v13 = [(__CFURL *)v4 absoluteString];
            v14 = [v13 removeSlashIfNeeded];

            v15 = [(__CFURL *)a1 absoluteString];
            v16 = [v15 removeSlashIfNeeded];

            if (v14 && v16 && ![v16 caseInsensitiveCompare:v14])
            {
              v9 = 1;
              goto LABEL_33;
            }

            v17 = [(__CFURL *)v4 host];
            v18 = [(__CFURL *)a1 host];
            if ([v17 isEqualToString:v18])
            {
              goto LABEL_16;
            }

            v19 = [v17 length];
            v20 = [v18 length];
            if (v19 >= v20)
            {
              v21 = v18;
            }

            else
            {
              v21 = v17;
            }

            if (v19 >= v20)
            {
              v22 = v17;
            }

            else
            {
              v22 = v18;
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

        else if (!v11)
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
  v5 = [a1 isEqual:v4];
  if (v5)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v7 = __55__NSURL_CalClassAdditions__isEqualToURLIgnoringScheme___block_invoke(v5, a1);
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
  v1 = [a1 host];
  v2 = [@"//" length];
  v3 = [@"www." length];
  if ([v1 hasPrefix:@"//"])
  {
    v4 = [v1 stringByReplacingCharactersInRange:0 withString:{v2, &stru_1F379FFA8}];

    v1 = v4;
  }

  v5 = [v1 lowercaseString];
  v6 = [v5 hasPrefix:@"www."];

  if (v6)
  {
    v7 = [v1 stringByReplacingCharactersInRange:0 withString:{v3, &stru_1F379FFA8}];

    v1 = v7;
  }

  return v1;
}

- (BOOL)cal_caseInsensitiveHasScheme:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cal_resourceSpecifierNoLeadingSlashes
{
  v1 = [a1 resourceSpecifier];
  if ([v1 hasPrefix:@"//"])
  {
    v2 = v1;
    v3 = 2;
LABEL_5:
    v4 = [v2 substringFromIndex:v3];
    goto LABEL_7;
  }

  if ([v1 hasPrefix:@"/"])
  {
    v2 = v1;
    v3 = 1;
    goto LABEL_5;
  }

  v4 = v1;
LABEL_7:
  v5 = v4;

  return v5;
}

- (id)cal_emailAddressString
{
  if ([a1 cal_hasSchemeMailto])
  {
    v2 = [a1 cal_resourceSpecifierNoLeadingSlashes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cal_phoneNumberString
{
  if ([a1 cal_hasSchemeTel])
  {
    v2 = [a1 cal_resourceSpecifierNoLeadingSlashes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)cal_isEquivalentToEmailAddress:()CalClassAdditions
{
  v4 = a3;
  if (v4 && [a1 cal_hasSchemeMailto])
  {
    v5 = [v4 stringRemovingMailto];

    v6 = [a1 cal_resourceSpecifierNoLeadingSlashes];
    v7 = [v6 isEqualToString:v5];

    v4 = v5;
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
  if (v4 && [a1 cal_hasSchemeTel])
  {
    v5 = [v4 stringRemovingTel];

    v6 = [a1 cal_resourceSpecifierNoLeadingSlashes];
    v7 = [v6 isEqualToString:v5];

    v4 = v5;
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
    if (([a1 _isValidURI:v8] & 1) == 0)
    {
      if ([v9 isEqualToString:@"mailto"] && (objc_msgSend(v8, "rangeOfString:", @"@"), v11) || objc_msgSend(v9, "isEqualToString:", @"tel") && objc_msgSend(v8, "cal_isPhoneNumber"))
      {
        v12 = [v8 trimWhiteSpace];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
        v15 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v14];
        v16 = [v13 stringWithFormat:@"%@:%@", v9, v15];

        v8 = v12;
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
  v5 = [a1 description];
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
  v2 = [a1 host];
  if (![v2 hasSuffixCaseInsensitive:@".google.com"])
  {
    goto LABEL_9;
  }

  v3 = [a1 query];
  if (![v3 hasPrefix:@"q="])
  {
    goto LABEL_8;
  }

  v4 = [a1 path];
  v5 = [v4 isEqualToString:@"/url"];

  if (v5)
  {
    v6 = [a1 query];
    v3 = [v6 substringFromIndex:{objc_msgSend(@"q=", "length")}];

    v7 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 cal_hostAfterGoogleRedirects];
      if (v9)
      {
        v10 = v9;

        goto LABEL_10;
      }
    }

LABEL_8:
  }

LABEL_9:
  v10 = v2;
LABEL_10:

  return v10;
}

@end