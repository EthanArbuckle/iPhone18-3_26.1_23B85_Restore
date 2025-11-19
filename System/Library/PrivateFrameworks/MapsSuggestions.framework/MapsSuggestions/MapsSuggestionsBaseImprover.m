@interface MapsSuggestionsBaseImprover
+ (BOOL)isEnabled;
- (BOOL)improveEntry:(id)a3;
- (NSString)uniqueName;
- (uint64_t)improveMyUndecoratedSubtitle:(void *)a3 forEntry:;
- (uint64_t)improveMyUndecoratedTitle:(void *)a3 forEntry:;
@end

@implementation MapsSuggestionsBaseImprover

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)improveEntry:(id)a3
{
  v5 = a3;
  result = [(MapsSuggestionsBaseImprover *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (BOOL)isEnabled
{
  result = [a1 doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (uint64_t)improveMyUndecoratedTitle:(void *)a3 forEntry:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      a1 = [v6 updateUndecoratedTitle:v5];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_9_0(&dword_1C5126000, v9, v10, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v11, v12, v13, v14, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

- (uint64_t)improveMyUndecoratedSubtitle:(void *)a3 forEntry:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      a1 = [v6 updateUndecoratedSubtitle:v5];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_9_0(&dword_1C5126000, v9, v10, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v11, v12, v13, v14, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

@end