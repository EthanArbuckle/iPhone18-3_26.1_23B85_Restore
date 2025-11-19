@interface CRPhoneSearch
+ (id)copyCountryCode;
+ (id)copyNormalizedPhoneNumber:(__CFString *)a3 countryCode:(__CFString *)a4;
- (BOOL)hasPrefix:(id)a3;
- (BOOL)isEqualToPhoneNumber:(id)a3;
- (BOOL)matchesUTF8String:(const char *)a3 matchType:(unint64_t)a4;
- (CRPhoneSearch)initWithSearchString:(id)a3;
- (id)_copyInterpretationsForPhoneNumber:(id)a3;
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

+ (id)copyNormalizedPhoneNumber:(__CFString *)a3 countryCode:(__CFString *)a4
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
      String = [(__CFString *)a3 lowercaseString];
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

- (CRPhoneSearch)initWithSearchString:(id)a3
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

- (id)_copyInterpretationsForPhoneNumber:(id)a3
{
  v4 = [objc_opt_class() copyNormalizedPhoneNumber:a3 countryCode:self->_countryCode];
  countryCode = self->_countryCode;
  v6 = _PNCopyIndexStringsForAddressBookSearch();

  return v6;
}

- (BOOL)isEqualToPhoneNumber:(id)a3
{
  if ([(NSString *)self->_searchString isEqualToString:?])
  {
    return 1;
  }

  v6 = [(CRPhoneSearch *)self _copyInterpretationsForPhoneNumber:a3];
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

- (BOOL)hasPrefix:(id)a3
{
  if ([(NSString *)self->_searchString hasPrefix:?])
  {
    return 1;
  }

  v6 = [(CRPhoneSearch *)self _copyInterpretationsForPhoneNumber:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) hasPrefix:self->_searchString])
        {
          v5 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)matchesUTF8String:(const char *)a3 matchType:(unint64_t)a4
{
  v6 = [[NSString alloc] initWithBytesNoCopy:a3 length:strlen(a3) encoding:4 freeWhenDone:0];
  if (a4 == 1)
  {
    v8 = [(CRPhoneSearch *)self hasPrefix:v6];
    goto LABEL_5;
  }

  v7 = 0;
  if (!a4)
  {
    v8 = [(CRPhoneSearch *)self isEqualToPhoneNumber:v6];
LABEL_5:
    v7 = v8;
  }

  return v7;
}

@end