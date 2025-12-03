@interface _UIFocusEnvironmentPreferenceCache
- (_UIFocusEnvironmentPreferenceCache)init;
- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)environment;
- (id)preferredEnvironmentsForEnvironment:(id)environment isFinal:(BOOL *)final;
- (void)setPreferredEnvironments:(id)environments forEnvironment:(id)environment;
- (void)setResolvedPreference:(id)preference forEnvironment:(id)environment;
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

- (id)preferredEnvironmentsForEnvironment:(id)environment isFinal:(BOOL *)final
{
  v13[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v8 = [environmentsMap objectForKey:environmentCopy];

  if (v8)
  {
    if ([v8 isResolved])
    {
      if (final)
      {
        *final = 1;
      }

      resolvedEnvironment = [v8 resolvedEnvironment];
      if (resolvedEnvironment)
      {
        resolvedEnvironment2 = [v8 resolvedEnvironment];
        v13[0] = resolvedEnvironment2;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      }

      else
      {
        v11 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      if (final)
      {
        *final = 0;
      }

      resolvedEnvironment = [v8 childNodes];
      v11 = [resolvedEnvironment bs_map:&__block_literal_global_2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setResolvedPreference:(id)preference forEnvironment:(id)environment
{
  preferenceCopy = preference;
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [environmentsMap objectForKey:environmentCopy];

  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  [v9 resolve:preferenceCopy];
}

- (void)setPreferredEnvironments:(id)environments forEnvironment:(id)environment
{
  environmentsCopy = environments;
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v9 = [environmentsMap objectForKey:environmentCopy];

  if (!v9)
  {
    v9 = [[_UIFocusEnvironmentPreferenceCacheNode alloc] initWithEnvironment:environmentCopy];
    environmentsMap2 = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
    [environmentsMap2 setObject:v9 forKey:environmentCopy];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___UIFocusEnvironmentPreferenceCache_setPreferredEnvironments_forEnvironment___block_invoke;
  v25[3] = &unk_279014D30;
  v11 = environmentCopy;
  v26 = v11;
  selfCopy = self;
  v12 = [environmentsCopy bs_compactMap:v25];
  childNodes = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
  if (childNodes)
  {
    v14 = childNodes;
    childNodes2 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
    v16 = [childNodes2 isEqualToArray:v12];

    if ((v16 & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusEnvironmentPreferenceCache setPreferredEnvironments:forEnvironment:]"];
      environment = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 environment];
      if (environment)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 stringWithFormat:@"<%@: %p>", v22, environment];
      }

      else
      {
        v23 = @"(nil)";
      }

      childNodes3 = [(_UIFocusEnvironmentPreferenceCacheNode *)v9 childNodes];
      [currentHandler handleFailureInFunction:v18 file:@"_UIFocusEnvironmentPreferenceCache.m" lineNumber:80 description:{@"Modifying preferred environments for an environment. This indicates an unstable PFE chain. Results might be unreliable. Environment %@ had these childs before:\n%@\nnow has:\n%@", v23, childNodes3, v12}];
    }
  }

  [(_UIFocusEnvironmentPreferenceCacheNode *)v9 setChildNodes:v12];
}

- (id)deepestPrimaryPreferredEnvironmentForEnvironment:(id)environment
{
  environmentCopy = environment;
  environmentsMap = [(_UIFocusEnvironmentPreferenceCache *)self environmentsMap];
  v6 = [environmentsMap objectForKey:environmentCopy];

  childNodes = [v6 childNodes];
  v8 = [childNodes count];

  if (v8)
  {
    do
    {
      childNodes2 = [v6 childNodes];
      firstObject = [childNodes2 firstObject];

      childNodes3 = [firstObject childNodes];
      v12 = [childNodes3 count];

      v6 = firstObject;
    }

    while (v12);
  }

  else
  {
    firstObject = v6;
  }

  environment = [firstObject environment];

  return environment;
}

@end