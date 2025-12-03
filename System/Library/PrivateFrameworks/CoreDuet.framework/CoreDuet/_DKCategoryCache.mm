@interface _DKCategoryCache
+ (id)sharedCached;
- (id)categoryWithInteger:(int64_t)integer type:(id)type;
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

- (id)categoryWithInteger:(int64_t)integer type:(id)type
{
  typeCopy = type;
  if (categoryWithInteger_type__onceToken != -1)
  {
    [_DKCategoryCache categoryWithInteger:type:];
  }

  if (integer > 1)
  {
    goto LABEL_8;
  }

  if (!typeCopy)
  {
    stringValue = @"?";
    goto LABEL_10;
  }

  typeCode = [typeCopy typeCode];
  if (typeCode != categoryWithInteger_type__BOOLTypeCode)
  {
    typeCode2 = [typeCopy typeCode];
    if (typeCode2 != categoryWithInteger_type__anyTypeCode)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_15;
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(typeCopy, "typeCode")}];
  stringValue = [v9 stringValue];

LABEL_10:
  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  stringValue2 = [v13 stringValue];
  v15 = [v12 stringWithFormat:@"%@.%@", stringValue2, stringValue];

  v16 = [(_DKCategoryCache *)self objectForKey:v15];
  v17 = v16;
  if (v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = [[_DKCategory alloc] initWithInteger:integer type:typeCopy cache:0];
    if (v11)
    {
      [(_DKCategoryCache *)self setObject:v11 forKey:v15];
    }
  }

LABEL_15:

  return v11;
}

@end