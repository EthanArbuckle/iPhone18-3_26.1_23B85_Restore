@interface OITSUDurationFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (OITSUDurationFormatter)init;
- (OITSUDurationFormatter)initWithCoder:(id)a3;
- (OITSUDurationFormatter)initWithLocale:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
- (void)p_commonInit;
@end

@implementation OITSUDurationFormatter

- (OITSUDurationFormatter)initWithLocale:(id)a3
{
  v6.receiver = self;
  v6.super_class = OITSUDurationFormatter;
  v4 = [(OITSUDurationFormatter *)&v6 init];
  if (v4)
  {
    v4->mLocale = a3;
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

- (OITSUDurationFormatter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OITSUDurationFormatter;
  v3 = [(OITSUDurationFormatter *)&v6 initWithCoder:a3];
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

- (id)stringForObjectValue:(id)a3
{
  if (!a3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return &stru_286EE1130;
  }

  [a3 doubleValue];
  v6 = v5;
  v7 = [(OITSUDurationFormatter *)self format];
  v8 = [(OITSUDurationFormatter *)self locale];

  return TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(v7, 1, v8, v6);
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v9 = NAN;
  started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(a4, &v9, 0, 0, [(OITSUDurationFormatter *)self compactStyleStartUnit], [(OITSUDurationFormatter *)self locale]);
  if (started)
  {
    *a3 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else if (a5)
  {
    *a5 = [SFUBundle() localizedStringForKey:@"The time is invalid." value:&stru_286EE1130 table:@"TSUtility"];
  }

  return started;
}

@end