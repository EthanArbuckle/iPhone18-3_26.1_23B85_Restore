@interface MRLocalization
- (id)locKeyWithFormat:(id)a3 component:(int64_t)a4;
- (id)localizedStringWithFormat:(id)a3 component:(int64_t)a4;
- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4;
@end

@implementation MRLocalization

- (id)localizedStringWithKey:(id)a3 defaultString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/CoreRepairKit.framework"];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CCA8D8];
    v10 = [v7 localizations];
    v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v12 = [v9 preferredLocalizationsFromArray:v10 forPreferences:v11];

    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable" localization:v13];

    if ([(__CFString *)v14 isEqualToString:@"NOTFOUND"])
    {
      v15 = [v12 objectAtIndexedSubscript:0];
      v16 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable-SSR" localization:v15];

      v14 = v16;
    }

    if ([(__CFString *)v14 isEqualToString:@"NOTFOUND"])
    {
      v17 = [v12 objectAtIndexedSubscript:0];
      v18 = [v8 localizedStringForKey:v5 value:@"NOTFOUND" table:@"Localizable-V53" localization:v17];

      v14 = v18;
    }
  }

  else
  {
    v14 = @"NOTFOUND";
  }

  if ([(__CFString *)v14 isEqualToString:@"NOTFOUND"])
  {
    v19 = v6;

    v14 = v19;
  }

  return v14;
}

- (id)locKeyWithFormat:(id)a3 component:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@"%@"];
  v7 = [v6 count];

  if (v7 == 2)
  {
    v8 = [MEMORY[0x277D00FC0] getLocalizationKey:a4];
    v9 = [v8 stringByStrippingPrefix:@"PART_"];

    if (!v9 || (v10 = [(__CFString *)v9 length], v11 = v9, !v10))
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MRLocalization *)v9 locKeyWithFormat:a4 component:v12];
      }

      v11 = @"UNDEFINED";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v11];
  }

  else
  {
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MRLocalization locKeyWithFormat:v14 component:?];
    }

    v13 = v5;
  }

  return v13;
}

- (id)localizedStringWithFormat:(id)a3 component:(int64_t)a4
{
  v5 = [(MRLocalization *)self locKeyWithFormat:a3 component:a4];
  v6 = [(MRLocalization *)self localizedStringWithKey:v5 defaultString:v5];

  return v6;
}

- (void)locKeyWithFormat:(os_log_t)log component:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_24785F000, log, OS_LOG_TYPE_ERROR, "component %ld not defined: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end