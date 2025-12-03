@interface NSString(NSStringUtils)
+ (id)mf_messageIDStringWithDomainHint:()NSStringUtils;
+ (uint64_t)mf_UUID;
+ (uint64_t)mf_stringForMimeTypeFromFileName:()NSStringUtils;
+ (uint64_t)mf_stringWithAttachmentCharacter;
- (__CFString)mf_stringByEscapingHTMLCodes;
- (id)mf_fileSystemString;
- (id)mf_stringByEscapingForXML;
- (id)mf_stringWithNoExtraSpaces;
- (uint64_t)mf_prefixToString:()NSStringUtils;
- (uint64_t)mf_stringByLocalizingReOrFwdPrefix;
- (uint64_t)mf_stringByTrimmingWhitespaceAndNewlineCharacters;
- (void)mf_uniqueFilenameWithRespectToFilenames:()NSStringUtils;
@end

@implementation NSString(NSStringUtils)

+ (uint64_t)mf_UUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];

  return [uUID UUIDString];
}

+ (id)mf_messageIDStringWithDomainHint:()NSStringUtils
{
  v4 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  v5 = [MEMORY[0x277D070A8] stringByEncodingDomainName:a3];
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(v4, "length") + objc_msgSend(v5, "length") + 3}];
  [v6 appendString:@"<"];
  [v6 appendString:v4];
  if (a3)
  {
    [v6 appendString:@"@"];
    [v6 appendString:v5];
  }

  [v6 appendString:@">"];

  return v6;
}

- (uint64_t)mf_stringByLocalizingReOrFwdPrefix
{
  v2 = mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix;
  if (mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix == -1)
  {
    mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix = [MFLookupLocalizedString(@"REPLY_SUBJECT_PREFIX" @"Re:{0, "isEqualToString:", @"Re:"}")] ^ 1;
    mf_stringByLocalizingReOrFwdPrefix_localizedFwdPrefix = [MFLookupLocalizedString(@"FORWARD_SUBJECT_PREFIX" @"Fwd:{0, "isEqualToString:", @"Fwd:"}")] ^ 1;
    mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength = [@"Re:" length];
    mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength = [@"Fwd:" length];
    v2 = mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix;
  }

  if (v2 == 1 && ![self compare:@"Re:" options:1 range:{0, mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength}])
  {
    self = [MEMORY[0x277CCACA8] stringWithFormat:@"%@⁨%@⁩", MFLookupLocalizedString(@"REPLY_SUBJECT_PREFIX", @"Re:", 0), objc_msgSend(self, "substringFromIndex:", mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength)];
  }

  if (mf_stringByLocalizingReOrFwdPrefix_localizedFwdPrefix == 1 && ![self compare:@"Fwd:" options:1 range:{0, mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength}])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@⁨%@⁩", MFLookupLocalizedString(@"FORWARD_SUBJECT_PREFIX", @"Fwd:", 0), objc_msgSend(self, "substringFromIndex:", mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength)];
  }

  else
  {
    return self;
  }
}

- (id)mf_fileSystemString
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  result = self;
  if (v2)
  {
    v4 = [self getFileSystemRepresentation:v6 maxLength:1023];
    result = self;
    if (v4)
    {
      v6[1023] = 0;
      result = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String:v6];
    }
  }

  if (!result)
  {
    result = self;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)mf_stringWithNoExtraSpaces
{
  v1 = [self mutableCopy];
  if ([v1 length])
  {
    v2 = 0;
    do
    {
      v3 = [v1 characterAtIndex:v2++];
      if (v3 == 32)
      {
        while (v2 < [v1 length] && objc_msgSend(v1, "characterAtIndex:", v2) == 32)
        {
          [v1 deleteCharactersInRange:{v2, 1}];
        }
      }
    }

    while (v2 < [v1 length]);
  }

  if ([v1 length] && objc_msgSend(v1, "characterAtIndex:", 0) == 32)
  {
    [v1 deleteCharactersInRange:{0, 1}];
  }

  v4 = [v1 length];
  if (v4)
  {
    v5 = v4 - 1;
    if ([v1 characterAtIndex:v4 - 1] == 32)
    {
      [v1 deleteCharactersInRange:{v5, 1}];
    }
  }

  return v1;
}

+ (uint64_t)mf_stringWithAttachmentCharacter
{
  result = mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter;
  if (!mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter)
  {
    v1 = -4;
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v1 length:1];
    mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter = result;
  }

  return result;
}

- (void)mf_uniqueFilenameWithRespectToFilenames:()NSStringUtils
{
  LODWORD(v5) = 0;
  pathExtension = 0;
  stringByDeletingPathExtension = 0;
  selfCopy = 0;
  v23 = *MEMORY[0x277D85DE8];
  do
  {
    while (1)
    {
      if (!selfCopy)
      {
        selfCopy = self;
        goto LABEL_12;
      }

      if (stringByDeletingPathExtension)
      {
        if (!pathExtension)
        {
          goto LABEL_9;
        }
      }

      else
      {
        stringByDeletingPathExtension = [self stringByDeletingPathExtension];
        if (!pathExtension)
        {
LABEL_9:
          pathExtension = [self pathExtension];
        }
      }

      v5 = (v5 + 1);
      v9 = [pathExtension length] ? objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%d.%@", stringByDeletingPathExtension, v5, pathExtension) : objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%d", stringByDeletingPathExtension, v5, v17);
      selfCopy = v9;
LABEL_12:
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v11 = selfCopy;
      if (!v10)
      {
        break;
      }

      v12 = v10;
      v13 = *v19;
LABEL_14:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(a3);
        }

        if ([*(*(&v18 + 1) + 8 * v14) isEqualToString:selfCopy])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_14;
          }

          v11 = selfCopy;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    ;
  }

  while (!v11);
  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)mf_stringByEscapingForXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"&apos;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:0 range:{0, objc_msgSend(v1, "length"")}];

  return v1;
}

- (__CFString)mf_stringByEscapingHTMLCodes
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  selfCopy = self;
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v4 - v5 >= 0x1FF ? 511 : v4 - v5;
      [selfCopy getCharacters:chars range:{v5, v7}];
      if (v4 != v5)
      {
        break;
      }

LABEL_7:
      v5 += v7;
      if (v5 >= v4)
      {
        goto LABEL_33;
      }
    }

    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = chars;
    while (1)
    {
      v10 = *v9;
      if (v10 > 0x25)
      {
        switch(v10)
        {
          case '&':
            v11 = string;
            v12 = @"&amp;";
            goto LABEL_28;
          case '>':
            v11 = string;
            v12 = @"&gt;";
            goto LABEL_28;
          case '<':
            v11 = string;
            v12 = @"&lt;";
LABEL_28:
            [(__CFString *)v11 appendString:v12];
            goto LABEL_29;
        }
      }

      else
      {
        switch(v10)
        {
          case 9u:
            v11 = string;
            v12 = @"&nbsp;&nbsp;&nbsp;&nbsp;";
            goto LABEL_28;
          case 0xAu:
            v11 = string;
            v12 = @"<br>";
            goto LABEL_28;
          case 0x20u:
            if (v6)
            {
              [(__CFString *)string appendString:@"&nbsp;"];
              v6 = 1;
            }

            else
            {
              v6 = 1;
              CFStringAppendCharacters(string, v9, 1);
            }

            goto LABEL_30;
        }
      }

      CFStringAppendCharacters(string, v9, 1);
LABEL_29:
      v6 = 0;
LABEL_30:
      ++v9;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_33:
  v13 = *MEMORY[0x277D85DE8];
  return string;
}

+ (uint64_t)mf_stringForMimeTypeFromFileName:()NSStringUtils
{
  v4 = objc_alloc_init(MEMORY[0x277D24FB0]);
  [v4 setPathExtension:{objc_msgSend(a3, "pathExtension")}];
  [v4 setFilename:a3];
  mimeType = [v4 mimeType];
  if (MFGetTypeInfo())
  {
    mimeType = [v4 mimeType];
  }

  return mimeType;
}

- (uint64_t)mf_stringByTrimmingWhitespaceAndNewlineCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];

  return [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
}

- (uint64_t)mf_prefixToString:()NSStringUtils
{
  v2 = [self rangeOfString:?];
  if (!v3)
  {
    return 0;
  }

  return [self substringWithRange:{0, v2}];
}

@end