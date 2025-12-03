@interface CNTimeIntervalFormatter
+ (CNTimeIntervalFormatter)sharedFormatter;
+ (id)multiplierForOrder:(int64_t)order;
+ (id)numberFormatterWithSignificantDigits:(unint64_t)digits;
+ (id)stringForTimeInterval:(double)interval;
- (NSNumberFormatter)numberFormatterWith3SigFigs;
- (NSNumberFormatter)numberFormatterWith4SigFigs;
- (id)stringForObjectValue:(id)value;
- (id)stringForTimeInterval:(double)interval;
@end

@implementation CNTimeIntervalFormatter

- (NSNumberFormatter)numberFormatterWith3SigFigs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNTimeIntervalFormatter_numberFormatterWith3SigFigs__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

+ (CNTimeIntervalFormatter)sharedFormatter
{
  if (sharedFormatter_cn_once_token_1 != -1)
  {
    +[CNTimeIntervalFormatter sharedFormatter];
  }

  v3 = sharedFormatter_cn_once_object_1;

  return v3;
}

id __54__CNTimeIntervalFormatter_numberFormatterWith3SigFigs__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [objc_opt_class() numberFormatterWithSignificantDigits:3];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return v2;
}

uint64_t __42__CNTimeIntervalFormatter_sharedFormatter__block_invoke()
{
  sharedFormatter_cn_once_object_1 = objc_alloc_init(CNTimeIntervalFormatter);

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumberFormatter)numberFormatterWith4SigFigs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CNTimeIntervalFormatter_numberFormatterWith4SigFigs__block_invoke;
  v4[3] = &unk_1E6ED51B8;
  v4[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v4);

  return v2;
}

id __54__CNTimeIntervalFormatter_numberFormatterWith4SigFigs__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [objc_opt_class() numberFormatterWithSignificantDigits:4];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

+ (id)numberFormatterWithSignificantDigits:(unint64_t)digits
{
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setUsesSignificantDigits:1];
  [v4 setMaximumSignificantDigits:digits];
  [v4 setMinimumSignificantDigits:digits];

  return v4;
}

- (id)stringForObjectValue:(id)value
{
  [value doubleValue];

  return [(CNTimeIntervalFormatter *)self stringForTimeInterval:?];
}

+ (id)stringForTimeInterval:(double)interval
{
  sharedFormatter = [objc_opt_class() sharedFormatter];
  v5 = [sharedFormatter stringForTimeInterval:interval];

  return v5;
}

- (id)stringForTimeInterval:(double)interval
{
  v5 = fabs(interval);
  if (v5 >= 2.0)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v5 = v5 * 1000.0;
      v7 = v6 - 1;
    }

    while (v5 < 2.0 && v6-- > -7);
  }

  if (v5 >= 2000.0 && v7 <= 7)
  {
    do
    {
      v5 = v5 / 1000.0;
      v10 = v7 + 1;
    }

    while (v5 >= 2000.0 && v7++ < 7);
  }

  else
  {
    v10 = v7;
  }

  v12 = [objc_opt_class() multiplierForOrder:v10];
  numberFormatterWith3SigFigs = [(CNTimeIntervalFormatter *)self numberFormatterWith3SigFigs];
  if (v5 >= 1000.0)
  {
    numberFormatterWith4SigFigs = [(CNTimeIntervalFormatter *)self numberFormatterWith4SigFigs];

    numberFormatterWith3SigFigs = numberFormatterWith4SigFigs;
  }

  v15 = &stru_1EF441028;
  if (interval < 0.0)
  {
    v15 = @"-";
  }

  v16 = MEMORY[0x1E696AD98];
  v17 = v15;
  v18 = [v16 numberWithDouble:v5];
  v19 = [numberFormatterWith3SigFigs stringFromNumber:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@s", v12];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ %@", v17, v19, v20];

  return v21;
}

+ (id)multiplierForOrder:(int64_t)order
{
  if (order > 8)
  {
    return @"Y";
  }

  if (order >= -8)
  {
    return off_1E6ED8570[order + 8];
  }

  return @"y";
}

@end