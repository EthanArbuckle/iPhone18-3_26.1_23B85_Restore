@interface NSDateFormatter(FCAdditions)
+ (id)dateFormatterWithFormat:()FCAdditions localeIdentifier:timezone:forReuse:;
- (void)initWithFormat:()FCAdditions localeIdentifier:;
@end

@implementation NSDateFormatter(FCAdditions)

+ (id)dateFormatterWithFormat:()FCAdditions localeIdentifier:timezone:forReuse:
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "format != nil"];
      *buf = 136315906;
      v26 = "+[NSDateFormatter(FCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:]";
      v27 = 2080;
      v28 = "NSDateFormatter+FCAdditions.m";
      v29 = 1024;
      v30 = 30;
      v31 = 2114;
      v32 = v22;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!v10)
      {
LABEL_9:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "localeIdentifier != nil"];
          *buf = 136315906;
          v26 = "+[NSDateFormatter(FCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:]";
          v27 = 2080;
          v28 = "NSDateFormatter+FCAdditions.m";
          v29 = 1024;
          v30 = 31;
          v31 = 2114;
          v32 = v23;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    v18 = 0;
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  dictionary = [threadDictionary objectForKey:@"NSDateFormatter_FCAdditions_CachedFormatters"];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:dictionary forKey:@"NSDateFormatter_FCAdditions_CachedFormatters"];
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v9, v10];
  v18 = [dictionary objectForKey:v17];
  if (!v18)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AB78]) initWithFormat:v9 localeIdentifier:v10];
    v18 = v21;
    if (v11)
    {
      [v21 setTimeZone:v11];
    }

    if (v18)
    {
      if (a6)
      {
        [dictionary setObject:v18 forKey:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "formatter"];
        *buf = 136315906;
        v26 = "+[NSDateFormatter(FCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:]";
        v27 = 2080;
        v28 = "NSDateFormatter+FCAdditions.m";
        v29 = 1024;
        v30 = 57;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v18 = 0;
    }
  }

LABEL_12:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)initWithFormat:()FCAdditions localeIdentifier:
{
  v6 = a3;
  v7 = a4;
  v8 = [self init];
  v9 = v8;
  if (v8)
  {
    [v8 setDateFormat:v6];
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
    [v9 setLocale:v10];
  }

  return v9;
}

@end