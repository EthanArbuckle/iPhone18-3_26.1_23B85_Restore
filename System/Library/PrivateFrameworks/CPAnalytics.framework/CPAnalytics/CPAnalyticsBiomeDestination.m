@interface CPAnalyticsBiomeDestination
- (CPAnalyticsBiomeDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (id)_baseSampleFromEvent:(id)a3 matcher:(id)a4;
- (void)_donateGenerativeMemoryCreationWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donateMemoryCurationWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donateMemoryMoviePlayedWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donateMemorySharedWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donateMemoryViewedWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoDeleteEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoEditEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoEngagmentEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoFavoritesEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoSearchEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donatePhotoShareEventWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_donateSearchSessionyWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_dondateMemoryNotificationWithBaseSample:(id)a3 andEvent:(id)a4;
- (void)_sendBiomeEvent:(id)a3 matcher:(id)a4;
- (void)_updateWithConfig:(id)a3;
- (void)processEvent:(id)a3;
@end

@implementation CPAnalyticsBiomeDestination

- (void)_donateSearchSessionyWithBaseSample:(id)a3 andEvent:(id)a4
{
  v5 = a4;
  v28 = a3;
  v6 = [v5 propertyForKey:@"searchQuery"];
  v7 = [v5 propertyForKey:@"presentedAssets"];
  v8 = objc_opt_new();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__CPAnalyticsBiomeDestination__donateSearchSessionyWithBaseSample_andEvent___block_invoke;
  v33[3] = &unk_278D61528;
  v9 = v8;
  v34 = v9;
  v30 = v7;
  [v7 enumerateObjectsUsingBlock:v33];
  v31 = [v5 propertyForKey:@"libraryPercentIndexed"];
  v10 = [v5 propertyForKey:@"librarySize"];

  v29 = v10;
  v11 = [v10 integerValue];
  if (v11 >= 500)
  {
    if (v11 >= 0x7D0)
    {
      if (v11 >> 3 >= 0x271)
      {
        v13 = v11 >> 4;
        if (v11 >> 4 >= 0x271)
        {
          if (v11 >> 5 >= 0x271)
          {
            if (v13 >= 0x753)
            {
              if (v11 >> 6 >= 0x271)
              {
                if (v13 >= 0xC35)
                {
                  if (v11 >> 5 < 0xC35)
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

  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v14 languageCode];
  v16 = [v14 regionCode];
  v17 = BiomeLibrary();
  v18 = [v17 AeroML];
  v19 = [v18 RawEvent];
  v20 = [v19 PhotosSearchSession];

  v21 = [v20 source];
  v22 = objc_alloc(MEMORY[0x277CF0FC8]);
  LODWORD(v27) = v12;
  v23 = v6;
  v24 = [v22 initWithQueryRaw:v6 queryEmbedding:MEMORY[0x277CBEBF8] presentedAssets:v9 language:v15 region:v16 version:@"1.0" libraryProcessingProgress:v31 librarySizeBucket:v27];
  v25 = [v28 date];

  [v25 timeIntervalSinceReferenceDate];
  [v21 sendEvent:v24 timestamp:?];

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

- (void)_donatePhotoSearchEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"bundleIdentifier"];
  v7 = BiomeLibrary();
  v8 = [v7 Photos];
  v9 = [v8 Search];

  v10 = [v9 source];
  v11 = objc_alloc(MEMORY[0x277CF13F8]);
  v12 = [v5 identifier];
  v13 = [v11 initWithIdentifier:v12 subset:v6 type:1];

  v14 = [v5 date];
  [v14 timeIntervalSinceReferenceDate];
  [v10 sendEvent:v13 timestamp:?];

  v15 = CPAnalyticsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v5 identifier];
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_24260A000, v15, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Search] Sent a photo search event with uuid: %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoShareEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v28[9] = *MEMORY[0x277D85DE8];
  v5 = a3;
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
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v28 forKeys:v27 count:9];
  v9 = [v7 propertyForKey:@"activityType"];

  v10 = [v5 subset];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v8 objectForKey:v9];
    v11 = [v12 intValue];
  }

  v13 = BiomeLibrary();
  v14 = [v13 Photos];
  v15 = [v14 Share];

  v16 = [v15 source];
  v17 = objc_alloc(MEMORY[0x277CF1400]);
  v18 = [v5 identifier];
  v19 = [v5 subset];
  v20 = [v17 initWithIdentifier:v18 subset:v19 type:v11];

  v21 = [v5 date];
  [v21 timeIntervalSinceReferenceDate];
  [v16 sendEvent:v20 timestamp:?];

  v22 = CPAnalyticsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v5 identifier];
    v25 = 138412290;
    v26 = v23;
    _os_log_impl(&dword_24260A000, v22, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Share] Sent a photo share event with uuid: %@", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoFavoritesEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"cpa_media_ageInMinutes"];
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
  v12 = [v11 Photos];
  v13 = [v12 Favorite];

  v14 = [v13 source];
  v15 = objc_alloc(MEMORY[0x277CF13B8]);
  v16 = [v5 identifier];
  v17 = [v5 subset];
  v18 = [v15 initWithIdentifier:v16 subset:v17 type:v10];

  v19 = [v5 date];
  [v19 timeIntervalSinceReferenceDate];
  [v14 sendEvent:v18 timestamp:?];

  v20 = CPAnalyticsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v5 identifier];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_24260A000, v20, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Favorite] Sent a photo favorite event with uuid: %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoEngagmentEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"signpostDuration"];
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
  v15 = [v14 Photos];
  v16 = [v15 Engagement];

  v17 = [v16 source];
  v18 = objc_alloc(MEMORY[0x277CF13B0]);
  v19 = [v5 identifier];
  v20 = [v5 subset];
  v21 = [v18 initWithIdentifier:v19 subset:v20 type:v13];

  v22 = [v5 date];
  [v22 timeIntervalSinceReferenceDate];
  [v17 sendEvent:v21 timestamp:?];

  v23 = CPAnalyticsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v5 identifier];
    v26 = 138412290;
    v27 = v24;
    _os_log_impl(&dword_24260A000, v23, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Engagement] Sent a photos engagement event with uuid: %@", &v26, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoEditEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BiomeLibrary();
  v6 = [v5 Photos];
  v7 = [v6 Edit];

  v8 = [v7 source];
  v9 = objc_alloc(MEMORY[0x277CF13A8]);
  v10 = [v4 identifier];
  v11 = [v4 subset];
  v12 = [v9 initWithIdentifier:v10 subset:v11 type:0];

  v13 = [v4 date];
  [v13 timeIntervalSinceReferenceDate];
  [v8 sendEvent:v12 timestamp:?];

  v14 = CPAnalyticsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v4 identifier];
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&dword_24260A000, v14, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Edit] Sent a photo edit event with uuid: %@", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_donatePhotoDeleteEventWithBaseSample:(id)a3 andEvent:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"cpa_media_ageInMinutes"];
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
  v12 = [v11 Photos];
  v13 = [v12 Delete];

  v14 = [v13 source];
  v15 = objc_alloc(MEMORY[0x277CF13A0]);
  v16 = [v5 identifier];
  v17 = [v5 subset];
  v18 = [v15 initWithIdentifier:v16 subset:v17 type:v10];

  v19 = [v5 date];
  [v19 timeIntervalSinceReferenceDate];
  [v14 sendEvent:v18 timestamp:?];

  v20 = CPAnalyticsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v5 identifier];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_24260A000, v20, OS_LOG_TYPE_INFO, "[Biome][Donation][Photos][Delete] Sent a photo delete event with uuid: %@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_donateGenerativeMemoryCreationWithBaseSample:(id)a3 andEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 propertyForKey:@"isUserPromptUnSafe"];
  v8 = [v7 BOOLValue];

  if (v8)
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

  v11 = [v6 propertyForKey:@"doesRegionPolicyAllowDonation"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v54 = v5;
    v13 = [v6 propertyForKey:@"cpa_media_uuid"];
    *buf = v13;
    v73 = [v6 propertyForKey:@"queryHasPerson"];
    v14 = [v6 propertyForKey:@"queryHasActivity"];
    v72 = v14;
    v15 = [v6 propertyForKey:@"queryHasTime"];
    v71 = v15;
    v70 = [v6 propertyForKey:@"queryHasLocation"];
    v53 = [v6 propertyForKey:@"queryHasTrip"];
    v69 = v53;
    v52 = [v6 propertyForKey:@"queryHasArtist"];
    v68 = v52;
    v51 = [v6 propertyForKey:@"queryHasSong"];
    v67 = v51;
    v50 = [v6 propertyForKey:@"queryHasGenre"];
    v66 = v50;
    v49 = [v6 propertyForKey:@"queryHasMood"];
    v65 = v49;
    v48 = [v6 propertyForKey:@"memoryIsGenerated"];
    v64 = v48;
    v47 = [v6 propertyForKey:@"sampledGlobalTraitsForFedStats"];
    v63 = v47;
    v46 = [v6 propertyForKey:@"sanitizedPrompt"];
    v62 = v46;
    v45 = [v6 propertyForKey:@"queryActivityEntities"];
    v61 = v45;
    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v44 = [v16 languageCode];
    v60 = v44;

    v17 = [MEMORY[0x277CBEAF8] currentLocale];
    v18 = [v17 regionCode];
    v59 = v18;

    v19 = [v6 propertyForKey:@"memoryAssetCount"];
    v20 = [v19 integerValue];

    if (v20 <= 0x28)
    {
      if (((1 << v20) & 0x7FFFC000) != 0)
      {
        v22 = v15;
        v23 = v14;
        v24 = v13;
        v21 = 2;
        goto LABEL_16;
      }

      v21 = 1;
      if (((1 << v20) & 0x3FFE) != 0)
      {
        v22 = v15;
        v23 = v14;
        v24 = v13;
        goto LABEL_16;
      }

      if (((1 << v20) & 0x1FF80000000) != 0)
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
    if (v20 < 42)
    {
      v21 = 0;
      v58 = 0;
LABEL_17:
      v57 = &unk_2854F1D00;
      v25 = NSSelectorFromString(&cfstr_Initwithidenti.isa);
      v26 = [v6 propertyForKey:@"memoryPromptSuggestionSource"];
      v27 = [v26 integerValue];

      if ([objc_opt_class() instancesRespondToSelector:v25])
      {
        if (v27 <= 1)
        {
          v5 = v54;
          if (!v27)
          {
            v28 = 1;
            goto LABEL_39;
          }

          if (v27 == 1)
          {
            v28 = 2;
            goto LABEL_39;
          }
        }

        else
        {
          v5 = v54;
          switch(v27)
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
      if (v27 == 2)
      {
        v31 = 3;
        v56 = 3;
        v30 = v23;
      }

      else
      {
        v30 = v23;
        if (v27 == 1)
        {
          v31 = 2;
          goto LABEL_31;
        }

        if (!v27)
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
      v32 = [objc_alloc(MEMORY[0x277CF13D8]) initWithIdentifier:v29 queryContainsPersonEntity:v73 queryContainsActivityEntity:v30 queryContainsTimeEntity:v22 queryContainsLocationEntity:v70 queryContainsTripEntity:v53 queryContainsMusicArtist:v52 queryContainsMusicSong:v51 queryContainsMusicGenre:v50 queryContainsMusicMood:v49 globalTraits:v47 memoryGenerated:v48 memoryAssetCount:v42 rawPrompt:v46 queryActivityEntities:v45 language:v44 region:v18 memoryPromptSuggestionSource:v43];
      v5 = v54;
      if (v32)
      {
LABEL_41:
        v36 = BiomeLibrary();
        v37 = [v36 Photos];
        v38 = [v37 MemoryCreation];

        v39 = [v38 source];
        v40 = [v5 date];
        [v40 timeIntervalSinceReferenceDate];
        [v39 sendEvent:v32 timestamp:?];

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

- (void)_donateMemoryViewedWithBaseSample:(id)a3 andEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 propertyForKey:@"didPlayToEnd"];
  v8 = [v6 propertyForKey:@"maxPlayTime"];

  v9 = [v8 intValue];
  if (v9 >= 0x15)
  {
    if (v9 <= 21)
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
    v10 = dword_24261E830[v9];
  }

  v11 = [v5 identifier];
  v12 = [objc_alloc(MEMORY[0x277CF13D0]) initWithIdentifier:v11 viewedDurationBucket:v10 watchedToEnd:v7];
  if (v12)
  {
    v13 = BiomeLibrary();
    v14 = [v13 Photos];
    v15 = [v14 Memories];
    v16 = [v15 Viewed];

    v17 = [v16 source];
    v18 = [v5 date];
    [v18 timeIntervalSinceReferenceDate];
    [v17 sendEvent:v12 timestamp:?];

    v19 = CPAnalyticsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_24260A000, v19, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryViewed] Sent a memory viewed event", v20, 2u);
    }
  }
}

- (void)_donateMemorySharedWithBaseSample:(id)a3 andEvent:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 propertyForKey:@"isThirdPartyShareDestination"];
  v7 = BiomeLibrary();
  v8 = [v7 Photos];
  v9 = [v8 Memories];
  v10 = [v9 Shared];

  v11 = [v10 source];
  v12 = objc_alloc(MEMORY[0x277CF13C8]);
  v13 = [v5 identifier];
  v14 = [v5 subset];
  v15 = [v12 initWithIdentifier:v13 subset:v14 isThirdPartyShareDestination:v6];

  v16 = [v5 date];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  [v11 sendEvent:v15 timestamp:v18];
  v19 = CPAnalyticsLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v5 identifier];
    v22 = 138412290;
    v23 = v20;
    _os_log_impl(&dword_24260A000, v19, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryShare] Sent a memory share event with uuid: %@", &v22, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_dondateMemoryNotificationWithBaseSample:(id)a3 andEvent:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 name];
  v8 = [v7 isEqualToString:@"com.apple.photos.CPAnalytics.memoryNotificationSeen"];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 name];
    v11 = [v10 isEqualToString:@"com.apple.photos.CPAnalytics.memoryNotificationResponded"];

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
  v13 = [v12 Photos];
  v14 = [v13 Memories];
  v15 = [v14 Notification];

  v16 = [v15 source];
  v17 = objc_alloc(MEMORY[0x277CF13E8]);
  v18 = [v5 identifier];
  v19 = [v5 subset];
  v20 = [v17 initWithIdentifier:v18 subset:v19 type:v9];

  v21 = [v5 date];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  [v16 sendEvent:v20 timestamp:v23];
  v24 = CPAnalyticsLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v5 identifier];
    v27 = 138412290;
    v28 = v25;
    _os_log_impl(&dword_24260A000, v24, OS_LOG_TYPE_INFO, "[Biome][Donation][Notifications] Sent a memory notifications event with uuid: %@", &v27, 0xCu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_donateMemoryMoviePlayedWithBaseSample:(id)a3 andEvent:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BiomeLibrary();
  v6 = [v5 Photos];
  v7 = [v6 Memories];
  v8 = [v7 MoviePlayed];

  v9 = [v8 source];
  v10 = objc_alloc(MEMORY[0x277CF13E0]);
  v11 = [v4 identifier];
  v12 = [v4 subset];
  v13 = [v10 initWithIdentifier:v11 subset:v12];

  v14 = [v4 date];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  [v9 sendEvent:v13 timestamp:v16];
  v17 = CPAnalyticsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v4 identifier];
    v20 = 138412290;
    v21 = v18;
    _os_log_impl(&dword_24260A000, v17, OS_LOG_TYPE_INFO, "[Biome][Donation][MoviePlayed] Sent a movie played event with uuid: %@", &v20, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_donateMemoryCurationWithBaseSample:(id)a3 andEvent:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 name];
  v8 = [v7 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionDeleted"];

  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v10 = [v6 name];
    v11 = [v10 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionBlocked"];

    if (v11)
    {
      v9 = 3;
    }

    else
    {
      v12 = [v6 name];
      v13 = [v12 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionUnfavorited"];

      if (v13)
      {
        v9 = 2;
      }

      else
      {
        v14 = [v6 name];
        v9 = [v14 isEqualToString:@"com.apple.photos.CPAnalytics.assetCollectionFavorited"];
      }
    }
  }

  v15 = BiomeLibrary();
  v16 = [v15 Photos];
  v17 = [v16 Memories];
  v18 = [v17 Curation];

  v19 = [v18 source];
  v20 = objc_alloc(MEMORY[0x277CF1398]);
  v21 = [v5 identifier];
  v22 = [v5 subset];
  v23 = [v20 initWithIdentifier:v21 subset:v22 type:v9];

  v24 = [v5 date];
  [v24 timeIntervalSinceReferenceDate];
  v26 = v25;

  [v19 sendEvent:v23 timestamp:v26];
  v27 = CPAnalyticsLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v5 identifier];
    v30 = 138412290;
    v31 = v28;
    _os_log_impl(&dword_24260A000, v27, OS_LOG_TYPE_INFO, "[Biome][Donation][MemoryCuration] Sent a memory curation event with uuid: %@", &v30, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendBiomeEvent:(id)a3 matcher:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CPAnalyticsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 datasetName];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_24260A000, v8, OS_LOG_TYPE_INFO, "Enter with matcher %@", &v14, 0xCu);
  }

  v10 = [v7 datasetName];
  v11 = [(CPAnalyticsBiomeDestination *)self _baseSampleFromEvent:v6 matcher:v7];
  if ([(CPAnalyticsBiomeDestination *)self _datasetNameInMemoryCuration:v10])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryCurationWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/memories/moviePlayed"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryMoviePlayedWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/memories/notification"])
  {
    [(CPAnalyticsBiomeDestination *)self _dondateMemoryNotificationWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 isEqualToString:@"/photos/memories/share"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemorySharedWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 isEqualToString:@"/photos/memories/viewed"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateMemoryViewedWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 isEqualToString:@"/photos/generativeMemory/create"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateGenerativeMemoryCreationWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/deletes"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoDeleteEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/edit"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoEditEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/engagement"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoEngagmentEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/favorites"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoFavoritesEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/share"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoShareEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/searchAsset"])
  {
    [(CPAnalyticsBiomeDestination *)self _donatePhotoSearchEventWithBaseSample:v11 andEvent:v6];
  }

  else if ([v10 hasPrefix:@"/photos/searchSession"])
  {
    [(CPAnalyticsBiomeDestination *)self _donateSearchSessionyWithBaseSample:v11 andEvent:v6];
  }

  else
  {
    v12 = CPAnalyticsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_24260A000, v12, OS_LOG_TYPE_ERROR, "No donation method implemented for %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_baseSampleFromEvent:(id)a3 matcher:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 identifierPropertyName];
  v8 = [v5 propertyForKey:v7];

  v9 = [v6 subsetPropertyName];
  v10 = [v6 subsetPropertyValue];

  if (v9)
  {
    v11 = [v5 propertyForKey:v9];

    v10 = v11;
  }

  v12 = [CPAnalyticsBiomeBaseSample alloc];
  v13 = [v5 timestamp];
  v14 = [(CPAnalyticsBiomeBaseSample *)v12 initWithIdentifier:v8 andDate:v13 forSubset:v10];

  return v14;
}

- (void)processEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CPAnalyticsBiomeDestination *)self eventMatchers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 doesMatch:v4])
      {
        [(CPAnalyticsBiomeDestination *)self _sendBiomeEvent:v4 matcher:v10];
        if (![v10 matchNextEvent])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_updateWithConfig:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"events"];
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

- (CPAnalyticsBiomeDestination)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPAnalyticsBiomeDestination;
  v6 = [(CPAnalyticsBiomeDestination *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventMatchers = v6->_eventMatchers;
    v6->_eventMatchers = v7;

    [(CPAnalyticsBiomeDestination *)v6 _updateWithConfig:v5];
  }

  return v6;
}

@end