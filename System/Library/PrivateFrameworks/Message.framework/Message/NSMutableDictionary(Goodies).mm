@interface NSMutableDictionary(Goodies)
- (id)mf_objectForKey:()Goodies ofClass:;
- (uint64_t)mf_setBool:()Goodies forKey:;
- (void)mf_addObject:()Goodies forKey:;
- (void)mf_setInteger:()Goodies forKey:;
@end

@implementation NSMutableDictionary(Goodies)

- (uint64_t)mf_setBool:()Goodies forKey:
{
  if (a3)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  return [self setObject:v3 forKey:?];
}

- (void)mf_setInteger:()Goodies forKey:
{
  v7 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [self setObject:v6 forKey:v7];
}

- (void)mf_addObject:()Goodies forKey:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 copy];

    v8 = v9;
    CFDictionaryAddValue(self, v9, v6);
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "Bad arguments to %@, %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)mf_objectForKey:()Goodies ofClass:
{
  v6 = a3;
  v7 = [self objectForKey:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(a4);
    [self setObject:v7 forKey:v6];
  }

  return v7;
}

@end