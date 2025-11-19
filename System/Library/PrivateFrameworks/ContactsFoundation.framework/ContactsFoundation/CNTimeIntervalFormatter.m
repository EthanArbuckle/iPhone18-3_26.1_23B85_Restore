@interface CNTimeIntervalFormatter
+ (CNTimeIntervalFormatter)sharedFormatter;
+ (id)multiplierForOrder:(int64_t)a3;
+ (id)numberFormatterWithSignificantDigits:(unint64_t)a3;
+ (id)stringForTimeInterval:(double)a3;
- (NSNumberFormatter)numberFormatterWith3SigFigs;
- (NSNumberFormatter)numberFormatterWith4SigFigs;
- (id)stringForObjectValue:(id)a3;
- (id)stringForTimeInterval:(double)a3;
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

+ (id)numberFormatterWithSignificantDigits:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4 setUsesSignificantDigits:1];
  [v4 setMaximumSignificantDigits:a3];
  [v4 setMinimumSignificantDigits:a3];

  return v4;
}

- (id)stringForObjectValue:(id)a3
{
  [a3 doubleValue];

  return [(CNTimeIntervalFormatter *)self stringForTimeInterval:?];
}

+ (id)stringForTimeInterval:(double)a3
{
  v4 = [objc_opt_class() sharedFormatter];
  v5 = [v4 stringForTimeInterval:a3];

  return v5;
}

- (id)stringForTimeInterval:(double)a3
{
  v5 = fabs(a3);
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
  v13 = [(CNTimeIntervalFormatter *)self numberFormatterWith3SigFigs];
  if (v5 >= 1000.0)
  {
    v14 = [(CNTimeIntervalFormatter *)self numberFormatterWith4SigFigs];

    v13 = v14;
  }

  v15 = &stru_1EF441028;
  if (a3 < 0.0)
  {
    v15 = @"-";
  }

  v16 = MEMORY[0x1E696AD98];
  v17 = v15;
  v18 = [v16 numberWithDouble:v5];
  v19 = [v13 stringFromNumber:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@s", v12];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ %@", v17, v19, v20];

  return v21;
}

+ (id)multiplierForOrder:(int64_t)a3
{
  if (a3 > 8)
  {
    return @"Y";
  }

  if (a3 >= -8)
  {
    return off_1E6ED8570[a3 + 8];
  }

  return @"y";
}

@end