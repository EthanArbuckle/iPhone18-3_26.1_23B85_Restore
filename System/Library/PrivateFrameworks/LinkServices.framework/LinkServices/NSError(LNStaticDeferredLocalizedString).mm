@interface NSError(LNStaticDeferredLocalizedString)
- (id)ln_staticDeferredLocalizedString;
@end

@implementation NSError(LNStaticDeferredLocalizedString)

- (id)ln_staticDeferredLocalizedString
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"LNPerformActionErrorLocalizedStringResourceData"];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    v6 = [a1 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"LNPerformActionErrorLocalizedStringResourceData"];
    v13 = 0;
    v8 = [v4 unarchivedObjectOfClass:v5 fromData:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = @"LNPerformActionErrorLocalizedStringResourceData";
        v16 = 2114;
        v17 = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

@end