@interface NSString(FMCoreAdditions)
- (__CFString)fm_wifiToWLAN;
- (id)fm_decodeHexString;
- (id)fm_encodeToPercentEscape;
- (id)legacyAllowedCharacterSet;
- (uint64_t)fm_isNumeric;
@end

@implementation NSString(FMCoreAdditions)

- (id)fm_encodeToPercentEscape
{
  legacyAllowedCharacterSet = [self legacyAllowedCharacterSet];
  v3 = [self stringByAddingPercentEncodingWithAllowedCharacters:legacyAllowedCharacterSet];

  return v3;
}

- (uint64_t)fm_isNumeric
{
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:self];
  v4 = [decimalDigitCharacterSet isSupersetOfSet:v3];

  return v4;
}

- (id)fm_decodeHexString
{
  if ([self length])
  {
    v11 = 0;
  }

  else
  {
    v2 = [self cStringUsingEncoding:1];
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([self length] >= 1)
    {
      v4 = 0;
      v5 = MEMORY[0x277D85DE0];
      while (1)
      {
        v6 = __toupper(*(v2 + v4));
        v7 = __toupper(*(v2 + v4 + 1));
        if ((*(v5 + 4 * v6 + 60) & 0x10000) == 0 || (*(v5 + 4 * v7 + 60) & 0x10000) == 0)
        {
          break;
        }

        if (v6 <= 0x40u)
        {
          v8 = 64;
        }

        else
        {
          v8 = 9;
        }

        v9 = v8 + v6;
        if (v7 <= 0x40u)
        {
          v10 = -48;
        }

        else
        {
          v10 = -55;
        }

        v13 = v10 + v7 + 16 * v9;
        [v3 appendBytes:&v13 length:1];
        v4 += 2;
        if (v4 >= [self length])
        {
          goto LABEL_16;
        }
      }

      v3 = 0;
    }

LABEL_16:
    v11 = [v3 copy];
  }

  return v11;
}

- (__CFString)fm_wifiToWLAN
{
  if (fm_wifiToWLAN___wapiCapabilityToken != -1)
  {
    [NSString(FMCoreAdditions) fm_wifiToWLAN];
  }

  if (fm_wifiToWLAN___wapi == 1)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.icloud.FMCore"];
    preferredLocalizations = [v2 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];

    selfCopy = @"WLAN";
    v6 = [v2 localizedStringForKey:@"WLAN" value:@"WLAN" table:0];
    if ([fm_wifiToWLAN_stripWhitespaceWhitelist containsObject:firstObject])
    {
      v7 = @"(\\s?Wi\\-?Fi\\s?)";
    }

    else
    {
      v7 = @"(Wi\\-?Fi)";
    }

    v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v7 options:1 error:0];
    v9 = [self length];
    if (v6)
    {
      selfCopy = [v8 stringByReplacingMatchesInString:self options:0 range:0 withTemplate:{v9, v6}];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)legacyAllowedCharacterSet
{
  if (legacyAllowedCharacterSet_once != -1)
  {
    [NSString(FMCoreAdditions) legacyAllowedCharacterSet];
  }

  v1 = legacyAllowedCharacterSet_allowedCharSet;

  return v1;
}

@end