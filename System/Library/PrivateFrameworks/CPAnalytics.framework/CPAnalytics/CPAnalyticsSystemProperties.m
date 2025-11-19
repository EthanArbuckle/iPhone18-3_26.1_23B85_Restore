@interface CPAnalyticsSystemProperties
+ (NSArray)dynamicPhotoLibraryProperties;
+ (NSArray)staticPhotoLibraryProperties;
- (CPAnalyticsSystemProperties)init;
- (id)propertyForKey:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5;
- (void)addDynamicProperty:(id)a3 withProvider:(id)a4;
- (void)addProperty:(id)a3 withValue:(id)a4;
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
  v3 = [(CPAnalyticsSystemProperties *)self systemProperties];
  v4 = [objc_opt_class() staticPhotoLibraryProperties];
  [v3 removeObjectsForKeys:v4];

  v6 = [(CPAnalyticsSystemProperties *)self dynamicProperties];
  v5 = [objc_opt_class() dynamicPhotoLibraryProperties];
  [v6 removeObjectsForKeys:v5];
}

- (id)propertyForKey:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CPAnalyticsSystemProperties *)self systemProperties];
  v12 = [v11 objectForKey:v8];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = [(CPAnalyticsSystemProperties *)self dynamicProperties];
    v15 = [v14 objectForKey:v8];

    v13 = [v15 getDynamicProperty:v8 forEventName:v9 payloadForSystemPropertyExtraction:v10];
  }

  return v13;
}

- (void)addDynamicProperty:(id)a3 withProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPAnalyticsSystemProperties *)self dynamicProperties];
  [v8 setObject:v6 forKey:v7];
}

- (void)addProperty:(id)a3 withValue:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(CPAnalyticsSystemProperties *)self systemProperties];
    [v8 setValue:v6 forKey:v7];
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