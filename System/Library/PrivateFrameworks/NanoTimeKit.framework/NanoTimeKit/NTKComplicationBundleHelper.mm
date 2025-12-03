@interface NTKComplicationBundleHelper
+ (id)_complicationFamilyToTemplateFileNameMapping:(id)mapping;
+ (id)_templateForFamily:(int64_t)family bundle:(id)bundle;
+ (id)localizedComplicationDescriptionForFamily:(int64_t)family bundle:(id)bundle localization:(id)localization;
+ (id)localizedComplicationTemplateForFamily:(int64_t)family bundle:(id)bundle localization:(id)localization;
+ (id)localizedComplicationTemplateForTemplate:(id)template bundle:(id)bundle localization:(id)localization;
+ (id)supportedComplicationFamiliesForBundle:(id)bundle;
@end

@implementation NTKComplicationBundleHelper

+ (id)supportedComplicationFamiliesForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [self _complicationFamilyToTemplateFileNameMapping:bundleCopy];
  bundlePath = [bundleCopy bundlePath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__NTKComplicationBundleHelper_supportedComplicationFamiliesForBundle___block_invoke;
  v15[3] = &unk_278780DF0;
  v16 = bundlePath;
  v17 = defaultManager;
  v9 = v8;
  v18 = v9;
  v10 = defaultManager;
  v11 = bundlePath;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

void __70__NTKComplicationBundleHelper_supportedComplicationFamiliesForBundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) stringByAppendingPathComponent:v6];
  if ([*(a1 + 40) fileExistsAtPath:v7])
  {
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "integerValue")}];
    [v8 addObject:v9];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __70__NTKComplicationBundleHelper_supportedComplicationFamiliesForBundle___block_invoke_cold_1();
    }
  }
}

+ (id)localizedComplicationTemplateForFamily:(int64_t)family bundle:(id)bundle localization:(id)localization
{
  localizationCopy = localization;
  bundleCopy = bundle;
  v10 = [self _templateForFamily:family bundle:bundleCopy];
  v11 = [self localizedComplicationTemplateForTemplate:v10 bundle:bundleCopy localization:localizationCopy];

  return v11;
}

+ (id)localizedComplicationDescriptionForFamily:(int64_t)family bundle:(id)bundle localization:(id)localization
{
  bundleCopy = bundle;
  localizationCopy = localization;
  bundlePath = [bundleCopy bundlePath];
  v10 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = [bundlePath stringByAppendingPathComponent:*MEMORY[0x277CBB650]];
  v12 = [v10 initWithContentsOfFile:v11 options:1 error:0];

  if (v12)
  {
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      family = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", family];
      v15 = [v13 objectForKeyedSubscript:family];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [MEMORY[0x277CBBBA0] providerWithJSONObjectRepresentation:v15];
        v17 = [v16 localizedTextProviderWithBundle:bundleCopy forLocalization:localizationCopy];

LABEL_14:
        goto LABEL_15;
      }

      v18 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NTKComplicationBundleHelper localizedComplicationDescriptionForFamily:family bundle:v18 localization:?];
      }
    }

    else
    {
      v15 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[NTKComplicationBundleHelper localizedComplicationDescriptionForFamily:bundle:localization:];
      }
    }

    v17 = 0;
    goto LABEL_14;
  }

  v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[NTKComplicationBundleHelper localizedComplicationDescriptionForFamily:bundle:localization:];
  }

  v17 = 0;
LABEL_15:

  return v17;
}

+ (id)localizedComplicationTemplateForTemplate:(id)template bundle:(id)bundle localization:(id)localization
{
  templateCopy = template;
  bundleCopy = bundle;
  localizationCopy = localization;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__NTKComplicationBundleHelper_localizedComplicationTemplateForTemplate_bundle_localization___block_invoke;
  v16[3] = &unk_278780E18;
  v10 = templateCopy;
  v17 = v10;
  v18 = bundleCopy;
  v19 = localizationCopy;
  v11 = localizationCopy;
  v12 = bundleCopy;
  [v10 enumerateTextProviderKeysWithBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __92__NTKComplicationBundleHelper_localizedComplicationTemplateForTemplate_bundle_localization___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 valueForKey:v4];
  v5 = [v6 localizedTextProviderWithBundle:*(a1 + 40) forLocalization:*(a1 + 48)];
  [*(a1 + 32) setValue:v5 forKey:v4];
}

+ (id)_templateForFamily:(int64_t)family bundle:(id)bundle
{
  bundleCopy = bundle;
  bundlePath = [bundleCopy bundlePath];
  v8 = [self _complicationFamilyToTemplateFileNameMapping:bundleCopy];
  family = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", family];
  v10 = [v8 objectForKeyedSubscript:family];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEA90]);
    v12 = [bundlePath stringByAppendingPathComponent:v10];
    v13 = [v11 initWithContentsOfFile:v12 options:1 error:0];

    if (v13)
    {
      v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:0];
      v15 = [MEMORY[0x277CBB720] complicationTemplateWithJSONObjectRepresentation:v14 bundle:bundleCopy purpose:0];

      goto LABEL_10;
    }

    v16 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[NTKComplicationBundleHelper _templateForFamily:bundle:];
    }
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NTKComplicationBundleHelper *)family _templateForFamily:bundleCopy bundle:v13];
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_complicationFamilyToTemplateFileNameMapping:(id)mapping
{
  mappingCopy = mapping;
  bundlePath = [mappingCopy bundlePath];
  v5 = [bundlePath stringByAppendingPathComponent:*MEMORY[0x277CBB658]];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:1 error:0];
    if (!v6)
    {
      v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[NTKComplicationBundleHelper localizedComplicationDescriptionForFamily:bundle:localization:];
      }

      v9 = 0;
      goto LABEL_19;
    }

    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBB660]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        v9 = v8;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v10 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[NTKComplicationBundleHelper _complicationFamilyToTemplateFileNameMapping:];
      }
    }

    else
    {
      v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[NTKComplicationBundleHelper localizedComplicationDescriptionForFamily:bundle:localization:];
      }
    }

    v9 = 0;
    goto LABEL_18;
  }

  v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[NTKComplicationBundleHelper _complicationFamilyToTemplateFileNameMapping:];
  }

  v9 = 0;
LABEL_20:

  return v9;
}

+ (void)localizedComplicationDescriptionForFamily:(uint64_t)a1 bundle:(NSObject *)a2 localization:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  *buf = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Error: descriptions: value for '%@' is not a dictionary", buf, 0xCu);
}

+ (void)_templateForFamily:(NSObject *)a3 bundle:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = CLKStringForComplicationFamily();
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Error: unable to create a filename for family (%@) in bundle %@ when looking up complication template", v6, 0x16u);
}

@end