@interface NSKeyedUnarchiver(SYAdditions)
+ (id)sy_unarchivedObjectFromData:()SYAdditions;
+ (id)sy_whitelistedClasses;
@end

@implementation NSKeyedUnarchiver(SYAdditions)

+ (id)sy_whitelistedClasses
{
  if (sy_whitelistedClasses_onceToken != -1)
  {
    +[NSKeyedUnarchiver(SYAdditions) sy_whitelistedClasses];
  }

  v1 = sy_whitelistedClasses_supportedClasses;

  return v1;
}

+ (id)sy_unarchivedObjectFromData:()SYAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = a3;
    v5 = [objc_opt_class() sy_whitelistedClasses];
    v11 = 0;
    v6 = [v3 unarchivedObjectOfClasses:v5 fromData:v4 error:&v11];

    v7 = v11;
    if (v7)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [_SYLazyChangeArray objectAtIndex:];
      }

      v8 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = v7;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Failed to unarchive object. %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

@end