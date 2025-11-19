@interface CPLDateFormatter
+ (id)_formatter;
+ (id)dateFromString:(id)a3;
+ (id)stringForTimeInterval:(double)a3;
+ (id)stringForTimeIntervalAgo:(id)a3 now:(id)a4;
+ (id)stringFromDate:(id)a3;
+ (id)stringFromDateAgo:(id)a3 now:(id)a4;
@end

@implementation CPLDateFormatter

+ (id)dateFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 _formatter];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)stringForTimeInterval:(double)a3
{
  v4 = -a3;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  if (v5 < 1.0)
  {
    v6 = @"now";

    return v6;
  }

  v8 = "-";
  if (a3 > 0.0)
  {
    v8 = "";
    v4 = a3;
  }

  if (v4 <= 86400.0)
  {
    if (v4 <= 3600.0)
    {
      if (v4 <= 60.0)
      {
        v13 = @"s";
        v9 = v4;
      }

      else
      {
        v9 = floor(v4 / 60.0);
        v11 = v4 - v9 * 60.0;
        v13 = @" min";
        if (v11 >= 1.0)
        {
          v12 = @"s";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v9 = floor(v4 / 3600.0);
      v14 = v4 - v9 * 3600.0;
      if (v14 > 60.0)
      {
        v11 = floor(v14 / 60.0);
        v12 = @" min";
        v13 = @" hours";
        goto LABEL_20;
      }

      v13 = @" hours";
    }
  }

  else
  {
    v9 = floor(v4 / 86400.0);
    v10 = v4 - v9 * 86400.0;
    if (v10 > 3600.0)
    {
      v11 = floor(v10 / 3600.0);
      v12 = @" hours";
      v13 = @" days";
LABEL_20:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%.0f%@ %.0f%@", v8, *&v9, v13, *&v11, v12];
      goto LABEL_24;
    }

    v13 = @" days";
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%.0f%@", v8, *&v9, v13, v15, v16];
  v6 = LABEL_24:;

  return v6;
}

+ (id)stringForTimeIntervalAgo:(id)a3 now:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF00] date];
  }

  [v7 timeIntervalSinceDate:v6];
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  if (v9 >= 1.0)
  {
    v11 = MEMORY[0x1E696AEC0];
    if (v8 > 0.0)
    {
      v12 = @"%@ ago";
    }

    else
    {
      v8 = -v8;
      v12 = @"in %@";
    }

    v13 = [a1 stringForTimeInterval:v8];
    v10 = [v11 stringWithFormat:v12, v13];
  }

  else
  {
    v10 = @"just now";
  }

  return v10;
}

+ (id)stringFromDateAgo:(id)a3 now:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [a1 stringForTimeIntervalAgo:v7 now:a4];
  v9 = [a1 stringFromDate:v7];

  v10 = [v6 stringWithFormat:@"%@ (%@)", v8, v9];

  return v10;
}

+ (id)stringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _formatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

+ (id)_formatter
{
  if (_formatter_onceToken != -1)
  {
    dispatch_once(&_formatter_onceToken, &__block_literal_global_24031);
  }

  v3 = _formatter_formatter;

  return v3;
}

void __30__CPLDateFormatter__formatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _formatter_formatter;
  _formatter_formatter = v0;

  [_formatter_formatter setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
  v2 = _formatter_formatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];
}

@end