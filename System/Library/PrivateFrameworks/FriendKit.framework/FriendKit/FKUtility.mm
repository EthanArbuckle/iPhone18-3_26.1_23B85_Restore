@interface FKUtility
+ (BOOL)isRomanString:(id)string;
+ (id)_nameFormatter;
+ (id)compressPhoneNumberString:(id)string;
+ (id)hashFromData:(id)data;
+ (id)initialForString:(id)string;
+ (id)initialsForPerson:(void *)person;
@end

@implementation FKUtility

+ (id)_nameFormatter
{
  if (_nameFormatter_name_formatter_init != -1)
  {
    +[FKUtility _nameFormatter];
  }

  v3 = _nameFormatter_sNameFormatter;

  return v3;
}

uint64_t __27__FKUtility__nameFormatter__block_invoke()
{
  _nameFormatter_sNameFormatter = objc_alloc_init(MEMORY[0x277CCAC08]);

  return MEMORY[0x2821F96F8]();
}

+ (id)initialsForPerson:(void *)person
{
  if (person && (v4 = ABPersonCopyPreferredLinkedPersonForName()) != 0)
  {
    v5 = v4;
    v6 = ABRecordCopyValue(v4, *MEMORY[0x277CE9970]);
    v7 = CFNumberCompare(v6, *MEMORY[0x277CE9968], 0);
    CFRelease(v6);
    v8 = 0;
    if (v7 == kCFCompareEqualTo)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCAC00]);
      v10 = ABRecordCopyValue(v5, *MEMORY[0x277CE98C0]);
      [v9 setGivenName:v10];

      v11 = ABRecordCopyValue(v5, *MEMORY[0x277CE9980]);
      [v9 setFamilyName:v11];

      _nameFormatter = [self _nameFormatter];
      [_nameFormatter setStyle:4];
      [_nameFormatter set_ignoresFallbacks:1];
      v8 = [_nameFormatter stringFromPersonNameComponents:v9];
    }

    if (![v8 length])
    {

      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  localizedUppercaseString = [v8 localizedUppercaseString];

  return localizedUppercaseString;
}

+ (id)initialForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && +[FKUtility isRomanString:](FKUtility, "isRomanString:", stringCopy))
  {
    v4 = [stringCopy substringWithRange:{0, 1}];
    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    v6 = [v4 rangeOfCharacterFromSet:letterCharacterSet];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  localizedUppercaseString = [v4 localizedUppercaseString];

  return localizedUppercaseString;
}

+ (BOOL)isRomanString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    if (_ABStringContainsNonLatinCharacters())
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = _ABStringContainsEmojiCharacters() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)compressPhoneNumberString:(id)string
{
  stringCopy = string;
  v4 = CPPhoneNumberCopyHomeCountryCode();
  v5 = CFPhoneNumberCreate();
  v6 = stringCopy;
  if (v5)
  {
    v7 = v5;
    v8 = *MEMORY[0x277CBECE8];
    String = CFPhoneNumberCreateString();
    v10 = CFPhoneNumberCopyCountryCode();
    [v10 isEqualToString:v4];
    v6 = PNCreateFormattedStringWithCountry();

    CFRelease(v7);
  }

  return v6;
}

+ (id)hashFromData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  CC_SHA1(bytes, v5, md);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v7 = [v6 base64EncodedStringWithOptions:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end