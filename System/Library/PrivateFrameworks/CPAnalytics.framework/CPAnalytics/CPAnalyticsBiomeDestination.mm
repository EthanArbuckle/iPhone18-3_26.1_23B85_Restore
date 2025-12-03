@interface CPAnalyticsBiomeDestination
- (CPAnalyticsBiomeDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_baseSampleFromEvent:(id)event matcher:(id)matcher;
- (void)_donateGenerativeMemoryCreationWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donateMemoryCurationWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donateMemoryMoviePlayedWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donateMemorySharedWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donateMemoryViewedWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoDeleteEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoEditEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoEngagmentEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoFavoritesEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoSearchEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donatePhotoShareEventWithBaseSample:(id)sample andEvent:(id)event;
- (void)_donateSearchSessionyWithBaseSample:(id)sample andEvent:(id)event;
- (void)_dondateMemoryNotificationWithBaseSample:(id)sample andEvent:(id)event;
- (void)_sendBiomeEvent:(id)event matcher:(id)matcher;
- (void)_updateWithConfig:(id)config;
- (void)processEvent:(id)event;
@end

@implementation CPAnalyticsBiomeDestination

- (void)_donateSearchSessionyWithBaseSample:(id)sample andEvent:(id)event
{
  eventCopy = event;
  sampleCopy = sample;
  v6 = [eventCopy propertyForKey:@"searchQuery"];
  v7 = [eventCopy propertyForKey:@"presentedAssets"];
  v8 = objc_opt_new();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__CPAnalyticsBiomeDestination__donateSearchSessionyWithBaseSample_andEvent___block_invoke;
  v33[3] = &unk_278D61528;
  v9 = v8;
  v34 = v9;
  v30 = v7;
  [v7 enumerateObjectsUsingBlock:v33];
  v31 = [eventCopy propertyForKey:@"libraryPercentIndexed"];
  v10 = [eventCopy propertyForKey:@"librarySize"];

  v29 = v10;
  integerValue = [v10 integerValue];
  if (integerValue >= 500)
  {
    if (integerValue >= 0x7D0)
    {
      if (integerValue >> 3 >= 0x271)
      {
        v13 = integerValue >> 4;
        if (integerValue >> 4 >= 0x271)
        {
          if (integerValue >> 5 >= 0x271)
          {
            if (v13 >= 0x753)
            {
              if (integerValue >> 6 >= 0x271)
              {
                if (v13 >= 0xC35)
                {
                  if (integerValue >> 5 < 0xC35)
                  {
                    v12 = 9;
                  }

                  else
                  {
                    v12 = 10;
                  }
                }

                else
                {
                  v12 = 8;
                }
              }

              else
              {
                v12 = 7;
              }
            }

            else
            {
              v12 = 6;
            }
          }

          else
          {
            v12 = 5;
          }
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  regionCode = [currentLocale regionCode];
  v17 = BiomeLibrary();
  aeroML = [v17 AeroML];
  rawEvent = [aeroML RawEvent];
  photosSearchSession = [rawEvent PhotosSearchSession];

  source = [photosSearchSession source];
  v22 = objc_alloc(MEMORY[0x277CF0FC8]);
  LODWORD(v27) = v12;
  v23 = v6;
  v24 = [v22 initWithQueryRaw:v6 queryEmbedding:MEMORY[0x277CBEBF8] presentedAssets:v9 language:languageCode region:regionCode version:@"1.0" libraryProcessingProgress:v31 librarySizeBucket:v27];
  date = [sampleCopy date];

  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v24 timestamp:?];

  v26 = CPAnalyticsLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24260A000, v26, OS_LOG_TYPE_INFO, "[Biome][Donation][SearchSession] Sent a search session event", buf, 2u);
  }
}

void __76__CPAnalyticsBiomeDestination__donateSearchSessionyWithBaseSample_andEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CF0FD0];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v7 initWithAssetUUID:v6 rankingIndex:v8 cosDistance:0];

  [*(a1 + 32) addObject:v9];
}

- (void)_donatePhotoSearchEventWithBaseSample:(id)sample andEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v6 = [event propertyForKey:@"bundleIdentifier"];
  v7 = BiomeLibrary();
  photos = [v7 Photos];
  search = [photos Search];

  source = [search source];
  v11 = objc_alloc(MEMORY[0x277CF13F8]);
  identifier = [sampleCopy identifier];
  v13 = [v11 initWithIdentifier:identifier subset:v6 type:1];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v13 timestamp:?];

  v15 = CPAnalyticsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v18 = 138412290;
    v19 = identifier2;
    _os_log_impl(&dword_24260A000, v15, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Search] Sent a photo search event with uuid: %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoShareEventWithBaseSample:(id)sample andEvent:(id)event
{
  v28[9] = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v27[0] = @"PLActivityTypeUseAsWallpaper";
  v27[1] = @"com.apple.NanoTimeKit.CreateWatchFace";
  v28[0] = &unk_2854F1D18;
  v28[1] = &unk_2854F1D30;
  v27[2] = @"com.apple.Photos.actvity.AirPlay";
  v27[3] = @"com.apple.UIKit.activity.AirDrop";
  v28[2] = &unk_2854F1D48;
  v28[3] = &unk_2854F1D60;
  v27[4] = @"com.apple.DocumentManagerUICore.SaveToFiles";
  v27[5] = @"com.apple.UIKit.activity.AssignToContact";
  v28[4] = &unk_2854F1D78;
  v28[5] = &unk_2854F1D90;
  v27[6] = @"PUActivityTypeAddToAlbum";
  v27[7] = @"PLActivityTypeAlbumStream";
  v28[6] = &unk_2854F1DA8;
  v28[7] = &unk_2854F1DC0;
  v27[8] = @"PUActivityTypeHide";
  v28[8] = &unk_2854F1DD8;
  v6 = MEMORY[0x277CBEAC0];
  eventCopy = event;
  v8 = [v6 dictionaryWithObjects:v28 forKeys:v27 count:9];
  v9 = [eventCopy propertyForKey:@"activityType"];

  subset = [sampleCopy subset];

  if (subset)
  {
    intValue = 1;
  }

  else
  {
    v12 = [v8 objectForKey:v9];
    intValue = [v12 intValue];
  }

  v13 = BiomeLibrary();
  photos = [v13 Photos];
  share = [photos Share];

  source = [share source];
  v17 = objc_alloc(MEMORY[0x277CF1400]);
  identifier = [sampleCopy identifier];
  subset2 = [sampleCopy subset];
  v20 = [v17 initWithIdentifier:identifier subset:subset2 type:intValue];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v20 timestamp:?];

  v22 = CPAnalyticsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v25 = 138412290;
    v26 = identifier2;
    _os_log_impl(&dword_24260A000, v22, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Share] Sent a photo share event with uuid: %@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoFavoritesEventWithBaseSample:(id)sample andEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v6 = [event propertyForKey:@"cpa_media_ageInMinutes"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 > 0.0 && v8 < 2.0)
  {
    v10 = 1;
  }

  else if (v8 > 262800.0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v11 = BiomeLibrary();
  photos = [v11 Photos];
  favorite = [photos Favorite];

  source = [favorite source];
  v15 = objc_alloc(MEMORY[0x277CF13B8]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v18 = [v15 initWithIdentifier:identifier subset:subset type:v10];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v18 timestamp:?];

  v20 = CPAnalyticsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v23 = 138412290;
    v24 = identifier2;
    _os_log_impl(&dword_24260A000, v20, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Favorite] Sent a photo favorite event with uuid: %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoEngagmentEventWithBaseSample:(id)sample andEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v6 = [event propertyForKey:@"signpostDuration"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 > 0.0 && v8 < 1.0)
  {
    v13 = 1;
  }

  else
  {
    if (v8 >= 3.0 || v8 <= 2.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    if (v8 > 1.0 && v8 < 2.0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11;
    }
  }

  v14 = BiomeLibrary();
  photos = [v14 Photos];
  engagement = [photos Engagement];

  source = [engagement source];
  v18 = objc_alloc(MEMORY[0x277CF13B0]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v21 = [v18 initWithIdentifier:identifier subset:subset type:v13];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v21 timestamp:?];

  v23 = CPAnalyticsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v26 = 138412290;
    v27 = identifier2;
    _os_log_impl(&dword_24260A000, v23, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Engagement] Sent a photos engagement event with uuid: %@", &v26, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoEditEventWithBaseSample:(id)sample andEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v5 = BiomeLibrary();
  photos = [v5 Photos];
  edit = [photos Edit];

  source = [edit source];
  v9 = objc_alloc(MEMORY[0x277CF13A8]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v12 = [v9 initWithIdentifier:identifier subset:subset type:0];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v12 timestamp:?];

  v14 = CPAnalyticsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v17 = 138412290;
    v18 = identifier2;
    _os_log_impl(&dword_24260A000, v14, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Edit] Sent a photo edit event with uuid: %@", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoDeleteEventWithBaseSample:(id)sample andEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v6 = [event propertyForKey:@"cpa_media_ageInMinutes"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 > 0.0 && v8 < 2.0)
  {
    v10 = 1;
  }

  else if (v8 > 262800.0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v11 = BiomeLibrary();
  photos = [v11 Photos];
  delete = [photos Delete];

  source = [delete source];
  v15 = objc_alloc(MEMORY[0x277CF13A0]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v18 = [v15 initWithIdentifier:identifier subset:subset type:v10];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  [source sendEvent:v18 timestamp:?];

  v20 = CPAnalyticsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v23 = 138412290;
    v24 = identifier2;
    _os_log_impl(&dword_24260A000, v20, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Delete] Sent a photo delete event with uuid: %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_donateGenerativeMemoryCreationWithBaseSample:(id)sample andEvent:(id)event
{
  sampleCopy = sample;
  eventCopy = event;
  v7 = [eventCopy propertyForKey:@"isUserPromptUnSafe"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = CPAnalyticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "[Biome][Donation][MemoryCreation] No donation due to unsafe user prompt";
LABEL_11:
      _os_log_impl(&dword_24260A000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v11 = [eventCopy propertyForKey:@"doesRegionPolicyAllowDonation"];
  bOOLValue2 = [v11 BOOLValue];

  if (bOOLValue2)
  {
    v54 = sampleCopy;
    v13 = [eventCopy propertyForKey:@"cpa_media_uuid"];
    *buf = v13;
    v73 = [eventCopy propertyForKey:@"queryHasPerson"];
    v14 = [eventCopy propertyForKey:@"queryHasActivity"];
    v72 = v14;
    v15 = [eventCopy propertyForKey:@"queryHasTime"];
    v71 = v15;
    v70 = [eventCopy propertyForKey:@"queryHasLocation"];
    v53 = [eventCopy propertyForKey:@"queryHasTrip"];
    v69 = v53;
    v52 = [eventCopy propertyForKey:@"queryHasArtist"];
    v68 = v52;
    v51 = [eventCopy propertyForKey:@"queryHasSong"];
    v67 = v51;
    v50 = [eventCopy propertyForKey:@"queryHasGenre"];
    v66 = v50;
    v49 = [eventCopy propertyForKey:@"queryHasMood"];
    v65 = v49;
    v48 = [eventCopy propertyForKey:@"memoryIsGenerated"];
    v64 = v48;
    v47 = [eventCopy propertyForKey:@"sampledGlobalTraitsForFedStats"];
    v63 = v47;
    v46 = [eventCopy propertyForKey:@"sanitizedPrompt"];
    v62 = v46;
    v45 = [eventCopy propertyForKey:@"queryActivityEntities"];
    v61 = v45;
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];
    v60 = languageCode;

    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    regionCode = [currentLocale2 regionCode];
    v59 = regionCode;

    v19 = [eventCopy propertyForKey:@"memoryAssetCount"];
    integerValue = [v19 integerValue];

    if (integerValue <= 0x28)
    {
      if (((1 << integerValue) & 0x7FFFC000) != 0)
      {
        v22 = v15;
        v23 = v14;
        v24 = v13;
        v21 = 2;
        goto LABEL_16;
      }

      v21 = 1;
      if (((1 << integerValue) & 0x3FFE) != 0)
      {
        v22 = v15;
        v23 = v14;
        v24 = v13;
        goto LABEL_16;
      }

      if (((1 << integerValue) & 0x1FF80000000) != 0)
      {
        v22 = v15;
        v23 = v14;
        v24 = v13;
        v21 = 3;
        goto LABEL_16;
      }
    }

    v22 = v15;
    v23 = v14;
    v24 = v13;
    if (integerValue < 42)
    {
      v21 = 0;
      v58 = 0;
LABEL_17:
      v57 = &unk_2854F1D00;
      v25 = NSSelectorFromString(&cfstr_Initwithidenti.isa);
      v26 = [eventCopy propertyForKey:@"memoryPromptSuggestionSource"];
      integerValue2 = [v26 integerValue];

      if ([objc_opt_class() instancesRespondToSelector:v25])
      {
        if (integerValue2 <= 1)
        {
          sampleCopy = v54;
          if (!integerValue2)
          {
            v28 = 1;
            goto LABEL_39;
          }

          if (integerValue2 == 1)
          {
            v28 = 2;
            goto LABEL_39;
          }
        }

        else
        {
          sampleCopy = v54;
          switch(integerValue2)
          {
            case 2:
              v28 = 3;
              goto LABEL_39;
            case 3:
              v28 = 5;
              goto LABEL_39;
            case 4:
              v28 = 4;
LABEL_39:
              v56 = v28;
              goto LABEL_40;
          }
        }

        v56 = 0;
LABEL_40:
        v33 = [MEMORY[0x277CF13D8] instanceMethodSignatureForSelector:v25];
        v34 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v33];
        v35 = objc_alloc(MEMORY[0x277CF13D8]);
        [v34 setTarget:v35];
        [v34 setSelector:v25];
        [v34 setArgument:buf atIndex:2];
        [v34 setArgument:&v73 atIndex:3];
        [v34 setArgument:&v72 atIndex:4];
        [v34 setArgument:&v71 atIndex:5];
        [v34 setArgument:&v70 atIndex:6];
        [v34 setArgument:&v69 atIndex:7];
        [v34 setArgument:&v68 atIndex:8];
        [v34 setArgument:&v67 atIndex:9];
        [v34 setArgument:&v66 atIndex:10];
        [v34 setArgument:&v65 atIndex:11];
        [v34 setArgument:&v63 atIndex:12];
        [v34 setArgument:&v64 atIndex:13];
        [v34 setArgument:&v58 atIndex:14];
        [v34 setArgument:&v62 atIndex:15];
        [v34 setArgument:&v61 atIndex:16];
        [v34 setArgument:&v60 atIndex:17];
        [v34 setArgument:&v59 atIndex:18];
        [v34 setArgument:&v56 atIndex:19];
        [v34 setArgument:&v57 atIndex:20];
        [v34 invoke];
        *v55 = 0;
        [v34 getReturnValue:v55];
        v32 = *v55;

        if (v32)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v29 = v24;
      if (integerValue2 == 2)
      {
        v31 = 3;
        v56 = 3;
        v30 = v23;
      }

      else
      {
        v30 = v23;
        if (integerValue2 == 1)
        {
          v31 = 2;
          goto LABEL_31;
        }

        if (!integerValue2)
        {
          v31 = 1;
LABEL_31:
          v56 = v31;
          goto LABEL_34;
        }

        v31 = 0;
        v56 = 0;
      }

LABEL_34:
      LODWORD(v43) = v31;
      LODWORD(v42) = v21;
      v32 = [objc_alloc(MEMORY[0x277CF13D8]) initWithIdentifier:v29 queryContainsPersonEntity:v73 queryContainsActivityEntity:v30 queryContainsTimeEntity:v22 queryContainsLocationEntity:v70 queryContainsTripEntity:v53 queryContainsMusicArtist:v52 queryContainsMusicSong:v51 queryContainsMusicGenre:v50 queryContainsMusicMood:v49 globalTraits:v47 memoryGenerated:v48 memoryAssetCount:v42 rawPrompt:v46 queryActivityEntities:v45 language:languageCode region:regionCode memoryPromptSuggestionSource:v43];
      sampleCopy = v54;
      if (v32)
      {
LABEL_41:
        v36 = BiomeLibrary();
        photos = [v36 Photos];
        memoryCreation = [photos MemoryCreation];

        source = [memoryCreation source];
        date = [sampleCopy date];
        [date timeIntervalSinceReferenceDate];
        [source sendEvent:v32 timestamp:?];

        v41 = CPAnalyticsLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          _os_log_impl(&dword_24260A000, v41, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryCreation] Sent a memory creation event", v55, 2u);
        }
      }

LABEL_44:

      goto LABEL_45;
    }

    v21 = 4;
LABEL_16:
    v58 = v21;
    goto LABEL_17;
  }

  v9 = CPAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v10 = "[Biome][Donation][MemoryCreation] No donation due to region policy.";
    goto LABEL_11;
  }

LABEL_12:

LABEL_45:
}

- (void)_donateMemoryViewedWithBaseSample:(id)sample andEvent:(id)event
{
  sampleCopy = sample;
  eventCopy = event;
  v7 = [eventCopy propertyForKey:@"didPlayToEnd"];
  v8 = [eventCopy propertyForKey:@"maxPlayTime"];

  intValue = [v8 intValue];
  if (intValue >= 0x15)
  {
    if (intValue <= 21)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }
  }

  else
  {
    v10 = dword_24261E830[intValue];
  }

  identifier = [sampleCopy identifier];
  v12 = [objc_alloc(MEMORY[0x277CF13D0]) initWithIdentifier:identifier viewedDurationBucket:v10 watchedToEnd:v7];
  if (v12)
  {
    v13 = BiomeLibrary();
    photos = [v13 Photos];
    memories = [photos Memories];
    viewed = [memories Viewed];

    source = [viewed source];
    date = [sampleCopy date];
    [date timeIntervalSinceReferenceDate];
    [source sendEvent:v12 timestamp:?];

    v19 = CPAnalyticsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_24260A000, v19, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryViewed] Sent a memory viewed event", v20, 2u);
    }
  }
}

- (void)_donateMemorySharedWithBaseSample:(id)sample andEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v6 = [event propertyForKey:@"isThirdPartyShareDestination"];
  v7 = BiomeLibrary();
  photos = [v7 Photos];
  memories = [photos Memories];
  shared = [memories Shared];

  source = [shared source];
  v12 = objc_alloc(MEMORY[0x277CF13C8]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v15 = [v12 initWithIdentifier:identifier subset:subset isThirdPartyShareDestination:v6];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  v18 = v17;

  [source sendEvent:v15 timestamp:v18];
  v19 = CPAnalyticsLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v22 = 138412290;
    v23 = identifier2;
    _os_log_impl(&dword_24260A000, v19, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryShare] Sent a memory share event with uuid: %@", &v22, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_dondateMemoryNotificationWithBaseSample:(id)sample andEvent:(id)event
{
  v29 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  eventCopy = event;
  name = [eventCopy name];
  v8 = [name isEqualToString:@"com.apple.photos.CPAnalytics.memoryNotificationSeen"];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    name2 = [eventCopy name];
    v11 = [name2 isEqualToString:@"com.apple.photos.CPAnalytics.memoryNotificationResponded"];

    if (v11)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = BiomeLibrary();
  photos = [v12 Photos];
  memories = [photos Memories];
  notification = [memories Notification];

  source = [notification source];
  v17 = objc_alloc(MEMORY[0x277CF13E8]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v20 = [v17 initWithIdentifier:identifier subset:subset type:v9];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  v23 = v22;

  [source sendEvent:v20 timestamp:v23];
  v24 = CPAnalyticsLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v27 = 138412290;
    v28 = identifier2;
    _os_log_impl(&dword_24260A000, v24, OS_LOG_TYPE_INFO, "[Biome][Donation][Notifications] Sent a memory notifications event with uuid: %@", &v27, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_donateMemoryMoviePlayedWithBaseSample:(id)sample andEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  v5 = BiomeLibrary();
  photos = [v5 Photos];
  memories = [photos Memories];
  moviePlayed = [memories MoviePlayed];

  source = [moviePlayed source];
  v10 = objc_alloc(MEMORY[0x277CF13E0]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v13 = [v10 initWithIdentifier:identifier subset:subset];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  v16 = v15;

  [source sendEvent:v13 timestamp:v16];
  v17 = CPAnalyticsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v20 = 138412290;
    v21 = identifier2;
    _os_log_impl(&dword_24260A000, v17, OS_LOG_TYPE_INFO, "[Biome][Donation][MoviePlayed] Sent a movie played event with uuid: %@", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_donateMemoryCurationWithBaseSample:(id)sample andEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  eventCopy = event;
  name = [eventCopy name];
  v8 = [name isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionDeleted"];

  if (v8)
  {
    v9 = 4;
  }

  else
  {
    name2 = [eventCopy name];
    v11 = [name2 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionBlocked"];

    if (v11)
    {
      v9 = 3;
    }

    else
    {
      name3 = [eventCopy name];
      v13 = [name3 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionUnfavorited"];

      if (v13)
      {
        v9 = 2;
      }

      else
      {
        name4 = [eventCopy name];
        v9 = [name4 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionFavorited"];
      }
    }
  }

  v15 = BiomeLibrary();
  photos = [v15 Photos];
  memories = [photos Memories];
  curation = [memories Curation];

  source = [curation source];
  v20 = objc_alloc(MEMORY[0x277CF1398]);
  identifier = [sampleCopy identifier];
  subset = [sampleCopy subset];
  v23 = [v20 initWithIdentifier:identifier subset:subset type:v9];

  date = [sampleCopy date];
  [date timeIntervalSinceReferenceDate];
  v26 = v25;

  [source sendEvent:v23 timestamp:v26];
  v27 = CPAnalyticsLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    identifier2 = [sampleCopy identifier];
    v30 = 138412290;
    v31 = identifier2;
    _os_log_impl(&dword_24260A000, v27, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryCuration] Sent a memory curation event with uuid: %@", &v30, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendBiomeEvent:(id)event matcher:(id)matcher
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  matcherCopy = matcher;
  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    datasetName = [matcherCopy datasetName];
    v14 = 138412290;
    v15 = datasetName;
    _os_log_impl(&dword_24260A000, v8, OS_LOG_TYPE_INFO, "Enter with matcher %@", &v14, 0xCu);
  }

  datasetName2 = [matcherCopy datasetName];
  v11 = [(CPAnalyticsBiomeDestination *)self _baseSampleFromEvent:eventCopy matcher:matcherCopy];
  if ([(CPAnalyticsBiomeDestination *)self _datasetNameInMemoryCuration:datasetName2])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryCurationWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/memories/moviePlayed"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryMoviePlayedWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/memories/notification"])
  {
    [(CPAnalyticsBiomeDestination *)self _dondateMemoryNotificationWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 isEqualToString:@"/photos/memories/share"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemorySharedWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 isEqualToString:@"/photos/memories/viewed"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryViewedWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 isEqualToString:@"/photos/generativeMemory/create"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateGenerativeMemoryCreationWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/deletes"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoDeleteEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/edit"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoEditEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/engagement"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoEngagmentEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/favorites"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoFavoritesEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/share"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoShareEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/searchAsset"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoSearchEventWithBaseSample:v11 andEvent:eventCopy];
  }

  else if ([datasetName2 hasPrefix:@"/photos/searchSession"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateSearchSessionyWithBaseSample:v11 andEvent:eventCopy];
  }

  else
  {
    v12 = CPAnalyticsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = datasetName2;
      _os_log_error_impl(&dword_24260A000, v12, OS_LOG_TYPE_ERROR, "No donation method implemented for %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_baseSampleFromEvent:(id)event matcher:(id)matcher
{
  eventCopy = event;
  matcherCopy = matcher;
  identifierPropertyName = [matcherCopy identifierPropertyName];
  v8 = [eventCopy propertyForKey:identifierPropertyName];

  subsetPropertyName = [matcherCopy subsetPropertyName];
  subsetPropertyValue = [matcherCopy subsetPropertyValue];

  if (subsetPropertyName)
  {
    v11 = [eventCopy propertyForKey:subsetPropertyName];

    subsetPropertyValue = v11;
  }

  v12 = [CPAnalyticsBiomeBaseSample alloc];
  timestamp = [eventCopy timestamp];
  v14 = [(CPAnalyticsBiomeBaseSample *)v12 initWithIdentifier:v8 andDate:timestamp forSubset:subsetPropertyValue];

  return v14;
}

- (void)processEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  eventMatchers = [(CPAnalyticsBiomeDestination *)self eventMatchers];
  v6 = [eventMatchers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(eventMatchers);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 doesMatch:eventCopy])
      {
        [(CPAnalyticsBiomeDestination *)self _sendBiomeEvent:eventCopy matcher:v10];
        if (![v10 matchNextEvent])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [eventMatchers countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithConfig:(id)config
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [config objectForKeyedSubscript:@"events"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[CPAnalyticsCoreDuetEventMatcher alloc] initWithConfig:*(*(&v12 + 1) + 8 * v9)];
          if (v10)
          {
            [(NSMutableArray *)self->_eventMatchers addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsBiomeDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = CPAnalyticsBiomeDestination;
  v6 = [(CPAnalyticsBiomeDestination *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventMatchers = v6->_eventMatchers;
    v6->_eventMatchers = v7;

    [(CPAnalyticsBiomeDestination *)v6 _updateWithConfig:configCopy];
  }

  return v6;
}

@end