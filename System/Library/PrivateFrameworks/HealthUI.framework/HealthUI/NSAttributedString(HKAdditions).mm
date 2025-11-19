@interface NSAttributedString(HKAdditions)
+ (id)hk_attributedStringForSpacing:()HKAdditions nonBreaking:;
@end

@implementation NSAttributedString(HKAdditions)

+ (id)hk_attributedStringForSpacing:()HKAdditions nonBreaking:
{
  if (hk_attributedStringForSpacing_nonBreaking__onceToken != -1)
  {
    +[NSAttributedString(HKAdditions) hk_attributedStringForSpacing:nonBreaking:];
  }

  if (a4)
  {
    v6 = -a3;
  }

  else
  {
    v6 = a3;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  os_unfair_lock_lock(&hk_attributedStringForSpacing_nonBreaking__lock);
  v8 = [hk_attributedStringForSpacing_nonBreaking____spacerCache objectForKeyedSubscript:v7];
  os_unfair_lock_unlock(&hk_attributedStringForSpacing_nonBreaking__lock);
  if (v8)
  {
    v9 = v8;
    goto LABEL_24;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = objc_alloc(MEMORY[0x1E696AAB0]);
      v11 = @" ";
      goto LABEL_20;
    }

    if (a3 == 3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v10 = objc_alloc(MEMORY[0x1E696AAB0]);
      v11 = @" ";
LABEL_20:
      v13 = [v10 initWithString:v11];
      goto LABEL_21;
    }

LABEL_14:
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NSAttributedString(HKAdditions) hk_attributedStringForSpacing:a3 nonBreaking:v12];
    }

LABEL_17:
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = @" ";
    goto LABEL_20;
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AAB0]);
LABEL_21:
  v9 = v13;
  if (a4)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁠"];
    v15 = [v14 mutableCopy];
    [v15 appendAttributedString:v9];
    [v15 appendAttributedString:v14];
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v15];

    v9 = v16;
  }

  os_unfair_lock_lock(&hk_attributedStringForSpacing_nonBreaking__lock);
  [hk_attributedStringForSpacing_nonBreaking____spacerCache setObject:v9 forKeyedSubscript:v7];
  os_unfair_lock_unlock(&hk_attributedStringForSpacing_nonBreaking__lock);
LABEL_24:

  return v9;
}

+ (void)hk_attributedStringForSpacing:()HKAdditions nonBreaking:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Unknown HKAttributedStringSpacer: %ld, falling back to standard space", &v2, 0xCu);
}

@end