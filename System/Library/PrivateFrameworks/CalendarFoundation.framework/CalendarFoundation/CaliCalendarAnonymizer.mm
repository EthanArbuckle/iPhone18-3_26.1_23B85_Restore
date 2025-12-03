@interface CaliCalendarAnonymizer
+ (id)anonymizedAddressURL:(id)l;
+ (id)anonymizedString:(id)string withAnonymizer:(id)anonymizer;
+ (id)anonymizedWebURL:(id)l;
+ (id)sharedAnonymizedDomainName;
+ (id)sharedAnonymizedStrings;
+ (id)sharedAnonymizedStringsCount;
+ (void)dump;
@end

@implementation CaliCalendarAnonymizer

+ (id)sharedAnonymizedStrings
{
  if (sharedAnonymizedStrings_once != -1)
  {
    +[CaliCalendarAnonymizer sharedAnonymizedStrings];
  }

  v3 = gSharedAnonymizedStrings;

  return v3;
}

uint64_t __49__CaliCalendarAnonymizer_sharedAnonymizedStrings__block_invoke()
{
  srandom(0xF466u);
  gSharedAnonymizedStrings = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAnonymizedStringsCount
{
  if (sharedAnonymizedStringsCount_once != -1)
  {
    +[CaliCalendarAnonymizer sharedAnonymizedStringsCount];
  }

  v3 = gSharedAnonymizedStringsCount;

  return v3;
}

uint64_t __54__CaliCalendarAnonymizer_sharedAnonymizedStringsCount__block_invoke()
{
  gSharedAnonymizedStringsCount = objc_alloc_init(MEMORY[0x1E696AB50]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedAnonymizedDomainName
{
  if (sharedAnonymizedDomainName_once != -1)
  {
    +[CaliCalendarAnonymizer sharedAnonymizedDomainName];
  }

  v3 = sharedAnonymizedDomainName_domain;

  return v3;
}

void __52__CaliCalendarAnonymizer_sharedAnonymizedDomainName__block_invoke()
{
  v3 = [[CalPreferences alloc] initWithDomain:0];
  v0 = [(CalPreferences *)v3 getValueForPreference:@"CalAnonymizerDomain" expectedClass:objc_opt_class()];
  v1 = sharedAnonymizedDomainName_domain;
  sharedAnonymizedDomainName_domain = v0;

  if (![sharedAnonymizedDomainName_domain length])
  {
    v2 = sharedAnonymizedDomainName_domain;
    sharedAnonymizedDomainName_domain = @"apple.com";
  }
}

+ (id)anonymizedString:(id)string withAnonymizer:(id)anonymizer
{
  stringCopy = string;
  anonymizerCopy = anonymizer;
  v7 = _Block_copy(anonymizerCopy);
  v8 = v7;
  if (anonymizerCopy)
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v8 = &__block_literal_global_14;
  if (!stringCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = +[CaliCalendarAnonymizer sharedAnonymizedStrings];
  v10 = +[CaliCalendarAnonymizer sharedAnonymizedStringsCount];
  v11 = v9;
  objc_sync_enter(v11);
  v12 = [v11 objectForKeyedSubscript:stringCopy];

  if (!v12 && v8)
  {
    v13 = v8[2](v8, stringCopy);
    [v11 setObject:v13 forKeyedSubscript:stringCopy];
  }

  v14 = [v11 objectForKeyedSubscript:stringCopy];
  [v10 addObject:stringCopy];
  objc_sync_exit(v11);

LABEL_9:

  return v14;
}

+ (id)anonymizedWebURL:(id)l
{
  if (l)
  {
    lCopy = l;
    scheme = [lCopy scheme];
    resourceSpecifier = [lCopy resourceSpecifier];

    v6 = [CaliCalendarAnonymizer anonymizedString:resourceSpecifier withAnonymizer:&__block_literal_global_62];

    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", scheme, v6];
    v9 = [v7 URLWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)anonymizedAddressURL:(id)l
{
  if (l)
  {
    lCopy = l;
    if ([lCopy cal_hasSchemeTel])
    {
      v4 = &__block_literal_global_56;
    }

    else
    {
      v4 = &__block_literal_global_35;
    }

    scheme = [lCopy scheme];
    resourceSpecifier = [lCopy resourceSpecifier];

    v7 = [CaliCalendarAnonymizer anonymizedString:resourceSpecifier withAnonymizer:v4];

    v8 = MEMORY[0x1E695DFF8];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", scheme, v7];
    v10 = [v8 URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)dump
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[CaliCalendarAnonymizer sharedAnonymizedStrings];
  v3 = +[CaliCalendarAnonymizer sharedAnonymizedStringsCount];
  v4 = v2;
  objc_sync_enter(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v3 countForObject:v9];
        v11 = [v5 objectForKeyedSubscript:v9];
        NSLog(&cfstr_Lu.isa, v10, v11, v9);
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x1E69E9840];
}

@end