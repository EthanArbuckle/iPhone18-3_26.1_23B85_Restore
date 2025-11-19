@interface NSString(CalClassAdditions)
+ (id)CalAutoCommentPrefix;
+ (id)ellipsisString;
+ (id)stringWithContentsOfFile:()CalClassAdditions usingEncoding:;
+ (id)stringWithFileSystemRepresentation:()CalClassAdditions;
- (BOOL)hasSuffixCaseInsensitive:()CalClassAdditions;
- (BOOL)isAddressBookURL;
- (BOOL)isMailURL;
- (BOOL)resemblesEmailAddress;
- (__CFString)CalSafeFilename;
- (__CFString)CalStringByRemovingAutoComment;
- (__CFString)stringByURLUnquoting;
- (id)CalAddressComment;
- (id)CalSafeHFSPathComponentName;
- (id)CalStringWithOnlyAutoComment;
- (id)CalUncommentedAddress;
- (id)appendSlashIfNeeded;
- (id)calDataDetectedURL;
- (id)cal_stringWithNormalizedSpacesForUnitTesting;
- (id)hostFromEmail;
- (id)phoneURL;
- (id)quote;
- (id)radarLink;
- (id)removeSlashIfNeeded;
- (id)searchAndReplaceString:()CalClassAdditions withString:;
- (id)stringAddingMailto;
- (id)stringAddingTel;
- (id)stringByRemovingLastPathComponent;
- (id)stringByRemovingPrefixCaseInsensitive:()CalClassAdditions;
- (id)stringByReplacingCharactersInSet:()CalClassAdditions withString:;
- (id)stringByTrimmingWhitespaceAndRemovingNewlines;
- (id)stringByURLQuotingPaths;
- (id)stringRemovingMailto;
- (id)stringRemovingTel;
- (id)trimChar:()CalClassAdditions;
- (id)trimCommas;
- (id)trimFinalChar:()CalClassAdditions;
- (id)trimFinalComma;
- (id)trimFirstChar:()CalClassAdditions;
- (id)trimFirstComma;
- (id)trimWhiteSpace;
- (id)unquote;
- (id)userFromEmail;
- (uint64_t)CalHasAutoCommentPrefix;
- (uint64_t)cal_isPhoneNumber;
- (uint64_t)isEqualAsURL:()CalClassAdditions;
- (uint64_t)isPathToAppleScript;
- (uint64_t)isPathToBackupFile;
- (uint64_t)isPathToICalBookmark;
- (uint64_t)isPathToICalData;
- (uint64_t)isPathToVCalData;
- (uint64_t)stringByEncodingSlashes;
- (uint64_t)stringByURLEscapingAllReservedCharacters;
- (uint64_t)stringByURLQuoting;
- (void)cal_enumerateCharactersUsingBlock:()CalClassAdditions;
@end

@implementation NSString(CalClassAdditions)

- (id)trimWhiteSpace
{
  v1 = [a1 mutableCopy];
  CFStringTrimWhitespace(v1);
  v2 = [(__CFString *)v1 copy];

  return v2;
}

- (id)quote
{
  if ([a1 rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD60] stringWithString:a1];
    [v2 replaceOccurrencesOfString:@" withString:@"'" options:2 range:{0, objc_msgSend(v2, "length"")}];
  }

  return v2;
}

- (id)unquote
{
  if ([a1 rangeOfString:@"\\""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD60] stringWithString:a1];
    [v2 replaceOccurrencesOfString:@"\ withString:@" options:2 range:{0, objc_msgSend(v2, "length")}];
  }

  return v2;
}

- (id)stringRemovingMailto
{
  v1 = a1;
  if ([v1 hasMailto])
  {
    v2 = [v1 substringFromIndex:7];

    v1 = v2;
  }

  return v1;
}

- (id)appendSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

- (__CFString)stringByURLUnquoting
{
  v2 = CFURLCreateStringByReplacingPercentEscapes(0, originalString, &stru_1F379FFA8);
  if (!v2)
  {
    v2 = originalString;
  }

  return v2;
}

- (id)stringByTrimmingWhitespaceAndRemovingNewlines
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [v3 stringByReplacingCharactersInSet:v4 withString:@" "];

  return v5;
}

- (BOOL)isMailURL
{
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES[c] 'message:.*'"];
  v3 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
  v4 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  if ([v2 evaluateWithObject:a1] && (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v4), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES[c] 'mailitem:[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}?.*'"];

    if ([v7 evaluateWithObject:a1])
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      v6 = v8 != 0;
    }

    else
    {
      v6 = 0;
    }

    v2 = v7;
  }

  return v6;
}

- (BOOL)isAddressBookURL
{
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES[c] 'addressbook://[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}:ABPerson'"];
  if ([v2 evaluateWithObject:a1] && (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", a1), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES[c] 'addressbook://[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}'"];

    if ([v5 evaluateWithObject:a1])
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:a1];
      v4 = v6 != 0;
    }

    else
    {
      v4 = 0;
    }

    v2 = v5;
  }

  return v4;
}

- (BOOL)resemblesEmailAddress
{
  result = 0;
  if ([a1 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [a1 rangeOfString:@"@"];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL && [a1 rangeOfString:@"." options:0 range:{v2 + v3, objc_msgSend(a1, "length") - (v2 + v3)}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return result;
}

- (id)removeSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (uint64_t)stringByEncodingSlashes
{
  if (stringByEncodingSlashes_onceToken != -1)
  {
    [NSString(CalClassAdditions) stringByEncodingSlashes];
  }

  v2 = stringByEncodingSlashes_allowedCharacters;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (id)radarLink
{
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES[c] '<rdar:\\/\\/problem\\/\\\\d{8}\\>.*'"];
  if ([v2 evaluateWithObject:a1])
  {
    v3 = [a1 substringToIndex:{objc_msgSend(a1, "rangeOfString:", @">"}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)stringByURLQuoting
{
  if (stringByURLQuoting_onceToken != -1)
  {
    [NSString(CalClassAdditions) stringByURLQuoting];
  }

  v2 = stringByURLQuoting_allowedCharacters;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (id)stringByURLQuotingPaths
{
  v2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

- (uint64_t)stringByURLEscapingAllReservedCharacters
{
  if (stringByURLEscapingAllReservedCharacters_onceToken != -1)
  {
    [NSString(CalClassAdditions) stringByURLEscapingAllReservedCharacters];
  }

  v2 = stringByURLEscapingAllReservedCharacters_allowedCharacters;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (id)stringByRemovingLastPathComponent
{
  v1 = [a1 stringByDeletingLastPathComponent];
  v2 = [v1 stringByAppendingString:@"/"];

  return v2;
}

- (BOOL)hasSuffixCaseInsensitive:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 length];
  v6 = v5 - [v4 length];
  v7 = v6 >= 0 && [a1 compare:v4 options:1 range:v6 locale:{objc_msgSend(v4, "length"), 0}] == 0;

  return v7;
}

- (id)userFromEmail
{
  if ([a1 resemblesEmailAddress])
  {
    v2 = [a1 componentsSeparatedByString:@"@"];
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hostFromEmail
{
  if ([a1 resemblesEmailAddress])
  {
    v2 = [a1 componentsSeparatedByString:@"@"];
    v3 = [v2 lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)stringAddingMailto
{
  if ([a1 hasMailto])
  {
    v2 = a1;
  }

  else
  {
    v2 = [@"mailto:" stringByAppendingString:a1];
  }

  return v2;
}

- (id)stringAddingTel
{
  if ([a1 hasTel])
  {
    v2 = a1;
  }

  else
  {
    v2 = [@"tel:" stringByAppendingString:a1];
  }

  return v2;
}

- (id)stringRemovingTel
{
  v1 = a1;
  if ([v1 hasTel])
  {
    v2 = [v1 substringFromIndex:4];

    v1 = v2;
  }

  return v1;
}

- (uint64_t)cal_isPhoneNumber
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  if (v2)
  {
    v3 = _phoneNumberDetector();
    v4 = [v3 matchesInString:a1 options:0 range:{0, v2}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([v10 resultType] == 32)
          {
            v11 = [v10 URL];
            v12 = [v11 scheme];
            v13 = [v12 isEqualToString:@"tel"];

            if (v13)
            {
              goto LABEL_14;
            }
          }

          else if ([v10 resultType] == 2048)
          {
LABEL_14:
            v2 = 1;
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_15:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)phoneURL
{
  v2 = [a1 length];
  if (v2)
  {
    v3 = v2;
    v4 = _phoneNumberDetector();
    v5 = [v4 matchesInString:a1 options:0 range:{0, v3}];

    if ([v5 count])
    {
      v6 = [v5 firstObject];
      v7 = [v6 phoneNumber];
      v8 = [v6 URL];
      v9 = v8;
      if (v8 && ([v8 scheme], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"tel"), v10, v11))
      {
        v12 = v9;
      }

      else if ([v7 length])
      {
        v13 = MEMORY[0x1E695DFF8];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"tel", v7];
        v12 = [v13 URLWithString:v14];

        if (!v12)
        {
          v15 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
          v16 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v15];

          v17 = MEMORY[0x1E695DFF8];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"tel", v16];
          v12 = [v17 URLWithString:v18];

          v7 = v16;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)calDataDetectedURL
{
  v2 = [a1 length];
  if (v2)
  {
    v3 = v2;
    v4 = _phoneNumberDetector();
    v5 = [v4 matchesInString:a1 options:0 range:{0, v3}];

    if ([v5 count])
    {
      v6 = [v5 firstObject];
      v7 = [v6 URL];
      if (!v7)
      {
        v8 = [v6 phoneNumber];
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0x1E695DFF8];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"tel", v8];
          v7 = [v10 URLWithString:v11];

          if (!v7)
          {
            v12 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
            v13 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v12];

            v14 = MEMORY[0x1E695DFF8];
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"tel", v13];
            v7 = [v14 URLWithString:v15];

            v9 = v13;
          }
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)CalUncommentedAddress
{
  objc_sync_enter(@"AddressParsing");
  v2 = CalUncommentedAddress_uncommentedAddresses;
  if (!CalUncommentedAddress_uncommentedAddresses)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = CalUncommentedAddress_uncommentedAddresses;
    CalUncommentedAddress_uncommentedAddresses = v3;

    v2 = CalUncommentedAddress_uncommentedAddresses;
  }

  v5 = [v2 objectForKey:a1];
  objc_sync_exit(@"AddressParsing");
  if (!v5)
  {
    v6 = [a1 length];
    v7 = NSZoneMalloc(0, 2 * v6 + 2);
    v8 = v7;
    v9 = MEMORY[0x1E69E9830];
    v10 = v7;
    if (v6 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v23 = 0;
      v24 = 1;
      v10 = v7;
      do
      {
        v14 = [a1 characterAtIndex:v11];
        v15 = v14;
        if (v14 == 92)
        {
          if (v11 + 1 >= v6)
          {
            if ((v13 & 1) == 0)
            {
              if (v12 < 1)
              {
                goto LABEL_21;
              }

LABEL_18:
              v13 = 0;
              v12 -= v14 == 41;
              goto LABEL_27;
            }

LABEL_13:
            *v10 = v14;
            v10 += 2;
            v13 &= v14 != 34;
            goto LABEL_27;
          }

          *v10 = 92;
          *(v10 + 1) = [a1 characterAtIndex:v11 + 1];
          v10 += 4;
          ++v11;
        }

        else
        {
          if (v13)
          {
            goto LABEL_13;
          }

          if (v14 == 40)
          {
            v13 = 0;
            ++v12;
          }

          else
          {
            if (v12 > 0)
            {
              goto LABEL_18;
            }

            if (v14 != 60)
            {
              if ((v23 & (v14 == 62)) != 0)
              {
                break;
              }

              if (v14 > 0x7F)
              {
                if (__maskrune(v14, 0x4000uLL))
                {
LABEL_22:
                  v13 = 0;
                  if ((v24 & 1) == 0)
                  {
                    *v10 = 32;
                    v10 += 2;
                  }

                  v24 = 1;
                  goto LABEL_27;
                }
              }

              else
              {
LABEL_21:
                if ((*(v9 + 4 * v14 + 60) & 0x4000) != 0)
                {
                  goto LABEL_22;
                }
              }

              v24 = 0;
              *v10 = v15;
              v10 += 2;
              v13 |= v15 == 34;
              goto LABEL_27;
            }

            v13 = 0;
            v23 = 1;
            v10 = v8;
          }
        }

LABEL_27:
        ++v11;
      }

      while (v11 < v6);
    }

    v16 = v10 - v8;
    do
    {
      v17 = v10;
      v18 = v16;
      if (v10 <= v8)
      {
        break;
      }

      v10 -= 2;
      v19 = *(v17 - 1);
      v20 = v19 > 0x7F ? __maskrune(v19, 0x4000uLL) : *(v9 + 4 * v19 + 60) & 0x4000;
      v16 = v18 - 2;
    }

    while (v20);
    *v17 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v8 length:v18 >> 1];
    NSZoneFree(0, v8);
    objc_sync_enter(@"AddressParsing");
    [CalUncommentedAddress_uncommentedAddresses setObject:v5 forKey:a1];
    objc_sync_exit(@"AddressParsing");
  }

  v21 = v5;

  return v21;
}

- (id)CalAddressComment
{
  objc_sync_enter(@"AddressParsing");
  p_name = &OBJC_PROTOCOL___NSCopying.name;
  v3 = CalAddressComment_addressComments;
  if (!CalAddressComment_addressComments)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = CalAddressComment_addressComments;
    CalAddressComment_addressComments = v4;

    v3 = CalAddressComment_addressComments;
  }

  v6 = [v3 objectForKey:a1];
  objc_sync_exit(@"AddressParsing");
  if (v6)
  {
    goto LABEL_84;
  }

  v7 = [a1 length];
  v8 = NSZoneMalloc(0, 2 * v7 + 2);
  v9 = NSZoneMalloc(0, 2 * v7 + 2);
  [a1 getCharacters:v9];
  v10 = MEMORY[0x1E69E9830];
  v47 = v9;
  if (v7 < 1)
  {
    v24 = 0;
    LOBYTE(v33) = 0;
    goto LABEL_57;
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  v14 = v9;
  v15 = v7;
  v16 = 1;
  while (1)
  {
    v18 = *v14++;
    v17 = v18;
    if (v18 != 92)
    {
      break;
    }

LABEL_20:
    v16 = v13++ < v7;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }

  if (v17 == 34 && v12 == 0)
  {
    v12 = 0;
    v11 ^= 1u;
    goto LABEL_20;
  }

  if (!((v17 != 40) | v11 & 1))
  {
    v11 = 0;
    ++v12;
    goto LABEL_20;
  }

  if (!((v17 != 41) | v11 & 1))
  {
    v11 = 0;
    --v12;
    goto LABEL_20;
  }

  if (v17 != 60 || ((v11 ^ 1) & 1) == 0 || v12)
  {
    goto LABEL_20;
  }

LABEL_21:
  v46 = a1;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v8;
  do
  {
    v26 = *v9;
    if (v26 != 92)
    {
      v27 = v23 == 0;
      if (v26 == 34 && v23 == 0)
      {
        v23 = 0;
        v22 ^= 1u;
      }

      else
      {
        if ((v26 != 41) | v22 & 1)
        {
          goto LABEL_30;
        }

        v22 = 0;
        --v23;
      }

LABEL_38:
      if ((*(v10 + 4 * *v9 + 60) & 0x4000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    if (((v9[1] != 0) & ~v20) != 0)
    {
      v20 = 1;
      goto LABEL_54;
    }

    v27 = v23 == 0;
LABEL_30:
    v29 = (v26 == 60) & (v22 ^ 1) & v27;
    if (v29)
    {
      v23 = 0;
    }

    v21 |= v29;
    if (v26 <= 0x7F)
    {
      goto LABEL_38;
    }

    if (!__maskrune(v26, 0x4000uLL))
    {
      goto LABEL_44;
    }

LABEL_39:
    if (!v24)
    {
      goto LABEL_51;
    }

    v30 = *(v25 - 1);
    if (v30 > 0x7F)
    {
      if (__maskrune(v30, 0x4000uLL))
      {
        goto LABEL_51;
      }
    }

    else if ((*(v10 + 4 * v30 + 60) & 0x4000) != 0)
    {
      goto LABEL_51;
    }

LABEL_44:
    v31 = *v9;
    if (v31 == 34 && !v23)
    {
      goto LABEL_51;
    }

    if (v16)
    {
      if (v21)
      {
        v21 = 1;
        goto LABEL_51;
      }
    }

    else if (v23 < 1)
    {
      goto LABEL_51;
    }

    v8[v24 / 2] = v31;
    v24 += 2;
LABEL_51:
    v32 = *v9;
    if ((v32 != 40) | v22 & 1)
    {
      v20 = 0;
      v21 &= (v32 != 62) | v22 | (v23 != 0);
    }

    else
    {
      v22 = 0;
      v20 = 0;
      ++v23;
    }

LABEL_54:
    v25 = &v8[v24 / 2];
    ++v9;
    --v7;
  }

  while (v7);
  v33 = ((v23 != 0) | v22);
  a1 = v46;
  p_name = (&OBJC_PROTOCOL___NSCopying + 8);
  do
  {
LABEL_57:
    v34 = v24;
    if (v24 < 1)
    {
      break;
    }

    v35 = v8[v24 / 2 - 1];
    v36 = v35 > 0x7F ? __maskrune(v35, 0x4000uLL) : *(v10 + 4 * v35 + 60) & 0x4000;
    v24 -= 2;
  }

  while (v36);
  v37 = (v8 + v34);
  *(v8 + v34) = 0;
  if (v33)
  {
    v38 = a1;
    goto LABEL_77;
  }

  if (v34 < 3)
  {
    v42 = v47;
    goto LABEL_78;
  }

  v39 = 0;
  while (2)
  {
    v40 = *v8;
    if (v40 == 39)
    {
      if (*(v8 + v34 - 2) != 39)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    if (v40 == 34)
    {
      if (*(v8 + v34 - 2) != 34)
      {
        goto LABEL_76;
      }

LABEL_71:
      v37 = (v8 + v34 - 2);
      *(v8 + v34 - 2) = 0;
      v38 = [MEMORY[0x1E696AEC0] stringWithCharacters:v8 + 1 length:{(v34 >> 1) - 2, v46}];

      v39 = v38;
      v41 = v34 <= 4;
      v34 -= 2;
      if (v41)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  v37 = (v8 + v34);
LABEL_76:
  v38 = v39;
LABEL_77:
  v42 = v47;
  if (!v38)
  {
LABEL_78:
    if (v37 == v8)
    {
      v38 = 0;
    }

    else
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithCharacters:v8 length:v37 - v8];
    }
  }

  NSZoneFree(0, v8);
  NSZoneFree(0, v42);
  if (v37 == v8)
  {
    v43 = a1;

    v38 = v43;
  }

  objc_sync_enter(@"AddressParsing");
  v6 = [v38 copy];

  [p_name[301] setObject:v6 forKey:a1];
  objc_sync_exit(@"AddressParsing");
LABEL_84:
  v44 = v6;

  return v44;
}

- (uint64_t)isEqualAsURL:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 appendSlashIfNeeded];
  v6 = [v5 stringByURLUnquoting];

  v7 = [v4 appendSlashIfNeeded];

  v8 = [v7 stringByURLUnquoting];

  v9 = [v6 isEqualToString:v8];
  return v9;
}

+ (id)ellipsisString
{
  v2 = 8230;
  v0 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v2 length:1];

  return v0;
}

- (void)cal_enumerateCharactersUsingBlock:()CalClassAdditions
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 32;
    do
    {
      if (v8 + v7 > v6)
      {
        v8 = v6 - v7;
      }

      [a1 getCharacters:v11 range:{v7, v8}];
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v4[2](v4, v11[i]);
        }
      }

      v7 += 32;
    }

    while (v7 < v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)stringWithContentsOfFile:()CalClassAdditions usingEncoding:
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5];
  if (v6)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithData:v6 encoding:a4];
  }

  else
  {
    NSLog(&cfstr_UnableToReadDa.isa, v5);
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isPathToAppleScript
{
  v1 = [a1 pathExtension];
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"scpt"];

  return v3;
}

- (uint64_t)isPathToVCalData
{
  v2 = [a1 pathExtension];
  v3 = [v2 lowercaseString];
  if ([v3 isEqualToString:@"vcs"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 pathExtension];
    v6 = [v5 lowercaseString];
    v4 = [v6 isEqualToString:@"vcal"];
  }

  return v4;
}

- (uint64_t)isPathToICalData
{
  v1 = [a1 pathExtension];
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"ics"];

  return v3;
}

- (uint64_t)isPathToBackupFile
{
  v1 = [a1 pathExtension];
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"icbu"];

  return v3;
}

- (uint64_t)isPathToICalBookmark
{
  v1 = [a1 pathExtension];
  v2 = [v1 lowercaseString];

  v3 = [v2 isEqualToString:@"icaltodo"];
  return v3;
}

- (id)trimFinalChar:()CalClassAdditions
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) == a3)
  {
    v5 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)trimFirstChar:()CalClassAdditions
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", 0) == a3)
  {
    v5 = [a1 substringFromIndex:1];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)trimChar:()CalClassAdditions
{
  v4 = [a1 trimFirstChar:?];
  v5 = [v4 trimFinalChar:a3];

  return v5;
}

- (id)trimFinalComma
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) == 44)
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)trimFirstComma
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", 0) == 44)
  {
    v2 = [a1 substringFromIndex:1];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)trimCommas
{
  v1 = [a1 trimFirstComma];
  v2 = [v1 trimFinalComma];

  return v2;
}

- (id)searchAndReplaceString:()CalClassAdditions withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a1];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v8 setCharactersToBeSkipped:0];
  if ([v8 scanString:v6 intoString:0])
  {
    [v9 appendString:v7];
  }

  v16 = 0;
  v10 = [v8 scanUpToString:v6 intoString:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    do
    {
      [v9 appendString:v12];
      if ([v8 scanString:v6 intoString:0])
      {
        [v9 appendString:v7];
      }

      v16 = v12;
      v13 = [v8 scanUpToString:v6 intoString:&v16];
      v14 = v16;

      v12 = v14;
    }

    while ((v13 & 1) != 0);
  }

  else
  {
    v14 = v11;
  }

  return v9;
}

+ (id)stringWithFileSystemRepresentation:()CalClassAdditions
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (__CFString)CalSafeFilename
{
  if (CalSafeFilename_onceToken != -1)
  {
    [NSString(CalClassAdditions) CalSafeFilename];
  }

  v2 = [a1 stringByReplacingCharactersInSet:CalSafeFilename_disallowedCharacters withString:@"-"];
  if ([(__CFString *)v2 hasPrefix:@"."])
  {
    do
    {
      v3 = [(__CFString *)v2 substringFromIndex:1];

      v2 = v3;
    }

    while (([(__CFString *)v3 hasPrefix:@"."]& 1) != 0);
  }

  else
  {
    v3 = v2;
  }

  if (![(__CFString *)v3 length])
  {

    v3 = @"-";
  }

  return v3;
}

- (id)CalSafeHFSPathComponentName
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

  return v2;
}

- (id)stringByReplacingCharactersInSet:()CalClassAdditions withString:
{
  v6 = a4;
  v7 = [a1 componentsSeparatedByCharactersInSet:a3];
  v8 = [v7 componentsJoinedByString:v6];

  return v8;
}

- (id)stringByRemovingPrefixCaseInsensitive:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 copy];
  if ([a1 hasPrefixCaseInsensitive:v4])
  {
    v6 = [a1 substringFromIndex:{objc_msgSend(v4, "length")}];

    v5 = v6;
  }

  return v5;
}

+ (id)CalAutoCommentPrefix
{
  if (CalAutoCommentPrefix_onceToken != -1)
  {
    +[NSString(CalClassAdditions) CalAutoCommentPrefix];
  }

  v1 = CalAutoCommentPrefix_prefix;

  return v1;
}

- (uint64_t)CalHasAutoCommentPrefix
{
  v1 = [a1 componentsSeparatedByString:@"\n"];
  v2 = [v1 firstObject];

  v3 = [MEMORY[0x1E696AEC0] CalAutoCommentPrefix];
  v4 = 1;
  v5 = [v3 substringFromIndex:1];
  if (([v2 containsString:v3] & 1) == 0)
  {
    v4 = [v2 containsString:v5];
  }

  return v4;
}

- (__CFString)CalStringByRemovingAutoComment
{
  v2 = [a1 copy];
  if ([a1 CalHasAutoCommentPrefix])
  {
    v3 = [a1 rangeOfString:@"\n"];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = &stru_1F379FFA8;
    }

    else
    {
      v4 = [a1 substringFromIndex:v3 + 1];
    }

    v2 = v4;
  }

  return v2;
}

- (id)CalStringWithOnlyAutoComment
{
  if ([a1 CalHasAutoCommentPrefix])
  {
    v2 = [a1 rangeOfString:@"\n"];
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [a1 copy];
      v4 = [v3 stringByAppendingString:@"\n"];
    }

    else
    {
      v4 = [a1 substringToIndex:v2 + 1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)cal_stringWithNormalizedSpacesForUnitTesting
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"  "];
  v3 = [a1 stringByReplacingCharactersInSet:v2 withString:@" "];

  return v3;
}

@end