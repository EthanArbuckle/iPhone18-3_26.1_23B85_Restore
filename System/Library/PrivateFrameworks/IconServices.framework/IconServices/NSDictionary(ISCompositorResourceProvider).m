@interface NSDictionary(ISCompositorResourceProvider)
- (id)_IS_resourceNamed:()ISCompositorResourceProvider;
@end

@implementation NSDictionary(ISCompositorResourceProvider)

- (id)_IS_resourceNamed:()ISCompositorResourceProvider
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    while (1)
    {
      if (!v6)
      {
        v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];
      }

      if ([v6 containsObject:v5])
      {
        break;
      }

      [v6 addObject:v5];
      v7 = [a1 objectForKey:v5];
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = v7;

      objc_opt_class();
      v5 = v8;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEFAULT, "Content referancince cycle detected name '%@'.", &v12, 0xCu);
    }

    v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = v5;
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end