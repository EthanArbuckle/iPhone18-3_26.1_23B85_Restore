@interface NSSUsageData
+ (id)createLegacyUsageDictionary:(id)dictionary;
+ (id)createNSSUsageApp:(id)app;
+ (id)createNSSUsageBundle:(id)bundle;
+ (id)dedupeBundles:(id)bundles;
+ (id)newAppBundleFromAppBundleMsg:(id)msg;
+ (id)newAppBundleFromAppUsageMsg:(id)msg;
+ (id)newAppBundleFromBundleUsageMsg:(id)msg;
+ (id)newAppBundleMsgFrom:(id)from;
+ (id)newMsgFromSize:(id)size;
+ (id)newSizeCategoryMsgFrom:(id)from;
+ (id)newSizeFromMsg:(id)msg;
+ (id)newUsageDataFromUsageRespMsg:(id)msg;
+ (id)newUsageRespMsgFrom:(id)from;
+ (id)setUsageRespMsgFrom:(id)from usageRespMsg:(id)msg;
- (NSSUsageData)initWithCapacity:(unint64_t)capacity usedStorageInBytes:(unint64_t)bytes available:(unint64_t)available usageTimeInSeconds:(float)seconds standbyTimeInSeconds:(float)inSeconds trusted:(BOOL)trusted partiallyCharged:(BOOL)charged appBundleUsage:(id)self0 categories:(id)self1;
- (NSSUsageData)initWithUsed:(unint64_t)used available:(unint64_t)available usageTimeInSeconds:(float)seconds standbyTimeInSeconds:(float)inSeconds trusted:(BOOL)trusted partiallyCharged:(BOOL)charged appBundleUsage:(id)usage categories:(id)self0;
@end

@implementation NSSUsageData

- (NSSUsageData)initWithUsed:(unint64_t)used available:(unint64_t)available usageTimeInSeconds:(float)seconds standbyTimeInSeconds:(float)inSeconds trusted:(BOOL)trusted partiallyCharged:(BOOL)charged appBundleUsage:(id)usage categories:(id)self0
{
  usageCopy = usage;
  categoriesCopy = categories;
  v24.receiver = self;
  v24.super_class = NSSUsageData;
  v21 = [(NSSUsageData *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_usedStorageInBytes = used;
    v21->_availableStorageInBytes = available;
    v21->_usageTimeInSeconds = seconds;
    v21->_standbyTimeInSeconds = inSeconds;
    v21->_trusted = trusted;
    v21->_partiallyCharged = charged;
    objc_storeStrong(&v21->_appBundleUsage, usage);
    objc_storeStrong(&v22->_categories, categories);
  }

  return v22;
}

- (NSSUsageData)initWithCapacity:(unint64_t)capacity usedStorageInBytes:(unint64_t)bytes available:(unint64_t)available usageTimeInSeconds:(float)seconds standbyTimeInSeconds:(float)inSeconds trusted:(BOOL)trusted partiallyCharged:(BOOL)charged appBundleUsage:(id)self0 categories:(id)self1
{
  usageCopy = usage;
  categoriesCopy = categories;
  v25.receiver = self;
  v25.super_class = NSSUsageData;
  v22 = [(NSSUsageData *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_capacityInBytes = capacity;
    v22->_usedStorageInBytes = bytes;
    v22->_availableStorageInBytes = available;
    v22->_usageTimeInSeconds = seconds;
    v22->_standbyTimeInSeconds = inSeconds;
    v22->_trusted = trusted;
    v22->_partiallyCharged = charged;
    objc_storeStrong(&v22->_appBundleUsage, usage);
    objc_storeStrong(&v23->_categories, categories);
  }

  return v23;
}

+ (id)createNSSUsageBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_new();
  name = [bundleCopy name];
  [v4 setName:name];

  bundleIdentifier = [bundleCopy bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  supportsManualPurge = [bundleCopy supportsManualPurge];
  [v4 setPurgeable:supportsManualPurge];
  array = [MEMORY[0x277CBEB18] array];
  [v4 setCategories:array];

  return v4;
}

+ (id)createNSSUsageApp:(id)app
{
  appCopy = app;
  v4 = objc_opt_new();
  name = [appCopy name];
  [v4 setName:name];

  bundleIdentifier = [appCopy bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  bundleVersion = [appCopy bundleVersion];
  [v4 setBundleVersion:bundleVersion];

  v8 = [appCopy size];
  [v4 setStaticSize:{objc_msgSend(v8, "fixed")}];

  v9 = [appCopy size];

  [v4 setDynamicSize:{objc_msgSend(v9, "docsAndData")}];

  return v4;
}

+ (id)createLegacyUsageDictionary:(id)dictionary
{
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoMailUsageBundle", @"com.apple.NanoCalendarUsage", @"com.apple.ContactsUsageBundle", @"com.apple.NanoPhoneUsageBundle", @"com.apple.NanoHealthUsage", @"com.apple.NanoPassbookUsageBundle", @"com.apple.SoftwareUpdateUsage", @"com.apple.NanoBooks.Usage", 0}];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoPhotos", @"com.apple.NanoMusic", @"com.apple.podcasts", 0}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = dictionaryCopy;
  appBundleUsage = [dictionaryCopy appBundleUsage];
  v8 = [appBundleUsage countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(appBundleUsage);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        if (([v6 containsObject:bundleIdentifier] & 1) == 0)
        {
          if ([v5 containsObject:bundleIdentifier])
          {
            v14 = [NSSUsageData createNSSUsageBundle:v12];
            v15 = array2;
          }

          else
          {
            v14 = [NSSUsageData createNSSUsageApp:v12];
            v15 = array;
          }

          [v15 addObject:v14];
        }
      }

      v9 = [appBundleUsage countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v9);
  }

  v52[0] = @"Apps";
  v52[1] = @"Bundles";
  v53[0] = array;
  v53[1] = array2;
  v52[2] = @"UsedStorage";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v41, "usedStorageInBytes")}];
  v53[2] = v39;
  v52[3] = @"AvailableStorage";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v41, "availableStorageInBytes")}];
  v53[3] = v38;
  v52[4] = @"Usage";
  v16 = MEMORY[0x277CCABB0];
  [v41 usageTimeInSeconds];
  v37 = [v16 numberWithFloat:?];
  v53[4] = v37;
  v52[5] = @"Standby";
  v17 = MEMORY[0x277CCABB0];
  [v41 standbyTimeInSeconds];
  v18 = [v17 numberWithFloat:?];
  v53[5] = v18;
  v52[6] = @"Trusted";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v41, "trusted")}];
  v53[6] = v19;
  v52[7] = @"Partially";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v41, "partiallyCharged")}];
  v53[7] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:8];
  v40 = [v21 mutableCopy];

  v22 = objc_alloc(MEMORY[0x277CBEB38]);
  categories = [v41 categories];
  v24 = [v22 initWithCapacity:{objc_msgSend(categories, "count")}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  categories2 = [v41 categories];
  v26 = [categories2 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(categories2);
        }

        v30 = *(*(&v43 + 1) + 8 * j);
        categoryIdentifier = [v30 categoryIdentifier];
        [v24 setValue:v30 forKey:categoryIdentifier];
      }

      v27 = [categories2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v27);
  }

  v32 = [v24 valueForKey:@"CAT_MEDIA"];
  addCategoryToDict(v40, @"Songs", v32);

  [v40 setValue:@"com.apple.NanoMusic" forKey:@"MusicAppId"];
  v33 = [v24 valueForKey:@"CAT_PHOTOS"];
  addCategoryToDict(v40, @"PhotoLibrary", v33);

  [v40 setValue:@"com.apple.NanoPhotos" forKey:@"PhotosAppId"];
  v34 = [v24 valueForKey:@"CAT_BOOKS"];
  addCategoryToDict(v40, @"Audiobooks", v34);

  [v40 setValue:@"com.apple.podcasts" forKey:@"PodcastsAppId"];
  v35 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)newAppBundleFromAppBundleMsg:(id)msg
{
  msgCopy = msg;
  v5 = [NSSUsageDataAppBundle alloc];
  name = [msgCopy name];
  bundleIdentifier = [msgCopy bundleIdentifier];
  bundleVersion = [msgCopy bundleVersion];
  vendor = [msgCopy vendor];
  v10 = [msgCopy size];
  v11 = [self newSizeFromMsg:v10];
  supportsManualPurge = [msgCopy supportsManualPurge];

  v13 = [(NSSUsageDataAppBundle *)v5 initWithName:name bundleIdentifier:bundleIdentifier bundleVersion:bundleVersion vendor:vendor size:v11 supportsPurge:supportsManualPurge];
  return v13;
}

+ (id)newAppBundleFromBundleUsageMsg:(id)msg
{
  v22 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  categories = [msgCopy categories];
  v5 = [categories countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(categories);
        }

        v7 += [*(*(&v17 + 1) + 8 * i) usageInBytes];
      }

      v6 = [categories countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [NSSUsageDataAppBundle alloc];
  name = [msgCopy name];
  bundleIdentifier = [msgCopy bundleIdentifier];
  v13 = [NSSSizeVector docsAndData:v7];
  v14 = -[NSSUsageDataAppBundle initWithName:bundleIdentifier:bundleVersion:vendor:size:supportsPurge:](v10, "initWithName:bundleIdentifier:bundleVersion:vendor:size:supportsPurge:", name, bundleIdentifier, 0, 0, v13, [msgCopy purgeable]);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)newAppBundleFromAppUsageMsg:(id)msg
{
  msgCopy = msg;
  v4 = [NSSUsageDataAppBundle alloc];
  name = [msgCopy name];
  bundleIdentifier = [msgCopy bundleIdentifier];
  bundleVersion = [msgCopy bundleVersion];
  staticSizeInBytes = [msgCopy staticSizeInBytes];
  dynamicSizeInBytes = [msgCopy dynamicSizeInBytes];

  v10 = [NSSSizeVector fixed:staticSizeInBytes docsAndData:dynamicSizeInBytes];
  v11 = [(NSSUsageDataAppBundle *)v4 initWithName:name bundleIdentifier:bundleIdentifier bundleVersion:bundleVersion vendor:0 size:v10 supportsPurge:0];

  return v11;
}

+ (id)newSizeFromMsg:(id)msg
{
  msgCopy = msg;
  fixed = [msgCopy fixed];
  docsAndData = [msgCopy docsAndData];
  purgeable = [msgCopy purgeable];

  [NSSSizeVector fixed:fixed docsAndData:docsAndData purgeable:purgeable];
  return objc_claimAutoreleasedReturnValue();
}

+ (id)dedupeBundles:(id)bundles
{
  v23 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(bundlesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = bundlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [v4 objectForKeyedSubscript:bundleIdentifier];
        v13 = [v10 mergeWith:v12];
        bundleIdentifier2 = [v10 bundleIdentifier];
        [v4 setObject:v13 forKeyedSubscript:bundleIdentifier2];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  allValues = [v4 allValues];

  v16 = *MEMORY[0x277D85DE8];

  return allValues;
}

+ (id)newUsageDataFromUsageRespMsg:(id)msg
{
  v109 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  appBundleUsages = [msgCopy appBundleUsages];
  v84 = [v5 initWithCapacity:{objc_msgSend(appBundleUsages, "count")}];

  v7 = msgCopy;
  v85 = objc_opt_new();
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  appBundleUsages2 = [msgCopy appBundleUsages];
  v9 = [appBundleUsages2 countByEnumeratingWithState:&v101 objects:v108 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v102;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v102 != v11)
        {
          objc_enumerationMutation(appBundleUsages2);
        }

        v13 = [self newAppBundleFromAppBundleMsg:*(*(&v101 + 1) + 8 * i)];
        [v85 addObject:v13];
      }

      v10 = [appBundleUsages2 countByEnumeratingWithState:&v101 objects:v108 count:16];
    }

    while (v10);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v83 = v7;
  appUsages = [v7 appUsages];
  v15 = [appUsages countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v98;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v98 != v17)
        {
          objc_enumerationMutation(appUsages);
        }

        v19 = [self newAppBundleFromAppUsageMsg:*(*(&v97 + 1) + 8 * j)];
        [v85 addObject:v19];
        v20 = [v19 size];
        addToCategory(v84, @"CAT_APPS", [v20 userTotal]);
      }

      v16 = [appUsages countByEnumeratingWithState:&v97 objects:v107 count:16];
    }

    while (v16);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  bundleUsages = [v83 bundleUsages];
  v22 = [bundleUsages countByEnumeratingWithState:&v93 objects:v106 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v94;
    do
    {
      v25 = 0;
      do
      {
        if (*v94 != v24)
        {
          objc_enumerationMutation(bundleUsages);
        }

        v26 = *(*(&v93 + 1) + 8 * v25);
        v27 = [self newAppBundleFromBundleUsageMsg:v26];
        [v85 addObject:v27];
        bundleIdentifier = [v26 bundleIdentifier];
        if (legacyUsageBundleIdToCategory_onceToken != -1)
        {
          +[NSSUsageData(Proto) newUsageDataFromUsageRespMsg:];
        }

        v29 = [legacyUsageBundleIdToCategory_legacyBundleIdToNewBundleIdMap objectForKey:bundleIdentifier];
        if (!v29)
        {
          v29 = @"CAT_APPS";
        }

        v30 = [v27 size];
        addToCategory(v84, v29, [v30 userTotal]);

        ++v25;
      }

      while (v23 != v25);
      v23 = [bundleUsages countByEnumeratingWithState:&v93 objects:v106 count:16];
    }

    while (v23);
  }

  if (([v83 hasCameralRollUsage] & 1) != 0 || (objc_msgSend(v83, "hasPhotoLibraryUsage") & 1) != 0 || objc_msgSend(v83, "hasPhotoStreamUsage"))
  {
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"PHOTO" value:&stru_286CED1F0 table:@"Localization-shared"];
    v33 = newFakeAppBundleFromLegacyData(v32, @"com.apple.NanoPhotos", [v83 photoLibraryUsage] + objc_msgSend(v83, "cameralRollUsage") + objc_msgSend(v83, "photoStreamUsage"));

    [v85 addObject:v33];
  }

  if (([v83 hasSongsUsage] & 1) != 0 || (objc_msgSend(v83, "hasAudiobooksUsage") & 1) != 0 || objc_msgSend(v83, "hasAudioCoursesUsage"))
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"MUSIC" value:&stru_286CED1F0 table:@"Localization-shared"];
    v36 = newFakeAppBundleFromLegacyData(v35, @"com.apple.NanoMusic", [v83 audiobooksUsage] + objc_msgSend(v83, "songsUsage") + objc_msgSend(v83, "audioCoursesUsage"));

    [v85 addObject:v36];
  }

  if ([v83 hasAudioPodcastsUsage])
  {
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"PODCASTS" value:&stru_286CED1F0 table:@"Localization-shared"];
    v39 = newFakeAppBundleFromLegacyData(v38, @"com.apple.podcasts", [v83 audioPodcastsUsage]);

    [v85 addObject:v39];
  }

  addToCategory(v84, @"CAT_MEDIA", [v83 moviesUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 movieRentalsUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 tvShowsUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 audioCoursesUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 videoCoursesUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 musicVideosUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 audioPodcastsUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 videoPodcastsUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 songsUsage]);
  addToCategory(v84, @"CAT_BOOKS", [v83 audiobooksUsage]);
  addToCategory(v84, @"CAT_MEDIA", [v83 homeVideosUsage]);
  addToCategory(v84, @"CAT_PHOTOS", [v83 cameralRollUsage]);
  addToCategory(v84, @"CAT_PHOTOS", [v83 photoLibraryUsage]);
  addToCategory(v84, @"CAT_PHOTOS", [v83 photoStreamUsage]);
  v40 = objc_alloc(MEMORY[0x277CBEB38]);
  categories = [v83 categories];
  v42 = [v40 initWithCapacity:{objc_msgSend(categories, "count")}];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  categories2 = [v83 categories];
  v44 = [categories2 countByEnumeratingWithState:&v89 objects:v105 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v90;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v90 != v46)
        {
          objc_enumerationMutation(categories2);
        }

        v48 = *(*(&v89 + 1) + 8 * k);
        categoryIdentifier = [v48 categoryIdentifier];
        if (categoryIdentifier)
        {
          v50 = categoryIdentifier;
          v51 = [v48 size];

          if (v51)
          {
            categoryIdentifier2 = [v48 categoryIdentifier];
            v53 = [v48 size];
            v54 = [self newSizeFromMsg:v53];
            addUsageSizeToCategory(v84, categoryIdentifier2, v54);
          }
        }

        categoryIdentifier3 = [v48 categoryIdentifier];
        if (categoryIdentifier3)
        {
          v56 = categoryIdentifier3;
          name = [v48 name];

          if (name)
          {
            name2 = [v48 name];
            categoryIdentifier4 = [v48 categoryIdentifier];
            [v42 setObject:name2 forKeyedSubscript:categoryIdentifier4];
          }
        }
      }

      v45 = [categories2 countByEnumeratingWithState:&v89 objects:v105 count:16];
    }

    while (v45);
  }

  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __52__NSSUsageData_Proto__newUsageDataFromUsageRespMsg___block_invoke;
  v86[3] = &unk_27995D528;
  v87 = v60;
  v88 = v42;
  v61 = v42;
  v62 = v60;
  [v84 enumerateKeysAndObjectsUsingBlock:v86];
  capacityInBytes = [v83 capacityInBytes];
  v82 = v62;
  if ([v83 hasCapacityInBytes])
  {
    v64 = 0x27995C000;
    v81 = capacityInBytes;
  }

  else
  {
    availableStorageInBytes = [v83 availableStorageInBytes];
    v81 = [v83 usedStorageInBytes] + availableStorageInBytes;
    v64 = 0x27995C000uLL;
  }

  v66 = objc_alloc(*(v64 + 2792));
  usedStorageInBytes = [v83 usedStorageInBytes];
  availableStorageInBytes2 = [v83 availableStorageInBytes];
  [v83 usageTimeInSeconds];
  v70 = v69;
  [v83 standbyTimeInSeconds];
  v72 = v71;
  trusted = [v83 trusted];
  partiallyCharged = [v83 partiallyCharged];
  v75 = [self dedupeBundles:v85];
  LODWORD(v76) = v70;
  LODWORD(v77) = v72;
  v78 = [v66 initWithCapacity:v81 usedStorageInBytes:usedStorageInBytes available:availableStorageInBytes2 usageTimeInSeconds:trusted standbyTimeInSeconds:partiallyCharged trusted:v75 partiallyCharged:v76 appBundleUsage:v77 categories:v82];

  v79 = *MEMORY[0x277D85DE8];
  return v78;
}

void __52__NSSUsageData_Proto__newUsageDataFromUsageRespMsg___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [NSSUsageDataSizeCategory alloc];
  v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
  v9 = [(NSSUsageDataSizeCategory *)v8 initWithIdentifier:v7 size:v6 name:v10];

  [v5 addObject:v9];
}

+ (id)newMsgFromSize:(id)size
{
  sizeCopy = size;
  v4 = objc_opt_new();
  if ([sizeCopy docsAndData])
  {
    docsAndData = [sizeCopy docsAndData];
    [v4 setDocsAndData:docsAndData & ~(docsAndData >> 63)];
  }

  if ([sizeCopy fixed])
  {
    fixed = [sizeCopy fixed];
    [v4 setFixed:fixed & ~(fixed >> 63)];
  }

  if ([sizeCopy purgeable])
  {
    purgeable = [sizeCopy purgeable];
    [v4 setPurgeable:purgeable & ~(purgeable >> 63)];
  }

  return v4;
}

+ (id)newSizeCategoryMsgFrom:(id)from
{
  fromCopy = from;
  v5 = objc_opt_new();
  categoryIdentifier = [fromCopy categoryIdentifier];
  [v5 setCategoryIdentifier:categoryIdentifier];

  name = [fromCopy name];
  [v5 setName:name];

  v8 = [fromCopy size];

  v9 = [self newMsgFromSize:v8];
  [v5 setSize:v9];

  return v5;
}

+ (id)newAppBundleMsgFrom:(id)from
{
  fromCopy = from;
  v5 = objc_opt_new();
  bundleIdentifier = [fromCopy bundleIdentifier];
  [v5 setBundleIdentifier:bundleIdentifier];

  bundleVersion = [fromCopy bundleVersion];
  [v5 setBundleVersion:bundleVersion];

  [v5 setSupportsManualPurge:{objc_msgSend(fromCopy, "supportsManualPurge")}];
  v8 = [fromCopy size];
  v9 = [self newMsgFromSize:v8];
  [v5 setSize:v9];

  name = [fromCopy name];

  [v5 setName:name];
  return v5;
}

+ (id)newUsageRespMsgFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_new();
  v5 = [NSSUsageData setUsageRespMsgFrom:fromCopy usageRespMsg:v4];

  return v4;
}

+ (id)setUsageRespMsgFrom:(id)from usageRespMsg:(id)msg
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  msgCopy = msg;
  [msgCopy setCapacityInBytes:{objc_msgSend(fromCopy, "capacityInBytes")}];
  [msgCopy setUsedStorageInBytes:{objc_msgSend(fromCopy, "usedStorageInBytes")}];
  [msgCopy setAvailableStorageInBytes:{objc_msgSend(fromCopy, "availableStorageInBytes")}];
  [fromCopy usageTimeInSeconds];
  [msgCopy setUsageTimeInSeconds:?];
  [fromCopy standbyTimeInSeconds];
  [msgCopy setStandbyTimeInSeconds:?];
  [msgCopy setTrusted:{objc_msgSend(fromCopy, "trusted")}];
  [msgCopy setPartiallyCharged:{objc_msgSend(fromCopy, "partiallyCharged")}];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  categories = [fromCopy categories];
  v10 = [categories countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(categories);
        }

        v14 = [self newSizeCategoryMsgFrom:*(*(&v28 + 1) + 8 * i)];
        [array addObject:v14];
      }

      v11 = [categories countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  [msgCopy setCategories:array];
  array2 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  appBundleUsage = [fromCopy appBundleUsage];
  v17 = [appBundleUsage countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(appBundleUsage);
        }

        v21 = [self newAppBundleMsgFrom:*(*(&v24 + 1) + 8 * j)];
        [array2 addObject:v21];
      }

      v18 = [appBundleUsage countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  [msgCopy setAppBundleUsages:array2];
  v22 = *MEMORY[0x277D85DE8];

  return msgCopy;
}

@end