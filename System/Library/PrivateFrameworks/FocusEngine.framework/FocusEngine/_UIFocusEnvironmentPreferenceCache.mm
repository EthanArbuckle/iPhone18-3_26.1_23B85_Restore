@interface _UIFocusEnvironmentPreferenceCache
- (_UIFocusEnvironmentPreferenceCache)init;
- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)a3;
- (id)preferredEnvironmentsForEnvironment:(id)a3 isFinal:(BOOL *)a4;
- (void)setPreferredEnvironments:(id)a3 forEnvironment:(id)a4;
- (void)setResolvedPreference:(id)a3 forEnvironment:(id)a4;
@end

@implementation _UIFocusEnvironmentPreferenceCache

- (_UIFocusEnvironmentPreferenceCache)init
{
  v6.receiver = self;
  v6.super_class = _UIFocusEnvironmentPreferenceCache;
  v2 = [(_UIFocusEnvironmentPreferenceCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:514 valueOptions:512];
    environmentsMap = v2->_environmentsMap;
    v2->_environmentsMap = v3;
  }

  return v2;
}

- (id)preferredEnvironmentsForEnvironment:(id)a3 isFinal:(BOOL *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    if ([v8 isResolved])
    {
      if (a4)
      {
        *a4 = 1;
      }

      v9 = [v8 resolvedEnvironment];
      if (v9)
      {
        v10 = [v8 resolvedEnvironment];
        v13[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      }

      else
      {
        v11 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      v9 = [v8 childNodes];
      v11 = [v9 bs_map:&__block_literal_global_2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setResolvedPreference:(id)a3 forEnvironment:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  [v9 resolve:v11];
}

- (void)setPreferredEnvironments:(id)a3 forEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [[_UIFocusEnvironmentPreferenceCacheNode alloc] initWithEnvironment:v7];
    v10 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
    [v10 setObject:v9 forKey:v7];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___UIFocusEnvironmentPreferenceCache_setPreferredEnvironments_forEnvironment___block_invoke;
  v25[3] = &unk_279014D30;
  v11 = v7;
  v26 = v11;
  v27 = self;
  v12 = [v6 bs_compactMap:v25];
  v13 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
  if (v13)
  {
    v14 = v13;
    v15 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
    v16 = [v15 isEqualToArray:v12];

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusEnvironmentPreferenceCache setPreferredEnvironments:forEnvironment:]"];
      v19 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
      if (v19)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 stringWithFormat:@"<%@: %p>", v22, v19];
      }

      else
      {
        v23 = @"(nil)";
      }

      v24 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
      [v17 handleFailureInFunction:v18 file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:80 description:{@"Modifying preferred environments for an environment. This indicates an unstable PFE chain. Results might be unreliable. Environment %@ had these childs before:\n%@\nnow has:\n%@", v23, v24, v12}];
    }
  }

  [(_UIFocusEnvironmentPreferenceCacheNode *)v9 setChildNodes:v12];
}

- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 childNodes];
  v8 = [v7 count];

  if (v8)
  {
    do
    {
      v9 = [v6 childNodes];
      v10 = [v9 firstObject];

      v11 = [v10 childNodes];
      v12 = [v11 count];

      v6 = v10;
    }

    while (v12);
  }

  else
  {
    v10 = v6;
  }

  v13 = [v10 environment];

  return v13;
}

@end