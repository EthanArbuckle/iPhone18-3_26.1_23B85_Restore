@interface OITSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (OITSUDateFormatter_NSFormatter)init;
- (id)stringForObjectValue:(id)value;
- (void)setPreferredFormat:(id)format;
@end

@implementation OITSUDateFormatter_NSFormatter

- (OITSUDateFormatter_NSFormatter)init
{
  v5.receiver = self;
  v5.super_class = OITSUDateFormatter_NSFormatter;
  v2 = [(OITSUDateFormatter_NSFormatter *)&v5 init];
  if (v2)
  {
    v3 = +[OITSULocale currentLocale];
    [(OITSUDateFormatter_NSFormatter *)v2 setLocale:v3];
  }

  return v2;
}

- (void)setPreferredFormat:(id)format
{
  formatCopy = format;
  if ([(OITSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v4 = [OITSUDateFormatter datePortionOfDateTimeFormatString:formatCopy];
LABEL_5:
    preferredFormat = self->_preferredFormat;
    self->_preferredFormat = v4;
    goto LABEL_7;
  }

  if ([(OITSUDateFormatter_NSFormatter *)self isTimeOnly])
  {
    v4 = [OITSUDateFormatter timePortionOfDateTimeFormatString:formatCopy];
    goto LABEL_5;
  }

  v6 = formatCopy;
  preferredFormat = self->_preferredFormat;
  self->_preferredFormat = v6;
LABEL_7:
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  locale = [(OITSUDateFormatter_NSFormatter *)self locale];
  v15 = 0;
  v10 = TSUCreateDateFromStringWithPreferredFormat(stringCopy, locale, 0, &v15, 0);

  v11 = v15;
  if (v11)
  {
    [(OITSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  if (v10)
  {
    v12 = v10;
    *value = v10;
  }

  else
  {
    *value = 0;
    if (description)
    {
      v13 = SFUBundle();
      *description = [v13 localizedStringForKey:@"The date is invalid." value:&stru_286EE1130 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  locale = [(OITSUDateFormatter_NSFormatter *)self locale];

  if (!locale)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateFormatter_NSFormatter stringForObjectValue:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1127 isFatal:0 description:"Locale property has been inappropriately cleared."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = +[OITSULocale currentLocale];
    [(OITSUDateFormatter_NSFormatter *)self setLocale:v8];
  }

  preferredFormat = [(OITSUDateFormatter_NSFormatter *)self preferredFormat];

  if (!preferredFormat)
  {
    locale2 = [(OITSUDateFormatter_NSFormatter *)self locale];
    v11 = TSUShortestCompleteDateOnlyFormat(locale2);
    [(OITSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, valueCopy);

  if (v13)
  {
    preferredFormat2 = [(OITSUDateFormatter_NSFormatter *)self preferredFormat];
    locale3 = [(OITSUDateFormatter_NSFormatter *)self locale];
    v16 = TSUDateFormatterStringFromDateWithFormat(v13, preferredFormat2, locale3);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end