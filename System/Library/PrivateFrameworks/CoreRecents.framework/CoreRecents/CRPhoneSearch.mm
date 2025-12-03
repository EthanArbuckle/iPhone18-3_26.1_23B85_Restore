@interface CRPhoneSearch
+ (id)copyCountryCode;
+ (id)copyNormalizedPhoneNumber:(__CFString *)number countryCode:(__CFString *)code;
- (BOOL)hasPrefix:(id)prefix;
- (BOOL)isEqualToPhoneNumber:(id)number;
- (BOOL)matchesUTF8String:(const char *)string matchType:(unint64_t)type;
- (CRPhoneSearch)initWithSearchString:(id)string;
- (id)_copyInterpretationsForPhoneNumber:(id)number;
- (void)dealloc;
@end

@implementation CRPhoneSearch

+ (id)copyCountryCode
{
  result = CPPhoneNumberCopyActiveCountryCode();
  if (!result)
  {

    return _CPPhoneNumberCopyHomeCountryCode();
  }

  return result;
}

+ (id)copyNormalizedPhoneNumber:(__CFString *)number countryCode:(__CFString *)code
{
  v5 = PNCopyBestGuessNormalizedNumberForCountry();
  v6 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v5, 0x8000100u, kCFAllocatorMalloc);
  v7 = CFPhoneNumberCreate();
  String = CFPhoneNumberCreateString();
  if (!String)
  {
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = [(__CFString *)number lowercaseString];
    }
  }

  v9 = String;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

- (CRPhoneSearch)initWithSearchString:(id)string
{
  v5.receiver = self;
  v5.super_class = CRPhoneSearch;
  v3 = [(CRPhoneSearch *)&v5 init];
  if (v3)
  {
    v3->_countryCode = [objc_opt_class() copyCountryCode];
    v3->_searchString = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRPhoneSearch;
  [(CRPhoneSearch *)&v3 dealloc];
}

- (id)_copyInterpretationsForPhoneNumber:(id)number
{
  v4 = [objc_opt_class() copyNormalizedPhoneNumber:number countryCode:self->_countryCode];
  countryCode = self->_countryCode;
  v6 = _PNCopyIndexStringsForAddressBookSearch();

  return v6;
}

- (BOOL)isEqualToPhoneNumber:(id)number
{
  if ([(NSString *)self->_searchString isEqualToString:?])
  {
    return 1;
  }

  v6 = [(CRPhoneSearch *)self _copyInterpretationsForPhoneNumber:number];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([(NSString *)self->_searchString isEqualToString:*(*(&v12 + 1) + 8 * i)])
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (BOOL)hasPrefix:(id)prefix
{
  if ([(NSString *)self->_searchString hasPrefix:?])
  {
    return 1;
  }

  v6 = [(CRPhoneSearch *)self _copyInterpretationsForPhoneNumber:prefix];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        if ([*(*(&v13 + 1) + 8 * i) hasPrefix:self->_searchString])
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (BOOL)matchesUTF8String:(const char *)string matchType:(unint64_t)type
{
  v6 = [[NSString alloc] initWithBytesNoCopy:string length:strlen(string) encoding:4 freeWhenDone:0];
  if (type == 1)
  {
    v8 = [(CRPhoneSearch *)self hasPrefix:v6];
    goto LABEL_5;
  }

  v7 = 0;
  if (!type)
  {
    v8 = [(CRPhoneSearch *)self isEqualToPhoneNumber:v6];
LABEL_5:
    v7 = v8;
  }

  return v7;
}

@end