@interface FCFeedTransformationSort
+ (id)transformationWithSortMethod:(int64_t)method;
+ (id)transformationWithSortMethod:(int64_t)method configurationSet:(int64_t)set personalizer:(id)personalizer;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationSort

+ (id)transformationWithSortMethod:(int64_t)method
{
  v3 = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (method <= 1)
  {
    if (method > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (method == 2)
  {
LABEL_9:
    v3 = objc_opt_new();
    goto LABEL_10;
  }

  if (method == 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this sort method needs a personalizer, please use the +transformationWithSortMethod:personalizer: variant"];
      v7 = 136315906;
      v8 = "+[FCFeedTransformationSort transformationWithSortMethod:]";
      v9 = 2080;
      v10 = "FCFeedTransformationSort.m";
      v11 = 1024;
      v12 = 43;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
    }

    v3 = 0;
  }

LABEL_10:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)transformationWithSortMethod:(int64_t)method configurationSet:(int64_t)set personalizer:(id)personalizer
{
  personalizerCopy = personalizer;
  if (method == 3)
  {
    if (NSClassFromString(&cfstr_Xctest.isa))
    {
      v8 = objc_opt_new();
    }

    else
    {
      v8 = [FCFeedTransformationPersonalizedSort transformationWithPersonalizer:personalizerCopy configurationSet:set];
    }
  }

  else
  {
    v8 = [FCFeedTransformationSort transformationWithSortMethod:method];
  }

  v9 = v8;

  return v9;
}

- (id)transformFeedItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCFeedTransformationSort transformFeedItems:]";
    v12 = 2080;
    v13 = "FCFeedTransformationSort.m";
    v14 = 1024;
    v15 = 84;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedTransformationSort transformFeedItems:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

@end