@interface CPLDateFormatter
+ (id)_formatter;
+ (id)dateFromString:(id)string;
+ (id)stringForTimeInterval:(double)interval;
+ (id)stringForTimeIntervalAgo:(id)ago now:(id)now;
+ (id)stringFromDate:(id)date;
+ (id)stringFromDateAgo:(id)ago now:(id)now;
@end

@implementation CPLDateFormatter

+ (id)dateFromString:(id)string
{
  stringCopy = string;
  _formatter = [self _formatter];
  v6 = [_formatter dateFromString:stringCopy];

  return v6;
}

+ (id)stringForTimeInterval:(double)interval
{
  intervalCopy2 = -interval;
  if (interval >= 0.0)
  {
    intervalCopy = interval;
  }

  else
  {
    intervalCopy = -interval;
  }

  if (intervalCopy < 1.0)
  {
    v6 = @"now";

    return v6;
  }

  v8 = "-";
  if (interval > 0.0)
  {
    v8 = "";
    intervalCopy2 = interval;
  }

  if (intervalCopy2 <= 86400.0)
  {
    if (intervalCopy2 <= 3600.0)
    {
      if (intervalCopy2 <= 60.0)
      {
        v13 = @"s";
        v9 = intervalCopy2;
      }

      else
      {
        v9 = floor(intervalCopy2 / 60.0);
        v11 = intervalCopy2 - v9 * 60.0;
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
      v9 = floor(intervalCopy2 / 3600.0);
      v14 = intervalCopy2 - v9 * 3600.0;
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
    v9 = floor(intervalCopy2 / 86400.0);
    v10 = intervalCopy2 - v9 * 86400.0;
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

+ (id)stringForTimeIntervalAgo:(id)ago now:(id)now
{
  agoCopy = ago;
  nowCopy = now;
  if (!nowCopy)
  {
    nowCopy = [MEMORY[0x1E695DF00] date];
  }

  [nowCopy timeIntervalSinceDate:agoCopy];
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

    v13 = [self stringForTimeInterval:v8];
    v10 = [v11 stringWithFormat:v12, v13];
  }

  else
  {
    v10 = @"just now";
  }

  return v10;
}

+ (id)stringFromDateAgo:(id)ago now:(id)now
{
  v6 = MEMORY[0x1E696AEC0];
  agoCopy = ago;
  v8 = [self stringForTimeIntervalAgo:agoCopy now:now];
  v9 = [self stringFromDate:agoCopy];

  v10 = [v6 stringWithFormat:@"%@ (%@)", v8, v9];

  return v10;
}

+ (id)stringFromDate:(id)date
{
  dateCopy = date;
  _formatter = [self _formatter];
  v6 = [_formatter stringFromDate:dateCopy];

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