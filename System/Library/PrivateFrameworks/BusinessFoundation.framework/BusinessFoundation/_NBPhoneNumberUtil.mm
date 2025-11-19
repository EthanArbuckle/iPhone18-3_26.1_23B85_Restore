@interface _NBPhoneNumberUtil
+ (_NBPhoneNumberUtil)sharedInstance;
+ (void)initialize;
- (BOOL)canBeInternationallyDialled:(id)a3;
- (BOOL)canBeInternationallyDialled:(id)a3 error:(id *)a4;
- (BOOL)checkRegionForParsing:(id)a3 defaultRegion:(id)a4;
- (BOOL)descHasPossibleNumberData:(id)a3;
- (BOOL)formattingRuleHasFirstGroupOnly:(id)a3;
- (BOOL)hasFormattingPatternForNumber:(id)a3;
- (BOOL)hasUnexpectedItalianLeadingZero:(id)a3;
- (BOOL)hasValidCountryCallingCode:(id)a3;
- (BOOL)isAllDigits:(id)a3;
- (BOOL)isAlphaNumber:(id)a3;
- (BOOL)isLeadingZeroPossible:(id)a3;
- (BOOL)isNANPACountry:(id)a3;
- (BOOL)isNationalNumberSuffixOfTheOther:(id)a3 second:(id)a4;
- (BOOL)isNumberGeographical:(id)a3;
- (BOOL)isNumberMatchingDesc:(id)a3 numberDesc:(id)a4;
- (BOOL)isPossibleNumber:(id)a3 error:(id *)a4;
- (BOOL)isPossibleNumberString:(id)a3 regionDialingFrom:(id)a4 error:(id *)a5;
- (BOOL)isStartingStringByRegex:(id)a3 regex:(id)a4;
- (BOOL)isValidNumber:(id)a3;
- (BOOL)isValidNumberForRegion:(id)a3 regionCode:(id)a4;
- (BOOL)isValidRegionCode:(id)a3;
- (BOOL)isViablePhoneNumber:(id)a3;
- (BOOL)matchesEntirely:(id)a3 string:(id)a4;
- (BOOL)maybeStripNationalPrefixAndCarrierCode:(id *)a3 metadata:(id)a4 carrierCode:(id *)a5;
- (BOOL)parsePrefixAsIdd:(id)a3 sourceString:(id *)a4;
- (BOOL)rawInputContainsNationalPrefix:(id)a3 nationalPrefix:(id)a4 regionCode:(id)a5;
- (BOOL)truncateTooLongNumber:(id)a3;
- (CTTelephonyNetworkInfo)telephonyNetworkInfo;
- (NSDictionary)DIGIT_MAPPINGS;
- (_NBPhoneNumberUtil)init;
- (id)chooseFormattingPatternForNumber:(id)a3 nationalNumber:(id)a4;
- (id)componentsSeparatedByRegex:(id)a3 regex:(id)a4;
- (id)convertAlphaCharactersInNumber:(id)a3;
- (id)countryCodeByCarrier;
- (id)entireRegularExpressionWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)errorWithObject:(id)a3 withDomain:(id)a4;
- (id)extractCountryCode:(id)a3 nationalNumber:(id *)a4;
- (id)extractPossibleNumber:(id)a3;
- (id)format:(id)a3 numberFormat:(int64_t)a4;
- (id)format:(id)a3 numberFormat:(int64_t)a4 error:(id *)a5;
- (id)formatByPattern:(id)a3 numberFormat:(int64_t)a4 userDefinedFormats:(id)a5;
- (id)formatByPattern:(id)a3 numberFormat:(int64_t)a4 userDefinedFormats:(id)a5 error:(id *)a6;
- (id)formatInOriginalFormat:(id)a3 regionCallingFrom:(id)a4;
- (id)formatInOriginalFormat:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5;
- (id)formatNationalNumberWithCarrierCode:(id)a3 carrierCode:(id)a4;
- (id)formatNationalNumberWithCarrierCode:(id)a3 carrierCode:(id)a4 error:(id *)a5;
- (id)formatNationalNumberWithPreferredCarrierCode:(id)a3 fallbackCarrierCode:(id)a4;
- (id)formatNationalNumberWithPreferredCarrierCode:(id)a3 fallbackCarrierCode:(id)a4 error:(id *)a5;
- (id)formatNsn:(id)a3 metadata:(id)a4 phoneNumberFormat:(int64_t)a5 carrierCode:(id)a6;
- (id)formatNsnUsingPattern:(id)a3 formattingPattern:(id)a4 numberFormat:(int64_t)a5 carrierCode:(id)a6;
- (id)formatNumberForMobileDialing:(id)a3 regionCallingFrom:(id)a4 withFormatting:(BOOL)a5;
- (id)formatOutOfCountryCallingNumber:(id)a3 regionCallingFrom:(id)a4;
- (id)formatOutOfCountryCallingNumber:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5;
- (id)formatOutOfCountryKeepingAlphaChars:(id)a3 regionCallingFrom:(id)a4;
- (id)formatOutOfCountryKeepingAlphaChars:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5;
- (id)getCountryCodeForRegion:(id)a3;
- (id)getCountryCodeForValidRegion:(id)a3 error:(id *)a4;
- (id)getCountryMobileTokenFromCountryCode:(int64_t)a3;
- (id)getExampleNumberForNonGeoEntity:(id)a3 error:(id *)a4;
- (id)getExampleNumberForType:(id)a3 type:(int64_t)a4 error:(id *)a5;
- (id)getMetadataForRegionOrCallingCode:(id)a3 regionCode:(id)a4;
- (id)getNationalSignificantNumber:(id)a3;
- (id)getNddPrefixForRegion:(id)a3 stripNonDigits:(BOOL)a4;
- (id)getNumberDescByType:(id)a3 type:(int64_t)a4;
- (id)getRegionCodeForCountryCode:(id)a3;
- (id)getRegionCodeForNumber:(id)a3;
- (id)getRegionCodeForNumberFromRegionList:(id)a3 regionCodes:(id)a4;
- (id)getSupportedRegions;
- (id)matchFirstByRegex:(id)a3 regex:(id)a4;
- (id)matchedStringByRegex:(id)a3 regex:(id)a4;
- (id)matchesByRegex:(id)a3 regex:(id)a4;
- (id)maybeExtractCountryCode:(id)a3 metadata:(id)a4 nationalNumber:(id *)a5 keepRawInput:(BOOL)a6 phoneNumber:(id *)a7 error:(id *)a8;
- (id)maybeGetFormattedExtension:(id)a3 metadata:(id)a4 numberFormat:(int64_t)a5;
- (id)maybeStripExtension:(id *)a3;
- (id)normalize:(id)a3;
- (id)normalizeDiallableCharsOnly:(id)a3;
- (id)normalizeDigitsOnly:(id)a3;
- (id)normalizeHelper:(id)a3 normalizationReplacements:(id)a4 removeNonMatches:(BOOL)a5;
- (id)parse:(id)a3 defaultRegion:(id)a4 error:(id *)a5;
- (id)parseAndKeepRawInput:(id)a3 defaultRegion:(id)a4 error:(id *)a5;
- (id)parseWithPhoneCarrierRegion:(id)a3 error:(id *)a4;
- (id)prefixNumberWithCountryCallingCode:(id)a3 phoneNumberFormat:(int64_t)a4 formattedNationalNumber:(id)a5 formattedExtension:(id)a6;
- (id)regularExpressionWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)replaceFirstStringByRegex:(id)a3 regex:(id)a4 withTemplate:(id)a5;
- (id)replaceStringByRegex:(id)a3 regex:(id)a4 withTemplate:(id)a5;
- (id)stringByReplacingOccurrencesString:(id)a3 withMap:(id)a4 removeNonMatches:(BOOL)a5;
- (int)getLengthOfGeographicalAreaCode:(id)a3;
- (int)getLengthOfGeographicalAreaCode:(id)a3 error:(id *)a4;
- (int)getLengthOfNationalDestinationCode:(id)a3;
- (int)getLengthOfNationalDestinationCode:(id)a3 error:(id *)a4;
- (int)stringPositionByRegex:(id)a3 regex:(id)a4;
- (int64_t)getNumberType:(id)a3;
- (int64_t)getNumberTypeHelper:(id)a3 metadata:(id)a4;
- (int64_t)isNumberMatch:(id)a3 second:(id)a4;
- (int64_t)isNumberMatch:(id)a3 second:(id)a4 error:(id *)a5;
- (int64_t)isPossibleNumberWithReason:(id)a3;
- (int64_t)isPossibleNumberWithReason:(id)a3 error:(id *)a4;
- (int64_t)maybeStripInternationalPrefixAndNormalize:(id *)a3 possibleIddPrefix:(id)a4;
- (int64_t)testNumberLength:(id)a3 desc:(id)a4;
- (int64_t)validateNumberLength:(id)a3 metadata:(id)a4 type:(int64_t)a5;
- (void)buildNationalNumberForParsing:(id)a3 nationalNumber:(id *)a4;
- (void)initNormalizationMappings;
- (void)initRegularExpressionSet;
- (void)normalizeSB:(id *)a3;
- (void)setItalianLeadingZerosForPhoneNumber:(id)a3 phoneNumber:(id)a4;
@end

@implementation _NBPhoneNumberUtil

+ (_NBPhoneNumberUtil)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___NBPhoneNumberUtil_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_281346970 != -1)
  {
    dispatch_once(&qword_281346970, block);
  }

  v2 = _MergedGlobals_0;

  return v2;
}

- (id)errorWithObject:(id)a3 withDomain:(id)a4
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = *MEMORY[0x277CCA450];
  v7 = a4;
  v8 = [v5 dictionaryWithObject:a3 forKey:v6];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:0 userInfo:v8];

  return v9;
}

- (id)entireRegularExpressionWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  [(NSLock *)self->_entireStringCacheLock lock];
  entireStringRegexCache = self->_entireStringRegexCache;
  if (!entireStringRegexCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_entireStringRegexCache;
    self->_entireStringRegexCache = v9;

    entireStringRegexCache = self->_entireStringRegexCache;
  }

  v11 = [(NSMutableDictionary *)entireStringRegexCache objectForKey:v7];
  if (!v11)
  {
    v12 = v7;
    v13 = v12;
    if ([v12 rangeOfString:@"^"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)$", v12];
    }

    v11 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v13 options:0 error:a5];
    [(NSMutableDictionary *)self->_entireStringRegexCache setObject:v11 forKey:v12];
  }

  [(NSLock *)self->_entireStringCacheLock unlock];

  return v11;
}

- (id)regularExpressionWithPattern:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  [(NSLock *)self->_lockPatternCache lock];
  regexPatternCache = self->_regexPatternCache;
  if (!regexPatternCache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_regexPatternCache;
    self->_regexPatternCache = v10;

    regexPatternCache = self->_regexPatternCache;
  }

  v12 = [(NSMutableDictionary *)regexPatternCache objectForKey:v8];
  if (!v12)
  {
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:a4 error:a5];
    [(NSMutableDictionary *)self->_regexPatternCache setObject:v12 forKey:v8];
  }

  [(NSLock *)self->_lockPatternCache unlock];

  return v12;
}

- (id)componentsSeparatedByRegex:(id)a3 regex:(id)a4
{
  v4 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:a3 regex:a4 withTemplate:@"<SEP>"];
  v5 = [v4 componentsSeparatedByString:@"<SEP>"];
  v6 = [v5 mutableCopy];

  [v6 removeObject:&stru_285461708];

  return v6;
}

- (int)stringPositionByRegex:(id)a3 regex:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [v6 length];
  v9 = -1;
  if (!v7 || !v8)
  {
    goto LABEL_10;
  }

  if (![v7 length])
  {
LABEL_7:
    v9 = -1;
    goto LABEL_10;
  }

  v14 = 0;
  v10 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v7 options:0 error:&v14];
  v11 = [v10 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    v9 = [v12 range];
  }

  else
  {
    v9 = -1;
  }

LABEL_10:
  return v9;
}

- (id)replaceFirstStringByRegex:(id)a3 regex:(id)a4 withTemplate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 copy];
  v20 = 0;
  v12 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v10 options:0 error:&v20];

  v13 = [v12 rangeOfFirstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = v14;
    v17 = [v8 mutableCopy];
    v18 = [v12 stringByReplacingMatchesInString:v17 options:0 range:v15 withTemplate:{v16, v9}];

    v11 = v18;
  }

  return v11;
}

- (id)replaceStringByRegex:(id)a3 regex:(id)a4 withTemplate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v10 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v20];
  v11 = [v10 matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
  if ([v11 count] == 1)
  {
    v12 = [v10 rangeOfFirstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
      v15 = v13;
      v16 = [v8 mutableCopy];
      v17 = [v10 stringByReplacingMatchesInString:v16 options:0 range:v14 withTemplate:{v15, v9}];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([v11 count] < 2)
  {
LABEL_6:
    v18 = [v8 copy];
    goto LABEL_7;
  }

  v18 = [v10 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{objc_msgSend(v8, "length"), v9}];
LABEL_7:
  v17 = v18;
LABEL_8:

  return v17;
}

- (id)matchFirstByRegex:(id)a3 regex:(id)a4
{
  v11 = 0;
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v11];
  v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)matchesByRegex:(id)a3 regex:(id)a4
{
  v10 = 0;
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v10];
  v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v8;
}

- (id)matchedStringByRegex:(id)a3 regex:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self matchesByRegex:v6 regex:a4];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) range];
        v16 = [v6 substringWithRange:{v14, v15}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isStartingStringByRegex:(id)a3 regex:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = 0;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v19];
  v8 = v19;
  [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v15 + 1) + 8 * i) range])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)stringByReplacingOccurrencesString:(id)a3 withMap:(id)a4 removeNonMatches:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = [v7 length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v18 = [v7 characterAtIndex:v12];
      v13 = [MEMORY[0x277CCACA8] stringWithCharacters:&v18 length:1];
      v14 = [v8 objectForKey:v13];
      if (v14)
      {
        break;
      }

      if (!a5)
      {
        v15 = v9;
        v16 = v13;
        goto LABEL_7;
      }

LABEL_8:

      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    v15 = v9;
    v16 = v14;
LABEL_7:
    [v15 appendString:v16];
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (BOOL)isAllDigits:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 decimalDigitCharacterSet];
  v6 = [v5 invertedSet];

  v7 = [v4 rangeOfCharacterFromSet:v6];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)getNationalSignificantNumber:(id)a3
{
  v3 = a3;
  v4 = [v3 nationalNumber];
  v5 = [v4 stringValue];

  if ([v3 italianLeadingZero])
  {
    v6 = [v3 numberOfLeadingZeros];
    if ([v6 integerValue] < 0)
    {
      v8 = [&stru_285461708 stringByPaddingToLength:0 withString:@"0" startingAtIndex:0];
    }

    else
    {
      v7 = [v3 numberOfLeadingZeros];
      v8 = [&stru_285461708 stringByPaddingToLength:objc_msgSend(v7 withString:"integerValue") startingAtIndex:{@"0", 0}];
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v8, v5];
  }

  else
  {
    v8 = [v3 nationalNumber];
    v9 = [v8 stringValue];
  }

  v10 = v9;

  return v10;
}

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____NBPhoneNumberUtil;
  objc_msgSendSuper2(&v3, sel_initialize);
  v2 = GEO_MOBILE_COUNTRIES;
  GEO_MOBILE_COUNTRIES = &unk_285464B30;
}

- (_NBPhoneNumberUtil)init
{
  v12.receiver = self;
  v12.super_class = _NBPhoneNumberUtil;
  v2 = [(_NBPhoneNumberUtil *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lockPatternCache = v2->_lockPatternCache;
    v2->_lockPatternCache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    entireStringCacheLock = v2->_entireStringCacheLock;
    v2->_entireStringCacheLock = v5;

    v7 = objc_alloc_init(_NBMetadataHelper);
    helper = v2->_helper;
    v2->_helper = v7;

    v9 = objc_alloc_init(_NBRegExMatcher);
    matcher = v2->_matcher;
    v2->_matcher = v9;

    [(_NBPhoneNumberUtil *)v2 initRegularExpressionSet];
    [(_NBPhoneNumberUtil *)v2 initNormalizationMappings];
  }

  return v2;
}

- (void)initRegularExpressionSet
{
  if (self->_CAPTURING_DIGIT_PATTERN)
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"([%@])", 0x285461688];
    v11 = 0;
    v5 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v4 options:0 error:&v11];
    v3 = v11;
    CAPTURING_DIGIT_PATTERN = self->_CAPTURING_DIGIT_PATTERN;
    self->_CAPTURING_DIGIT_PATTERN = v5;
  }

  if (!self->_VALID_ALPHA_PHONE_PATTERN)
  {
    v10 = v3;
    v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:@"(?:.*?[A-Za-z]){3}.*" options:0 error:&v10];
    v8 = v10;

    VALID_ALPHA_PHONE_PATTERN = self->_VALID_ALPHA_PHONE_PATTERN;
    self->_VALID_ALPHA_PHONE_PATTERN = v7;

    v3 = v8;
  }

  if (initRegularExpressionSet_onceToken != -1)
  {
    dispatch_once(&initRegularExpressionSet_onceToken, &__block_literal_global_0);
  }
}

- (NSDictionary)DIGIT_MAPPINGS
{
  if (qword_2813469B0 != -1)
  {
    dispatch_once(&qword_2813469B0, &__block_literal_global_117);
  }

  v3 = qword_2813469B8;

  return v3;
}

- (void)initNormalizationMappings
{
  if (initNormalizationMappings_onceToken != -1)
  {
    dispatch_once(&initNormalizationMappings_onceToken, &__block_literal_global_293);
  }
}

- (id)extractPossibleNumber:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v4 regex:qword_281346980];
  if ((v5 & 0x80000000) != 0)
  {
    v7 = &stru_285461708;
  }

  else
  {
    v6 = [v4 substringFromIndex:v5];
    v7 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v6 regex:qword_281346990 withTemplate:&stru_285461708];

    v8 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:qword_281346988];
    if (v8 >= 1)
    {
      v9 = [(__CFString *)v7 substringWithRange:0, v8];

      v7 = v9;
    }
  }

  return v7;
}

- (BOOL)isViablePhoneNumber:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [v4 length] >= 2 && -[_NBPhoneNumberUtil matchesEntirely:string:](self, "matchesEntirely:string:", qword_2813469A8, v4);

  return v5;
}

- (id)normalize:(id)a3
{
  v4 = a3;
  if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"(?:.*?[A-Za-z]){3}.*" string:v4])
  {
    [(_NBPhoneNumberUtil *)self normalizeHelper:v4 normalizationReplacements:qword_2813469C8 removeNonMatches:1];
  }

  else
  {
    [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:v4];
  }
  v5 = ;

  return v5;
}

- (void)normalizeSB:(id *)a3
{
  if (a3)
  {
    *a3 = [(_NBPhoneNumberUtil *)self normalize:*a3];
  }
}

- (id)normalizeDigitsOnly:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self DIGIT_MAPPINGS];
  v6 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:v5 removeNonMatches:1];

  return v6;
}

- (id)normalizeDiallableCharsOnly:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:qword_2813469C0 removeNonMatches:1];

  return v5;
}

- (id)convertAlphaCharactersInNumber:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:qword_2813469C8 removeNonMatches:0];

  return v5;
}

- (int)getLengthOfGeographicalAreaCode:(id)a3 error:(id *)a4
{
  v5 = a3;
  LODWORD(self) = [(_NBPhoneNumberUtil *)self getLengthOfGeographicalAreaCode:v5];

  return self;
}

- (int)getLengthOfGeographicalAreaCode:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:v4];
  v6 = [(_NBPhoneNumberUtil *)self helper];
  v7 = [v6 getMetadataForRegion:v5];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [v7 nationalPrefix];
  if (v8)
  {
  }

  else if (([v4 italianLeadingZero] & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(_NBPhoneNumberUtil *)self isNumberGeographical:v4])
  {
    goto LABEL_7;
  }

  v9 = [(_NBPhoneNumberUtil *)self getLengthOfNationalDestinationCode:v4];
LABEL_8:

  return v9;
}

- (int)getLengthOfNationalDestinationCode:(id)a3 error:(id *)a4
{
  v5 = a3;
  LODWORD(self) = [(_NBPhoneNumberUtil *)self getLengthOfNationalDestinationCode:v5];

  return self;
}

- (int)getLengthOfNationalDestinationCode:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 extension];
  v6 = [_NBMetadataHelper hasValue:v5];

  if (v6)
  {
    v7 = [v4 copy];
    [v7 setExtension:0];
  }

  else
  {
    v7 = v4;
  }

  v8 = [(_NBPhoneNumberUtil *)self format:v7 numberFormat:1];
  v9 = [(_NBPhoneNumberUtil *)self componentsSeparatedByRegex:v8 regex:@"\\D+"];
  v10 = [v9 mutableCopy];

  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    v12 = [v11 length];

    if (!v12)
    {
      [v10 removeObjectAtIndex:0];
    }
  }

  if ([v10 count] >= 3)
  {
    v14 = [v4 countryCode];
    v15 = [_NBMetadataHelper regionCodeFromCountryCode:v14];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
LABEL_11:
      v20 = 0;
      while (1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v24 + 1) + 8 * v20) isEqualToString:{@"AR", v24}])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v18)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      if ([(_NBPhoneNumberUtil *)self getNumberType:v4]!= 1)
      {
        goto LABEL_20;
      }

      v21 = [v10 objectAtIndex:2];
      v13 = [v21 length] + 1;
    }

    else
    {
LABEL_17:

LABEL_20:
      v21 = [v10 objectAtIndex:{1, v24}];
      v13 = [v21 length];
    }
  }

  else
  {
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)getCountryMobileTokenFromCountryCode:(int64_t)a3
{
  v3 = qword_2813469D8;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_285461708;
  }

  return v6;
}

- (id)normalizeHelper:(id)a3 normalizationReplacements:(id)a4 removeNonMatches:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 length];
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = [v7 substringWithRange:{v11, 1}];
      v13 = [v12 uppercaseString];
      v14 = [v8 objectForKey:v13];

      if (v14)
      {
        break;
      }

      if (!a5)
      {
        v15 = v10;
        v16 = v12;
        goto LABEL_7;
      }

LABEL_8:

      if (v9 == ++v11)
      {
        goto LABEL_9;
      }
    }

    v15 = v10;
    v16 = v14;
LABEL_7:
    [v15 appendString:v16];
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (BOOL)formattingRuleHasFirstGroupOnly:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v4 regex:@"^\\(?\\$1\\)?"];
  v6 = [v4 length];

  if (v6)
  {
    v7 = v5 < 0;
  }

  else
  {
    v7 = 0;
  }

  return !v7;
}

- (BOOL)isNumberGeographical:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getNumberType:v4];
  v6 = GEO_MOBILE_COUNTRIES;
  v7 = [v4 countryCode];

  v8 = [v6 containsObject:v7];
  if (v5 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return (v5 | 2) == 2 || v9;
}

- (BOOL)isValidRegionCode:(id)a3
{
  v4 = a3;
  if ([_NBMetadataHelper hasValue:v4]&& isNan(v4))
  {
    v5 = [(_NBPhoneNumberUtil *)self helper];
    v6 = [v4 uppercaseString];
    v7 = [v5 getMetadataForRegion:v6];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasValidCountryCallingCode:(id)a3
{
  v3 = [_NBMetadataHelper regionCodeFromCountryCode:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)format:(id)a3 numberFormat:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(_NBPhoneNumberUtil *)self format:v7 numberFormat:a4];

  return v8;
}

- (id)format:(id)a3 numberFormat:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 nationalNumber];
  if ([v7 isEqualToNumber:&unk_285464B00])
  {
    v8 = [v6 rawInput];
    v9 = [_NBMetadataHelper hasValue:v8];

    if (!v9)
    {
      goto LABEL_5;
    }

    v7 = [v6 rawInput];
    if ([_NBMetadataHelper hasValue:v7])
    {
      goto LABEL_12;
    }
  }

LABEL_5:
  v10 = [v6 countryCode];
  v11 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
  if (!a4)
  {
    v16 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v10 phoneNumberFormat:0 formattedNationalNumber:v11 formattedExtension:&stru_285461708];
LABEL_10:
    v7 = v16;
    goto LABEL_11;
  }

  if (![(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v10])
  {
    v16 = v11;
    goto LABEL_10;
  }

  v18 = [_NBMetadataHelper regionCodeFromCountryCode:v10];
  v12 = [v18 objectAtIndex:0];
  v13 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v10 regionCode:v12];
  v14 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:v6 metadata:v13 numberFormat:a4];
  v15 = [(_NBPhoneNumberUtil *)self formatNsn:v11 metadata:v13 phoneNumberFormat:a4 carrierCode:0];
  v7 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v10 phoneNumberFormat:a4 formattedNationalNumber:v15 formattedExtension:v14];

LABEL_11:
LABEL_12:

  return v7;
}

- (id)formatByPattern:(id)a3 numberFormat:(int64_t)a4 userDefinedFormats:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [(_NBPhoneNumberUtil *)self formatByPattern:v9 numberFormat:a4 userDefinedFormats:v10];

  return v11;
}

- (id)formatByPattern:(id)a3 numberFormat:(int64_t)a4 userDefinedFormats:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 countryCode];
  v10 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v7];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v9])
  {
    v11 = [_NBMetadataHelper regionCodeFromCountryCode:v9];
    v12 = v11;
    if (v11 && [v11 count])
    {
      v13 = [v12 objectAtIndex:0];
    }

    else
    {
      v13 = 0;
    }

    v30 = v13;
    v15 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v9 regionCode:v13];
    v16 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:v8 nationalNumber:v10];
    v17 = v16;
    v31 = v12;
    if (v16)
    {
      v29 = v8;
      v18 = [v16 copy];
      v19 = [v17 nationalPrefixFormattingRule];
      if ([(__CFString *)v19 length])
      {
        v20 = v15;
        v21 = [v15 nationalPrefix];
        if ([v21 length])
        {
          v22 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v19 regex:@"\\$NP" withTemplate:v21];

          v19 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v22 regex:@"\\$FG" withTemplate:@"\\$1"];

          v23 = v18;
          v24 = v19;
        }

        else
        {
          v24 = &stru_285461708;
          v23 = v18;
        }

        [v23 setNationalPrefixFormattingRule:v24];
      }

      else
      {
        v20 = v15;
      }

      v26 = a4;
      v25 = [(_NBPhoneNumberUtil *)self formatNsnUsingPattern:v10 formattingPattern:v18 numberFormat:a4 carrierCode:0];

      v8 = v29;
    }

    else
    {
      v20 = v15;
      v25 = v10;
      v26 = a4;
    }

    v27 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:v7 metadata:v20 numberFormat:v26];
    v14 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v9 phoneNumberFormat:v26 formattedNationalNumber:v25 formattedExtension:v27];
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (id)formatNationalNumberWithCarrierCode:(id)a3 carrierCode:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:v7 carrierCode:v8];

  return v9;
}

- (id)formatNationalNumberWithCarrierCode:(id)a3 carrierCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 countryCode];
  v9 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v8])
  {
    v10 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v8];
    v11 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v8 regionCode:v10];
    v12 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:v6 metadata:v11 numberFormat:2];
    v13 = [(_NBPhoneNumberUtil *)self formatNsn:v9 metadata:v11 phoneNumberFormat:2 carrierCode:v7];
    v14 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v8 phoneNumberFormat:2 formattedNationalNumber:v13 formattedExtension:v12];
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

- (id)getMetadataForRegionOrCallingCode:(id)a3 regionCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_NBPhoneNumberUtil *)self helper];
  if ([v7 isEqualToString:0x2854616A8])
  {
    [v8 getMetadataForNonGeographicalRegion:v6];
  }

  else
  {
    [v8 getMetadataForRegion:v7];
  }
  v9 = ;

  return v9;
}

- (id)formatNationalNumberWithPreferredCarrierCode:(id)a3 fallbackCarrierCode:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:v7 carrierCode:v8];

  return v9;
}

- (id)formatNationalNumberWithPreferredCarrierCode:(id)a3 fallbackCarrierCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 preferredDomesticCarrierCode];
  if (v8)
  {
    v9 = [v6 preferredDomesticCarrierCode];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:v6 carrierCode:v10];

  return v11;
}

- (id)formatNumberForMobileDialing:(id)a3 regionCallingFrom:(id)a4 withFormatting:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 countryCode];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v10])
  {
    v11 = [v8 copy];
    [v11 setExtension:&stru_285461708];
    v12 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v10];
    if (![v9 isEqualToString:v12])
    {
      if ([(_NBPhoneNumberUtil *)self canBeInternationallyDialled:v11])
      {
        v16 = [(_NBPhoneNumberUtil *)self format:v11 numberFormat:v5];
        v15 = &stru_285461708;
LABEL_28:

        goto LABEL_29;
      }

      v15 = &stru_285461708;
      if (v5)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    v13 = [(_NBPhoneNumberUtil *)self getNumberType:v11];
    if (![v12 isEqualToString:@"CO"] || v13)
    {
      if ([v12 isEqualToString:@"BR"] && v13 <= 2)
      {
        v17 = [v11 preferredDomesticCarrierCode];
        if ([_NBMetadataHelper hasValue:v17])
        {
          v15 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithPreferredCarrierCode:v11 fallbackCarrierCode:&stru_285461708];
        }

        else
        {
          v15 = &stru_285461708;
        }

        if (v5)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      if (([v10 unsignedIntegerValue] == 1 || (objc_msgSend(v12, "isEqualToString:", 0x2854616A8) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"MX") && v13 <= 2) && -[_NBPhoneNumberUtil canBeInternationallyDialled:](self, "canBeInternationallyDialled:", v11))
      {
        v19 = self;
        v20 = v11;
        v21 = 1;
      }

      else
      {
        v19 = self;
        v20 = v11;
        v21 = 2;
      }

      v14 = [(_NBPhoneNumberUtil *)v19 format:v20 numberFormat:v21];
    }

    else
    {
      v14 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:v11 carrierCode:@"3"];
    }

    v15 = v14;
    if (v5)
    {
LABEL_26:
      v18 = v15;
      v15 = v18;
      goto LABEL_27;
    }

LABEL_16:
    v18 = [(_NBPhoneNumberUtil *)self normalizeHelper:v15 normalizationReplacements:qword_2813469C0 removeNonMatches:1];
LABEL_27:
    v16 = v18;
    goto LABEL_28;
  }

  v15 = [v8 rawInput];
  if ([_NBMetadataHelper hasValue:v15])
  {
    v16 = [v8 rawInput];
  }

  else
  {
    v16 = &stru_285461708;
  }

LABEL_29:

  return v16;
}

- (id)formatOutOfCountryCallingNumber:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:v7 regionCallingFrom:v8];

  return v9;
}

- (id)formatOutOfCountryCallingNumber:(id)a3 regionCallingFrom:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_NBPhoneNumberUtil *)self isValidRegionCode:v7])
  {
    v13 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:1];
    goto LABEL_22;
  }

  v8 = [v6 countryCode];
  v9 = [v8 copy];

  v10 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
  if (![(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v9])
  {
    v14 = v10;
    goto LABEL_8;
  }

  if ([v9 unsignedIntegerValue] != 1)
  {
    v15 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:v7 error:0];
    v16 = [v9 isEqualToNumber:v15];

    if (!v16)
    {
LABEL_11:
      v17 = [(_NBPhoneNumberUtil *)self helper];
      v18 = [v17 getMetadataForRegion:v7];

      v19 = [v18 internationalPrefix];
      v35 = v18;
      v33 = v19;
      if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"[\\d]+(?:[~\\u2053\\u223C\\uFF5E][\\d]+)?" string:v19])
      {
        v20 = v19;
      }

      else
      {
        v21 = [v18 preferredInternationalPrefix];
        v22 = [_NBMetadataHelper hasValue:v21];

        if (!v22)
        {
          v23 = &stru_285461708;
          goto LABEL_17;
        }

        v20 = [v18 preferredInternationalPrefix];
      }

      v23 = v20;
LABEL_17:
      v32 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v9];
      v24 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v9 regionCode:v32];
      v25 = [(_NBPhoneNumberUtil *)self formatNsn:v10 metadata:v24 phoneNumberFormat:1 carrierCode:0];
      v26 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:v6 metadata:v24 numberFormat:1];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@%@", v23, v9, v25, v26];
      [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v9 phoneNumberFormat:1 formattedNationalNumber:v25 formattedExtension:v26];
      v34 = v10;
      v29 = v28 = v23;
      if ([(__CFString *)v28 length])
      {
        v30 = v27;
      }

      else
      {
        v30 = v29;
      }

      v13 = v30;

      v10 = v34;
      goto LABEL_21;
    }

    v14 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:2];
LABEL_8:
    v13 = v14;
    goto LABEL_21;
  }

  if (![(_NBPhoneNumberUtil *)self isNANPACountry:v7])
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:2];
  v13 = [v11 stringWithFormat:@"%@ %@", v9, v12];

LABEL_21:
LABEL_22:

  return v13;
}

- (id)prefixNumberWithCountryCallingCode:(id)a3 phoneNumberFormat:(int64_t)a4 formattedNationalNumber:(id)a5 formattedExtension:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@-%@%@", @"tel:", v9, v10, v11];
  }

  else if (a4 == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"+%@ %@%@", v9, v10, v11, v15];
  }

  else if (a4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, v11, v14, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@%@", v9, v10, v11, v15];
  }
  v12 = ;

  return v12;
}

- (id)formatInOriginalFormat:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self formatInOriginalFormat:v7 regionCallingFrom:v8];

  return v9;
}

- (id)formatInOriginalFormat:(id)a3 regionCallingFrom:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 rawInput];
  if ([_NBMetadataHelper hasValue:v8])
  {
    v9 = [(_NBPhoneNumberUtil *)self hasFormattingPatternForNumber:v6];

    if (!v9)
    {
      v10 = [v6 rawInput];
LABEL_11:
      v15 = v10;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v11 = [v6 countryCodeSource];

  if (!v11)
  {
    v10 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:2];
    goto LABEL_11;
  }

  v12 = [v6 countryCodeSource];
  v13 = [v12 integerValue];

  switch(v13)
  {
    case 10:
      v16 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:1];
      v15 = [v16 substringFromIndex:1];
      break;
    case 5:
      v14 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:v6 regionCallingFrom:v7];
      goto LABEL_13;
    case 1:
      v14 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:1];
LABEL_13:
      v15 = v14;
      goto LABEL_21;
    default:
      v17 = [v6 countryCode];
      v16 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v17];

      v18 = [(_NBPhoneNumberUtil *)self getNddPrefixForRegion:v16 stripNonDigits:1];
      v19 = [(_NBPhoneNumberUtil *)self format:v6 numberFormat:2];
      if (v18 && [v18 length] && (objc_msgSend(v6, "rawInput"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[_NBPhoneNumberUtil rawInputContainsNationalPrefix:nationalPrefix:regionCode:](self, "rawInputContainsNationalPrefix:nationalPrefix:regionCode:", v20, v18, v16), v20, !v21))
      {
        v29 = [(_NBPhoneNumberUtil *)self helper];
        v30 = [v29 getMetadataForRegion:v16];

        v31 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
        v32 = [v30 numberFormats];
        v33 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:v32 nationalNumber:v31];

        if (v33)
        {
          v39 = v30;
          v34 = [v33 nationalPrefixFormattingRule];
          v35 = [v34 rangeOfString:@"$1"];
          if (v35 && v35 != 0x7FFFFFFFFFFFFFFFLL && ([v34 substringWithRange:{0, v35}], v36 = objc_claimAutoreleasedReturnValue(), v34, -[_NBPhoneNumberUtil normalizeDigitsOnly:](self, "normalizeDigitsOnly:", v36), v34 = objc_claimAutoreleasedReturnValue(), v36, objc_msgSend(v34, "length")))
          {
            v38 = [v33 copy];
            [v38 setNationalPrefixFormattingRule:0];
            v40[0] = v38;
            v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
            v15 = [(_NBPhoneNumberUtil *)self formatByPattern:v6 numberFormat:2 userDefinedFormats:v37];
          }

          else
          {
            v15 = v19;
          }

          v30 = v39;
        }

        else
        {
          v15 = v19;
        }
      }

      else
      {
        v15 = v19;
      }

      break;
  }

LABEL_21:
  v22 = [v6 rawInput];
  v23 = v22;
  if (v15 && [v22 length])
  {
    v24 = [(_NBPhoneNumberUtil *)self normalizeHelper:v15 normalizationReplacements:qword_2813469C0 removeNonMatches:1];
    v25 = [(_NBPhoneNumberUtil *)self normalizeHelper:v23 normalizationReplacements:qword_2813469C0 removeNonMatches:1];
    if (([v24 isEqualToString:v25] & 1) == 0)
    {
      v26 = v23;

      v15 = v26;
    }
  }

LABEL_27:
  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)rawInputContainsNationalPrefix:(id)a3 nationalPrefix:(id)a4 regionCode:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:a3];
  if (![(_NBPhoneNumberUtil *)self isStartingStringByRegex:v10 regex:v8])
  {
    goto LABEL_3;
  }

  v11 = [v10 substringFromIndex:{objc_msgSend(v8, "length")}];
  v16 = 0;
  v12 = [(_NBPhoneNumberUtil *)self parse:v11 defaultRegion:v9 error:&v16];
  v13 = v16;
  v14 = [(_NBPhoneNumberUtil *)self isValidNumber:v12];

  if (v13)
  {
LABEL_3:
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasUnexpectedItalianLeadingZero:(id)a3
{
  v4 = a3;
  if ([v4 italianLeadingZero])
  {
    v5 = [v4 countryCode];
    v6 = ![(_NBPhoneNumberUtil *)self isLeadingZeroPossible:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)hasFormattingPatternForNumber:(id)a3
{
  v4 = a3;
  v5 = [v4 countryCode];
  v6 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v5];
  v7 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v5 regionCode:v6];
  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v4];
    v9 = [v7 numberFormats];
    v10 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:v9 nationalNumber:v8];

    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)formatOutOfCountryKeepingAlphaChars:(id)a3 regionCallingFrom:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self formatOutOfCountryKeepingAlphaChars:v7 regionCallingFrom:v8];

  return v9;
}

- (id)formatOutOfCountryKeepingAlphaChars:(id)a3 regionCallingFrom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rawInput];
  v9 = v8;
  if (!v8 || ![v8 length])
  {
    v18 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:v6 regionCallingFrom:v7];
    goto LABEL_30;
  }

  v10 = [v6 countryCode];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v10])
  {
    v11 = [(_NBPhoneNumberUtil *)self normalizeHelper:v9 normalizationReplacements:qword_2813469D0 removeNonMatches:0];

    v12 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
    if ([v12 length] >= 4)
    {
      v13 = [v12 substringWithRange:{0, 3}];
      v14 = [(_NBPhoneNumberUtil *)self indexOfStringByString:v11 target:v13];

      if (v14 != -1)
      {
        v15 = [v11 substringFromIndex:v14];

        v11 = v15;
      }
    }

    v16 = [(_NBPhoneNumberUtil *)self helper];
    v17 = [v16 getMetadataForRegion:v7];

    if ([v10 unsignedIntegerValue] == 1)
    {
      if ([(_NBPhoneNumberUtil *)self isNANPACountry:v7])
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v11];
LABEL_28:

        goto LABEL_29;
      }

      if (v17)
      {
        goto LABEL_17;
      }
    }

    else if (v17)
    {
      v19 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:v7 error:0];
      v20 = [v10 isEqualToNumber:v19];

      if (v20)
      {
        v21 = [v17 numberFormats];
        v22 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:v21 nationalNumber:v12];

        if (v22)
        {
          v23 = [v22 copy];
          [v23 setPattern:@"(\\d+)(.*)"];
          [v23 setFormat:@"$1$2"];
          v18 = [(_NBPhoneNumberUtil *)self formatNsnUsingPattern:v11 formattingPattern:v23 numberFormat:2 carrierCode:0];
        }

        else
        {
          v18 = v11;
        }

        goto LABEL_28;
      }

LABEL_17:
      v24 = [v17 internationalPrefix];
      if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"[\\d]+(?:[~\\u2053\\u223C\\uFF5E][\\d]+)?" string:v24])
      {
        v25 = v24;
      }

      else
      {
        v25 = [v17 preferredInternationalPrefix];
      }

      v26 = v25;
      v31 = v12;

      goto LABEL_22;
    }

    v31 = v12;
    v26 = &stru_285461708;
LABEL_22:
    v27 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v10];
    v28 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v10 regionCode:v27];
    v29 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:v6 metadata:v28 numberFormat:1];
    if ([(__CFString *)v26 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@%@", v26, v10, v11, v29];
    }

    else
    {
      [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:v10 phoneNumberFormat:1 formattedNationalNumber:v11 formattedExtension:v29];
    }
    v18 = ;

    v12 = v31;
    goto LABEL_28;
  }

  v11 = v9;
  v18 = v11;
LABEL_29:

  v9 = v11;
LABEL_30:

  return v18;
}

- (id)formatNsn:(id)a3 metadata:(id)a4 phoneNumberFormat:(int64_t)a5 carrierCode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 intlNumberFormats];
  v14 = [v13 count];
  if (a5 == 2 || !v14)
  {
    v15 = [v11 numberFormats];
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;
  v17 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:v15 nationalNumber:v10];
  if (v17)
  {
    v18 = [(_NBPhoneNumberUtil *)self formatNsnUsingPattern:v10 formattingPattern:v17 numberFormat:a5 carrierCode:v12];
  }

  else
  {
    v18 = v10;
  }

  v19 = v18;

  return v19;
}

- (id)chooseFormattingPatternForNumber:(id)a3 nationalNumber:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 leadingDigitsPatterns];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [v13 leadingDigitsPatterns];
          v17 = [v16 lastObject];
          v18 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:v17];

          if (v18)
          {
            continue;
          }
        }

        v19 = [v13 pattern];
        v20 = [(_NBPhoneNumberUtil *)self matchesEntirely:v19 string:v7];

        if (v20)
        {
          v21 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)formatNsnUsingPattern:(id)a3 formattingPattern:(id)a4 numberFormat:(int64_t)a5 carrierCode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 format];
  v14 = [v11 domesticCarrierCodeFormattingRule];
  if (a5 == 2)
  {
    if (+[_NBMetadataHelper hasValue:](_NBMetadataHelper, "hasValue:", v12) && [v14 length])
    {
      v15 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v14 regex:@"\\$CC" withTemplate:v12];
      v16 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:v13 regex:@"(\\$\\d)" withTemplate:v15];

      v17 = [v11 pattern];
      v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v10 regex:v17 withTemplate:v16];

      v13 = v16;
      goto LABEL_10;
    }

    v15 = [v11 nationalPrefixFormattingRule];
    if ([_NBMetadataHelper hasValue:v15])
    {
      v19 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:v13 regex:@"(\\$\\d)" withTemplate:v15];
      v20 = [v11 pattern];
      v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v10 regex:v20 withTemplate:v19];

      goto LABEL_10;
    }
  }

  else
  {
    v15 = [v11 nationalPrefixFormattingRule];
  }

  v21 = [v11 pattern];
  v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v10 regex:v21 withTemplate:v13];

  if (a5 != 3)
  {
    goto LABEL_11;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"^%@", qword_2813469A0];
  v15 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v18 regex:v22 withTemplate:&stru_285461708];

  v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v15 regex:qword_2813469A0 withTemplate:@"-"];
LABEL_10:

LABEL_11:

  return v18;
}

- (id)getExampleNumberForType:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:v8])
  {
    v9 = [(_NBPhoneNumberUtil *)self helper];
    v10 = [v9 getMetadataForRegion:v8];
    v11 = [(_NBPhoneNumberUtil *)self getNumberDescByType:v10 type:a4];

    v12 = [v11 exampleNumber];
    LODWORD(v9) = [_NBMetadataHelper hasValue:v12];

    if (v9)
    {
      v13 = [v11 exampleNumber];
      v14 = [(_NBPhoneNumberUtil *)self parse:v13 defaultRegion:v8 error:a5];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getExampleNumberForNonGeoEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self helper];
  v8 = [v7 getMetadataForNonGeographicalRegion:v6];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v8 mobile];
  v10 = [v9 exampleNumber];
  v11 = [_NBMetadataHelper hasValue:v10];

  if (v11)
  {
    v12 = [v8 mobile];
  }

  else
  {
    v13 = [v8 tollFree];
    v14 = [v13 exampleNumber];
    v15 = [_NBMetadataHelper hasValue:v14];

    if (v15)
    {
      v12 = [v8 tollFree];
    }

    else
    {
      v16 = [v8 sharedCost];
      v17 = [v16 exampleNumber];
      v18 = [_NBMetadataHelper hasValue:v17];

      if (v18)
      {
        v12 = [v8 sharedCost];
      }

      else
      {
        v19 = [v8 voip];
        v20 = [v19 exampleNumber];
        v21 = [_NBMetadataHelper hasValue:v20];

        if (v21)
        {
          v12 = [v8 voip];
        }

        else
        {
          v22 = [v8 voicemail];
          v23 = [v22 exampleNumber];
          v24 = [_NBMetadataHelper hasValue:v23];

          if (v24)
          {
            v12 = [v8 voicemail];
          }

          else
          {
            v25 = [v8 uan];
            v26 = [v25 exampleNumber];
            v27 = [_NBMetadataHelper hasValue:v26];

            if (v27)
            {
              v12 = [v8 uan];
            }

            else
            {
              v28 = [v8 premiumRate];
              v29 = [v28 exampleNumber];
              v30 = [_NBMetadataHelper hasValue:v29];

              if (!v30)
              {
                goto LABEL_18;
              }

              v12 = [v8 premiumRate];
            }
          }
        }
      }
    }
  }

  v31 = v12;
  v32 = [v12 exampleNumber];

  if (v32)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@", v6, v32];
    v34 = [(_NBPhoneNumberUtil *)self parse:v33 defaultRegion:0x285461628 error:a4];

    goto LABEL_19;
  }

LABEL_18:
  v34 = 0;
LABEL_19:

  return v34;
}

- (id)maybeGetFormattedExtension:(id)a3 metadata:(id)a4 numberFormat:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 extension];
  v10 = [_NBMetadataHelper hasValue:v9];

  if (!v10)
  {
    v15 = &stru_285461708;
    goto LABEL_10;
  }

  if (a5 == 3)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v7 extension];
    v13 = v12;
    v14 = @";ext=";
LABEL_8:
    v15 = [v11 stringWithFormat:@"%@%@", v14, v12];
    goto LABEL_9;
  }

  v16 = [v8 preferredExtnPrefix];
  v17 = [_NBMetadataHelper hasValue:v16];

  v11 = MEMORY[0x277CCACA8];
  if (!v17)
  {
    v12 = [v7 extension];
    v13 = v12;
    v14 = @" ext. ";
    goto LABEL_8;
  }

  v13 = [v8 preferredExtnPrefix];
  v18 = [v7 extension];
  v15 = [v11 stringWithFormat:@"%@%@", v13, v18];

LABEL_9:
LABEL_10:

  return v15;
}

- (id)getNumberDescByType:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 <= 4)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v8 = [v5 mobile];

          if (v8)
          {
            v7 = [v6 mobile];
            goto LABEL_27;
          }
        }

        goto LABEL_21;
      }
    }

    else if (a4 != 2)
    {
      if (a4 == 3)
      {
        [v5 tollFree];
      }

      else
      {
        [v5 premiumRate];
      }

      goto LABEL_6;
    }

    v9 = [v5 fixedLine];

    if (v9)
    {
      v7 = [v6 fixedLine];
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        v7 = [v5 pager];
        goto LABEL_27;
      case 9:
        v7 = [v5 uan];
        goto LABEL_27;
      case 10:
        v7 = [v5 voicemail];
        goto LABEL_27;
    }

LABEL_21:
    v7 = [v6 generalDesc];
    goto LABEL_27;
  }

  if (a4 != 5)
  {
    if (a4 == 6)
    {
      [v5 voip];
    }

    else
    {
      [v5 personalNumber];
    }

    v7 = LABEL_6:;
    goto LABEL_27;
  }

  v7 = [v5 sharedCost];
LABEL_27:
  v10 = v7;

  return v10;
}

- (int64_t)getNumberType:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:v4];
  v6 = [v4 countryCode];
  v7 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v6 regionCode:v5];

  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v4];
    v9 = [(_NBPhoneNumberUtil *)self getNumberTypeHelper:v8 metadata:v7];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int64_t)getNumberTypeHelper:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 generalDesc];
  if (![(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v8])
  {
    goto LABEL_22;
  }

  v9 = [v7 premiumRate];
  v10 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v9];

  if (v10)
  {
    v11 = 4;
    goto LABEL_23;
  }

  v12 = [v7 tollFree];
  v13 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v12];

  if (v13)
  {
    v11 = 3;
    goto LABEL_23;
  }

  v14 = [v7 sharedCost];
  v15 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v14];

  if (v15)
  {
    v11 = 5;
    goto LABEL_23;
  }

  v16 = [v7 voip];
  v17 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v16];

  if (v17)
  {
    v11 = 6;
    goto LABEL_23;
  }

  v18 = [v7 personalNumber];
  v19 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v18];

  if (v19)
  {
    v11 = 7;
    goto LABEL_23;
  }

  v20 = [v7 pager];
  v21 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v20];

  if (v21)
  {
    v11 = 8;
    goto LABEL_23;
  }

  v22 = [v7 uan];
  v23 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v22];

  if (v23)
  {
    v11 = 9;
    goto LABEL_23;
  }

  v24 = [v7 voicemail];
  v25 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v24];

  if (v25)
  {
    v11 = 10;
    goto LABEL_23;
  }

  v26 = [v7 fixedLine];
  v27 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v26];

  v28 = [v7 sameMobileAndFixedLinePattern];
  if (v27)
  {
    if (v28)
    {
      v11 = 2;
    }

    else
    {
      v30 = [v7 mobile];
      v31 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v30];

      if (v31)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_23;
  }

  if (v28)
  {
LABEL_22:
    v11 = -1;
    goto LABEL_23;
  }

  v32 = [v7 mobile];
  v33 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v6 numberDesc:v32];

  if (v33)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

LABEL_23:

  return v11;
}

- (BOOL)isNumberMatchingDesc:(id)a3 numberDesc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v9 = [v7 possibleLength];
  if (![v9 count])
  {

    goto LABEL_5;
  }

  v10 = [v7 possibleLength];
  v11 = [v10 indexOfObject:v8];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v13 = [v7 nationalNumberPattern];
    v12 = [(_NBPhoneNumberUtil *)self matchesEntirely:v13 string:v6];

    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (BOOL)isValidNumber:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:v4];
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isValidNumberForRegion:v4 regionCode:v5];

  return self;
}

- (BOOL)isValidNumberForRegion:(id)a3 regionCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 countryCode];
  v9 = [v8 copy];

  v10 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v9 regionCode:v7];
  if (v10 && (([@"001" isEqualToString:v7] & 1) != 0 || (-[_NBPhoneNumberUtil getCountryCodeForValidRegion:error:](self, "getCountryCodeForValidRegion:error:", v7, 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToNumber:", v11), v11, v12)))
  {
    v13 = [v10 generalDesc];
    v14 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v6];
    v15 = [v13 nationalNumberPattern];
    v16 = [_NBMetadataHelper hasValue:v15];

    if (v16)
    {
      v17 = [(_NBPhoneNumberUtil *)self getNumberTypeHelper:v14 metadata:v10]!= -1;
    }

    else
    {
      v17 = ([v14 length] - 3) < 0xE;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)getRegionCodeForNumber:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 countryCode];
    v7 = [_NBMetadataHelper regionCodeFromCountryCode:v6];

    if (v7 && [v7 count])
    {
      if ([v7 count] == 1)
      {
        [v7 objectAtIndex:0];
      }

      else
      {
        [(_NBPhoneNumberUtil *)self getRegionCodeForNumberFromRegionList:v5 regionCodes:v7];
      }
      v8 = ;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getRegionCodeForNumberFromRegionList:(id)a3 regionCodes:(id)a4
{
  v6 = a4;
  v7 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:a3];
  v8 = [v6 count];
  v9 = [(_NBPhoneNumberUtil *)self helper];
  if (!v8)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  while (1)
  {
    v11 = [v6 objectAtIndex:v10];
    v12 = [v9 getMetadataForRegion:v11];
    v13 = [v12 leadingDigits];
    v14 = [_NBMetadataHelper hasValue:v13];

    if (!v14)
    {
      break;
    }

    v15 = [v12 leadingDigits];
    v16 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:v15];

    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_7:

    if (v8 == ++v10)
    {
      goto LABEL_8;
    }
  }

  if ([(_NBPhoneNumberUtil *)self getNumberTypeHelper:v7 metadata:v12]== -1)
  {
    goto LABEL_7;
  }

LABEL_9:
  v17 = v11;

LABEL_10:

  return v17;
}

- (id)getRegionCodeForCountryCode:(id)a3
{
  v3 = [_NBMetadataHelper regionCodeFromCountryCode:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectAtIndex:0];
  }

  else
  {
    v5 = @"ZZ";
  }

  v6 = v5;

  return v6;
}

- (id)getCountryCodeForRegion:(id)a3
{
  v4 = a3;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:v4])
  {
    v9 = 0;
    v5 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:v4 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = &unk_285464B00;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = &unk_285464B00;
  }

  return v7;
}

- (id)getCountryCodeForValidRegion:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self helper];
  v8 = [v7 getMetadataForRegion:v6];

  if (v8)
  {
    v9 = [v8 countryCode];
  }

  else
  {
    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid region code:%@", v6];
    v12 = [v10 dictionaryWithObject:v11 forKey:*MEMORY[0x277CCA450]];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_REGION_CODE" code:0 userInfo:v12];
    }

    v9 = &unk_285464B18;
  }

  return v9;
}

- (id)getNddPrefixForRegion:(id)a3 stripNonDigits:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_NBPhoneNumberUtil *)self helper];
  v8 = [v7 getMetadataForRegion:v6];

  if (v8)
  {
    v9 = [v8 nationalPrefix];
    if ([v9 length])
    {
      if (v4)
      {
        v10 = [v9 stringByReplacingOccurrencesOfString:@"~" withString:&stru_285461708];

        v9 = v10;
      }

      v11 = v9;
      v9 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isNANPACountry:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5 = [_NBMetadataHelper regionCodeFromCountryCode:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v3 uppercaseString];
        LOBYTE(v12) = [v12 isEqualToString:v13];

        v9 |= v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return (v3 != 0) & v9;
}

- (BOOL)isLeadingZeroPossible:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v4];
  v6 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v4 regionCode:v5];

  if (v6)
  {
    v7 = [v6 leadingZeroPossible];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAlphaNumber:(id)a3
{
  v4 = a3;
  if ([(_NBPhoneNumberUtil *)self isViablePhoneNumber:v4])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];

    v6 = [v5 copy];
    v11 = v6;
    v7 = [(_NBPhoneNumberUtil *)self maybeStripExtension:&v11];
    v8 = v11;

    v9 = [(_NBPhoneNumberUtil *)self matchesEntirely:@"(?:.*?[A-Za-z]){3}.*" string:v8];
    v4 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPossibleNumber:(id)a3 error:(id *)a4
{
  v5 = a3;
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isPossibleNumber:v5];

  return self;
}

- (int64_t)validateNumberLength:(id)a3 metadata:(id)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_NBPhoneNumberUtil *)self getNumberDescByType:v9 type:a5];
  v11 = [v10 possibleLength];
  if ([v11 count])
  {
    v12 = [v10 possibleLength];
  }

  else
  {
    v13 = [v9 generalDesc];
    v12 = [v13 possibleLength];
  }

  v14 = [v10 possibleLengthLocalOnly];
  if (a5 == 2)
  {
    v15 = [(_NBPhoneNumberUtil *)self getNumberDescByType:v9 type:0];
    v16 = [(_NBPhoneNumberUtil *)self descHasPossibleNumberData:v15];

    if (v16)
    {
      v17 = [(_NBPhoneNumberUtil *)self validateNumberLength:v8 metadata:v9 type:1];
      goto LABEL_30;
    }

    v18 = [(_NBPhoneNumberUtil *)self getNumberDescByType:v9 type:1];
    if ([(_NBPhoneNumberUtil *)self descHasPossibleNumberData:v18])
    {
      v19 = [v18 possibleLength];
      if ([v19 count])
      {
        v20 = [v18 possibleLength];
        v21 = [v12 arrayByAddingObjectsFromArray:v20];
      }

      else
      {
        v20 = [v9 generalDesc];
        v22 = [v20 possibleLength];
        v21 = [v12 arrayByAddingObjectsFromArray:v22];
      }

      v23 = [v21 sortedArrayUsingSelector:sel_compare_];

      v24 = [v14 count];
      v25 = [v18 possibleLengthLocalOnly];
      if (v24)
      {
        v26 = [v14 arrayByAddingObjectsFromArray:v25];

        v25 = [v26 sortedArrayUsingSelector:sel_compare_];

        v14 = v26;
      }

      v14 = v25;
      v12 = v23;
    }
  }

  v27 = [v12 firstObject];
  v28 = [v27 isEqualToNumber:&unk_285464B18];

  if (v28)
  {
    v17 = -1;
  }

  else
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    if ([v14 containsObject:v29])
    {
      v17 = 5;
    }

    else
    {
      v30 = [v12 firstObject];
      v31 = [v30 compare:v29];
      if (v31)
      {
        if (v31 == 1)
        {
          v17 = 3;
        }

        else
        {
          v32 = [v12 lastObject];
          v33 = [v32 compare:v29];

          if (v33 == -1)
          {
            v17 = 4;
          }

          else
          {
            v17 = 1;
            v34 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
            if (![v34 containsObject:v29])
            {
              v17 = -1;
            }
          }
        }
      }

      else
      {
        v17 = 1;
      }
    }
  }

LABEL_30:

  return v17;
}

- (int64_t)testNumberLength:(id)a3 desc:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 possibleLength];
  v8 = [v5 possibleLengthLocalOnly];

  v9 = [v6 length];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  LOBYTE(v6) = [v8 containsObject:v10];

  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v7 objectAtIndexedSubscript:0];
    if ([v12 unsignedIntegerValue] == v9)
    {
      v11 = 1;
    }

    else if ([v12 unsignedIntegerValue] <= v9)
    {
      v13 = [v7 count] - 1;
      if (v13 >= [v7 count] || (objc_msgSend(v7, "objectAtIndexedSubscript:", objc_msgSend(v7, "count") - 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "integerValue"), v14, v15 >= v9))
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
        if ([v7 containsObject:v16])
        {
          v11 = 1;
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 3;
    }
  }

  return v11;
}

- (int64_t)isPossibleNumberWithReason:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(_NBPhoneNumberUtil *)self isPossibleNumberWithReason:v5];

  return v6;
}

- (int64_t)isPossibleNumberWithReason:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v4];
  v6 = [v4 countryCode];

  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v6])
  {
    v7 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v6];
    v8 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v6 regionCode:v7];
    v9 = [v8 generalDesc];
    v10 = [(_NBPhoneNumberUtil *)self testNumberLength:v5 desc:v9];
  }

  else
  {
    v10 = 2;
  }

  return v10;
}

- (BOOL)isPossibleNumberString:(id)a3 regionDialingFrom:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v10 = [(_NBPhoneNumberUtil *)self parse:v9 defaultRegion:v8 error:a5];

  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isPossibleNumber:v10];
  return self;
}

- (BOOL)truncateTooLongNumber:(id)a3
{
  v4 = a3;
  if ([(_NBPhoneNumberUtil *)self isValidNumber:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 copy];
    v7 = [v4 nationalNumber];
    while (1)
    {
      v8 = v7;
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{(objc_msgSend(v7, "unsignedLongLongValue") / 0xAuLL)}];

      v9 = [v7 copy];
      [v6 setNationalNumber:v9];

      if (([v7 isEqualToNumber:&unk_285464B00] & 1) != 0 || -[_NBPhoneNumberUtil isPossibleNumberWithReason:](self, "isPossibleNumberWithReason:", v6) == 3)
      {
        break;
      }

      if ([(_NBPhoneNumberUtil *)self isValidNumber:v6])
      {
        [v4 setNationalNumber:v7];
        v5 = 1;
        goto LABEL_9;
      }
    }

    v5 = 0;
LABEL_9:
  }

  return v5;
}

- (id)extractCountryCode:(id)a3 nationalNumber:(id *)a4
{
  v5 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  if ([v5 length] && (objc_msgSend(v5, "substringToIndex:", 1), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"0"), v6, (v7 & 1) == 0) && (v8 = objc_msgSend(v5, "length"), v9 = objc_msgSend(v5, "hasPrefix:", @"+"), v8))
  {
    v10 = 3;
    if (v9)
    {
      v10 = 4;
    }

    if (v10 >= v8)
    {
      v10 = v8;
    }

    v11 = -v10;
    v12 = 1;
    while (1)
    {
      v13 = [v5 substringWithRange:{0, v12}];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "integerValue")}];
      v15 = [_NBMetadataHelper regionCodeFromCountryCode:v14];
      v16 = v15;
      if (v15)
      {
        if ([v15 count])
        {
          break;
        }
      }

      ++v12;
      if (v11 + v12 == 1)
      {
        v14 = &unk_285464B00;
        goto LABEL_14;
      }
    }

    if (a4)
    {
      v18 = *a4;
      v19 = MEMORY[0x277CCACA8];
      v20 = [v5 substringFromIndex:v12];
      v21 = v20;
      if (v18)
      {
        [v19 stringWithFormat:@"%@%@", v18, v20];
      }

      else
      {
        [v19 stringWithFormat:@"%@", v20, v22];
      }
      *a4 = ;
    }
  }

  else
  {
    v14 = &unk_285464B00;
  }

LABEL_14:

  return v14;
}

- (id)getSupportedRegions
{
  v2 = +[_NBMetadataHelper CCode2CNMap];
  v3 = [v2 allKeys];

  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_569];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)maybeExtractCountryCode:(id)a3 metadata:(id)a4 nationalNumber:(id *)a5 keepRawInput:(BOOL)a6 phoneNumber:(id *)a7 error:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = &unk_285464B00;
  if (a5 && a7 && [v14 length])
  {
    v17 = [v14 copy];
    if (v15)
    {
      v18 = [v15 internationalPrefix];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = @"NonMatch";
      }
    }

    else
    {
      v19 = &stru_285461708;
    }

    v47 = v17;
    v45 = v19;
    v20 = [(_NBPhoneNumberUtil *)self maybeStripInternationalPrefixAndNormalize:&v47 possibleIddPrefix:?];
    v21 = v47;

    if (v10)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
      [*a7 setCountryCodeSource:v22];
    }

    if (v20 != 20)
    {
      if ([v21 length] > 2)
      {
        v35 = [(_NBPhoneNumberUtil *)self extractCountryCode:v21 nationalNumber:a5];
        if ([v35 isEqualToNumber:&unk_285464B00])
        {
          v36 = MEMORY[0x277CBEAC0];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_COUNTRY_CODE:%@", v35];
          v38 = [v36 dictionaryWithObject:v37 forKey:*MEMORY[0x277CCA450]];

          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_COUNTRY_CODE" code:0 userInfo:v38];
          }

          v16 = &unk_285464B00;
        }

        else
        {
          [*a7 setCountryCode:v35];
          v16 = v35;
        }
      }

      else
      {
        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"TOO_SHORT_AFTER_IDD:%@", v21];
        v34 = [v32 dictionaryWithObject:v33 forKey:*MEMORY[0x277CCA450]];

        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TOO_SHORT_AFTER_IDD" code:0 userInfo:v34];
        }

        v16 = &unk_285464B00;
      }

      goto LABEL_33;
    }

    if (v15)
    {
      v16 = [v15 countryCode];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v16];
      v24 = [v21 copy];
      if ([v24 hasPrefix:v23])
      {
        v42 = v23;
        v41 = v24;
        v25 = [v24 substringFromIndex:{objc_msgSend(v23, "length")}];
        v43 = [v15 generalDesc];
        v44 = [v43 nationalNumberPattern];
        v46 = v25;
        [(_NBPhoneNumberUtil *)self maybeStripNationalPrefixAndCarrierCode:&v46 metadata:v15 carrierCode:0];
        v26 = v21;
        v27 = v46;

        v40 = v27;
        v28 = v27;
        v21 = v26;
        v29 = [v28 copy];
        if (![(_NBPhoneNumberUtil *)self matchesEntirely:v44 string:v21]&& [(_NBPhoneNumberUtil *)self matchesEntirely:v44 string:v29]|| [(_NBPhoneNumberUtil *)self testNumberLength:v21 desc:v43]== 4)
        {
          *a5 = [*a5 stringByAppendingString:v29];
          if (v10)
          {
            [MEMORY[0x277CCABB0] numberWithInteger:10];
            v31 = v30 = v29;
            [*a7 setCountryCodeSource:v31];

            v29 = v30;
          }

          [*a7 setCountryCode:v16];

          goto LABEL_33;
        }

        v24 = v41;
        v23 = v42;
      }
    }

    v16 = &unk_285464B00;
    [*a7 setCountryCode:&unk_285464B00];
LABEL_33:
  }

  return v16;
}

- (BOOL)descHasPossibleNumberData:(id)a3
{
  v3 = a3;
  v4 = [v3 possibleLength];
  if ([v4 count] == 1)
  {
    v5 = [v3 possibleLength];
    v6 = [v5 firstObject];
    v7 = [v6 isEqualToNumber:&unk_285464B18] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)parsePrefixAsIdd:(id)a3 sourceString:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [*a4 copy];
    if ([(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:v6])
    {
      LOBYTE(a4) = 0;
LABEL_13:

      goto LABEL_14;
    }

    v8 = [(_NBPhoneNumberUtil *)self matchesByRegex:v7 regex:v6];
    v9 = [v8 objectAtIndex:0];

    v10 = [v9 range];
    v12 = [v7 substringWithRange:{v10, v11}];
    v13 = [v7 substringFromIndex:{objc_msgSend(v12, "length")}];
    v14 = -[NSRegularExpression matchesInString:options:range:](self->_CAPTURING_DIGIT_PATTERN, "matchesInString:options:range:", v13, 0, 0, [v13 length]);
    v15 = v14;
    if (v14)
    {
      if ([v14 count])
      {
        v16 = [v15 objectAtIndex:0];

        if (v16)
        {
          v17 = [v15 objectAtIndex:0];
          v18 = [v17 range];
          v20 = [v13 substringWithRange:{v18, v19}];

          if ([v20 length])
          {
            v21 = [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:v20];
            v22 = [v21 isEqualToString:@"0"];

            if (v22)
            {

              LOBYTE(a4) = 0;
LABEL_12:

              goto LABEL_13;
            }
          }
        }
      }
    }

    *a4 = [v13 copy];
    LOBYTE(a4) = 1;
    goto LABEL_12;
  }

LABEL_14:

  return a4;
}

- (int64_t)maybeStripInternationalPrefixAndNormalize:(id *)a3 possibleIddPrefix:(id)a4
{
  v6 = a4;
  if (a3 && [*a3 length])
  {
    if ([(_NBPhoneNumberUtil *)self isStartingStringByRegex:*a3 regex:qword_281346978])
    {
      v7 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:*a3 regex:qword_281346978 withTemplate:&stru_285461708];
      *a3 = v7;
      *a3 = [(_NBPhoneNumberUtil *)self normalize:v7];
      v8 = 1;
    }

    else
    {
      v9 = [v6 copy];
      [(_NBPhoneNumberUtil *)self normalizeSB:a3];
      if ([(_NBPhoneNumberUtil *)self parsePrefixAsIdd:v9 sourceString:a3])
      {
        v8 = 5;
      }

      else
      {
        v8 = 20;
      }
    }
  }

  else
  {
    v8 = 20;
  }

  return v8;
}

- (BOOL)maybeStripNationalPrefixAndCarrierCode:(id *)a3 metadata:(id)a4 carrierCode:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [*a3 copy];
    v10 = [v9 length];
    v11 = [v8 nationalPrefixForParsing];
    if (!v10 || ![_NBMetadataHelper hasValue:v11])
    {
      LOBYTE(a3) = 0;
LABEL_42:

      goto LABEL_43;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)", v11];
    v45 = 0;
    v13 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v12 options:0 error:&v45];
    v44 = v45;
    v14 = [v13 matchesInString:v9 options:0 range:{0, v10}];
    v15 = v14;
    if (!v14 || ![v14 count])
    {
      LOBYTE(a3) = 0;
LABEL_41:

      goto LABEL_42;
    }

    v38 = v13;
    v41 = v12;
    v16 = [v8 generalDesc];
    v40 = [v16 nationalNumberPattern];

    v17 = [v15 objectAtIndex:0];
    v18 = [v17 range];
    v42 = [v9 substringWithRange:{v18, v19}];
    v20 = [v17 numberOfRanges] - 1;
    v43 = [v8 nationalPrefixTransformRule];
    v36 = v20;
    v37 = v17;
    v21 = [v17 rangeAtIndex:v20];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL || (v23 = v21, v24 = v22, v21 >= [v9 length]))
    {
      v39 = 0;
    }

    else
    {
      v39 = [v9 substringWithRange:{v23, v24}];
    }

    if (v43 && [v43 length] && +[_NBMetadataHelper hasValue:](_NBMetadataHelper, "hasValue:", v39))
    {
      v25 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:v9 regex:v41 withTemplate:v43];
      v26 = 0;
    }

    else
    {
      v25 = [v9 substringFromIndex:{objc_msgSend(v42, "length")}];
      v26 = 1;
    }

    v27 = v40;
    if ([_NBMetadataHelper hasValue:v40]&& [(_NBPhoneNumberUtil *)self matchesEntirely:v40 string:v9]&& ![(_NBPhoneNumberUtil *)self matchesEntirely:v40 string:v25])
    {
      LOBYTE(a3) = 0;
      v12 = v41;
      v29 = v39;
      goto LABEL_40;
    }

    if (v36)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v28 == 1)
    {
      v29 = v39;
      if (![_NBMetadataHelper hasValue:v39])
      {
        v33 = [_NBMetadataHelper hasValue:v42];
        v27 = v40;
        v12 = v41;
        if (!a5)
        {
          goto LABEL_39;
        }

        if (!v33)
        {
          goto LABEL_39;
        }

        v31 = *a5;
        if (!*a5)
        {
          goto LABEL_39;
        }

        v32 = v42;
        goto LABEL_38;
      }

      v27 = v40;
      v12 = v41;
      if (!a5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v36 < 2)
      {
        v30 = 1;
      }

      else
      {
        v30 = v26;
      }

      v27 = v40;
      v12 = v41;
      v29 = v39;
      if (!a5 || (v30 & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    v31 = *a5;
    if (!*a5)
    {
LABEL_39:
      v34 = v25;
      *a3 = v25;
      LOBYTE(a3) = 1;
LABEL_40:

      v13 = v38;
      goto LABEL_41;
    }

    v32 = v29;
LABEL_38:
    *a5 = [v31 stringByAppendingString:v32];
    goto LABEL_39;
  }

LABEL_43:

  return a3;
}

- (id)maybeStripExtension:(id *)a3
{
  if (a3)
  {
    v5 = [*a3 copy];
    v6 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v5 regex:qword_281346998];
    if ((v6 & 0x80000000) != 0 || (v7 = v6, [v5 substringWithRange:{0, v6}], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[_NBPhoneNumberUtil isViablePhoneNumber:](self, "isViablePhoneNumber:", v8), v8, !v9))
    {
      v18 = &stru_285461708;
    }

    else
    {
      v10 = [(_NBPhoneNumberUtil *)self matchFirstByRegex:v5 regex:qword_281346998];
      v11 = [v10 numberOfRanges];
      if (v11 < 2)
      {
        v18 = &stru_285461708;
      }

      else
      {
        v12 = v11;
        v13 = 1;
        while (1)
        {
          v14 = [v10 rangeAtIndex:v13];
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v14;
            v17 = v15;
            if (v14 < [v5 length])
            {
              break;
            }
          }

          if (v12 == ++v13)
          {
            v18 = &stru_285461708;
            goto LABEL_14;
          }
        }

        v18 = [*a3 substringWithRange:{v16, v17}];
        v19 = [v5 substringWithRange:{0, v7}];
        *a3 = &stru_285461708;
        *a3 = [&stru_285461708 stringByAppendingString:v19];
      }

LABEL_14:
    }
  }

  else
  {
    v18 = &stru_285461708;
  }

  return v18;
}

- (BOOL)checkRegionForParsing:(id)a3 defaultRegion:(id)a4
{
  v6 = a3;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:a4])
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 && [v6 length] && -[_NBPhoneNumberUtil isStartingStringByRegex:regex:](self, "isStartingStringByRegex:regex:", v6, qword_281346978);
  }

  return v7;
}

- (id)parse:(id)a3 defaultRegion:(id)a4 error:(id *)a5
{
  v13 = 0;
  v7 = [(_NBPhoneNumberUtil *)self parseHelper:a3 defaultRegion:a4 keepRawInput:0 checkRegion:1 error:&v13];
  v8 = v13;
  v9 = v8;
  if (a5 && v8)
  {
    v10 = [v8 description];
    v11 = [v9 domain];
    *a5 = [(_NBPhoneNumberUtil *)self errorWithObject:v10 withDomain:v11];
  }

  return v7;
}

- (id)parseWithPhoneCarrierRegion:(id)a3 error:(id *)a4
{
  v6 = [a3 stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v7 = [(_NBPhoneNumberUtil *)self countryCodeByCarrier];
  if ([@"ZZ" isEqualToString:v7])
  {
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [v8 objectForKey:*MEMORY[0x277CBE690]];

    v7 = v9;
  }

  v10 = [(_NBPhoneNumberUtil *)self parse:v6 defaultRegion:v7 error:a4];

  return v10;
}

- (CTTelephonyNetworkInfo)telephonyNetworkInfo
{
  if (qword_2813469E0 != -1)
  {
    dispatch_once(&qword_2813469E0, &__block_literal_global_590);
  }

  v3 = qword_2813469E8;

  return v3;
}

- (id)countryCodeByCarrier
{
  v2 = [(_NBPhoneNumberUtil *)self telephonyNetworkInfo];
  v3 = [v2 subscriberCellularProvider];
  v4 = [v3 isoCountryCode];

  if (![v4 length])
  {
    v5 = @"ZZ";

    v4 = v5;
  }

  return v4;
}

- (id)parseAndKeepRawInput:(id)a3 defaultRegion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!-[_NBPhoneNumberUtil isValidRegionCode:](self, "isValidRegionCode:", v9) && [v8 length] && (objc_msgSend(v8, "hasPrefix:", @"+") & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid country code:%@", v8];
    v12 = [v10 dictionaryWithObject:v11 forKey:*MEMORY[0x277CCA450]];

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_COUNTRY_CODE" code:0 userInfo:v12];
    }
  }

  v13 = [(_NBPhoneNumberUtil *)self parseHelper:v8 defaultRegion:v9 keepRawInput:1 checkRegion:1 error:a5];

  return v13;
}

- (void)setItalianLeadingZerosForPhoneNumber:(id)a3 phoneNumber:(id)a4
{
  v10 = a3;
  v5 = a4;
  if ([v10 length] >= 2)
  {
    if ([v10 hasPrefix:@"0"])
    {
      [v5 setItalianLeadingZero:1];
      if (([v10 length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = 1;
        while (1)
        {
          v7 = [v10 substringWithRange:{v6, 1}];
          v8 = [v7 isEqualToString:@"0"];

          if (!v8)
          {
            break;
          }

          if (++v6 >= ([v10 length] - 1))
          {
            goto LABEL_9;
          }
        }

        if (v6 == 1)
        {
          goto LABEL_10;
        }

LABEL_9:
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
        [v5 setNumberOfLeadingZeros:v9];
      }
    }
  }

LABEL_10:
}

- (void)buildNationalNumberForParsing:(id)a3 nationalNumber:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    goto LABEL_15;
  }

  v23 = v6;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = [(_NBPhoneNumberUtil *)self indexOfStringByString:v23 target:@";phone-context="];
  if (v8 < 1)
  {
    v12 = [(_NBPhoneNumberUtil *)self extractPossibleNumber:v23];
  }

  else
  {
    v9 = v8;
    v10 = [@";phone-context=" length] + v8;
    if ([v23 characterAtIndex:v10] == 43)
    {
      v11 = [v23 rangeOfString:@";" options:2 range:{v10, objc_msgSend(v23, "length") - v10}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v23 substringFromIndex:v10];
      }

      else
      {
        [v23 substringWithRange:{v10, v11 - v10}];
      }
      v13 = ;
      [v7 appendString:v13];
    }

    if ([(_NBPhoneNumberUtil *)self indexOfStringByString:v23 target:@"tel:"]< 1)
    {
      goto LABEL_12;
    }

    v14 = [(_NBPhoneNumberUtil *)self indexOfStringByString:v23 target:@"tel:"];
    v15 = [@"tel:" length];
    v12 = [v23 substringWithRange:{v15 + v14, v9 - (v15 + v14)}];
  }

  v16 = v12;
  [v7 appendString:v12];

LABEL_12:
  v17 = [v7 copy];
  v18 = [(_NBPhoneNumberUtil *)self indexOfStringByString:v17 target:@";isub="];
  if (v18 >= 1)
  {
    v19 = v18;
    v20 = objc_alloc(MEMORY[0x277CCAB68]);
    v21 = [v17 substringWithRange:{0, v19}];
    v22 = [v20 initWithString:v21];

    v7 = v22;
  }

  *a4 = [v7 copy];

  v6 = v23;
LABEL_15:
}

- (int64_t)isNumberMatch:(id)a3 second:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_NBPhoneNumberUtil *)self isNumberMatch:v7 second:v8];

  return v9;
}

- (int64_t)isNumberMatch:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = 0;
    v8 = [(_NBPhoneNumberUtil *)self parse:v6 defaultRegion:0x285461628 error:&v45];
    v9 = v45;
    v10 = v9;
    if (v9)
    {
      v11 = [v9 domain];
      v12 = [v11 isEqualToString:@"INVALID_COUNTRY_CODE"];

      if (!v12)
      {
        v19 = 0;
        v17 = 0;
        v15 = v8;
        goto LABEL_51;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [v7 countryCode];
        v14 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v13];

        if (v14 != @"ZZ")
        {
          v44 = 0;
          v15 = [(_NBPhoneNumberUtil *)self parse:v6 defaultRegion:v14 error:&v44];
          v16 = v44;

          v17 = 0;
          if (!v16)
          {
            v18 = [(_NBPhoneNumberUtil *)self isNumberMatch:v15 second:v7];
            if (v18 == 4)
            {
              v17 = 3;
            }

            else
            {
              v17 = v18;
            }
          }

          v19 = 0;
          goto LABEL_51;
        }
      }

      v43 = 0;
      v15 = [(_NBPhoneNumberUtil *)self parseHelper:v6 defaultRegion:0 keepRawInput:0 checkRegion:0 error:&v43];
      v40 = v43;

      if (v40)
      {
        v19 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v15 = v8;
    }
  }

  else
  {
    v15 = [v6 copy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0;
    v19 = [(_NBPhoneNumberUtil *)self parse:v7 defaultRegion:0x285461628 error:&v42];
    v20 = v42;
    v10 = v20;
    if (v20)
    {
      v21 = [v20 domain];
      v22 = [v21 isEqualToString:@"INVALID_COUNTRY_CODE"];

      if (!v22)
      {
LABEL_50:
        v17 = 0;
        goto LABEL_51;
      }

      v23 = self;
      v24 = v7;
      v25 = v15;
    }

    else
    {
      v23 = self;
      v24 = v6;
      v25 = v19;
    }

    v17 = [(_NBPhoneNumberUtil *)v23 isNumberMatch:v24 second:v25];
LABEL_51:

    goto LABEL_52;
  }

  v19 = [v7 copy];
  [v15 setRawInput:&stru_285461708];
  [v15 clearCountryCodeSource];
  [v15 setPreferredDomesticCarrierCode:&stru_285461708];
  [v19 setRawInput:&stru_285461708];
  [v19 clearCountryCodeSource];
  [v19 setPreferredDomesticCarrierCode:&stru_285461708];
  v26 = [v15 extension];
  if (v26)
  {
    v27 = v26;
    v28 = [v15 extension];
    v29 = [v28 length];

    if (!v29)
    {
      [v15 setExtension:0];
    }
  }

  v30 = [v19 extension];
  if (v30)
  {
    v31 = v30;
    v32 = [v19 extension];
    v33 = [v32 length];

    if (!v33)
    {
      [v19 setExtension:0];
    }
  }

  v34 = [v15 extension];
  if (![_NBMetadataHelper hasValue:v34])
  {
    goto LABEL_32;
  }

  v35 = [v19 extension];
  if (![_NBMetadataHelper hasValue:v35])
  {

LABEL_32:
LABEL_33:
    v10 = [v15 countryCode];
    v39 = [v19 countryCode];
    if ([v10 isEqualToNumber:&unk_285464B00] & 1) != 0 || (objc_msgSend(v39, "isEqualToNumber:", &unk_285464B00))
    {
      [v15 setCountryCode:&unk_285464B00];
      [v19 setCountryCode:&unk_285464B00];
      if ([v15 isEqual:v19])
      {
        v17 = 3;
      }

      else if ([(_NBPhoneNumberUtil *)self isNationalNumberSuffixOfTheOther:v15 second:v19])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else if ([v15 isEqual:v19])
    {
      v17 = 4;
    }

    else if ([v10 isEqualToNumber:v39] && -[_NBPhoneNumberUtil isNationalNumberSuffixOfTheOther:second:](self, "isNationalNumberSuffixOfTheOther:second:", v15, v19))
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_51;
  }

  v36 = [v15 extension];
  v37 = [v19 extension];
  v38 = [v36 isEqualToString:v37];

  if (v38)
  {
    goto LABEL_33;
  }

  v17 = 1;
LABEL_52:

  return v17;
}

- (BOOL)isNationalNumberSuffixOfTheOther:(id)a3 second:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [a3 nationalNumber];
  v8 = [v5 stringWithFormat:@"%@", v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v6 nationalNumber];

  v11 = [v9 stringWithFormat:@"%@", v10];

  if ([v8 hasSuffix:v11])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v11 hasSuffix:v8];
  }

  return v12;
}

- (BOOL)canBeInternationallyDialled:(id)a3 error:(id *)a4
{
  v5 = a3;
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self canBeInternationallyDialled:v5];

  return self;
}

- (BOOL)canBeInternationallyDialled:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumberUtil *)self helper];
  v6 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:v4];
  v7 = [v5 getMetadataForRegion:v6];

  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:v4];
    v9 = [v7 noInternationalDialling];
    v10 = ![(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v8 numberDesc:v9];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)matchesEntirely:(id)a3 string:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"NA"])
  {
    v8 = 0;
  }

  else
  {
    v15 = 0;
    v9 = [(_NBPhoneNumberUtil *)self entireRegularExpressionWithPattern:v6 options:0 error:&v15];
    v10 = [v7 length];
    v11 = [v9 firstMatchInString:v7 options:4 range:{0, v10}];
    v12 = v11;
    v8 = v11 && ![v11 range] && v13 == v10;
  }

  return v8;
}

@end