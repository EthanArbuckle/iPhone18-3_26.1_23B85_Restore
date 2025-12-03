@interface CPAnalyticsSystemProperties
+ (NSArray)dynamicPhotoLibraryProperties;
+ (NSArray)staticPhotoLibraryProperties;
- (CPAnalyticsSystemProperties)init;
- (id)propertyForKey:(id)key forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (void)addDynamicProperty:(id)property withProvider:(id)provider;
- (void)addProperty:(id)property withValue:(id)value;
- (void)removePhotoLibraryProperties;
@end

@implementation CPAnalyticsSystemProperties

- (CPAnalyticsSystemProperties)init
{
  v6.receiver = self;
  v6.super_class = CPAnalyticsSystemProperties;
  v2 = [(CPAnalyticsSystemProperties *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(CPAnalyticsSystemProperties *)v2 setSystemProperties:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(CPAnalyticsSystemProperties *)v2 setDynamicProperties:v4];
  }

  return v2;
}

- (void)removePhotoLibraryProperties
{
  systemProperties = [(CPAnalyticsSystemProperties *)self systemProperties];
  staticPhotoLibraryProperties = [objc_opt_class() staticPhotoLibraryProperties];
  [systemProperties removeObjectsForKeys:staticPhotoLibraryProperties];

  dynamicProperties = [(CPAnalyticsSystemProperties *)self dynamicProperties];
  dynamicPhotoLibraryProperties = [objc_opt_class() dynamicPhotoLibraryProperties];
  [dynamicProperties removeObjectsForKeys:dynamicPhotoLibraryProperties];
}

- (id)propertyForKey:(id)key forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  keyCopy = key;
  nameCopy = name;
  extractionCopy = extraction;
  systemProperties = [(CPAnalyticsSystemProperties *)self systemProperties];
  v12 = [systemProperties objectForKey:keyCopy];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    dynamicProperties = [(CPAnalyticsSystemProperties *)self dynamicProperties];
    v15 = [dynamicProperties objectForKey:keyCopy];

    v13 = [v15 getDynamicProperty:keyCopy forEventName:nameCopy payloadForSystemPropertyExtraction:extractionCopy];
  }

  return v13;
}

- (void)addDynamicProperty:(id)property withProvider:(id)provider
{
  providerCopy = provider;
  propertyCopy = property;
  dynamicProperties = [(CPAnalyticsSystemProperties *)self dynamicProperties];
  [dynamicProperties setObject:providerCopy forKey:propertyCopy];
}

- (void)addProperty:(id)property withValue:(id)value
{
  if (value)
  {
    valueCopy = value;
    propertyCopy = property;
    systemProperties = [(CPAnalyticsSystemProperties *)self systemProperties];
    [systemProperties setValue:valueCopy forKey:propertyCopy];
  }
}

+ (NSArray)dynamicPhotoLibraryProperties
{
  v5[15] = *MEMORY[0x277D85DE8];
  v5[0] = @"cpa_common_icpl_enabled";
  v5[1] = @"cpa_common_icpl_exceedingQuota";
  v5[2] = @"cpa_common_icpl_lowDiskSpace";
  v5[3] = @"cpa_common_icpl_veryLowDiskSpace";
  v5[4] = @"cpa_common_icpl_hasChangesToProcess";
  v5[5] = @"cpa_media_type";
  v5[6] = @"cpa_media_subType";
  v5[7] = @"cpa_media_age";
  v5[8] = @"cpa_media_duration";
  v5[9] = @"cpa_media_localIdentifier";
  v5[10] = @"cpa_media_ageInMinutes";
  v5[11] = @"cpa_media_sceneType";
  v5[12] = @"cpa_media_subject";
  v5[13] = @"cpa_media_uuid";
  v5[14] = @"cpa_common_sharedLibraryEnabled";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:15];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (NSArray)staticPhotoLibraryProperties
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"cpa_common_photoCount";
  v5[1] = @"cpa_common_videoCount";
  v5[2] = @"cpa_common_collectionCount";
  v5[3] = @"cpa_common_librarySizeRange";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end