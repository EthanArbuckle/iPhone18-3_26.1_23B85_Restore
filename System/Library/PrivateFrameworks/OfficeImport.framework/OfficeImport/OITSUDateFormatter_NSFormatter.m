@interface OITSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (OITSUDateFormatter_NSFormatter)init;
- (id)stringForObjectValue:(id)a3;
- (void)setPreferredFormat:(id)a3;
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

- (void)setPreferredFormat:(id)a3
{
  v7 = a3;
  if ([(OITSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v4 = [OITSUDateFormatter datePortionOfDateTimeFormatString:v7];
LABEL_5:
    preferredFormat = self->_preferredFormat;
    self->_preferredFormat = v4;
    goto LABEL_7;
  }

  if ([(OITSUDateFormatter_NSFormatter *)self isTimeOnly])
  {
    v4 = [OITSUDateFormatter timePortionOfDateTimeFormatString:v7];
    goto LABEL_5;
  }

  v6 = v7;
  preferredFormat = self->_preferredFormat;
  self->_preferredFormat = v6;
LABEL_7:
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  v9 = [(OITSUDateFormatter_NSFormatter *)self locale];
  v15 = 0;
  v10 = TSUCreateDateFromStringWithPreferredFormat(v8, v9, 0, &v15, 0);

  v11 = v15;
  if (v11)
  {
    [(OITSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  if (v10)
  {
    v12 = v10;
    *a3 = v10;
  }

  else
  {
    *a3 = 0;
    if (a5)
    {
      v13 = SFUBundle();
      *a5 = [v13 localizedStringForKey:@"The date is invalid." value:&stru_286EE1130 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(OITSUDateFormatter_NSFormatter *)self locale];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateFormatter_NSFormatter stringForObjectValue:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1127 isFatal:0 description:"Locale property has been inappropriately cleared."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v8 = +[OITSULocale currentLocale];
    [(OITSUDateFormatter_NSFormatter *)self setLocale:v8];
  }

  v9 = [(OITSUDateFormatter_NSFormatter *)self preferredFormat];

  if (!v9)
  {
    v10 = [(OITSUDateFormatter_NSFormatter *)self locale];
    v11 = TSUShortestCompleteDateOnlyFormat(v10);
    [(OITSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, v4);

  if (v13)
  {
    v14 = [(OITSUDateFormatter_NSFormatter *)self preferredFormat];
    v15 = [(OITSUDateFormatter_NSFormatter *)self locale];
    v16 = TSUDateFormatterStringFromDateWithFormat(v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end