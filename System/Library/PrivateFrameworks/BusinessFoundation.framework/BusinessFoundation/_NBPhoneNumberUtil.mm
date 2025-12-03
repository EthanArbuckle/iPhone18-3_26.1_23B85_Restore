@interface _NBPhoneNumberUtil
+ (_NBPhoneNumberUtil)sharedInstance;
+ (void)initialize;
- (BOOL)canBeInternationallyDialled:(id)dialled;
- (BOOL)canBeInternationallyDialled:(id)dialled error:(id *)error;
- (BOOL)checkRegionForParsing:(id)parsing defaultRegion:(id)region;
- (BOOL)descHasPossibleNumberData:(id)data;
- (BOOL)formattingRuleHasFirstGroupOnly:(id)only;
- (BOOL)hasFormattingPatternForNumber:(id)number;
- (BOOL)hasUnexpectedItalianLeadingZero:(id)zero;
- (BOOL)hasValidCountryCallingCode:(id)code;
- (BOOL)isAllDigits:(id)digits;
- (BOOL)isAlphaNumber:(id)number;
- (BOOL)isLeadingZeroPossible:(id)possible;
- (BOOL)isNANPACountry:(id)country;
- (BOOL)isNationalNumberSuffixOfTheOther:(id)other second:(id)second;
- (BOOL)isNumberGeographical:(id)geographical;
- (BOOL)isNumberMatchingDesc:(id)desc numberDesc:(id)numberDesc;
- (BOOL)isPossibleNumber:(id)number error:(id *)error;
- (BOOL)isPossibleNumberString:(id)string regionDialingFrom:(id)from error:(id *)error;
- (BOOL)isStartingStringByRegex:(id)regex regex:(id)a4;
- (BOOL)isValidNumber:(id)number;
- (BOOL)isValidNumberForRegion:(id)region regionCode:(id)code;
- (BOOL)isValidRegionCode:(id)code;
- (BOOL)isViablePhoneNumber:(id)number;
- (BOOL)matchesEntirely:(id)entirely string:(id)string;
- (BOOL)maybeStripNationalPrefixAndCarrierCode:(id *)code metadata:(id)metadata carrierCode:(id *)carrierCode;
- (BOOL)parsePrefixAsIdd:(id)idd sourceString:(id *)string;
- (BOOL)rawInputContainsNationalPrefix:(id)prefix nationalPrefix:(id)nationalPrefix regionCode:(id)code;
- (BOOL)truncateTooLongNumber:(id)number;
- (CTTelephonyNetworkInfo)telephonyNetworkInfo;
- (NSDictionary)DIGIT_MAPPINGS;
- (_NBPhoneNumberUtil)init;
- (id)chooseFormattingPatternForNumber:(id)number nationalNumber:(id)nationalNumber;
- (id)componentsSeparatedByRegex:(id)regex regex:(id)a4;
- (id)convertAlphaCharactersInNumber:(id)number;
- (id)countryCodeByCarrier;
- (id)entireRegularExpressionWithPattern:(id)pattern options:(unint64_t)options error:(id *)error;
- (id)errorWithObject:(id)object withDomain:(id)domain;
- (id)extractCountryCode:(id)code nationalNumber:(id *)number;
- (id)extractPossibleNumber:(id)number;
- (id)format:(id)format numberFormat:(int64_t)numberFormat;
- (id)format:(id)format numberFormat:(int64_t)numberFormat error:(id *)error;
- (id)formatByPattern:(id)pattern numberFormat:(int64_t)format userDefinedFormats:(id)formats;
- (id)formatByPattern:(id)pattern numberFormat:(int64_t)format userDefinedFormats:(id)formats error:(id *)error;
- (id)formatInOriginalFormat:(id)format regionCallingFrom:(id)from;
- (id)formatInOriginalFormat:(id)format regionCallingFrom:(id)from error:(id *)error;
- (id)formatNationalNumberWithCarrierCode:(id)code carrierCode:(id)carrierCode;
- (id)formatNationalNumberWithCarrierCode:(id)code carrierCode:(id)carrierCode error:(id *)error;
- (id)formatNationalNumberWithPreferredCarrierCode:(id)code fallbackCarrierCode:(id)carrierCode;
- (id)formatNationalNumberWithPreferredCarrierCode:(id)code fallbackCarrierCode:(id)carrierCode error:(id *)error;
- (id)formatNsn:(id)nsn metadata:(id)metadata phoneNumberFormat:(int64_t)format carrierCode:(id)code;
- (id)formatNsnUsingPattern:(id)pattern formattingPattern:(id)formattingPattern numberFormat:(int64_t)format carrierCode:(id)code;
- (id)formatNumberForMobileDialing:(id)dialing regionCallingFrom:(id)from withFormatting:(BOOL)formatting;
- (id)formatOutOfCountryCallingNumber:(id)number regionCallingFrom:(id)from;
- (id)formatOutOfCountryCallingNumber:(id)number regionCallingFrom:(id)from error:(id *)error;
- (id)formatOutOfCountryKeepingAlphaChars:(id)chars regionCallingFrom:(id)from;
- (id)formatOutOfCountryKeepingAlphaChars:(id)chars regionCallingFrom:(id)from error:(id *)error;
- (id)getCountryCodeForRegion:(id)region;
- (id)getCountryCodeForValidRegion:(id)region error:(id *)error;
- (id)getCountryMobileTokenFromCountryCode:(int64_t)code;
- (id)getExampleNumberForNonGeoEntity:(id)entity error:(id *)error;
- (id)getExampleNumberForType:(id)type type:(int64_t)a4 error:(id *)error;
- (id)getMetadataForRegionOrCallingCode:(id)code regionCode:(id)regionCode;
- (id)getNationalSignificantNumber:(id)number;
- (id)getNddPrefixForRegion:(id)region stripNonDigits:(BOOL)digits;
- (id)getNumberDescByType:(id)type type:(int64_t)a4;
- (id)getRegionCodeForCountryCode:(id)code;
- (id)getRegionCodeForNumber:(id)number;
- (id)getRegionCodeForNumberFromRegionList:(id)list regionCodes:(id)codes;
- (id)getSupportedRegions;
- (id)matchFirstByRegex:(id)regex regex:(id)a4;
- (id)matchedStringByRegex:(id)regex regex:(id)a4;
- (id)matchesByRegex:(id)regex regex:(id)a4;
- (id)maybeExtractCountryCode:(id)code metadata:(id)metadata nationalNumber:(id *)number keepRawInput:(BOOL)input phoneNumber:(id *)phoneNumber error:(id *)error;
- (id)maybeGetFormattedExtension:(id)extension metadata:(id)metadata numberFormat:(int64_t)format;
- (id)maybeStripExtension:(id *)extension;
- (id)normalize:(id)normalize;
- (id)normalizeDiallableCharsOnly:(id)only;
- (id)normalizeDigitsOnly:(id)only;
- (id)normalizeHelper:(id)helper normalizationReplacements:(id)replacements removeNonMatches:(BOOL)matches;
- (id)parse:(id)parse defaultRegion:(id)region error:(id *)error;
- (id)parseAndKeepRawInput:(id)input defaultRegion:(id)region error:(id *)error;
- (id)parseWithPhoneCarrierRegion:(id)region error:(id *)error;
- (id)prefixNumberWithCountryCallingCode:(id)code phoneNumberFormat:(int64_t)format formattedNationalNumber:(id)number formattedExtension:(id)extension;
- (id)regularExpressionWithPattern:(id)pattern options:(unint64_t)options error:(id *)error;
- (id)replaceFirstStringByRegex:(id)regex regex:(id)a4 withTemplate:(id)template;
- (id)replaceStringByRegex:(id)regex regex:(id)a4 withTemplate:(id)template;
- (id)stringByReplacingOccurrencesString:(id)string withMap:(id)map removeNonMatches:(BOOL)matches;
- (int)getLengthOfGeographicalAreaCode:(id)code;
- (int)getLengthOfGeographicalAreaCode:(id)code error:(id *)error;
- (int)getLengthOfNationalDestinationCode:(id)code;
- (int)getLengthOfNationalDestinationCode:(id)code error:(id *)error;
- (int)stringPositionByRegex:(id)regex regex:(id)a4;
- (int64_t)getNumberType:(id)type;
- (int64_t)getNumberTypeHelper:(id)helper metadata:(id)metadata;
- (int64_t)isNumberMatch:(id)match second:(id)second;
- (int64_t)isNumberMatch:(id)match second:(id)second error:(id *)error;
- (int64_t)isPossibleNumberWithReason:(id)reason;
- (int64_t)isPossibleNumberWithReason:(id)reason error:(id *)error;
- (int64_t)maybeStripInternationalPrefixAndNormalize:(id *)normalize possibleIddPrefix:(id)prefix;
- (int64_t)testNumberLength:(id)length desc:(id)desc;
- (int64_t)validateNumberLength:(id)length metadata:(id)metadata type:(int64_t)type;
- (void)buildNationalNumberForParsing:(id)parsing nationalNumber:(id *)number;
- (void)initNormalizationMappings;
- (void)initRegularExpressionSet;
- (void)normalizeSB:(id *)b;
- (void)setItalianLeadingZerosForPhoneNumber:(id)number phoneNumber:(id)phoneNumber;
@end

@implementation _NBPhoneNumberUtil

+ (_NBPhoneNumberUtil)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36___NBPhoneNumberUtil_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_281346970 != -1)
  {
    dispatch_once(&qword_281346970, block);
  }

  v2 = _MergedGlobals_0;

  return v2;
}

- (id)errorWithObject:(id)object withDomain:(id)domain
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = *MEMORY[0x277CCA450];
  domainCopy = domain;
  v8 = [v5 dictionaryWithObject:object forKey:v6];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:0 userInfo:v8];

  return v9;
}

- (id)entireRegularExpressionWithPattern:(id)pattern options:(unint64_t)options error:(id *)error
{
  patternCopy = pattern;
  [(NSLock *)self->_entireStringCacheLock lock];
  entireStringRegexCache = self->_entireStringRegexCache;
  if (!entireStringRegexCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_entireStringRegexCache;
    self->_entireStringRegexCache = v9;

    entireStringRegexCache = self->_entireStringRegexCache;
  }

  v11 = [(NSMutableDictionary *)entireStringRegexCache objectForKey:patternCopy];
  if (!v11)
  {
    v12 = patternCopy;
    v13 = v12;
    if ([v12 rangeOfString:@"^"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)$", v12];
    }

    v11 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v13 options:0 error:error];
    [(NSMutableDictionary *)self->_entireStringRegexCache setObject:v11 forKey:v12];
  }

  [(NSLock *)self->_entireStringCacheLock unlock];

  return v11;
}

- (id)regularExpressionWithPattern:(id)pattern options:(unint64_t)options error:(id *)error
{
  patternCopy = pattern;
  [(NSLock *)self->_lockPatternCache lock];
  regexPatternCache = self->_regexPatternCache;
  if (!regexPatternCache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_regexPatternCache;
    self->_regexPatternCache = v10;

    regexPatternCache = self->_regexPatternCache;
  }

  v12 = [(NSMutableDictionary *)regexPatternCache objectForKey:patternCopy];
  if (!v12)
  {
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:patternCopy options:options error:error];
    [(NSMutableDictionary *)self->_regexPatternCache setObject:v12 forKey:patternCopy];
  }

  [(NSLock *)self->_lockPatternCache unlock];

  return v12;
}

- (id)componentsSeparatedByRegex:(id)regex regex:(id)a4
{
  v4 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:regex regex:a4 withTemplate:@"<SEP>"];
  v5 = [v4 componentsSeparatedByString:@"<SEP>"];
  v6 = [v5 mutableCopy];

  [v6 removeObject:&stru_285461708];

  return v6;
}

- (int)stringPositionByRegex:(id)regex regex:(id)a4
{
  regexCopy = regex;
  v7 = a4;
  if (!regexCopy)
  {
    goto LABEL_7;
  }

  v8 = [regexCopy length];
  range = -1;
  if (!v7 || !v8)
  {
    goto LABEL_10;
  }

  if (![v7 length])
  {
LABEL_7:
    range = -1;
    goto LABEL_10;
  }

  v14 = 0;
  v10 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v7 options:0 error:&v14];
  v11 = [v10 matchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];
  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    range = [v12 range];
  }

  else
  {
    range = -1;
  }

LABEL_10:
  return range;
}

- (id)replaceFirstStringByRegex:(id)regex regex:(id)a4 withTemplate:(id)template
{
  regexCopy = regex;
  templateCopy = template;
  v10 = a4;
  v11 = [regexCopy copy];
  v20 = 0;
  v12 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v10 options:0 error:&v20];

  v13 = [v12 rangeOfFirstMatchInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = v14;
    v17 = [regexCopy mutableCopy];
    v18 = [v12 stringByReplacingMatchesInString:v17 options:0 range:v15 withTemplate:{v16, templateCopy}];

    v11 = v18;
  }

  return v11;
}

- (id)replaceStringByRegex:(id)regex regex:(id)a4 withTemplate:(id)template
{
  regexCopy = regex;
  templateCopy = template;
  v20 = 0;
  v10 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v20];
  v11 = [v10 matchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];
  if ([v11 count] == 1)
  {
    v12 = [v10 rangeOfFirstMatchInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
      v15 = v13;
      v16 = [regexCopy mutableCopy];
      v17 = [v10 stringByReplacingMatchesInString:v16 options:0 range:v14 withTemplate:{v15, templateCopy}];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([v11 count] < 2)
  {
LABEL_6:
    v18 = [regexCopy copy];
    goto LABEL_7;
  }

  v18 = [v10 stringByReplacingMatchesInString:regexCopy options:0 range:0 withTemplate:{objc_msgSend(regexCopy, "length"), templateCopy}];
LABEL_7:
  v17 = v18;
LABEL_8:

  return v17;
}

- (id)matchFirstByRegex:(id)regex regex:(id)a4
{
  v11 = 0;
  regexCopy = regex;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v11];
  v8 = [v7 matchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];

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

- (id)matchesByRegex:(id)regex regex:(id)a4
{
  v10 = 0;
  regexCopy = regex;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v10];
  v8 = [v7 matchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];

  return v8;
}

- (id)matchedStringByRegex:(id)regex regex:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  v7 = [(_NBPhoneNumberUtil *)self matchesByRegex:regexCopy regex:a4];
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

        range = [*(*(&v19 + 1) + 8 * i) range];
        v16 = [regexCopy substringWithRange:{range, v15}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isStartingStringByRegex:(id)regex regex:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  v19 = 0;
  v7 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:a4 options:0 error:&v19];
  v8 = v19;
  [v7 matchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}];
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

- (id)stringByReplacingOccurrencesString:(id)string withMap:(id)map removeNonMatches:(BOOL)matches
{
  stringCopy = string;
  mapCopy = map;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = [stringCopy length];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v18 = [stringCopy characterAtIndex:v12];
      v13 = [MEMORY[0x277CCACA8] stringWithCharacters:&v18 length:1];
      v14 = [mapCopy objectForKey:v13];
      if (v14)
      {
        break;
      }

      if (!matches)
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

- (BOOL)isAllDigits:(id)digits
{
  v3 = MEMORY[0x277CCA900];
  digitsCopy = digits;
  decimalDigitCharacterSet = [v3 decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v7 = [digitsCopy rangeOfCharacterFromSet:invertedSet];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)getNationalSignificantNumber:(id)number
{
  numberCopy = number;
  nationalNumber = [numberCopy nationalNumber];
  stringValue = [nationalNumber stringValue];

  if ([numberCopy italianLeadingZero])
  {
    numberOfLeadingZeros = [numberCopy numberOfLeadingZeros];
    if ([numberOfLeadingZeros integerValue] < 0)
    {
      nationalNumber2 = [&stru_285461708 stringByPaddingToLength:0 withString:@"0" startingAtIndex:0];
    }

    else
    {
      numberOfLeadingZeros2 = [numberCopy numberOfLeadingZeros];
      nationalNumber2 = [&stru_285461708 stringByPaddingToLength:objc_msgSend(numberOfLeadingZeros2 withString:"integerValue") startingAtIndex:{@"0", 0}];
    }

    stringValue2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nationalNumber2, stringValue];
  }

  else
  {
    nationalNumber2 = [numberCopy nationalNumber];
    stringValue2 = [nationalNumber2 stringValue];
  }

  v10 = stringValue2;

  return v10;
}

+ (void)initialize
{
  v3.receiver = self;
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
    0x285461688 = [MEMORY[0x277CCACA8] stringWithFormat:@"([%@])", 0x285461688];
    v11 = 0;
    v5 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:0x285461688 options:0 error:&v11];
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

- (id)extractPossibleNumber:(id)number
{
  v4 = [number stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
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

- (BOOL)isViablePhoneNumber:(id)number
{
  v4 = [number stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [v4 length] >= 2 && -[_NBPhoneNumberUtil matchesEntirely:string:](self, "matchesEntirely:string:", qword_2813469A8, v4);

  return v5;
}

- (id)normalize:(id)normalize
{
  normalizeCopy = normalize;
  if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"(?:.*?[A-Za-z]){3}.*" string:normalizeCopy])
  {
    [(_NBPhoneNumberUtil *)self normalizeHelper:normalizeCopy normalizationReplacements:qword_2813469C8 removeNonMatches:1];
  }

  else
  {
    [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:normalizeCopy];
  }
  v5 = ;

  return v5;
}

- (void)normalizeSB:(id *)b
{
  if (b)
  {
    *b = [(_NBPhoneNumberUtil *)self normalize:*b];
  }
}

- (id)normalizeDigitsOnly:(id)only
{
  v4 = [only stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  dIGIT_MAPPINGS = [(_NBPhoneNumberUtil *)self DIGIT_MAPPINGS];
  v6 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:dIGIT_MAPPINGS removeNonMatches:1];

  return v6;
}

- (id)normalizeDiallableCharsOnly:(id)only
{
  v4 = [only stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:qword_2813469C0 removeNonMatches:1];

  return v5;
}

- (id)convertAlphaCharactersInNumber:(id)number
{
  v4 = [number stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v5 = [(_NBPhoneNumberUtil *)self stringByReplacingOccurrencesString:v4 withMap:qword_2813469C8 removeNonMatches:0];

  return v5;
}

- (int)getLengthOfGeographicalAreaCode:(id)code error:(id *)error
{
  codeCopy = code;
  LODWORD(self) = [(_NBPhoneNumberUtil *)self getLengthOfGeographicalAreaCode:codeCopy];

  return self;
}

- (int)getLengthOfGeographicalAreaCode:(id)code
{
  codeCopy = code;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:codeCopy];
  helper = [(_NBPhoneNumberUtil *)self helper];
  v7 = [helper getMetadataForRegion:v5];

  if (!v7)
  {
    goto LABEL_7;
  }

  nationalPrefix = [v7 nationalPrefix];
  if (nationalPrefix)
  {
  }

  else if (([codeCopy italianLeadingZero] & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(_NBPhoneNumberUtil *)self isNumberGeographical:codeCopy])
  {
    goto LABEL_7;
  }

  v9 = [(_NBPhoneNumberUtil *)self getLengthOfNationalDestinationCode:codeCopy];
LABEL_8:

  return v9;
}

- (int)getLengthOfNationalDestinationCode:(id)code error:(id *)error
{
  codeCopy = code;
  LODWORD(self) = [(_NBPhoneNumberUtil *)self getLengthOfNationalDestinationCode:codeCopy];

  return self;
}

- (int)getLengthOfNationalDestinationCode:(id)code
{
  v29 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  extension = [codeCopy extension];
  v6 = [_NBMetadataHelper hasValue:extension];

  if (v6)
  {
    v7 = [codeCopy copy];
    [v7 setExtension:0];
  }

  else
  {
    v7 = codeCopy;
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
    countryCode = [codeCopy countryCode];
    v15 = [_NBMetadataHelper regionCodeFromCountryCode:countryCode];

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

      if ([(_NBPhoneNumberUtil *)self getNumberType:codeCopy]!= 1)
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

- (id)getCountryMobileTokenFromCountryCode:(int64_t)code
{
  v3 = qword_2813469D8;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:code];
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

- (id)normalizeHelper:(id)helper normalizationReplacements:(id)replacements removeNonMatches:(BOOL)matches
{
  helperCopy = helper;
  replacementsCopy = replacements;
  v9 = [helperCopy length];
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = [helperCopy substringWithRange:{v11, 1}];
      uppercaseString = [v12 uppercaseString];
      v14 = [replacementsCopy objectForKey:uppercaseString];

      if (v14)
      {
        break;
      }

      if (!matches)
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

- (BOOL)formattingRuleHasFirstGroupOnly:(id)only
{
  onlyCopy = only;
  v5 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:onlyCopy regex:@"^\\(?\\$1\\)?"];
  v6 = [onlyCopy length];

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

- (BOOL)isNumberGeographical:(id)geographical
{
  geographicalCopy = geographical;
  v5 = [(_NBPhoneNumberUtil *)self getNumberType:geographicalCopy];
  v6 = GEO_MOBILE_COUNTRIES;
  countryCode = [geographicalCopy countryCode];

  v8 = [v6 containsObject:countryCode];
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

- (BOOL)isValidRegionCode:(id)code
{
  codeCopy = code;
  if ([_NBMetadataHelper hasValue:codeCopy]&& isNan(codeCopy))
  {
    helper = [(_NBPhoneNumberUtil *)self helper];
    uppercaseString = [codeCopy uppercaseString];
    v7 = [helper getMetadataForRegion:uppercaseString];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasValidCountryCallingCode:(id)code
{
  v3 = [_NBMetadataHelper regionCodeFromCountryCode:code];
  v4 = v3 != 0;

  return v4;
}

- (id)format:(id)format numberFormat:(int64_t)numberFormat error:(id *)error
{
  formatCopy = format;
  v8 = [(_NBPhoneNumberUtil *)self format:formatCopy numberFormat:numberFormat];

  return v8;
}

- (id)format:(id)format numberFormat:(int64_t)numberFormat
{
  formatCopy = format;
  nationalNumber = [formatCopy nationalNumber];
  if ([nationalNumber isEqualToNumber:&unk_285464B00])
  {
    rawInput = [formatCopy rawInput];
    v9 = [_NBMetadataHelper hasValue:rawInput];

    if (!v9)
    {
      goto LABEL_5;
    }

    nationalNumber = [formatCopy rawInput];
    if ([_NBMetadataHelper hasValue:nationalNumber])
    {
      goto LABEL_12;
    }
  }

LABEL_5:
  countryCode = [formatCopy countryCode];
  v11 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:formatCopy];
  if (!numberFormat)
  {
    v16 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:countryCode phoneNumberFormat:0 formattedNationalNumber:v11 formattedExtension:&stru_285461708];
LABEL_10:
    nationalNumber = v16;
    goto LABEL_11;
  }

  if (![(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v16 = v11;
    goto LABEL_10;
  }

  v18 = [_NBMetadataHelper regionCodeFromCountryCode:countryCode];
  v12 = [v18 objectAtIndex:0];
  v13 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v12];
  v14 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:formatCopy metadata:v13 numberFormat:numberFormat];
  v15 = [(_NBPhoneNumberUtil *)self formatNsn:v11 metadata:v13 phoneNumberFormat:numberFormat carrierCode:0];
  nationalNumber = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:countryCode phoneNumberFormat:numberFormat formattedNationalNumber:v15 formattedExtension:v14];

LABEL_11:
LABEL_12:

  return nationalNumber;
}

- (id)formatByPattern:(id)pattern numberFormat:(int64_t)format userDefinedFormats:(id)formats error:(id *)error
{
  patternCopy = pattern;
  formatsCopy = formats;
  v11 = [(_NBPhoneNumberUtil *)self formatByPattern:patternCopy numberFormat:format userDefinedFormats:formatsCopy];

  return v11;
}

- (id)formatByPattern:(id)pattern numberFormat:(int64_t)format userDefinedFormats:(id)formats
{
  patternCopy = pattern;
  formatsCopy = formats;
  countryCode = [patternCopy countryCode];
  v10 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:patternCopy];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v11 = [_NBMetadataHelper regionCodeFromCountryCode:countryCode];
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
    v15 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v13];
    v16 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:formatsCopy nationalNumber:v10];
    v17 = v16;
    v31 = v12;
    if (v16)
    {
      v29 = formatsCopy;
      v18 = [v16 copy];
      nationalPrefixFormattingRule = [v17 nationalPrefixFormattingRule];
      if ([(__CFString *)nationalPrefixFormattingRule length])
      {
        v20 = v15;
        nationalPrefix = [v15 nationalPrefix];
        if ([nationalPrefix length])
        {
          v22 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:nationalPrefixFormattingRule regex:@"\\$NP" withTemplate:nationalPrefix];

          nationalPrefixFormattingRule = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v22 regex:@"\\$FG" withTemplate:@"\\$1"];

          v23 = v18;
          v24 = nationalPrefixFormattingRule;
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

      formatCopy2 = format;
      v25 = [(_NBPhoneNumberUtil *)self formatNsnUsingPattern:v10 formattingPattern:v18 numberFormat:format carrierCode:0];

      formatsCopy = v29;
    }

    else
    {
      v20 = v15;
      v25 = v10;
      formatCopy2 = format;
    }

    v27 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:patternCopy metadata:v20 numberFormat:formatCopy2];
    v14 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:countryCode phoneNumberFormat:formatCopy2 formattedNationalNumber:v25 formattedExtension:v27];
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (id)formatNationalNumberWithCarrierCode:(id)code carrierCode:(id)carrierCode error:(id *)error
{
  codeCopy = code;
  carrierCodeCopy = carrierCode;
  v9 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:codeCopy carrierCode:carrierCodeCopy];

  return v9;
}

- (id)formatNationalNumberWithCarrierCode:(id)code carrierCode:(id)carrierCode
{
  codeCopy = code;
  carrierCodeCopy = carrierCode;
  countryCode = [codeCopy countryCode];
  v9 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:codeCopy];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v10 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];
    v11 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v10];
    v12 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:codeCopy metadata:v11 numberFormat:2];
    v13 = [(_NBPhoneNumberUtil *)self formatNsn:v9 metadata:v11 phoneNumberFormat:2 carrierCode:carrierCodeCopy];
    v14 = [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:countryCode phoneNumberFormat:2 formattedNationalNumber:v13 formattedExtension:v12];
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

- (id)getMetadataForRegionOrCallingCode:(id)code regionCode:(id)regionCode
{
  codeCopy = code;
  regionCodeCopy = regionCode;
  helper = [(_NBPhoneNumberUtil *)self helper];
  if ([regionCodeCopy isEqualToString:0x2854616A8])
  {
    [helper getMetadataForNonGeographicalRegion:codeCopy];
  }

  else
  {
    [helper getMetadataForRegion:regionCodeCopy];
  }
  v9 = ;

  return v9;
}

- (id)formatNationalNumberWithPreferredCarrierCode:(id)code fallbackCarrierCode:(id)carrierCode error:(id *)error
{
  codeCopy = code;
  carrierCodeCopy = carrierCode;
  v9 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:codeCopy carrierCode:carrierCodeCopy];

  return v9;
}

- (id)formatNationalNumberWithPreferredCarrierCode:(id)code fallbackCarrierCode:(id)carrierCode
{
  codeCopy = code;
  carrierCodeCopy = carrierCode;
  preferredDomesticCarrierCode = [codeCopy preferredDomesticCarrierCode];
  if (preferredDomesticCarrierCode)
  {
    preferredDomesticCarrierCode2 = [codeCopy preferredDomesticCarrierCode];
  }

  else
  {
    preferredDomesticCarrierCode2 = carrierCodeCopy;
  }

  v10 = preferredDomesticCarrierCode2;

  v11 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:codeCopy carrierCode:v10];

  return v11;
}

- (id)formatNumberForMobileDialing:(id)dialing regionCallingFrom:(id)from withFormatting:(BOOL)formatting
{
  formattingCopy = formatting;
  dialingCopy = dialing;
  fromCopy = from;
  countryCode = [dialingCopy countryCode];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v11 = [dialingCopy copy];
    [v11 setExtension:&stru_285461708];
    v12 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];
    if (![fromCopy isEqualToString:v12])
    {
      if ([(_NBPhoneNumberUtil *)self canBeInternationallyDialled:v11])
      {
        rawInput2 = [(_NBPhoneNumberUtil *)self format:v11 numberFormat:formattingCopy];
        rawInput = &stru_285461708;
LABEL_28:

        goto LABEL_29;
      }

      rawInput = &stru_285461708;
      if (formattingCopy)
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
        preferredDomesticCarrierCode = [v11 preferredDomesticCarrierCode];
        if ([_NBMetadataHelper hasValue:preferredDomesticCarrierCode])
        {
          rawInput = [(_NBPhoneNumberUtil *)self formatNationalNumberWithPreferredCarrierCode:v11 fallbackCarrierCode:&stru_285461708];
        }

        else
        {
          rawInput = &stru_285461708;
        }

        if (formattingCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      if (([countryCode unsignedIntegerValue] == 1 || (objc_msgSend(v12, "isEqualToString:", 0x2854616A8) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"MX") && v13 <= 2) && -[_NBPhoneNumberUtil canBeInternationallyDialled:](self, "canBeInternationallyDialled:", v11))
      {
        selfCopy2 = self;
        v20 = v11;
        v21 = 1;
      }

      else
      {
        selfCopy2 = self;
        v20 = v11;
        v21 = 2;
      }

      v14 = [(_NBPhoneNumberUtil *)selfCopy2 format:v20 numberFormat:v21];
    }

    else
    {
      v14 = [(_NBPhoneNumberUtil *)self formatNationalNumberWithCarrierCode:v11 carrierCode:@"3"];
    }

    rawInput = v14;
    if (formattingCopy)
    {
LABEL_26:
      v18 = rawInput;
      rawInput = v18;
      goto LABEL_27;
    }

LABEL_16:
    v18 = [(_NBPhoneNumberUtil *)self normalizeHelper:rawInput normalizationReplacements:qword_2813469C0 removeNonMatches:1];
LABEL_27:
    rawInput2 = v18;
    goto LABEL_28;
  }

  rawInput = [dialingCopy rawInput];
  if ([_NBMetadataHelper hasValue:rawInput])
  {
    rawInput2 = [dialingCopy rawInput];
  }

  else
  {
    rawInput2 = &stru_285461708;
  }

LABEL_29:

  return rawInput2;
}

- (id)formatOutOfCountryCallingNumber:(id)number regionCallingFrom:(id)from error:(id *)error
{
  numberCopy = number;
  fromCopy = from;
  v9 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:numberCopy regionCallingFrom:fromCopy];

  return v9;
}

- (id)formatOutOfCountryCallingNumber:(id)number regionCallingFrom:(id)from
{
  numberCopy = number;
  fromCopy = from;
  if (![(_NBPhoneNumberUtil *)self isValidRegionCode:fromCopy])
  {
    v13 = [(_NBPhoneNumberUtil *)self format:numberCopy numberFormat:1];
    goto LABEL_22;
  }

  countryCode = [numberCopy countryCode];
  v9 = [countryCode copy];

  v10 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:numberCopy];
  if (![(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:v9])
  {
    v14 = v10;
    goto LABEL_8;
  }

  if ([v9 unsignedIntegerValue] != 1)
  {
    v15 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:fromCopy error:0];
    v16 = [v9 isEqualToNumber:v15];

    if (!v16)
    {
LABEL_11:
      helper = [(_NBPhoneNumberUtil *)self helper];
      v18 = [helper getMetadataForRegion:fromCopy];

      internationalPrefix = [v18 internationalPrefix];
      v35 = v18;
      v33 = internationalPrefix;
      if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"[\\d]+(?:[~\\u2053\\u223C\\uFF5E][\\d]+)?" string:internationalPrefix])
      {
        preferredInternationalPrefix2 = internationalPrefix;
      }

      else
      {
        preferredInternationalPrefix = [v18 preferredInternationalPrefix];
        v22 = [_NBMetadataHelper hasValue:preferredInternationalPrefix];

        if (!v22)
        {
          v23 = &stru_285461708;
          goto LABEL_17;
        }

        preferredInternationalPrefix2 = [v18 preferredInternationalPrefix];
      }

      v23 = preferredInternationalPrefix2;
LABEL_17:
      v32 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:v9];
      v24 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v9 regionCode:v32];
      v25 = [(_NBPhoneNumberUtil *)self formatNsn:v10 metadata:v24 phoneNumberFormat:1 carrierCode:0];
      v26 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:numberCopy metadata:v24 numberFormat:1];
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

    v14 = [(_NBPhoneNumberUtil *)self format:numberCopy numberFormat:2];
LABEL_8:
    v13 = v14;
    goto LABEL_21;
  }

  if (![(_NBPhoneNumberUtil *)self isNANPACountry:fromCopy])
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [(_NBPhoneNumberUtil *)self format:numberCopy numberFormat:2];
  v13 = [v11 stringWithFormat:@"%@ %@", v9, v12];

LABEL_21:
LABEL_22:

  return v13;
}

- (id)prefixNumberWithCountryCallingCode:(id)code phoneNumberFormat:(int64_t)format formattedNationalNumber:(id)number formattedExtension:(id)extension
{
  codeCopy = code;
  numberCopy = number;
  extensionCopy = extension;
  if (format == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@-%@%@", @"tel:", codeCopy, numberCopy, extensionCopy];
  }

  else if (format == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"+%@ %@%@", codeCopy, numberCopy, extensionCopy, v15];
  }

  else if (format)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", numberCopy, extensionCopy, v14, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@%@", codeCopy, numberCopy, extensionCopy, v15];
  }
  v12 = ;

  return v12;
}

- (id)formatInOriginalFormat:(id)format regionCallingFrom:(id)from error:(id *)error
{
  formatCopy = format;
  fromCopy = from;
  v9 = [(_NBPhoneNumberUtil *)self formatInOriginalFormat:formatCopy regionCallingFrom:fromCopy];

  return v9;
}

- (id)formatInOriginalFormat:(id)format regionCallingFrom:(id)from
{
  v40[1] = *MEMORY[0x277D85DE8];
  formatCopy = format;
  fromCopy = from;
  rawInput = [formatCopy rawInput];
  if ([_NBMetadataHelper hasValue:rawInput])
  {
    v9 = [(_NBPhoneNumberUtil *)self hasFormattingPatternForNumber:formatCopy];

    if (!v9)
    {
      rawInput2 = [formatCopy rawInput];
LABEL_11:
      v15 = rawInput2;
      goto LABEL_27;
    }
  }

  else
  {
  }

  countryCodeSource = [formatCopy countryCodeSource];

  if (!countryCodeSource)
  {
    rawInput2 = [(_NBPhoneNumberUtil *)self format:formatCopy numberFormat:2];
    goto LABEL_11;
  }

  countryCodeSource2 = [formatCopy countryCodeSource];
  integerValue = [countryCodeSource2 integerValue];

  switch(integerValue)
  {
    case 10:
      v16 = [(_NBPhoneNumberUtil *)self format:formatCopy numberFormat:1];
      v15 = [v16 substringFromIndex:1];
      break;
    case 5:
      v14 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:formatCopy regionCallingFrom:fromCopy];
      goto LABEL_13;
    case 1:
      v14 = [(_NBPhoneNumberUtil *)self format:formatCopy numberFormat:1];
LABEL_13:
      v15 = v14;
      goto LABEL_21;
    default:
      countryCode = [formatCopy countryCode];
      v16 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];

      v18 = [(_NBPhoneNumberUtil *)self getNddPrefixForRegion:v16 stripNonDigits:1];
      v19 = [(_NBPhoneNumberUtil *)self format:formatCopy numberFormat:2];
      if (v18 && [v18 length] && (objc_msgSend(formatCopy, "rawInput"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[_NBPhoneNumberUtil rawInputContainsNationalPrefix:nationalPrefix:regionCode:](self, "rawInputContainsNationalPrefix:nationalPrefix:regionCode:", v20, v18, v16), v20, !v21))
      {
        helper = [(_NBPhoneNumberUtil *)self helper];
        v30 = [helper getMetadataForRegion:v16];

        v31 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:formatCopy];
        numberFormats = [v30 numberFormats];
        v33 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:numberFormats nationalNumber:v31];

        if (v33)
        {
          v39 = v30;
          nationalPrefixFormattingRule = [v33 nationalPrefixFormattingRule];
          v35 = [nationalPrefixFormattingRule rangeOfString:@"$1"];
          if (v35 && v35 != 0x7FFFFFFFFFFFFFFFLL && ([nationalPrefixFormattingRule substringWithRange:{0, v35}], v36 = objc_claimAutoreleasedReturnValue(), nationalPrefixFormattingRule, -[_NBPhoneNumberUtil normalizeDigitsOnly:](self, "normalizeDigitsOnly:", v36), nationalPrefixFormattingRule = objc_claimAutoreleasedReturnValue(), v36, objc_msgSend(nationalPrefixFormattingRule, "length")))
          {
            v38 = [v33 copy];
            [v38 setNationalPrefixFormattingRule:0];
            v40[0] = v38;
            v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
            v15 = [(_NBPhoneNumberUtil *)self formatByPattern:formatCopy numberFormat:2 userDefinedFormats:v37];
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
  rawInput3 = [formatCopy rawInput];
  v23 = rawInput3;
  if (v15 && [rawInput3 length])
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

- (BOOL)rawInputContainsNationalPrefix:(id)prefix nationalPrefix:(id)nationalPrefix regionCode:(id)code
{
  nationalPrefixCopy = nationalPrefix;
  codeCopy = code;
  v10 = [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:prefix];
  if (![(_NBPhoneNumberUtil *)self isStartingStringByRegex:v10 regex:nationalPrefixCopy])
  {
    goto LABEL_3;
  }

  v11 = [v10 substringFromIndex:{objc_msgSend(nationalPrefixCopy, "length")}];
  v16 = 0;
  v12 = [(_NBPhoneNumberUtil *)self parse:v11 defaultRegion:codeCopy error:&v16];
  v13 = v16;
  v14 = [(_NBPhoneNumberUtil *)self isValidNumber:v12];

  if (v13)
  {
LABEL_3:
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasUnexpectedItalianLeadingZero:(id)zero
{
  zeroCopy = zero;
  if ([zeroCopy italianLeadingZero])
  {
    countryCode = [zeroCopy countryCode];
    v6 = ![(_NBPhoneNumberUtil *)self isLeadingZeroPossible:countryCode];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)hasFormattingPatternForNumber:(id)number
{
  numberCopy = number;
  countryCode = [numberCopy countryCode];
  v6 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];
  v7 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v6];
  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:numberCopy];
    numberFormats = [v7 numberFormats];
    v10 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:numberFormats nationalNumber:v8];

    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)formatOutOfCountryKeepingAlphaChars:(id)chars regionCallingFrom:(id)from error:(id *)error
{
  charsCopy = chars;
  fromCopy = from;
  v9 = [(_NBPhoneNumberUtil *)self formatOutOfCountryKeepingAlphaChars:charsCopy regionCallingFrom:fromCopy];

  return v9;
}

- (id)formatOutOfCountryKeepingAlphaChars:(id)chars regionCallingFrom:(id)from
{
  charsCopy = chars;
  fromCopy = from;
  rawInput = [charsCopy rawInput];
  v9 = rawInput;
  if (!rawInput || ![rawInput length])
  {
    v18 = [(_NBPhoneNumberUtil *)self formatOutOfCountryCallingNumber:charsCopy regionCallingFrom:fromCopy];
    goto LABEL_30;
  }

  countryCode = [charsCopy countryCode];
  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v11 = [(_NBPhoneNumberUtil *)self normalizeHelper:v9 normalizationReplacements:qword_2813469D0 removeNonMatches:0];

    v12 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:charsCopy];
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

    helper = [(_NBPhoneNumberUtil *)self helper];
    v17 = [helper getMetadataForRegion:fromCopy];

    if ([countryCode unsignedIntegerValue] == 1)
    {
      if ([(_NBPhoneNumberUtil *)self isNANPACountry:fromCopy])
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", countryCode, v11];
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
      v19 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:fromCopy error:0];
      v20 = [countryCode isEqualToNumber:v19];

      if (v20)
      {
        numberFormats = [v17 numberFormats];
        v22 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:numberFormats nationalNumber:v12];

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
      internationalPrefix = [v17 internationalPrefix];
      if ([(_NBPhoneNumberUtil *)self matchesEntirely:@"[\\d]+(?:[~\\u2053\\u223C\\uFF5E][\\d]+)?" string:internationalPrefix])
      {
        preferredInternationalPrefix = internationalPrefix;
      }

      else
      {
        preferredInternationalPrefix = [v17 preferredInternationalPrefix];
      }

      v26 = preferredInternationalPrefix;
      v31 = v12;

      goto LABEL_22;
    }

    v31 = v12;
    v26 = &stru_285461708;
LABEL_22:
    v27 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];
    v28 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v27];
    v29 = [(_NBPhoneNumberUtil *)self maybeGetFormattedExtension:charsCopy metadata:v28 numberFormat:1];
    if ([(__CFString *)v26 length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@%@", v26, countryCode, v11, v29];
    }

    else
    {
      [(_NBPhoneNumberUtil *)self prefixNumberWithCountryCallingCode:countryCode phoneNumberFormat:1 formattedNationalNumber:v11 formattedExtension:v29];
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

- (id)formatNsn:(id)nsn metadata:(id)metadata phoneNumberFormat:(int64_t)format carrierCode:(id)code
{
  nsnCopy = nsn;
  metadataCopy = metadata;
  codeCopy = code;
  intlNumberFormats = [metadataCopy intlNumberFormats];
  v14 = [intlNumberFormats count];
  if (format == 2 || !v14)
  {
    numberFormats = [metadataCopy numberFormats];
  }

  else
  {
    numberFormats = intlNumberFormats;
  }

  v16 = numberFormats;
  v17 = [(_NBPhoneNumberUtil *)self chooseFormattingPatternForNumber:numberFormats nationalNumber:nsnCopy];
  if (v17)
  {
    v18 = [(_NBPhoneNumberUtil *)self formatNsnUsingPattern:nsnCopy formattingPattern:v17 numberFormat:format carrierCode:codeCopy];
  }

  else
  {
    v18 = nsnCopy;
  }

  v19 = v18;

  return v19;
}

- (id)chooseFormattingPatternForNumber:(id)number nationalNumber:(id)nationalNumber
{
  v29 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  nationalNumberCopy = nationalNumber;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = numberCopy;
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
        leadingDigitsPatterns = [v13 leadingDigitsPatterns];
        v15 = [leadingDigitsPatterns count];

        if (v15)
        {
          leadingDigitsPatterns2 = [v13 leadingDigitsPatterns];
          lastObject = [leadingDigitsPatterns2 lastObject];
          v18 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:nationalNumberCopy regex:lastObject];

          if (v18)
          {
            continue;
          }
        }

        pattern = [v13 pattern];
        v20 = [(_NBPhoneNumberUtil *)self matchesEntirely:pattern string:nationalNumberCopy];

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

- (id)formatNsnUsingPattern:(id)pattern formattingPattern:(id)formattingPattern numberFormat:(int64_t)format carrierCode:(id)code
{
  patternCopy = pattern;
  formattingPatternCopy = formattingPattern;
  codeCopy = code;
  format = [formattingPatternCopy format];
  domesticCarrierCodeFormattingRule = [formattingPatternCopy domesticCarrierCodeFormattingRule];
  if (format == 2)
  {
    if (+[_NBMetadataHelper hasValue:](_NBMetadataHelper, "hasValue:", codeCopy) && [domesticCarrierCodeFormattingRule length])
    {
      nationalPrefixFormattingRule = [(_NBPhoneNumberUtil *)self replaceStringByRegex:domesticCarrierCodeFormattingRule regex:@"\\$CC" withTemplate:codeCopy];
      v16 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:format regex:@"(\\$\\d)" withTemplate:nationalPrefixFormattingRule];

      pattern = [formattingPatternCopy pattern];
      v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:patternCopy regex:pattern withTemplate:v16];

      format = v16;
      goto LABEL_10;
    }

    nationalPrefixFormattingRule = [formattingPatternCopy nationalPrefixFormattingRule];
    if ([_NBMetadataHelper hasValue:nationalPrefixFormattingRule])
    {
      v19 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:format regex:@"(\\$\\d)" withTemplate:nationalPrefixFormattingRule];
      pattern2 = [formattingPatternCopy pattern];
      v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:patternCopy regex:pattern2 withTemplate:v19];

      goto LABEL_10;
    }
  }

  else
  {
    nationalPrefixFormattingRule = [formattingPatternCopy nationalPrefixFormattingRule];
  }

  pattern3 = [formattingPatternCopy pattern];
  v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:patternCopy regex:pattern3 withTemplate:format];

  if (format != 3)
  {
    goto LABEL_11;
  }

  qword_2813469A0 = [MEMORY[0x277CCACA8] stringWithFormat:@"^%@", qword_2813469A0];
  nationalPrefixFormattingRule = [(_NBPhoneNumberUtil *)self replaceStringByRegex:v18 regex:qword_2813469A0 withTemplate:&stru_285461708];

  v18 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:nationalPrefixFormattingRule regex:qword_2813469A0 withTemplate:@"-"];
LABEL_10:

LABEL_11:

  return v18;
}

- (id)getExampleNumberForType:(id)type type:(int64_t)a4 error:(id *)error
{
  typeCopy = type;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:typeCopy])
  {
    helper = [(_NBPhoneNumberUtil *)self helper];
    v10 = [helper getMetadataForRegion:typeCopy];
    v11 = [(_NBPhoneNumberUtil *)self getNumberDescByType:v10 type:a4];

    exampleNumber = [v11 exampleNumber];
    LODWORD(helper) = [_NBMetadataHelper hasValue:exampleNumber];

    if (helper)
    {
      exampleNumber2 = [v11 exampleNumber];
      v14 = [(_NBPhoneNumberUtil *)self parse:exampleNumber2 defaultRegion:typeCopy error:error];
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

- (id)getExampleNumberForNonGeoEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  helper = [(_NBPhoneNumberUtil *)self helper];
  v8 = [helper getMetadataForNonGeographicalRegion:entityCopy];

  if (!v8)
  {
    goto LABEL_18;
  }

  mobile = [v8 mobile];
  exampleNumber = [mobile exampleNumber];
  v11 = [_NBMetadataHelper hasValue:exampleNumber];

  if (v11)
  {
    mobile2 = [v8 mobile];
  }

  else
  {
    tollFree = [v8 tollFree];
    exampleNumber2 = [tollFree exampleNumber];
    v15 = [_NBMetadataHelper hasValue:exampleNumber2];

    if (v15)
    {
      mobile2 = [v8 tollFree];
    }

    else
    {
      sharedCost = [v8 sharedCost];
      exampleNumber3 = [sharedCost exampleNumber];
      v18 = [_NBMetadataHelper hasValue:exampleNumber3];

      if (v18)
      {
        mobile2 = [v8 sharedCost];
      }

      else
      {
        voip = [v8 voip];
        exampleNumber4 = [voip exampleNumber];
        v21 = [_NBMetadataHelper hasValue:exampleNumber4];

        if (v21)
        {
          mobile2 = [v8 voip];
        }

        else
        {
          voicemail = [v8 voicemail];
          exampleNumber5 = [voicemail exampleNumber];
          v24 = [_NBMetadataHelper hasValue:exampleNumber5];

          if (v24)
          {
            mobile2 = [v8 voicemail];
          }

          else
          {
            v25 = [v8 uan];
            exampleNumber6 = [v25 exampleNumber];
            v27 = [_NBMetadataHelper hasValue:exampleNumber6];

            if (v27)
            {
              mobile2 = [v8 uan];
            }

            else
            {
              premiumRate = [v8 premiumRate];
              exampleNumber7 = [premiumRate exampleNumber];
              v30 = [_NBMetadataHelper hasValue:exampleNumber7];

              if (!v30)
              {
                goto LABEL_18;
              }

              mobile2 = [v8 premiumRate];
            }
          }
        }
      }
    }
  }

  v31 = mobile2;
  exampleNumber8 = [mobile2 exampleNumber];

  if (exampleNumber8)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@", entityCopy, exampleNumber8];
    v34 = [(_NBPhoneNumberUtil *)self parse:v33 defaultRegion:0x285461628 error:error];

    goto LABEL_19;
  }

LABEL_18:
  v34 = 0;
LABEL_19:

  return v34;
}

- (id)maybeGetFormattedExtension:(id)extension metadata:(id)metadata numberFormat:(int64_t)format
{
  extensionCopy = extension;
  metadataCopy = metadata;
  extension = [extensionCopy extension];
  v10 = [_NBMetadataHelper hasValue:extension];

  if (!v10)
  {
    v15 = &stru_285461708;
    goto LABEL_10;
  }

  if (format == 3)
  {
    v11 = MEMORY[0x277CCACA8];
    extension2 = [extensionCopy extension];
    preferredExtnPrefix2 = extension2;
    v14 = @";ext=";
LABEL_8:
    v15 = [v11 stringWithFormat:@"%@%@", v14, extension2];
    goto LABEL_9;
  }

  preferredExtnPrefix = [metadataCopy preferredExtnPrefix];
  v17 = [_NBMetadataHelper hasValue:preferredExtnPrefix];

  v11 = MEMORY[0x277CCACA8];
  if (!v17)
  {
    extension2 = [extensionCopy extension];
    preferredExtnPrefix2 = extension2;
    v14 = @" ext. ";
    goto LABEL_8;
  }

  preferredExtnPrefix2 = [metadataCopy preferredExtnPrefix];
  extension3 = [extensionCopy extension];
  v15 = [v11 stringWithFormat:@"%@%@", preferredExtnPrefix2, extension3];

LABEL_9:
LABEL_10:

  return v15;
}

- (id)getNumberDescByType:(id)type type:(int64_t)a4
{
  typeCopy = type;
  v6 = typeCopy;
  if (a4 <= 4)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          mobile = [typeCopy mobile];

          if (mobile)
          {
            mobile2 = [v6 mobile];
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
        [typeCopy tollFree];
      }

      else
      {
        [typeCopy premiumRate];
      }

      goto LABEL_6;
    }

    fixedLine = [typeCopy fixedLine];

    if (fixedLine)
    {
      mobile2 = [v6 fixedLine];
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        mobile2 = [typeCopy pager];
        goto LABEL_27;
      case 9:
        mobile2 = [typeCopy uan];
        goto LABEL_27;
      case 10:
        mobile2 = [typeCopy voicemail];
        goto LABEL_27;
    }

LABEL_21:
    mobile2 = [v6 generalDesc];
    goto LABEL_27;
  }

  if (a4 != 5)
  {
    if (a4 == 6)
    {
      [typeCopy voip];
    }

    else
    {
      [typeCopy personalNumber];
    }

    mobile2 = LABEL_6:;
    goto LABEL_27;
  }

  mobile2 = [typeCopy sharedCost];
LABEL_27:
  v10 = mobile2;

  return v10;
}

- (int64_t)getNumberType:(id)type
{
  typeCopy = type;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:typeCopy];
  countryCode = [typeCopy countryCode];
  v7 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v5];

  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:typeCopy];
    v9 = [(_NBPhoneNumberUtil *)self getNumberTypeHelper:v8 metadata:v7];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int64_t)getNumberTypeHelper:(id)helper metadata:(id)metadata
{
  helperCopy = helper;
  metadataCopy = metadata;
  generalDesc = [metadataCopy generalDesc];
  if (![(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:generalDesc])
  {
    goto LABEL_22;
  }

  premiumRate = [metadataCopy premiumRate];
  v10 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:premiumRate];

  if (v10)
  {
    v11 = 4;
    goto LABEL_23;
  }

  tollFree = [metadataCopy tollFree];
  v13 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:tollFree];

  if (v13)
  {
    v11 = 3;
    goto LABEL_23;
  }

  sharedCost = [metadataCopy sharedCost];
  v15 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:sharedCost];

  if (v15)
  {
    v11 = 5;
    goto LABEL_23;
  }

  voip = [metadataCopy voip];
  v17 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:voip];

  if (v17)
  {
    v11 = 6;
    goto LABEL_23;
  }

  personalNumber = [metadataCopy personalNumber];
  v19 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:personalNumber];

  if (v19)
  {
    v11 = 7;
    goto LABEL_23;
  }

  pager = [metadataCopy pager];
  v21 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:pager];

  if (v21)
  {
    v11 = 8;
    goto LABEL_23;
  }

  v22 = [metadataCopy uan];
  v23 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:v22];

  if (v23)
  {
    v11 = 9;
    goto LABEL_23;
  }

  voicemail = [metadataCopy voicemail];
  v25 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:voicemail];

  if (v25)
  {
    v11 = 10;
    goto LABEL_23;
  }

  fixedLine = [metadataCopy fixedLine];
  v27 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:fixedLine];

  sameMobileAndFixedLinePattern = [metadataCopy sameMobileAndFixedLinePattern];
  if (v27)
  {
    if (sameMobileAndFixedLinePattern)
    {
      v11 = 2;
    }

    else
    {
      mobile = [metadataCopy mobile];
      v31 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:mobile];

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

  if (sameMobileAndFixedLinePattern)
  {
LABEL_22:
    v11 = -1;
    goto LABEL_23;
  }

  mobile2 = [metadataCopy mobile];
  v33 = [(_NBPhoneNumberUtil *)self isNumberMatchingDesc:helperCopy numberDesc:mobile2];

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

- (BOOL)isNumberMatchingDesc:(id)desc numberDesc:(id)numberDesc
{
  descCopy = desc;
  numberDescCopy = numberDesc;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descCopy, "length")}];
  possibleLength = [numberDescCopy possibleLength];
  if (![possibleLength count])
  {

    goto LABEL_5;
  }

  possibleLength2 = [numberDescCopy possibleLength];
  v11 = [possibleLength2 indexOfObject:v8];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    nationalNumberPattern = [numberDescCopy nationalNumberPattern];
    v12 = [(_NBPhoneNumberUtil *)self matchesEntirely:nationalNumberPattern string:descCopy];

    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (BOOL)isValidNumber:(id)number
{
  numberCopy = number;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:numberCopy];
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isValidNumberForRegion:numberCopy regionCode:v5];

  return self;
}

- (BOOL)isValidNumberForRegion:(id)region regionCode:(id)code
{
  regionCopy = region;
  codeCopy = code;
  countryCode = [regionCopy countryCode];
  v9 = [countryCode copy];

  v10 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:v9 regionCode:codeCopy];
  if (v10 && (([@"001" isEqualToString:codeCopy] & 1) != 0 || (-[_NBPhoneNumberUtil getCountryCodeForValidRegion:error:](self, "getCountryCodeForValidRegion:error:", codeCopy, 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToNumber:", v11), v11, v12)))
  {
    generalDesc = [v10 generalDesc];
    v14 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:regionCopy];
    nationalNumberPattern = [generalDesc nationalNumberPattern];
    v16 = [_NBMetadataHelper hasValue:nationalNumberPattern];

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

- (id)getRegionCodeForNumber:(id)number
{
  numberCopy = number;
  v5 = numberCopy;
  if (numberCopy)
  {
    countryCode = [numberCopy countryCode];
    v7 = [_NBMetadataHelper regionCodeFromCountryCode:countryCode];

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

- (id)getRegionCodeForNumberFromRegionList:(id)list regionCodes:(id)codes
{
  codesCopy = codes;
  v7 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:list];
  v8 = [codesCopy count];
  helper = [(_NBPhoneNumberUtil *)self helper];
  if (!v8)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  while (1)
  {
    v11 = [codesCopy objectAtIndex:v10];
    v12 = [helper getMetadataForRegion:v11];
    leadingDigits = [v12 leadingDigits];
    v14 = [_NBMetadataHelper hasValue:leadingDigits];

    if (!v14)
    {
      break;
    }

    leadingDigits2 = [v12 leadingDigits];
    v16 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:leadingDigits2];

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

- (id)getRegionCodeForCountryCode:(id)code
{
  v3 = [_NBMetadataHelper regionCodeFromCountryCode:code];
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

- (id)getCountryCodeForRegion:(id)region
{
  regionCopy = region;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:regionCopy])
  {
    v9 = 0;
    v5 = [(_NBPhoneNumberUtil *)self getCountryCodeForValidRegion:regionCopy error:&v9];
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

- (id)getCountryCodeForValidRegion:(id)region error:(id *)error
{
  regionCopy = region;
  helper = [(_NBPhoneNumberUtil *)self helper];
  v8 = [helper getMetadataForRegion:regionCopy];

  if (v8)
  {
    countryCode = [v8 countryCode];
  }

  else
  {
    v10 = MEMORY[0x277CBEAC0];
    regionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid region code:%@", regionCopy];
    v12 = [v10 dictionaryWithObject:regionCopy forKey:*MEMORY[0x277CCA450]];

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_REGION_CODE" code:0 userInfo:v12];
    }

    countryCode = &unk_285464B18;
  }

  return countryCode;
}

- (id)getNddPrefixForRegion:(id)region stripNonDigits:(BOOL)digits
{
  digitsCopy = digits;
  regionCopy = region;
  helper = [(_NBPhoneNumberUtil *)self helper];
  v8 = [helper getMetadataForRegion:regionCopy];

  if (v8)
  {
    nationalPrefix = [v8 nationalPrefix];
    if ([nationalPrefix length])
    {
      if (digitsCopy)
      {
        v10 = [nationalPrefix stringByReplacingOccurrencesOfString:@"~" withString:&stru_285461708];

        nationalPrefix = v10;
      }

      v11 = nationalPrefix;
      nationalPrefix = v11;
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

- (BOOL)isNANPACountry:(id)country
{
  v21 = *MEMORY[0x277D85DE8];
  countryCopy = country;
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
        uppercaseString = [countryCopy uppercaseString];
        LOBYTE(v12) = [v12 isEqualToString:uppercaseString];

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
  return (countryCopy != 0) & v9;
}

- (BOOL)isLeadingZeroPossible:(id)possible
{
  possibleCopy = possible;
  v5 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:possibleCopy];
  v6 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:possibleCopy regionCode:v5];

  if (v6)
  {
    leadingZeroPossible = [v6 leadingZeroPossible];
  }

  else
  {
    leadingZeroPossible = 0;
  }

  return leadingZeroPossible;
}

- (BOOL)isAlphaNumber:(id)number
{
  numberCopy = number;
  if ([(_NBPhoneNumberUtil *)self isViablePhoneNumber:numberCopy])
  {
    v5 = [numberCopy stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];

    v6 = [v5 copy];
    v11 = v6;
    v7 = [(_NBPhoneNumberUtil *)self maybeStripExtension:&v11];
    v8 = v11;

    v9 = [(_NBPhoneNumberUtil *)self matchesEntirely:@"(?:.*?[A-Za-z]){3}.*" string:v8];
    numberCopy = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPossibleNumber:(id)number error:(id *)error
{
  numberCopy = number;
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isPossibleNumber:numberCopy];

  return self;
}

- (int64_t)validateNumberLength:(id)length metadata:(id)metadata type:(int64_t)type
{
  lengthCopy = length;
  metadataCopy = metadata;
  v10 = [(_NBPhoneNumberUtil *)self getNumberDescByType:metadataCopy type:type];
  possibleLength = [v10 possibleLength];
  if ([possibleLength count])
  {
    possibleLength2 = [v10 possibleLength];
  }

  else
  {
    generalDesc = [metadataCopy generalDesc];
    possibleLength2 = [generalDesc possibleLength];
  }

  possibleLengthLocalOnly = [v10 possibleLengthLocalOnly];
  if (type == 2)
  {
    v15 = [(_NBPhoneNumberUtil *)self getNumberDescByType:metadataCopy type:0];
    v16 = [(_NBPhoneNumberUtil *)self descHasPossibleNumberData:v15];

    if (v16)
    {
      v17 = [(_NBPhoneNumberUtil *)self validateNumberLength:lengthCopy metadata:metadataCopy type:1];
      goto LABEL_30;
    }

    v18 = [(_NBPhoneNumberUtil *)self getNumberDescByType:metadataCopy type:1];
    if ([(_NBPhoneNumberUtil *)self descHasPossibleNumberData:v18])
    {
      possibleLength3 = [v18 possibleLength];
      if ([possibleLength3 count])
      {
        possibleLength4 = [v18 possibleLength];
        v21 = [possibleLength2 arrayByAddingObjectsFromArray:possibleLength4];
      }

      else
      {
        possibleLength4 = [metadataCopy generalDesc];
        v20PossibleLength = [possibleLength4 possibleLength];
        v21 = [possibleLength2 arrayByAddingObjectsFromArray:v20PossibleLength];
      }

      v23 = [v21 sortedArrayUsingSelector:sel_compare_];

      v24 = [possibleLengthLocalOnly count];
      possibleLengthLocalOnly2 = [v18 possibleLengthLocalOnly];
      if (v24)
      {
        v26 = [possibleLengthLocalOnly arrayByAddingObjectsFromArray:possibleLengthLocalOnly2];

        possibleLengthLocalOnly2 = [v26 sortedArrayUsingSelector:sel_compare_];

        possibleLengthLocalOnly = v26;
      }

      possibleLengthLocalOnly = possibleLengthLocalOnly2;
      possibleLength2 = v23;
    }
  }

  firstObject = [possibleLength2 firstObject];
  v28 = [firstObject isEqualToNumber:&unk_285464B18];

  if (v28)
  {
    v17 = -1;
  }

  else
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(lengthCopy, "length")}];
    if ([possibleLengthLocalOnly containsObject:v29])
    {
      v17 = 5;
    }

    else
    {
      firstObject2 = [possibleLength2 firstObject];
      v31 = [firstObject2 compare:v29];
      if (v31)
      {
        if (v31 == 1)
        {
          v17 = 3;
        }

        else
        {
          lastObject = [possibleLength2 lastObject];
          v33 = [lastObject compare:v29];

          if (v33 == -1)
          {
            v17 = 4;
          }

          else
          {
            v17 = 1;
            v34 = [possibleLength2 subarrayWithRange:{1, objc_msgSend(possibleLength2, "count") - 1}];
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

- (int64_t)testNumberLength:(id)length desc:(id)desc
{
  descCopy = desc;
  lengthCopy = length;
  possibleLength = [descCopy possibleLength];
  possibleLengthLocalOnly = [descCopy possibleLengthLocalOnly];

  v9 = [lengthCopy length];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  LOBYTE(lengthCopy) = [possibleLengthLocalOnly containsObject:v10];

  if (lengthCopy)
  {
    v11 = 1;
  }

  else
  {
    v12 = [possibleLength objectAtIndexedSubscript:0];
    if ([v12 unsignedIntegerValue] == v9)
    {
      v11 = 1;
    }

    else if ([v12 unsignedIntegerValue] <= v9)
    {
      v13 = [possibleLength count] - 1;
      if (v13 >= [possibleLength count] || (objc_msgSend(possibleLength, "objectAtIndexedSubscript:", objc_msgSend(possibleLength, "count") - 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "integerValue"), v14, v15 >= v9))
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
        if ([possibleLength containsObject:v16])
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

- (int64_t)isPossibleNumberWithReason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  v6 = [(_NBPhoneNumberUtil *)self isPossibleNumberWithReason:reasonCopy];

  return v6;
}

- (int64_t)isPossibleNumberWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:reasonCopy];
  countryCode = [reasonCopy countryCode];

  if ([(_NBPhoneNumberUtil *)self hasValidCountryCallingCode:countryCode])
  {
    v7 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];
    v8 = [(_NBPhoneNumberUtil *)self getMetadataForRegionOrCallingCode:countryCode regionCode:v7];
    generalDesc = [v8 generalDesc];
    v10 = [(_NBPhoneNumberUtil *)self testNumberLength:v5 desc:generalDesc];
  }

  else
  {
    v10 = 2;
  }

  return v10;
}

- (BOOL)isPossibleNumberString:(id)string regionDialingFrom:(id)from error:(id *)error
{
  fromCopy = from;
  v9 = [string stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  v10 = [(_NBPhoneNumberUtil *)self parse:v9 defaultRegion:fromCopy error:error];

  LOBYTE(self) = [(_NBPhoneNumberUtil *)self isPossibleNumber:v10];
  return self;
}

- (BOOL)truncateTooLongNumber:(id)number
{
  numberCopy = number;
  if ([(_NBPhoneNumberUtil *)self isValidNumber:numberCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [numberCopy copy];
    nationalNumber = [numberCopy nationalNumber];
    while (1)
    {
      v8 = nationalNumber;
      nationalNumber = [MEMORY[0x277CCABB0] numberWithLongLong:{(objc_msgSend(nationalNumber, "unsignedLongLongValue") / 0xAuLL)}];

      v9 = [nationalNumber copy];
      [v6 setNationalNumber:v9];

      if (([nationalNumber isEqualToNumber:&unk_285464B00] & 1) != 0 || -[_NBPhoneNumberUtil isPossibleNumberWithReason:](self, "isPossibleNumberWithReason:", v6) == 3)
      {
        break;
      }

      if ([(_NBPhoneNumberUtil *)self isValidNumber:v6])
      {
        [numberCopy setNationalNumber:nationalNumber];
        v5 = 1;
        goto LABEL_9;
      }
    }

    v5 = 0;
LABEL_9:
  }

  return v5;
}

- (id)extractCountryCode:(id)code nationalNumber:(id *)number
{
  v5 = [code stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
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

    if (number)
    {
      v18 = *number;
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
      *number = ;
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
  allKeys = [v2 allKeys];

  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_569];
  v5 = [allKeys filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)maybeExtractCountryCode:(id)code metadata:(id)metadata nationalNumber:(id *)number keepRawInput:(BOOL)input phoneNumber:(id *)phoneNumber error:(id *)error
{
  inputCopy = input;
  codeCopy = code;
  metadataCopy = metadata;
  countryCode = &unk_285464B00;
  if (number && phoneNumber && [codeCopy length])
  {
    v17 = [codeCopy copy];
    if (metadataCopy)
    {
      internationalPrefix = [metadataCopy internationalPrefix];
      if (internationalPrefix)
      {
        v19 = internationalPrefix;
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

    if (inputCopy)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
      [*phoneNumber setCountryCodeSource:v22];
    }

    if (v20 != 20)
    {
      if ([v21 length] > 2)
      {
        v35 = [(_NBPhoneNumberUtil *)self extractCountryCode:v21 nationalNumber:number];
        if ([v35 isEqualToNumber:&unk_285464B00])
        {
          v36 = MEMORY[0x277CBEAC0];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_COUNTRY_CODE:%@", v35];
          v38 = [v36 dictionaryWithObject:v37 forKey:*MEMORY[0x277CCA450]];

          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_COUNTRY_CODE" code:0 userInfo:v38];
          }

          countryCode = &unk_285464B00;
        }

        else
        {
          [*phoneNumber setCountryCode:v35];
          countryCode = v35;
        }
      }

      else
      {
        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"TOO_SHORT_AFTER_IDD:%@", v21];
        v34 = [v32 dictionaryWithObject:v33 forKey:*MEMORY[0x277CCA450]];

        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TOO_SHORT_AFTER_IDD" code:0 userInfo:v34];
        }

        countryCode = &unk_285464B00;
      }

      goto LABEL_33;
    }

    if (metadataCopy)
    {
      countryCode = [metadataCopy countryCode];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", countryCode];
      v24 = [v21 copy];
      if ([v24 hasPrefix:v23])
      {
        v42 = v23;
        v41 = v24;
        v25 = [v24 substringFromIndex:{objc_msgSend(v23, "length")}];
        generalDesc = [metadataCopy generalDesc];
        nationalNumberPattern = [generalDesc nationalNumberPattern];
        v46 = v25;
        [(_NBPhoneNumberUtil *)self maybeStripNationalPrefixAndCarrierCode:&v46 metadata:metadataCopy carrierCode:0];
        v26 = v21;
        v27 = v46;

        v40 = v27;
        v28 = v27;
        v21 = v26;
        v29 = [v28 copy];
        if (![(_NBPhoneNumberUtil *)self matchesEntirely:nationalNumberPattern string:v21]&& [(_NBPhoneNumberUtil *)self matchesEntirely:nationalNumberPattern string:v29]|| [(_NBPhoneNumberUtil *)self testNumberLength:v21 desc:generalDesc]== 4)
        {
          *number = [*number stringByAppendingString:v29];
          if (inputCopy)
          {
            [MEMORY[0x277CCABB0] numberWithInteger:10];
            v31 = v30 = v29;
            [*phoneNumber setCountryCodeSource:v31];

            v29 = v30;
          }

          [*phoneNumber setCountryCode:countryCode];

          goto LABEL_33;
        }

        v24 = v41;
        v23 = v42;
      }
    }

    countryCode = &unk_285464B00;
    [*phoneNumber setCountryCode:&unk_285464B00];
LABEL_33:
  }

  return countryCode;
}

- (BOOL)descHasPossibleNumberData:(id)data
{
  dataCopy = data;
  possibleLength = [dataCopy possibleLength];
  if ([possibleLength count] == 1)
  {
    possibleLength2 = [dataCopy possibleLength];
    firstObject = [possibleLength2 firstObject];
    v7 = [firstObject isEqualToNumber:&unk_285464B18] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)parsePrefixAsIdd:(id)idd sourceString:(id *)string
{
  iddCopy = idd;
  if (string)
  {
    v7 = [*string copy];
    if ([(_NBPhoneNumberUtil *)self stringPositionByRegex:v7 regex:iddCopy])
    {
      LOBYTE(string) = 0;
LABEL_13:

      goto LABEL_14;
    }

    v8 = [(_NBPhoneNumberUtil *)self matchesByRegex:v7 regex:iddCopy];
    v9 = [v8 objectAtIndex:0];

    range = [v9 range];
    v12 = [v7 substringWithRange:{range, v11}];
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
          range2 = [v17 range];
          v20 = [v13 substringWithRange:{range2, v19}];

          if ([v20 length])
          {
            v21 = [(_NBPhoneNumberUtil *)self normalizeDigitsOnly:v20];
            v22 = [v21 isEqualToString:@"0"];

            if (v22)
            {

              LOBYTE(string) = 0;
LABEL_12:

              goto LABEL_13;
            }
          }
        }
      }
    }

    *string = [v13 copy];
    LOBYTE(string) = 1;
    goto LABEL_12;
  }

LABEL_14:

  return string;
}

- (int64_t)maybeStripInternationalPrefixAndNormalize:(id *)normalize possibleIddPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (normalize && [*normalize length])
  {
    if ([(_NBPhoneNumberUtil *)self isStartingStringByRegex:*normalize regex:qword_281346978])
    {
      v7 = [(_NBPhoneNumberUtil *)self replaceStringByRegex:*normalize regex:qword_281346978 withTemplate:&stru_285461708];
      *normalize = v7;
      *normalize = [(_NBPhoneNumberUtil *)self normalize:v7];
      v8 = 1;
    }

    else
    {
      v9 = [prefixCopy copy];
      [(_NBPhoneNumberUtil *)self normalizeSB:normalize];
      if ([(_NBPhoneNumberUtil *)self parsePrefixAsIdd:v9 sourceString:normalize])
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

- (BOOL)maybeStripNationalPrefixAndCarrierCode:(id *)code metadata:(id)metadata carrierCode:(id *)carrierCode
{
  metadataCopy = metadata;
  if (code)
  {
    v9 = [*code copy];
    v10 = [v9 length];
    nationalPrefixForParsing = [metadataCopy nationalPrefixForParsing];
    if (!v10 || ![_NBMetadataHelper hasValue:nationalPrefixForParsing])
    {
      LOBYTE(code) = 0;
LABEL_42:

      goto LABEL_43;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)", nationalPrefixForParsing];
    v45 = 0;
    v13 = [(_NBPhoneNumberUtil *)self regularExpressionWithPattern:v12 options:0 error:&v45];
    v44 = v45;
    v14 = [v13 matchesInString:v9 options:0 range:{0, v10}];
    v15 = v14;
    if (!v14 || ![v14 count])
    {
      LOBYTE(code) = 0;
LABEL_41:

      goto LABEL_42;
    }

    v38 = v13;
    v41 = v12;
    generalDesc = [metadataCopy generalDesc];
    nationalNumberPattern = [generalDesc nationalNumberPattern];

    v17 = [v15 objectAtIndex:0];
    range = [v17 range];
    v42 = [v9 substringWithRange:{range, v19}];
    v20 = [v17 numberOfRanges] - 1;
    nationalPrefixTransformRule = [metadataCopy nationalPrefixTransformRule];
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

    if (nationalPrefixTransformRule && [nationalPrefixTransformRule length] && +[_NBMetadataHelper hasValue:](_NBMetadataHelper, "hasValue:", v39))
    {
      v25 = [(_NBPhoneNumberUtil *)self replaceFirstStringByRegex:v9 regex:v41 withTemplate:nationalPrefixTransformRule];
      v26 = 0;
    }

    else
    {
      v25 = [v9 substringFromIndex:{objc_msgSend(v42, "length")}];
      v26 = 1;
    }

    v27 = nationalNumberPattern;
    if ([_NBMetadataHelper hasValue:nationalNumberPattern]&& [(_NBPhoneNumberUtil *)self matchesEntirely:nationalNumberPattern string:v9]&& ![(_NBPhoneNumberUtil *)self matchesEntirely:nationalNumberPattern string:v25])
    {
      LOBYTE(code) = 0;
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
        v27 = nationalNumberPattern;
        v12 = v41;
        if (!carrierCode)
        {
          goto LABEL_39;
        }

        if (!v33)
        {
          goto LABEL_39;
        }

        v31 = *carrierCode;
        if (!*carrierCode)
        {
          goto LABEL_39;
        }

        v32 = v42;
        goto LABEL_38;
      }

      v27 = nationalNumberPattern;
      v12 = v41;
      if (!carrierCode)
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

      v27 = nationalNumberPattern;
      v12 = v41;
      v29 = v39;
      if (!carrierCode || (v30 & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    v31 = *carrierCode;
    if (!*carrierCode)
    {
LABEL_39:
      v34 = v25;
      *code = v25;
      LOBYTE(code) = 1;
LABEL_40:

      v13 = v38;
      goto LABEL_41;
    }

    v32 = v29;
LABEL_38:
    *carrierCode = [v31 stringByAppendingString:v32];
    goto LABEL_39;
  }

LABEL_43:

  return code;
}

- (id)maybeStripExtension:(id *)extension
{
  if (extension)
  {
    v5 = [*extension copy];
    v6 = [(_NBPhoneNumberUtil *)self stringPositionByRegex:v5 regex:qword_281346998];
    if ((v6 & 0x80000000) != 0 || (v7 = v6, [v5 substringWithRange:{0, v6}], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[_NBPhoneNumberUtil isViablePhoneNumber:](self, "isViablePhoneNumber:", v8), v8, !v9))
    {
      v18 = &stru_285461708;
    }

    else
    {
      v10 = [(_NBPhoneNumberUtil *)self matchFirstByRegex:v5 regex:qword_281346998];
      numberOfRanges = [v10 numberOfRanges];
      if (numberOfRanges < 2)
      {
        v18 = &stru_285461708;
      }

      else
      {
        v12 = numberOfRanges;
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

        v18 = [*extension substringWithRange:{v16, v17}];
        v19 = [v5 substringWithRange:{0, v7}];
        *extension = &stru_285461708;
        *extension = [&stru_285461708 stringByAppendingString:v19];
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

- (BOOL)checkRegionForParsing:(id)parsing defaultRegion:(id)region
{
  parsingCopy = parsing;
  if ([(_NBPhoneNumberUtil *)self isValidRegionCode:region])
  {
    v7 = 1;
  }

  else
  {
    v7 = parsingCopy && [parsingCopy length] && -[_NBPhoneNumberUtil isStartingStringByRegex:regex:](self, "isStartingStringByRegex:regex:", parsingCopy, qword_281346978);
  }

  return v7;
}

- (id)parse:(id)parse defaultRegion:(id)region error:(id *)error
{
  v13 = 0;
  v7 = [(_NBPhoneNumberUtil *)self parseHelper:parse defaultRegion:region keepRawInput:0 checkRegion:1 error:&v13];
  v8 = v13;
  v9 = v8;
  if (error && v8)
  {
    v10 = [v8 description];
    domain = [v9 domain];
    *error = [(_NBPhoneNumberUtil *)self errorWithObject:v10 withDomain:domain];
  }

  return v7;
}

- (id)parseWithPhoneCarrierRegion:(id)region error:(id *)error
{
  v6 = [region stringByReplacingOccurrencesOfString:0x285461648 withString:@" "];
  countryCodeByCarrier = [(_NBPhoneNumberUtil *)self countryCodeByCarrier];
  if ([@"ZZ" isEqualToString:countryCodeByCarrier])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

    countryCodeByCarrier = v9;
  }

  v10 = [(_NBPhoneNumberUtil *)self parse:v6 defaultRegion:countryCodeByCarrier error:error];

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
  telephonyNetworkInfo = [(_NBPhoneNumberUtil *)self telephonyNetworkInfo];
  subscriberCellularProvider = [telephonyNetworkInfo subscriberCellularProvider];
  isoCountryCode = [subscriberCellularProvider isoCountryCode];

  if (![isoCountryCode length])
  {
    v5 = @"ZZ";

    isoCountryCode = v5;
  }

  return isoCountryCode;
}

- (id)parseAndKeepRawInput:(id)input defaultRegion:(id)region error:(id *)error
{
  inputCopy = input;
  regionCopy = region;
  if (!-[_NBPhoneNumberUtil isValidRegionCode:](self, "isValidRegionCode:", regionCopy) && [inputCopy length] && (objc_msgSend(inputCopy, "hasPrefix:", @"+") & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAC0];
    inputCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid country code:%@", inputCopy];
    v12 = [v10 dictionaryWithObject:inputCopy forKey:*MEMORY[0x277CCA450]];

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"INVALID_COUNTRY_CODE" code:0 userInfo:v12];
    }
  }

  v13 = [(_NBPhoneNumberUtil *)self parseHelper:inputCopy defaultRegion:regionCopy keepRawInput:1 checkRegion:1 error:error];

  return v13;
}

- (void)setItalianLeadingZerosForPhoneNumber:(id)number phoneNumber:(id)phoneNumber
{
  numberCopy = number;
  phoneNumberCopy = phoneNumber;
  if ([numberCopy length] >= 2)
  {
    if ([numberCopy hasPrefix:@"0"])
    {
      [phoneNumberCopy setItalianLeadingZero:1];
      if (([numberCopy length] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = 1;
        while (1)
        {
          v7 = [numberCopy substringWithRange:{v6, 1}];
          v8 = [v7 isEqualToString:@"0"];

          if (!v8)
          {
            break;
          }

          if (++v6 >= ([numberCopy length] - 1))
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
        [phoneNumberCopy setNumberOfLeadingZeros:v9];
      }
    }
  }

LABEL_10:
}

- (void)buildNationalNumberForParsing:(id)parsing nationalNumber:(id *)number
{
  parsingCopy = parsing;
  if (!number)
  {
    goto LABEL_15;
  }

  v23 = parsingCopy;
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

  *number = [v7 copy];

  parsingCopy = v23;
LABEL_15:
}

- (int64_t)isNumberMatch:(id)match second:(id)second error:(id *)error
{
  matchCopy = match;
  secondCopy = second;
  v9 = [(_NBPhoneNumberUtil *)self isNumberMatch:matchCopy second:secondCopy];

  return v9;
}

- (int64_t)isNumberMatch:(id)match second:(id)second
{
  matchCopy = match;
  secondCopy = second;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = 0;
    v8 = [(_NBPhoneNumberUtil *)self parse:matchCopy defaultRegion:0x285461628 error:&v45];
    v9 = v45;
    countryCode2 = v9;
    if (v9)
    {
      domain = [v9 domain];
      v12 = [domain isEqualToString:@"INVALID_COUNTRY_CODE"];

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
        countryCode = [secondCopy countryCode];
        v14 = [(_NBPhoneNumberUtil *)self getRegionCodeForCountryCode:countryCode];

        if (v14 != @"ZZ")
        {
          v44 = 0;
          v15 = [(_NBPhoneNumberUtil *)self parse:matchCopy defaultRegion:v14 error:&v44];
          v16 = v44;

          v17 = 0;
          if (!v16)
          {
            v18 = [(_NBPhoneNumberUtil *)self isNumberMatch:v15 second:secondCopy];
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
      v15 = [(_NBPhoneNumberUtil *)self parseHelper:matchCopy defaultRegion:0 keepRawInput:0 checkRegion:0 error:&v43];
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
    v15 = [matchCopy copy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0;
    v19 = [(_NBPhoneNumberUtil *)self parse:secondCopy defaultRegion:0x285461628 error:&v42];
    v20 = v42;
    countryCode2 = v20;
    if (v20)
    {
      domain2 = [v20 domain];
      v22 = [domain2 isEqualToString:@"INVALID_COUNTRY_CODE"];

      if (!v22)
      {
LABEL_50:
        v17 = 0;
        goto LABEL_51;
      }

      selfCopy2 = self;
      v24 = secondCopy;
      v25 = v15;
    }

    else
    {
      selfCopy2 = self;
      v24 = matchCopy;
      v25 = v19;
    }

    v17 = [(_NBPhoneNumberUtil *)selfCopy2 isNumberMatch:v24 second:v25];
LABEL_51:

    goto LABEL_52;
  }

  v19 = [secondCopy copy];
  [v15 setRawInput:&stru_285461708];
  [v15 clearCountryCodeSource];
  [v15 setPreferredDomesticCarrierCode:&stru_285461708];
  [v19 setRawInput:&stru_285461708];
  [v19 clearCountryCodeSource];
  [v19 setPreferredDomesticCarrierCode:&stru_285461708];
  extension = [v15 extension];
  if (extension)
  {
    v27 = extension;
    extension2 = [v15 extension];
    v29 = [extension2 length];

    if (!v29)
    {
      [v15 setExtension:0];
    }
  }

  extension3 = [v19 extension];
  if (extension3)
  {
    v31 = extension3;
    extension4 = [v19 extension];
    v33 = [extension4 length];

    if (!v33)
    {
      [v19 setExtension:0];
    }
  }

  extension5 = [v15 extension];
  if (![_NBMetadataHelper hasValue:extension5])
  {
    goto LABEL_32;
  }

  extension6 = [v19 extension];
  if (![_NBMetadataHelper hasValue:extension6])
  {

LABEL_32:
LABEL_33:
    countryCode2 = [v15 countryCode];
    countryCode3 = [v19 countryCode];
    if ([countryCode2 isEqualToNumber:&unk_285464B00] & 1) != 0 || (objc_msgSend(countryCode3, "isEqualToNumber:", &unk_285464B00))
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

    else if ([countryCode2 isEqualToNumber:countryCode3] && -[_NBPhoneNumberUtil isNationalNumberSuffixOfTheOther:second:](self, "isNationalNumberSuffixOfTheOther:second:", v15, v19))
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_51;
  }

  extension7 = [v15 extension];
  extension8 = [v19 extension];
  v38 = [extension7 isEqualToString:extension8];

  if (v38)
  {
    goto LABEL_33;
  }

  v17 = 1;
LABEL_52:

  return v17;
}

- (BOOL)isNationalNumberSuffixOfTheOther:(id)other second:(id)second
{
  v5 = MEMORY[0x277CCACA8];
  secondCopy = second;
  nationalNumber = [other nationalNumber];
  v8 = [v5 stringWithFormat:@"%@", nationalNumber];

  v9 = MEMORY[0x277CCACA8];
  nationalNumber2 = [secondCopy nationalNumber];

  v11 = [v9 stringWithFormat:@"%@", nationalNumber2];

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

- (BOOL)canBeInternationallyDialled:(id)dialled error:(id *)error
{
  dialledCopy = dialled;
  LOBYTE(self) = [(_NBPhoneNumberUtil *)self canBeInternationallyDialled:dialledCopy];

  return self;
}

- (BOOL)canBeInternationallyDialled:(id)dialled
{
  dialledCopy = dialled;
  helper = [(_NBPhoneNumberUtil *)self helper];
  v6 = [(_NBPhoneNumberUtil *)self getRegionCodeForNumber:dialledCopy];
  v7 = [helper getMetadataForRegion:v6];

  if (v7)
  {
    v8 = [(_NBPhoneNumberUtil *)self getNationalSignificantNumber:dialledCopy];
    noInternationalDialling = [v7 noInternationalDialling];
    v10 = ![(_NBPhoneNumberUtil *)self isNumberMatchingDesc:v8 numberDesc:noInternationalDialling];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)matchesEntirely:(id)entirely string:(id)string
{
  entirelyCopy = entirely;
  stringCopy = string;
  if ([entirelyCopy isEqualToString:@"NA"])
  {
    v8 = 0;
  }

  else
  {
    v15 = 0;
    v9 = [(_NBPhoneNumberUtil *)self entireRegularExpressionWithPattern:entirelyCopy options:0 error:&v15];
    v10 = [stringCopy length];
    v11 = [v9 firstMatchInString:stringCopy options:4 range:{0, v10}];
    v12 = v11;
    v8 = v11 && ![v11 range] && v13 == v10;
  }

  return v8;
}

@end