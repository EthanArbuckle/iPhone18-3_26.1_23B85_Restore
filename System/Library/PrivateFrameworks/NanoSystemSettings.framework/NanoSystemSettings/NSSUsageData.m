@interface NSSUsageData
+ (id)createLegacyUsageDictionary:(id)a3;
+ (id)createNSSUsageApp:(id)a3;
+ (id)createNSSUsageBundle:(id)a3;
+ (id)dedupeBundles:(id)a3;
+ (id)newAppBundleFromAppBundleMsg:(id)a3;
+ (id)newAppBundleFromAppUsageMsg:(id)a3;
+ (id)newAppBundleFromBundleUsageMsg:(id)a3;
+ (id)newAppBundleMsgFrom:(id)a3;
+ (id)newMsgFromSize:(id)a3;
+ (id)newSizeCategoryMsgFrom:(id)a3;
+ (id)newSizeFromMsg:(id)a3;
+ (id)newUsageDataFromUsageRespMsg:(id)a3;
+ (id)newUsageRespMsgFrom:(id)a3;
+ (id)setUsageRespMsgFrom:(id)a3 usageRespMsg:(id)a4;
- (NSSUsageData)initWithCapacity:(unint64_t)a3 usedStorageInBytes:(unint64_t)a4 available:(unint64_t)a5 usageTimeInSeconds:(float)a6 standbyTimeInSeconds:(float)a7 trusted:(BOOL)a8 partiallyCharged:(BOOL)a9 appBundleUsage:(id)a10 categories:(id)a11;
- (NSSUsageData)initWithUsed:(unint64_t)a3 available:(unint64_t)a4 usageTimeInSeconds:(float)a5 standbyTimeInSeconds:(float)a6 trusted:(BOOL)a7 partiallyCharged:(BOOL)a8 appBundleUsage:(id)a9 categories:(id)a10;
@end

@implementation NSSUsageData

- (NSSUsageData)initWithUsed:(unint64_t)a3 available:(unint64_t)a4 usageTimeInSeconds:(float)a5 standbyTimeInSeconds:(float)a6 trusted:(BOOL)a7 partiallyCharged:(BOOL)a8 appBundleUsage:(id)a9 categories:(id)a10
{
  v19 = a9;
  v20 = a10;
  v24.receiver = self;
  v24.super_class = NSSUsageData;
  v21 = [(NSSUsageData *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_usedStorageInBytes = a3;
    v21->_availableStorageInBytes = a4;
    v21->_usageTimeInSeconds = a5;
    v21->_standbyTimeInSeconds = a6;
    v21->_trusted = a7;
    v21->_partiallyCharged = a8;
    objc_storeStrong(&v21->_appBundleUsage, a9);
    objc_storeStrong(&v22->_categories, a10);
  }

  return v22;
}

- (NSSUsageData)initWithCapacity:(unint64_t)a3 usedStorageInBytes:(unint64_t)a4 available:(unint64_t)a5 usageTimeInSeconds:(float)a6 standbyTimeInSeconds:(float)a7 trusted:(BOOL)a8 partiallyCharged:(BOOL)a9 appBundleUsage:(id)a10 categories:(id)a11
{
  v20 = a10;
  v21 = a11;
  v25.receiver = self;
  v25.super_class = NSSUsageData;
  v22 = [(NSSUsageData *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_capacityInBytes = a3;
    v22->_usedStorageInBytes = a4;
    v22->_availableStorageInBytes = a5;
    v22->_usageTimeInSeconds = a6;
    v22->_standbyTimeInSeconds = a7;
    v22->_trusted = a8;
    v22->_partiallyCharged = a9;
    objc_storeStrong(&v22->_appBundleUsage, a10);
    objc_storeStrong(&v23->_categories, a11);
  }

  return v23;
}

+ (id)createNSSUsageBundle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [v3 bundleIdentifier];
  [v4 setBundleIdentifier:v6];

  v7 = [v3 supportsManualPurge];
  [v4 setPurgeable:v7];
  v8 = [MEMORY[0x277CBEB18] array];
  [v4 setCategories:v8];

  return v4;
}

+ (id)createNSSUsageApp:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [v3 bundleIdentifier];
  [v4 setBundleIdentifier:v6];

  v7 = [v3 bundleVersion];
  [v4 setBundleVersion:v7];

  v8 = [v3 size];
  [v4 setStaticSize:{objc_msgSend(v8, "fixed")}];

  v9 = [v3 size];

  [v4 setDynamicSize:{objc_msgSend(v9, "docsAndData")}];

  return v4;
}

+ (id)createLegacyUsageDictionary:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v42 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoMailUsageBundle", @"com.apple.NanoCalendarUsage", @"com.apple.ContactsUsageBundle", @"com.apple.NanoPhoneUsageBundle", @"com.apple.NanoHealthUsage", @"com.apple.NanoPassbookUsageBundle", @"com.apple.SoftwareUpdateUsage", @"com.apple.NanoBooks.Usage", 0}];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.NanoPhotos", @"com.apple.NanoMusic", @"com.apple.podcasts", 0}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = v3;
  v7 = [v3 appBundleUsage];
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [v12 bundleIdentifier];
        if (([v6 containsObject:v13] & 1) == 0)
        {
          if ([v5 containsObject:v13])
          {
            v14 = [NSSUsageData createNSSUsageBundle:v12];
            v15 = v4;
          }

          else
          {
            v14 = [NSSUsageData createNSSUsageApp:v12];
            v15 = v42;
          }

          [v15 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v9);
  }

  v52[0] = @"Apps";
  v52[1] = @"Bundles";
  v53[0] = v42;
  v53[1] = v4;
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
  v23 = [v41 categories];
  v24 = [v22 initWithCapacity:{objc_msgSend(v23, "count")}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = [v41 categories];
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v43 + 1) + 8 * j);
        v31 = [v30 categoryIdentifier];
        [v24 setValue:v30 forKey:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
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

+ (id)newAppBundleFromAppBundleMsg:(id)a3
{
  v4 = a3;
  v5 = [NSSUsageDataAppBundle alloc];
  v6 = [v4 name];
  v7 = [v4 bundleIdentifier];
  v8 = [v4 bundleVersion];
  v9 = [v4 vendor];
  v10 = [v4 size];
  v11 = [a1 newSizeFromMsg:v10];
  v12 = [v4 supportsManualPurge];

  v13 = [(NSSUsageDataAppBundle *)v5 initWithName:v6 bundleIdentifier:v7 bundleVersion:v8 vendor:v9 size:v11 supportsPurge:v12];
  return v13;
}

+ (id)newAppBundleFromBundleUsageMsg:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 categories];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v17 + 1) + 8 * i) usageInBytes];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [NSSUsageDataAppBundle alloc];
  v11 = [v3 name];
  v12 = [v3 bundleIdentifier];
  v13 = [NSSSizeVector docsAndData:v7];
  v14 = -[NSSUsageDataAppBundle initWithName:bundleIdentifier:bundleVersion:vendor:size:supportsPurge:](v10, "initWithName:bundleIdentifier:bundleVersion:vendor:size:supportsPurge:", v11, v12, 0, 0, v13, [v3 purgeable]);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)newAppBundleFromAppUsageMsg:(id)a3
{
  v3 = a3;
  v4 = [NSSUsageDataAppBundle alloc];
  v5 = [v3 name];
  v6 = [v3 bundleIdentifier];
  v7 = [v3 bundleVersion];
  v8 = [v3 staticSizeInBytes];
  v9 = [v3 dynamicSizeInBytes];

  v10 = [NSSSizeVector fixed:v8 docsAndData:v9];
  v11 = [(NSSUsageDataAppBundle *)v4 initWithName:v5 bundleIdentifier:v6 bundleVersion:v7 vendor:0 size:v10 supportsPurge:0];

  return v11;
}

+ (id)newSizeFromMsg:(id)a3
{
  v3 = a3;
  v4 = [v3 fixed];
  v5 = [v3 docsAndData];
  v6 = [v3 purgeable];

  [NSSSizeVector fixed:v4 docsAndData:v5 purgeable:v6];
  return objc_claimAutoreleasedReturnValue();
}

+ (id)dedupeBundles:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
        v11 = [v10 bundleIdentifier];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = [v10 mergeWith:v12];
        v14 = [v10 bundleIdentifier];
        [v4 setObject:v13 forKeyedSubscript:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 allValues];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)newUsageDataFromUsageRespMsg:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v6 = [v4 appBundleUsages];
  v84 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v7 = v4;
  v85 = objc_opt_new();
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v8 = [v4 appBundleUsages];
  v9 = [v8 countByEnumeratingWithState:&v101 objects:v108 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [a1 newAppBundleFromAppBundleMsg:*(*(&v101 + 1) + 8 * i)];
        [v85 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v101 objects:v108 count:16];
    }

    while (v10);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v83 = v7;
  v14 = [v7 appUsages];
  v15 = [v14 countByEnumeratingWithState:&v97 objects:v107 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [a1 newAppBundleFromAppUsageMsg:*(*(&v97 + 1) + 8 * j)];
        [v85 addObject:v19];
        v20 = [v19 size];
        addToCategory(v84, @"CAT_APPS", [v20 userTotal]);
      }

      v16 = [v14 countByEnumeratingWithState:&v97 objects:v107 count:16];
    }

    while (v16);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v21 = [v83 bundleUsages];
  v22 = [v21 countByEnumeratingWithState:&v93 objects:v106 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v93 + 1) + 8 * v25);
        v27 = [a1 newAppBundleFromBundleUsageMsg:v26];
        [v85 addObject:v27];
        v28 = [v26 bundleIdentifier];
        if (legacyUsageBundleIdToCategory_onceToken != -1)
        {
          +[NSSUsageData(Proto) newUsageDataFromUsageRespMsg:];
        }

        v29 = [legacyUsageBundleIdToCategory_legacyBundleIdToNewBundleIdMap objectForKey:v28];
        if (!v29)
        {
          v29 = @"CAT_APPS";
        }

        v30 = [v27 size];
        addToCategory(v84, v29, [v30 userTotal]);

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v93 objects:v106 count:16];
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
  v41 = [v83 categories];
  v42 = [v40 initWithCapacity:{objc_msgSend(v41, "count")}];

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v43 = [v83 categories];
  v44 = [v43 countByEnumeratingWithState:&v89 objects:v105 count:16];
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
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v89 + 1) + 8 * k);
        v49 = [v48 categoryIdentifier];
        if (v49)
        {
          v50 = v49;
          v51 = [v48 size];

          if (v51)
          {
            v52 = [v48 categoryIdentifier];
            v53 = [v48 size];
            v54 = [a1 newSizeFromMsg:v53];
            addUsageSizeToCategory(v84, v52, v54);
          }
        }

        v55 = [v48 categoryIdentifier];
        if (v55)
        {
          v56 = v55;
          v57 = [v48 name];

          if (v57)
          {
            v58 = [v48 name];
            v59 = [v48 categoryIdentifier];
            [v42 setObject:v58 forKeyedSubscript:v59];
          }
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v89 objects:v105 count:16];
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
  v63 = [v83 capacityInBytes];
  v82 = v62;
  if ([v83 hasCapacityInBytes])
  {
    v64 = 0x27995C000;
    v81 = v63;
  }

  else
  {
    v65 = [v83 availableStorageInBytes];
    v81 = [v83 usedStorageInBytes] + v65;
    v64 = 0x27995C000uLL;
  }

  v66 = objc_alloc(*(v64 + 2792));
  v67 = [v83 usedStorageInBytes];
  v68 = [v83 availableStorageInBytes];
  [v83 usageTimeInSeconds];
  v70 = v69;
  [v83 standbyTimeInSeconds];
  v72 = v71;
  v73 = [v83 trusted];
  v74 = [v83 partiallyCharged];
  v75 = [a1 dedupeBundles:v85];
  LODWORD(v76) = v70;
  LODWORD(v77) = v72;
  v78 = [v66 initWithCapacity:v81 usedStorageInBytes:v67 available:v68 usageTimeInSeconds:v73 standbyTimeInSeconds:v74 trusted:v75 partiallyCharged:v76 appBundleUsage:v77 categories:v82];

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

+ (id)newMsgFromSize:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 docsAndData])
  {
    v5 = [v3 docsAndData];
    [v4 setDocsAndData:v5 & ~(v5 >> 63)];
  }

  if ([v3 fixed])
  {
    v6 = [v3 fixed];
    [v4 setFixed:v6 & ~(v6 >> 63)];
  }

  if ([v3 purgeable])
  {
    v7 = [v3 purgeable];
    [v4 setPurgeable:v7 & ~(v7 >> 63)];
  }

  return v4;
}

+ (id)newSizeCategoryMsgFrom:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 categoryIdentifier];
  [v5 setCategoryIdentifier:v6];

  v7 = [v4 name];
  [v5 setName:v7];

  v8 = [v4 size];

  v9 = [a1 newMsgFromSize:v8];
  [v5 setSize:v9];

  return v5;
}

+ (id)newAppBundleMsgFrom:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 bundleIdentifier];
  [v5 setBundleIdentifier:v6];

  v7 = [v4 bundleVersion];
  [v5 setBundleVersion:v7];

  [v5 setSupportsManualPurge:{objc_msgSend(v4, "supportsManualPurge")}];
  v8 = [v4 size];
  v9 = [a1 newMsgFromSize:v8];
  [v5 setSize:v9];

  v10 = [v4 name];

  [v5 setName:v10];
  return v5;
}

+ (id)newUsageRespMsgFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [NSSUsageData setUsageRespMsgFrom:v3 usageRespMsg:v4];

  return v4;
}

+ (id)setUsageRespMsgFrom:(id)a3 usageRespMsg:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 setCapacityInBytes:{objc_msgSend(v6, "capacityInBytes")}];
  [v7 setUsedStorageInBytes:{objc_msgSend(v6, "usedStorageInBytes")}];
  [v7 setAvailableStorageInBytes:{objc_msgSend(v6, "availableStorageInBytes")}];
  [v6 usageTimeInSeconds];
  [v7 setUsageTimeInSeconds:?];
  [v6 standbyTimeInSeconds];
  [v7 setStandbyTimeInSeconds:?];
  [v7 setTrusted:{objc_msgSend(v6, "trusted")}];
  [v7 setPartiallyCharged:{objc_msgSend(v6, "partiallyCharged")}];
  v8 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v6 categories];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [a1 newSizeCategoryMsgFrom:*(*(&v28 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  [v7 setCategories:v8];
  v15 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v6 appBundleUsage];
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [a1 newAppBundleMsgFrom:*(*(&v24 + 1) + 8 * j)];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  [v7 setAppBundleUsages:v15];
  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

@end