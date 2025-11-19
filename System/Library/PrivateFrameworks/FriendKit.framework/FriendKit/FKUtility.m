@interface FKUtility
+ (BOOL)isRomanString:(id)a3;
+ (id)_nameFormatter;
+ (id)compressPhoneNumberString:(id)a3;
+ (id)hashFromData:(id)a3;
+ (id)initialForString:(id)a3;
+ (id)initialsForPerson:(void *)a3;
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

+ (id)initialsForPerson:(void *)a3
{
  if (a3 && (v4 = ABPersonCopyPreferredLinkedPersonForName()) != 0)
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

      v12 = [a1 _nameFormatter];
      [v12 setStyle:4];
      [v12 set_ignoresFallbacks:1];
      v8 = [v12 stringFromPersonNameComponents:v9];
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

  v13 = [v8 localizedUppercaseString];

  return v13;
}

+ (id)initialForString:(id)a3
{
  v3 = a3;
  if ([v3 length] && +[FKUtility isRomanString:](FKUtility, "isRomanString:", v3))
  {
    v4 = [v3 substringWithRange:{0, 1}];
    v5 = [MEMORY[0x277CCA900] letterCharacterSet];
    v6 = [v4 rangeOfCharacterFromSet:v5];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v7 = [v4 localizedUppercaseString];

  return v7;
}

+ (BOOL)isRomanString:(id)a3
{
  v3 = a3;
  if (v3)
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

+ (id)compressPhoneNumberString:(id)a3
{
  v3 = a3;
  v4 = CPPhoneNumberCopyHomeCountryCode();
  v5 = CFPhoneNumberCreate();
  v6 = v3;
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

+ (id)hashFromData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  CC_SHA1(v4, v5, md);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v7 = [v6 base64EncodedStringWithOptions:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end