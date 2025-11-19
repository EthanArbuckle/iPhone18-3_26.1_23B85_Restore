@interface EMNumberFormatter
+ (id)formatterForFormat:(id)a3;
- (BOOL)useBigNumberFormatterForValue:(double)a3;
- (EMNumberFormatter)initWithExcelFormatString:(id)a3;
- (__CFDateFormatter)_dateFormatter;
- (__CFNumberFormatter)_bigNumberFormatter;
- (__CFNumberFormatter)_currencyFormatter;
- (__CFNumberFormatter)_doubleFormatter;
- (__CFNumberFormatter)_genericFormatterForNumberOfSignificantDigits:(unint64_t)a3;
- (__CFNumberFormatter)_percentFormatter;
- (id)_icuFormatStringForCurrencyFormat;
- (id)_icuFormatStringForDateFormat;
- (id)convertedGenericNumberFormatWithFormat:(id)a3;
- (id)formatCurrency:(double)a3;
- (id)formatDate:(id)a3;
- (id)formatDefault:(double)a3;
- (id)formatDefault:(double)a3 showingNumberOfDigits:(unint64_t)a4;
- (id)formatDoubleValue:(double)a3;
- (id)formatPercent:(double)a3;
- (id)formatPhoneNumber:(double)a3;
- (id)formatValue:(double)a3 inWorkbook:(id)a4;
- (id)initForGeneralFormatting;
- (unint64_t)optimalNumberOfDigitsForValue:(double)a3;
- (void)_parseExcelFormatString:(id)a3;
- (void)convertGenericNumberFormat:(id)a3;
- (void)dealloc;
@end

@implementation EMNumberFormatter

- (__CFNumberFormatter)_currencyFormatter
{
  result = self->_currencyFormatter;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = *MEMORY[0x277CBECE8];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    v6 = CFNumberFormatterCreate(v5, qword_27FC699F8, kCFNumberFormatterCurrencyStyle);
    self->_currencyFormatter = v6;
    CFNumberFormatterSetProperty(v6, *MEMORY[0x277CBEFD8], &unk_286F6DDA0);
    v7 = [(EMNumberFormatter *)v4 _icuFormatStringForCurrencyFormat];
    if (v7)
    {
      CFNumberFormatterSetFormat(self->_currencyFormatter, v7);
    }

    objc_sync_exit(v4);
    return self->_currencyFormatter;
  }

  return result;
}

- (void)dealloc
{
  dateFormatter = self->_dateFormatter;
  if (dateFormatter)
  {
    CFRelease(dateFormatter);
  }

  genericFormatter = self->_genericFormatter;
  if (genericFormatter)
  {
    CFRelease(genericFormatter);
  }

  currencyFormatter = self->_currencyFormatter;
  if (currencyFormatter)
  {
    CFRelease(currencyFormatter);
  }

  bigNumberFormatter = self->_bigNumberFormatter;
  if (bigNumberFormatter)
  {
    CFRelease(bigNumberFormatter);
  }

  percentFormatter = self->_percentFormatter;
  if (percentFormatter)
  {
    CFRelease(percentFormatter);
  }

  doubleFormatter = self->_doubleFormatter;
  if (doubleFormatter)
  {
    CFRelease(doubleFormatter);
  }

  v9.receiver = self;
  v9.super_class = EMNumberFormatter;
  [(EMNumberFormatter *)&v9 dealloc];
}

- (__CFDateFormatter)_dateFormatter
{
  result = self->_dateFormatter;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = *MEMORY[0x277CBECE8];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    self->_dateFormatter = CFDateFormatterCreate(v5, qword_27FC699F8, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
    v6 = CFTimeZoneCreateWithTimeIntervalFromGMT(v5, 0.0);
    CFDateFormatterSetProperty(self->_dateFormatter, *MEMORY[0x277CBEDF8], v6);
    CFRelease(v6);
    v7 = [(EMNumberFormatter *)v4 _icuFormatStringForDateFormat];
    if (v7)
    {
      CFDateFormatterSetFormat(self->_dateFormatter, v7);
    }

    objc_sync_exit(v4);
    return self->_dateFormatter;
  }

  return result;
}

- (__CFNumberFormatter)_bigNumberFormatter
{
  result = self->_bigNumberFormatter;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = *MEMORY[0x277CBECE8];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    v6 = CFNumberFormatterCreate(v5, qword_27FC699F8, kCFNumberFormatterScientificStyle);
    self->_bigNumberFormatter = v6;
    CFNumberFormatterSetFormat(v6, @"0.0####E+00");
    objc_sync_exit(v4);

    return self->_bigNumberFormatter;
  }

  return result;
}

+ (id)formatterForFormat:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = @"General";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;
  if (qword_27FC69A08 != -1)
  {
    dispatch_once(&qword_27FC69A08, &__block_literal_global_6_2);
  }

  v7 = _MergedGlobals_62;
  objc_sync_enter(v7);
  v8 = [_MergedGlobals_62 objectForKey:v6];
  if (!v8)
  {
    if (v4 && ([(__CFString *)v4 isEqualToString:@"@"]& 1) == 0)
    {
      v9 = [[EMNumberFormatter alloc] initWithExcelFormatString:v4];
    }

    else
    {
      v9 = [[EMNumberFormatter alloc] initForGeneralFormatting];
    }

    v8 = v9;
    [_MergedGlobals_62 setObject:v9 forKey:v6];
  }

  objc_sync_exit(v7);

  return v8;
}

uint64_t __40__EMNumberFormatter_formatterForFormat___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _MergedGlobals_62;
  _MergedGlobals_62 = v0;

  v2 = _MergedGlobals_62;

  return [v2 setName:@"Excel Formatters cache"];
}

- (EMNumberFormatter)initWithExcelFormatString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EMNumberFormatter;
  v5 = [(EMNumberFormatter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_formatType = 0;
    v5->_isNegativeRed = 0;
    v7 = [v4 copy];
    excelFormatString = v6->_excelFormatString;
    v6->_excelFormatString = v7;

    [(EMNumberFormatter *)v6 _parseExcelFormatString:v4];
  }

  return v6;
}

- (id)initForGeneralFormatting
{
  v6.receiver = self;
  v6.super_class = EMNumberFormatter;
  v2 = [(EMNumberFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_formatType = 1;
    v2->_isNegativeRed = 0;
    excelFormatString = v2->_excelFormatString;
    v2->_excelFormatString = 0;
  }

  return v3;
}

- (__CFNumberFormatter)_genericFormatterForNumberOfSignificantDigits:(unint64_t)a3
{
  if (qword_27FC69A18 != -1)
  {
    dispatch_once(&qword_27FC69A18, &__block_literal_global_17_1);
  }

  if (self->_baseICUFormatString)
  {
    result = self->_genericFormatter;
    if (!result)
    {
      v6 = self;
      objc_sync_enter(v6);
      v7 = *MEMORY[0x277CBECE8];
      if (qword_27FC69A00 != -1)
      {
        dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
      }

      self->_genericFormatter = CFNumberFormatterCreate(v7, qword_27FC699F8, kCFNumberFormatterDecimalStyle);
      v8 = [(EMNumberFormatter *)v6 convertedGenericNumberFormatWithFormat:self->_baseICUFormatString];
      CFNumberFormatterSetFormat(self->_genericFormatter, v8);
      CFNumberFormatterSetProperty(self->_genericFormatter, *MEMORY[0x277CBEFD8], &unk_286F6DDA0);

      objc_sync_exit(v6);
      return self->_genericFormatter;
    }
  }

  else
  {
    v9 = qword_27FC69A10;
    objc_sync_enter(v9);
    v10 = qword_27FC69A10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [v10 objectForKey:v11];

    if (!v12)
    {
      v13 = *MEMORY[0x277CBECE8];
      if (qword_27FC69A00 != -1)
      {
        dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
      }

      v12 = CFNumberFormatterCreate(v13, qword_27FC699F8, kCFNumberFormatterDecimalStyle);
      v14 = [MEMORY[0x277CCAB68] stringWithCapacity:a3];
      [(__CFString *)v14 appendString:@"@"];
      v15 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          [(__CFString *)v14 appendString:@"#"];
          --v15;
        }

        while (v15);
      }

      CFNumberFormatterSetFormat(v12, v14);
      v16 = qword_27FC69A10;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v16 setObject:v12 forKey:v17];
    }

    objc_sync_exit(v9);

    return CFAutorelease(v12);
  }

  return result;
}

uint64_t __67__EMNumberFormatter__genericFormatterForNumberOfSignificantDigits___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = qword_27FC69A10;
  qword_27FC69A10 = v0;

  v2 = qword_27FC69A10;

  return [v2 setName:@"Excel Generic Formatters cache"];
}

- (__CFNumberFormatter)_doubleFormatter
{
  result = self->_doubleFormatter;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = *MEMORY[0x277CBECE8];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    self->_doubleFormatter = CFNumberFormatterCreate(v5, qword_27FC699F8, kCFNumberFormatterDecimalStyle);
    if (v4->_baseICUFormatString)
    {
      v6 = [(EMNumberFormatter *)v4 convertedGenericNumberFormatWithFormat:?];
      CFNumberFormatterSetFormat(self->_doubleFormatter, v6);
    }

    objc_sync_exit(v4);

    return self->_doubleFormatter;
  }

  return result;
}

- (__CFNumberFormatter)_percentFormatter
{
  result = self->_percentFormatter;
  if (!result)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = *MEMORY[0x277CBECE8];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    self->_percentFormatter = CFNumberFormatterCreate(v5, qword_27FC699F8, kCFNumberFormatterPercentStyle);
    if (v4->_baseICUFormatString)
    {
      v6 = [(EMNumberFormatter *)v4 convertedGenericNumberFormatWithFormat:?];
      CFNumberFormatterSetFormat(self->_percentFormatter, v6);
    }

    objc_sync_exit(v4);

    return self->_percentFormatter;
  }

  return result;
}

- (id)_icuFormatStringForDateFormat
{
  v35 = *MEMORY[0x277D85DE8];
  excelFormatString = self->_excelFormatString;
  if (excelFormatString && ![(NSString *)excelFormatString isEqualToString:@"GenericDate"])
  {
    v5 = [(NSString *)self->_excelFormatString rangeOfString:@";"];
    if (v6)
    {
      v7 = MEMORY[0x277CCAB68];
      v8 = [(NSString *)self->_excelFormatString substringToIndex:v5];
      v4 = [v7 stringWithString:v8];
    }

    else
    {
      v4 = [MEMORY[0x277CCAB68] stringWithString:self->_excelFormatString];
    }

    [v4 replaceOccurrencesOfString:@"dddd" withString:@"EEEE" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"ddd" withString:@"EEE" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"aaaa" withString:@"EEEE" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"aaa" withString:@"EEE" options:2 range:{0, objc_msgSend(v4, "length")}];
    v9 = [v4 rangeOfString:@"AM/PM"];
    v11 = v10;
    v12 = [v4 rangeOfString:@"a/p"];
    v14 = v13;
    if (v11)
    {
      [v4 deleteCharactersInRange:{v9, v11}];
      [v4 insertString:@"a" atIndex:v9];
    }

    if (v14)
    {
      [v4 deleteCharactersInRange:{v12, v14}];
      [v4 insertString:@"a" atIndex:v12];
    }

    if (qword_27FC69A30 != -1)
    {
      dispatch_once(&qword_27FC69A30, &__block_literal_global_64_0);
    }

    if (qword_27FC69A20)
    {
      [qword_27FC69A20 replaceMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"$1"}];
    }

    [v4 replaceOccurrencesOfString:@"m" withString:@"M" options:2 range:{0, objc_msgSend(v4, "length")}];
    if (qword_27FC69A28)
    {
      [qword_27FC69A28 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v15 = v31 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = *v31;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [*(*(&v30 + 1) + 8 * i) range];
            [v4 replaceOccurrencesOfString:@"M" withString:@"m" options:2 range:{v19, v20}];
          }

          v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v16);
      }
    }

    if (!(v14 | v11))
    {
      [v4 replaceOccurrencesOfString:@"h" withString:@"H" options:2 range:{0, objc_msgSend(v4, "length")}];
    }

    [v4 replaceOccurrencesOfString:@"\\" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(v4, "length"")}];
    v21 = MEMORY[0x277CCA968];
    if (qword_27FC69A00 != -1)
    {
      dispatch_once(&qword_27FC69A00, &__block_literal_global_109);
    }

    v22 = [v21 dateFormatFromTemplate:@"yMd" options:0 locale:qword_27FC699F8];
    v23 = [v22 rangeOfString:@"d"];
    v24 = [v22 rangeOfString:@"M"];
    v25 = [v22 rangeOfString:@"y"];
    if ([v4 rangeOfString:@"MM"] == 0x7FFFFFFFFFFFFFFFLL && v23 != 0x7FFFFFFFFFFFFFFFLL && v24 != 0x7FFFFFFFFFFFFFFFLL && v23 < v24 && (v25 == 0x7FFFFFFFFFFFFFFFLL || v25 > v24))
    {
      [v4 replaceOccurrencesOfString:@"M/d" withString:@"d/M" options:2 range:{0, objc_msgSend(v4, "length")}];
    }

    [v4 replaceOccurrencesOfString:@"ggge" withString:@"Gy" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"gge" withString:@"Gy" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"ge" withString:@"Gy" options:2 range:{0, objc_msgSend(v4, "length")}];
    [v4 replaceOccurrencesOfString:@"\\" withString:@"===////" options:2 range:{0, objc_msgSend(v4, "length"")}];
    [v4 replaceOccurrencesOfString:@" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(v4, "length"")}];
    [v4 replaceOccurrencesOfString:@"===////" withString:@"\\" options:2 range:{0, objc_msgSend(v4, "length"")}];
    v29 = 0;
    v26 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[\\$\\-.*\\]" options:1 error:&v29];
    v27 = v29;
    if (v26)
    {
      [v26 replaceMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), &stru_286EE1130}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __50__EMNumberFormatter__icuFormatStringForDateFormat__block_invoke()
{
  v7 = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\[(h|m|s)\\]" options:0 error:&v7];
  v1 = v7;
  v2 = qword_27FC69A20;
  qword_27FC69A20 = v0;

  if (!qword_27FC69A20)
  {
    NSLog(@"Unable to compile hmsBrackets regex: %@", v1);
  }

  v6 = v1;
  v3 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"([Hh][^MmHhs]*[M]{1 options:2})|([M]{1 error:{2}[^MmHhs]*s)", 0, &v6}];
  v4 = v6;

  v5 = qword_27FC69A28;
  qword_27FC69A28 = v3;

  if (!qword_27FC69A28)
  {
    NSLog(@"Unable to compile mMinute regex: %@", v4);
  }
}

- (id)formatPhoneNumber:(double)a3
{
  if (a3 >= 9999999.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%.3d) %.3d-%.4d", (a3 / 10000000.0), ((a3 - (a3 / 10000000.0) * 10000000.0) / 10000), ((a3 - (a3 / 10000000.0) * 10000000.0) % 10000)];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%.3d-%.4d", (a3 / 10000), (a3 % 10000), v5];
  }
  v3 = ;

  return v3;
}

- (id)_icuFormatStringForCurrencyFormat
{
  v3 = [(NSString *)self->_baseICUFormatString mutableCopy];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[\\$([^-]+)-{0 options:1}[^\\];]*?\\]" error:{1, &v8}];;
    v5 = v8;
    if (v4)
    {
      [v4 replaceMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @"$1"}];
    }

    [(EMNumberFormatter *)self convertGenericNumberFormat:v3];
    v6 = v3;
  }

  return v3;
}

- (id)formatDoubleValue:(double)a3
{
  valuePtr = a3;
  v4 = [(EMNumberFormatter *)self _doubleFormatter];
  v5 = self;
  objc_sync_enter(v5);
  v6 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v4, kCFNumberDoubleType, &valuePtr);
  objc_sync_exit(v5);

  return v6;
}

- (id)formatPercent:(double)a3
{
  valuePtr = a3;
  v4 = [(EMNumberFormatter *)self _percentFormatter];
  v5 = self;
  objc_sync_enter(v5);
  v6 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v4, kCFNumberDoubleType, &valuePtr);
  objc_sync_exit(v5);

  return v6;
}

- (unint64_t)optimalNumberOfDigitsForValue:(double)a3
{
  if (round(a3) == a3)
  {
    return 11;
  }

  else
  {
    return 10;
  }
}

- (BOOL)useBigNumberFormatterForValue:(double)a3
{
  v3 = fabs(a3);
  if (round(a3) == a3)
  {
    return v3 >= 1.0e11;
  }

  if (v3 > 1.0e10)
  {
    return 1;
  }

  v5 = a3 != 0.0;
  if (a3 >= 0.000000001)
  {
    v5 = 0;
  }

  return a3 > -0.000000001 && v5;
}

- (id)formatDefault:(double)a3 showingNumberOfDigits:(unint64_t)a4
{
  valuePtr = a3;
  if ([(EMNumberFormatter *)self useBigNumberFormatterForValue:?])
  {
    v7 = [(EMNumberFormatter *)self _bigNumberFormatter];
  }

  else
  {
    v9 = fabs(a3) < 1.0 && a4 > 1;
    v7 = [(EMNumberFormatter *)self _genericFormatterForNumberOfSignificantDigits:a4 - v9];
  }

  v10 = v7;
  v11 = self;
  objc_sync_enter(v11);
  v12 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v10, kCFNumberDoubleType, &valuePtr);
  objc_sync_exit(v11);

  return v12;
}

- (id)formatDefault:(double)a3
{
  v5 = [(EMNumberFormatter *)self optimalNumberOfDigitsForValue:?];

  return [(EMNumberFormatter *)self formatDefault:v5 showingNumberOfDigits:a3];
}

- (id)formatCurrency:(double)a3
{
  valuePtr = a3;
  v4 = [(EMNumberFormatter *)self _currencyFormatter];
  v5 = self;
  objc_sync_enter(v5);
  v6 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], v4, kCFNumberDoubleType, &valuePtr);
  objc_sync_exit(v5);

  return v6;
}

- (id)formatDate:(id)a3
{
  v4 = a3;
  v5 = [(EMNumberFormatter *)self _dateFormatter];
  v6 = self;
  objc_sync_enter(v6);
  StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x277CBECE8], v5, v4);
  objc_sync_exit(v6);

  return StringWithDate;
}

- (void)convertGenericNumberFormat:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (qword_27FC69A50 != -1)
  {
    dispatch_once(&qword_27FC69A50, &__block_literal_global_159);
    v4 = v7;
  }

  [qword_27FC69A38 replaceMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @" "}];
  [v7 replaceOccurrencesOfString:@"\\%" withString:@"'%'" options:2 range:{0, objc_msgSend(v7, "length")}];
  [v7 replaceOccurrencesOfString:@"\\" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(v7, "length"")}];
  [v7 replaceOccurrencesOfString:@" withString:&stru_286EE1130 options:2 range:{0, objc_msgSend(v7, "length"")}];
  [qword_27FC69A48 replaceMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"$1 -"}];
  if (self->_hasLocales)
  {
    [qword_27FC69A40 replaceMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), &stru_286EE1130}];
  }

  v5 = [v7 rangeOfString:@";"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v7 rangeOfString:@";" options:0 range:{v5 + 1, objc_msgSend(v7, "length") + ~v5}];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 deleteCharactersInRange:{v6, objc_msgSend(v7, "length") - v6}];
    }
  }
}

void __48__EMNumberFormatter_convertGenericNumberFormat___block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_." options:0 error:0];
  v1 = qword_27FC69A38;
  qword_27FC69A38 = v0;

  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[\\$.*?\\]" options:0 error:0];
  v3 = qword_27FC69A40;
  qword_27FC69A40 = v2;

  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([^])\\* -" options:0 error:0];;
  v5 = qword_27FC69A48;
  qword_27FC69A48 = v4;
}

- (id)convertedGenericNumberFormatWithFormat:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    [(EMNumberFormatter *)self convertGenericNumberFormat:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_parseExcelFormatString:(id)a3
{
  obj = a3;
  if ([(NSString *)obj isEqualToString:@"GenericDate"])
  {
    self->_formatType = 8;
    baseICUFormatString = self->_baseICUFormatString;
    self->_baseICUFormatString = 0;

    v5 = obj;
  }

  else
  {
    self->_formatType = 0;
    if (obj)
    {
      if (qword_27FC69A60 != -1)
      {
        dispatch_once(&qword_27FC69A60, &__block_literal_global_182);
      }

      OcText::OcText(&v7);
      [(NSString *)obj copyToOcText:&v7];
      XlFormatProcessor::getFormatInfo(qword_27FC69A58, &v7);
    }

    v5 = self->_baseICUFormatString;
    self->_baseICUFormatString = 0;
  }
}

- (id)formatValue:(double)a3 inWorkbook:(id)a4
{
  v6 = a4;
  formatType = self->_formatType;
  if (formatType > 4)
  {
    if (formatType > 8)
    {
      if (formatType == 9)
      {
        v10 = [(EMNumberFormatter *)self formatFraction:a3];
        goto LABEL_21;
      }

      if (formatType == 10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (formatType == 5)
      {
        v10 = [(EMNumberFormatter *)self formatPercent:a3];
        goto LABEL_21;
      }

      if (formatType == 8)
      {
        v8 = [ECUtils dateFromXlDateTimeNumber:v6 edWorkbook:a3];
        v9 = [(EMNumberFormatter *)self formatDate:v8];

        goto LABEL_22;
      }
    }

LABEL_20:
    v10 = [(EMNumberFormatter *)self formatDoubleValue:a3];
    goto LABEL_21;
  }

  if (formatType > 2)
  {
    if (formatType == 3)
    {
      [(EMNumberFormatter *)self formatPhoneNumber:a3];
    }

    else
    {
      [(EMNumberFormatter *)self formatCurrency:a3];
    }
    v10 = ;
    goto LABEL_21;
  }

  if (!formatType)
  {
    v9 = 0;
    goto LABEL_22;
  }

  if (formatType != 1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v10 = [(EMNumberFormatter *)self formatDefault:a3];
LABEL_21:
  v9 = v10;
LABEL_22:

  return v9;
}

@end