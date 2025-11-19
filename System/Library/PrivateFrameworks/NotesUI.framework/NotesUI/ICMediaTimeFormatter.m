@interface ICMediaTimeFormatter
+ (id)timecodeFormatter;
+ (id)wordyFormatter;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromTimeInterval:(double)a3;
@end

@implementation ICMediaTimeFormatter

+ (id)timecodeFormatter
{
  if (timecodeFormatter_token != -1)
  {
    +[ICMediaTimeFormatter timecodeFormatter];
  }

  v3 = timecodeFormatter_timecodeFormatter;

  return v3;
}

uint64_t __41__ICMediaTimeFormatter_timecodeFormatter__block_invoke()
{
  v0 = objc_alloc_init(ICMediaTimeFormatter);
  v1 = timecodeFormatter_timecodeFormatter;
  timecodeFormatter_timecodeFormatter = v0;

  v2 = timecodeFormatter_timecodeFormatter;

  return [v2 setUnitsStyle:0];
}

+ (id)wordyFormatter
{
  if (wordyFormatter_token != -1)
  {
    +[ICMediaTimeFormatter wordyFormatter];
  }

  v3 = wordyFormatter_briefFormatter;

  return v3;
}

uint64_t __38__ICMediaTimeFormatter_wordyFormatter__block_invoke()
{
  v0 = objc_alloc_init(ICMediaTimeFormatter);
  v1 = wordyFormatter_briefFormatter;
  wordyFormatter_briefFormatter = v0;

  [wordyFormatter_briefFormatter setUnitsStyle:2];
  v2 = wordyFormatter_briefFormatter;

  return [v2 setZeroFormattingBehavior:14];
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
LABEL_5:
    v11 = [(ICMediaTimeFormatter *)self stringFromTimeInterval:v5];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 days];
    v8 = [v6 hours] * 3600.0 + v7 * 86400.0;
    v9 = v8 + [v6 minutes] * 60.0;
    v10 = [v6 seconds];

    v5 = v9 + v10;
    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = ICMediaTimeFormatter;
  v11 = [(NSDateComponentsFormatter *)&v14 stringForObjectValue:v4];
LABEL_7:
  v12 = v11;

  return v12;
}

- (id)stringFromTimeInterval:(double)a3
{
  v3 = a3;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICMediaTimeFormatter *)a2 stringFromTimeInterval:v6, v3];
    }

    v3 = 0.0;
  }

  v7 = self;
  objc_sync_enter(v7);
  if ([(NSDateComponentsFormatter *)v7 unitsStyle])
  {
    if (v3 >= 60.0)
    {
      if (v3 >= 3600.0)
      {
        if (v3 >= 86400.0)
        {
          v15 = fmod(v3, 86400.0);
          if (v15 >= 3600.0)
          {
            v16 = 2;
          }

          else
          {
            v16 = 3;
          }

          [(NSDateComponentsFormatter *)v7 setUnitsStyle:v16];
          if (v15 >= 3600.0)
          {
            v14 = 48;
          }

          else
          {
            v14 = 16;
          }
        }

        else
        {
          v12 = fmod(v3, 3600.0);
          if (v12 >= 60.0)
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }

          [(NSDateComponentsFormatter *)v7 setUnitsStyle:v13];
          if (v12 >= 60.0)
          {
            v14 = 96;
          }

          else
          {
            v14 = 32;
          }
        }

        [(NSDateComponentsFormatter *)v7 setAllowedUnits:v14];
      }

      else
      {
        if (fmod(v3, 60.0) == 0.0)
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        [(NSDateComponentsFormatter *)v7 setUnitsStyle:v8];
        [(NSDateComponentsFormatter *)v7 setAllowedUnits:192];
      }
    }

    else
    {
      [(NSDateComponentsFormatter *)v7 setUnitsStyle:3];
      [(NSDateComponentsFormatter *)v7 setAllowedUnits:128];
    }
  }

  else
  {
    if (v3 < 60.0)
    {
      [(NSDateComponentsFormatter *)v7 setAllowedUnits:192];
      v9 = 0x10000;
    }

    else
    {
      [(NSDateComponentsFormatter *)v7 setAllowedUnits:240];
      v9 = 1;
    }

    [(NSDateComponentsFormatter *)v7 setZeroFormattingBehavior:v9];
  }

  v17.receiver = v7;
  v17.super_class = ICMediaTimeFormatter;
  v10 = [(NSDateComponentsFormatter *)&v17 stringFromTimeInterval:v3];
  objc_sync_exit(v7);

  return v10;
}

- (void)stringFromTimeInterval:(double)a3 .cold.1(const char *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = 134218242;
  v7 = a3;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "passed bad time interval %f to %@", &v6, 0x16u);
}

@end