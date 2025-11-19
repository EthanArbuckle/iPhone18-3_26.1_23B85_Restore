@interface _DKCategoryCache
+ (id)sharedCached;
- (id)categoryWithInteger:(int64_t)a3 type:(id)a4;
@end

@implementation _DKCategoryCache

+ (id)sharedCached
{
  if (sharedCached_onceToken_0 != -1)
  {
    +[_DKCategoryCache sharedCached];
  }

  v3 = sharedCached_sharedCache_0;

  return v3;
}

- (id)categoryWithInteger:(int64_t)a3 type:(id)a4
{
  v6 = a4;
  if (categoryWithInteger_type__onceToken != -1)
  {
    [_DKCategoryCache categoryWithInteger:type:];
  }

  if (a3 > 1)
  {
    goto LABEL_8;
  }

  if (!v6)
  {
    v10 = @"?";
    goto LABEL_10;
  }

  v7 = [v6 typeCode];
  if (v7 != categoryWithInteger_type__BOOLTypeCode)
  {
    v8 = [v6 typeCode];
    if (v8 != categoryWithInteger_type__anyTypeCode)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_15;
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "typeCode")}];
  v10 = [v9 stringValue];

LABEL_10:
  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v14 = [v13 stringValue];
  v15 = [v12 stringWithFormat:@"%@.%@", v14, v10];

  v16 = [(_DKCategoryCache *)self objectForKey:v15];
  v17 = v16;
  if (v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = [[_DKCategory alloc] initWithInteger:a3 type:v6 cache:0];
    if (v11)
    {
      [(_DKCategoryCache *)self setObject:v11 forKey:v15];
    }
  }

LABEL_15:

  return v11;
}

@end