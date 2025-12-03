@interface NSMutableDictionary(Goodies)
- (id)mf_objectForKey:()Goodies ofClass:;
- (uint64_t)mf_setBool:()Goodies forKey:;
- (uint64_t)mf_setInteger:()Goodies forKey:;
- (void)mf_addObject:()Goodies forKey:;
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

- (uint64_t)mf_setInteger:()Goodies forKey:
{
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];

  return [self setObject:v6 forKey:a4];
}

- (void)mf_addObject:()Goodies forKey:
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v10 = [a4 copyWithZone:0];
    CFDictionaryAddValue(self, v10, a3);
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v12 = a3;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "Bad arguments to %@, %@", buf, 0x16u);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (id)mf_objectForKey:()Goodies ofClass:
{
  v7 = [self objectForKey:?];
  if (!v7)
  {
    v7 = objc_alloc_init(a4);
    [self setObject:v7 forKey:a3];
  }

  return v7;
}

@end