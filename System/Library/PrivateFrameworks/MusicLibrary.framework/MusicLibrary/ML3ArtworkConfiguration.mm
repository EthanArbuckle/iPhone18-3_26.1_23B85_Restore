@interface ML3ArtworkConfiguration
+ (id)systemConfiguration;
- (ML3ArtworkConfiguration)initWithConfigurationDictionaries:(id)a3;
- (id)_supportedSizeKeysForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5;
- (id)sizesToAutogenerateForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5;
- (id)supportedSizesForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5;
@end

@implementation ML3ArtworkConfiguration

- (id)_supportedSizeKeysForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5
{
  if ((a4 - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_278762E90[a4 - 1];
  }

  if (a5 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278762EB8[a5];
  }

  v17 = v5;
  v18 = v6;
  artworkConfigurationDictionary = self->_artworkConfigurationDictionary;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__ML3ArtworkConfiguration__supportedSizeKeysForMediaType_artworkType_artworkVariantType___block_invoke;
  v12[3] = &unk_278762E70;
  v14 = v8;
  v15 = a5;
  v13 = v7;
  v16 = a3;
  v10 = [(NSDictionary *)artworkConfigurationDictionary keysOfEntriesPassingTest:v12];

  return v10;
}

uint64_t __89__ML3ArtworkConfiguration__supportedSizeKeysForMediaType_artworkType_artworkVariantType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"iPadOnly"];
  if ([v5 BOOLValue])
  {
    v6 = MSVDeviceIsiPad();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = [v4 objectForKeyedSubscript:@"visionProOnly"];
  if (![v7 BOOLValue])
  {

LABEL_9:
    v10 = [v4 objectForKeyedSubscript:@"supportedArtworkTypes"];
    if (![v10 containsObject:*(a1 + 32)])
    {
      v9 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v11 = [v4 objectForKeyedSubscript:@"supportedArtworkVariantTypes"];
    v12 = v11;
    if (v11)
    {
      if ([v11 containsObject:*(a1 + 40)])
      {
LABEL_12:
        [v4 objectForKeyedSubscript:@"supportedMediaTypes"];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = v22 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ((*(a1 + 56) & ML3ArtworkConfigurationMediaTypeForString(*(*(&v19 + 1) + 8 * i))) != 0)
              {
                v9 = 1;
                goto LABEL_25;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v9 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*(a1 + 48))
    {
      goto LABEL_12;
    }

    v9 = 0;
LABEL_26:

    goto LABEL_27;
  }

  IsROSDevice = MSVDeviceIsROSDevice();

  if (IsROSDevice)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = 0;
LABEL_28:

  return v9;
}

- (id)sizesToAutogenerateForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = [(ML3ArtworkConfiguration *)self _supportedSizeKeysForMediaType:*&a3 artworkType:a4 artworkVariantType:a5];
  v22 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_artworkConfigurationDictionary objectForKey:v12];
        v14 = [v13 objectForKey:@"autogenerate"];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          v26 = 0uLL;
          v16 = _ML3ArtworkConfigurationCGSizeFromString(v12);
          v23 = v17;
          v24 = v16;
          v26.f64[0] = v16;
          v26.f64[1] = v17;
          CGAffineTransformMakeScale(&v25, self->_mainScreenScale, self->_mainScreenScale);
          v26 = vmlaq_n_f64(vmulq_n_f64(*&v25.c, v23), *&v25.a, v24);
          v18 = [MEMORY[0x277CCAE60] valueWithBytes:&v26 objCType:"{CGSize=dd}"];
          [v22 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  if ([v22 count])
  {
    v19 = v22;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

- (id)supportedSizesForMediaType:(unsigned int)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5
{
  v7 = *&a3;
  v55 = *MEMORY[0x277D85DE8];
  v8 = [_ML3ArtworkConfigurationMediaArtworkTypeKey keyWithMediaType:"keyWithMediaType:artworkType:" artworkType:?];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__11056;
  v51 = __Block_byref_object_dispose__11057;
  v52 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ML3ArtworkConfiguration_supportedSizesForMediaType_artworkType_artworkVariantType___block_invoke;
  block[3] = &unk_278765F28;
  v46 = &v47;
  block[4] = self;
  v29 = v8;
  v45 = v29;
  dispatch_sync(accessQueue, block);
  v10 = v48[5];
  v11 = 0x277CBE000;
  if (!v10)
  {
    v12 = [(ML3ArtworkConfiguration *)self _supportedSizeKeysForMediaType:v7 artworkType:a4 artworkVariantType:a5];
    v13 = [MEMORY[0x277CBEB58] set];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    if (v14)
    {
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = _ML3ArtworkConfigurationCGSizeFromString(*(*(&v40 + 1) + 8 * i));
          v39 = 0uLL;
          v32 = v18;
          v33 = v17;
          CGAffineTransformMakeScale(&v38, 2.0, 2.0);
          v39 = vmlaq_n_f64(vmulq_n_f64(*&v38.c, v32), *&v38.a, v33);
          v37 = 0uLL;
          CGAffineTransformMakeScale(&v38, 3.0, 3.0);
          v37 = vmlaq_n_f64(vmulq_n_f64(*&v38.c, v32), *&v38.a, v33);
          v19 = [MEMORY[0x277CCAE60] valueWithBytes:&v39 objCType:"{CGSize=dd}"];
          v53[0] = v19;
          v20 = [MEMORY[0x277CCAE60] valueWithBytes:&v37 objCType:"{CGSize=dd}"];
          v53[1] = v20;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
          [v13 addObjectsFromArray:v21];
        }

        v14 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v14);
    }

    v22 = [v13 count];
    v23 = v13;
    if (!v22)
    {
      v23 = [MEMORY[0x277CBEB68] null];
    }

    objc_storeStrong(v48 + 5, v23);
    if (!v22)
    {
    }

    v24 = self->_accessQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__ML3ArtworkConfiguration_supportedSizesForMediaType_artworkType_artworkVariantType___block_invoke_2;
    v34[3] = &unk_278765F28;
    v34[4] = self;
    v35 = v29;
    v36 = &v47;
    dispatch_barrier_async(v24, v34);

    v10 = v48[5];
    v11 = 0x277CBE000uLL;
  }

  v25 = [*(v11 + 2920) null];
  if (v10 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v48[5];
  }

  v27 = v26;

  _Block_object_dispose(&v47, 8);

  return v27;
}

void __85__ML3ArtworkConfiguration_supportedSizesForMediaType_artworkType_artworkVariantType___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) supportedSizesCache];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __85__ML3ArtworkConfiguration_supportedSizesForMediaType_artworkType_artworkVariantType___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) supportedSizesCache];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (ML3ArtworkConfiguration)initWithConfigurationDictionaries:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ML3ArtworkConfiguration;
  v5 = [(ML3ArtworkConfiguration *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MusicLibrary.ML3ArtworkConfiguration", MEMORY[0x277D85CD8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    supportedSizesCache = v5->_supportedSizesCache;
    v5->_supportedSizesCache = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 mergeWithDictionary:{*(*(&v20 + 1) + 8 * v15++), v20}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    v16 = [v10 copy];
    artworkConfigurationDictionary = v5->_artworkConfigurationDictionary;
    v5->_artworkConfigurationDictionary = v16;

    MSVGetMaximumScreenScale();
    v5->_mainScreenScale = v18;
  }

  return v5;
}

+ (id)systemConfiguration
{
  if (systemConfiguration_onceToken != -1)
  {
    dispatch_once(&systemConfiguration_onceToken, &__block_literal_global_11077);
  }

  v3 = systemConfiguration___systemConfiguration;

  return v3;
}

void __46__ML3ArtworkConfiguration_systemConfiguration__block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MusicLibrary"];
  v0 = [v12 URLsForResourcesWithExtension:@"artworkConfig" subdirectory:0];
  v13 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v0;
  v1 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * i);
        v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
        v15 = 0;
        v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v15];
        v8 = v15;
        if (v8)
        {
          v9 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v21 = v5;
            v22 = 2114;
            v23 = v8;
            _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Error loading artwork configuration at %{public}@ : %{public}@", buf, 0x16u);
          }
        }

        else
        {
          [v13 addObject:v7];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v2);
  }

  v10 = [[ML3ArtworkConfiguration alloc] initWithConfigurationDictionaries:v13];
  v11 = systemConfiguration___systemConfiguration;
  systemConfiguration___systemConfiguration = v10;
}

@end