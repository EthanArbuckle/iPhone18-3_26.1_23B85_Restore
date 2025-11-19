@interface TESPatternMatcherLoader
+ (id)_loadPatternMatcherForKey:(id)a3;
- (TESPatternMatcherLoader)initWithLocale:(id)a3;
- (void)_loadPatternMatchers;
@end

@implementation TESPatternMatcherLoader

- (TESPatternMatcherLoader)initWithLocale:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TESPatternMatcherLoader;
  v5 = [(TESPatternMatcherLoader *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    matchers = v5->_matchers;
    v5->_matchers = v8;

    [(TESPatternMatcherLoader *)v5 _loadPatternMatchers];
  }

  return v5;
}

+ (id)_loadPatternMatcherForKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"capitalLetter"])
  {
    v4 = off_1E7A4C7D8;
LABEL_15:
    v5 = objc_alloc_init(*v4);
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"repeatedCharacter"])
  {
    v4 = off_1E7A4C7F0;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"asterisk"])
  {
    v4 = off_1E7A4C7D0;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"underScore"])
  {
    v4 = off_1E7A4C808;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"slash"])
  {
    v4 = off_1E7A4C7F8;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"hyphen"])
  {
    v4 = off_1E7A4C7E0;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"tilde"])
  {
    v4 = off_1E7A4C800;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v5;
}

- (void)_loadPatternMatchers
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_matchers count])
  {
    v3 = [(TESPatternMatcherLoader *)self locale];
    v4 = [v3 languageIdentifier];

    v14 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = [[TESStylePatternLoader alloc] initWithLocaleIdentifier:v4];
    v5 = [(TESLocalizedPListLoader *)v13 items];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [TESPatternMatcherLoader _loadPatternMatcherForKey:v10];
          if (v11)
          {
            [(NSMutableArray *)self->_matchers addObject:v11];
          }

          else
          {
            v12 = emf_logging_get_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v20 = v10;
              _os_log_error_impl(&dword_1AF04E000, v12, OS_LOG_TYPE_ERROR, "Pattern matcher key '%{public}@' is not supported.", buf, 0xCu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

@end