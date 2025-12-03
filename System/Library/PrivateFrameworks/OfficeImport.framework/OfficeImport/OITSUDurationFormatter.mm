@interface OITSUDurationFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (OITSUDurationFormatter)init;
- (OITSUDurationFormatter)initWithCoder:(id)coder;
- (OITSUDurationFormatter)initWithLocale:(id)locale;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
- (void)p_commonInit;
@end

@implementation OITSUDurationFormatter

- (OITSUDurationFormatter)initWithLocale:(id)locale
{
  v6.receiver = self;
  v6.super_class = OITSUDurationFormatter;
  v4 = [(OITSUDurationFormatter *)&v6 init];
  if (v4)
  {
    v4->mLocale = locale;
    [(OITSUDurationFormatter *)v4 p_commonInit];
  }

  return v4;
}

- (OITSUDurationFormatter)init
{
  v5.receiver = self;
  v5.super_class = OITSUDurationFormatter;
  v2 = [(OITSUDurationFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OITSUDurationFormatter *)v2 p_commonInit];
  }

  return v3;
}

- (OITSUDurationFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OITSUDurationFormatter;
  v3 = [(OITSUDurationFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OITSUDurationFormatter *)v3 p_commonInit];
  }

  return v4;
}

- (void)p_commonInit
{
  self->mFormat = [@"hh:mm:ss" copy];
  self->mCompactStyleStartUnit = 0;
  if (!self->mLocale)
  {
    self->mLocale = +[OITSULocale currentLocale];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUDurationFormatter;
  [(OITSUDurationFormatter *)&v3 dealloc];
}

- (id)stringForObjectValue:(id)value
{
  if (!value || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return &stru_286EE1130;
  }

  [value doubleValue];
  v6 = v5;
  format = [(OITSUDurationFormatter *)self format];
  locale = [(OITSUDurationFormatter *)self locale];

  return TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(format, 1, locale, v6);
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v9 = NAN;
  started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(string, &v9, 0, 0, [(OITSUDurationFormatter *)self compactStyleStartUnit], [(OITSUDurationFormatter *)self locale]);
  if (started)
  {
    *value = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else if (description)
  {
    *description = [SFUBundle() localizedStringForKey:@"The time is invalid." value:&stru_286EE1130 table:@"TSUtility"];
  }

  return started;
}

@end