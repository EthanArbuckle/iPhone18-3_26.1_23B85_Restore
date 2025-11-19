@interface HFDemoModeAccessoryManager
+ (BOOL)isInternalAccessoryType:(id)a3;
+ (id)_clipStartDateFromComponents:(id)a3 today:(id)a4;
+ (id)_demoClipWithURL:(id)a3 duration:(double)a4 cameraProfile:(id)a5;
+ (id)_eventsFromString:(id)a3 startDate:(id)a4 cameraProfile:(id)a5;
+ (id)accessoryWithContentsOfDictionary:(id)a3 forHome:(id)a4;
+ (id)clipsForCameraProfile:(id)a3;
+ (id)configurationProfileFromAccessoryType:(id)a3;
+ (id)demoURLWithCamera:(id)a3 fileName:(id)a4 extension:(id)a5;
+ (id)imageIconDescriptorFromDictionary:(id)a3;
+ (id)profileURLForDemoModeAccessoryName:(id)a3;
+ (id)sharedManager;
- (HFDemoModeAccessoryManager)initWithNullValueSource:(id)a3;
- (id)accessories;
- (void)dispatchUpdateMessageForAccessory:(id)a3;
- (void)saveAccessories;
@end

@implementation HFDemoModeAccessoryManager

+ (id)sharedManager
{
  if (qword_280E02A60 != -1)
  {
    dispatch_once(&qword_280E02A60, &__block_literal_global);
  }

  v3 = _MergedGlobals_207;

  return v3;
}

void __43__HFDemoModeAccessoryManager_sharedManager__block_invoke()
{
  v2 = objc_alloc_init(HFNullValueSource);
  v0 = [[HFDemoModeAccessoryManager alloc] initWithNullValueSource:v2];
  v1 = _MergedGlobals_207;
  _MergedGlobals_207 = v0;
}

- (HFDemoModeAccessoryManager)initWithNullValueSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HFDemoModeAccessoryManager;
  v6 = [(HFDemoModeAccessoryManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueSource, a3);
    v8 = +[HFUtilities isAMac];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = v9;
    v11 = MEMORY[0x277D76768];
    if (v8)
    {
      v11 = MEMORY[0x277D76770];
    }

    [v9 addObserver:v7 selector:sel_saveAccessories name:*v11 object:0];
  }

  return v7;
}

+ (BOOL)isInternalAccessoryType:(id)a3
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"HomePod";
  v8[1] = @"HomePodMini";
  v8[2] = @"MediaSystem-HomePod";
  v8[3] = @"MediaSystem-HomePodMini";
  v8[4] = @"AppleTV";
  v8[5] = @"Generic";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 containsObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)configurationProfileFromAccessoryType:(id)a3
{
  v4 = a3;
  v5 = [a1 accessoryProfileName:v4];
  v6 = [a1 isInternalAccessoryType:v4];

  if ((v6 & 1) != 0 || ([a1 isValidExternalType:v5] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
    v7 = [v8 URLForResource:v5 withExtension:@"plist"];
  }

  else
  {
    v7 = [a1 profileURLForDemoModeAccessoryName:v5];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];

  return v9;
}

+ (id)accessoryWithContentsOfDictionary:(id)a3 forHome:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = v8;
  v10 = @"Generic";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [a1 configurationProfileFromAccessoryType:v11];

  v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
  [v13 setValuesForKeysWithDictionary:v7];

  v14 = [HFDemoModeAccessory accessoryWithContentsOfDictionary:v13 forHome:v6];

  return v14;
}

+ (id)profileURLForDemoModeAccessoryName:(id)a3
{
  v3 = a3;
  v4 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", v3];

  v6 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7 relativeToURL:v4];

  return v8;
}

- (id)accessories
{
  v40 = *MEMORY[0x277D85DE8];
  demoAccessories = self->_demoAccessories;
  if (demoAccessories)
  {
    v3 = demoAccessories;
  }

  else
  {
    v5 = CFPreferencesCopyAppValue(@"HFDemoModeAccessories", @"com.apple.Home");
    if (v5)
    {
      v27 = self;
      v6 = +[HFHomeKitDispatcher sharedDispatcher];
      v34 = [v6 home];

      v33 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = [MEMORY[0x277CBEB58] set];
      v32 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = v5;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v7)
      {
        v8 = v7;
        v31 = *v36;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v36 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v35 + 1) + 8 * i);
            v11 = [v10 objectForKeyedSubscript:@"name"];
            v12 = [v10 objectForKeyedSubscript:@"type"];
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.plist", v11, v12];
            v14 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
            v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v14];

            v16 = [MEMORY[0x277CBEBC0] URLWithString:v15 relativeToURL:v32];
            v17 = [v16 path];
            v18 = [v33 fileExistsAtPath:v17];

            if (v18)
            {
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v16];
            }

            else
            {
              v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
              [v19 setObject:v15 forKeyedSubscript:@"fileName"];
            }

            v20 = [HFDemoModeAccessoryManager accessoryWithContentsOfDictionary:v19 forHome:v34];
            if (v20)
            {
              [v30 addObject:v20];
            }
          }

          v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v8);
      }

      v21 = MEMORY[0x277CBEB18];
      v22 = [v30 allObjects];
      v23 = [v21 arrayWithArray:v22];
      v24 = v27->_demoAccessories;
      v27->_demoAccessories = v23;

      v3 = [(NSArray *)v27->_demoAccessories copy];
      v5 = v28;
    }

    else
    {
      v3 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)saveAccessories
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(HFDemoModeAccessoryManager *)self demoAccessories];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 applicationData];
        v10 = [v9 objectForKeyedSubscript:@"fileName"];

        v11 = [MEMORY[0x277CBEBC0] URLWithString:v10 relativeToURL:v3];
        v12 = [v8 applicationData];
        v13 = [v12 dictionary];
        [v13 writeToURL:v11 atomically:1];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)imageIconDescriptorFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"icon"];
  v5 = [v3 objectForKeyedSubscript:@"type"];

  if ([HFDemoModeAccessoryManager isInternalAccessoryType:v5])
  {
    v6 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v4];
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
    v9 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

    v11 = MEMORY[0x277CBEBC0];
    v12 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
    v13 = [v11 URLWithString:v10 relativeToURL:v12];

    v14 = [v13 path];
    v15 = [v7 fileExistsAtPath:v14];

    v16 = [HFImageIconDescriptor alloc];
    v17 = v16;
    if (v15)
    {
      v18 = [v13 path];
      v6 = [(HFImageIconDescriptor *)v17 initWithDemoModeImageIdentifier:v18];
    }

    else
    {
      v6 = [(HFImageIconDescriptor *)v16 initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
    }
  }

  return v6;
}

- (void)dispatchUpdateMessageForAccessory:(id)a3
{
  v3 = a3;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HFDemoModeAccessoryManager_dispatchUpdateMessageForAccessory___block_invoke;
  v6[3] = &unk_277DF27B8;
  v7 = v3;
  v5 = v3;
  [v4 dispatchAccessoryObserverMessage:v6 sender:0];
}

void __64__HFDemoModeAccessoryManager_dispatchUpdateMessageForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateDemoModeStateForAccessory:*(a1 + 32)];
  }
}

+ (id)demoURLWithCamera:(id)a3 fileName:(id)a4 extension:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 uuid];
  v10 = [v9 UUIDString];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.%@", v10, v8, v7];

  v12 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

  v14 = MEMORY[0x277CBEBC0];
  v15 = +[HFUtilities demoModeDirectoryURL];
  v16 = [v14 URLWithString:v13 relativeToURL:v15];

  return v16;
}

+ (id)clipsForCameraProfile:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/clips", v7];
  v9 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = MEMORY[0x277CBEBC0];
  v12 = +[HFUtilities demoModeDirectoryURL];
  v13 = [v11 URLWithString:v10 relativeToURL:v12];

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v13 path];
  v30 = 0;
  v16 = [v14 contentsOfDirectoryAtPath:v15 error:&v30];
  v17 = v30;

  if (v17)
  {
    v18 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Failure getting contents of directory:%@", buf, 0xCu);
    }

    v19 = v4;
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__HFDemoModeAccessoryManager_clipsForCameraProfile___block_invoke;
    v25[3] = &unk_277DF27E0;
    v26 = v13;
    v29 = a1;
    v27 = v3;
    v20 = v4;
    v28 = v20;
    [v16 enumerateObjectsUsingBlock:v25];
    [v20 sortUsingComparator:&__block_literal_global_67];
    v21 = v20;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

void __52__HFDemoModeAccessoryManager_clipsForCameraProfile___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", a2];
  v5 = [v3 URLByAppendingPathComponent:v4];

  v6 = [MEMORY[0x277CE63D8] assetWithURL:v5];
  v7 = v6;
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v8 = [*(a1 + 56) _demoClipWithURL:v5 duration:*(a1 + 40) cameraProfile:CMTimeGetSeconds(&time)];
  if (v8)
  {
    v9 = +[HFCameraImageManager sharedManager];
    [v9 generateDemoPosterFramesForAsset:v7 forClip:v8];

    [*(a1 + 48) addObject:v8];
  }
}

uint64_t __52__HFDemoModeAccessoryManager_clipsForCameraProfile___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_demoClipWithURL:(id)a3 duration:(double)a4 cameraProfile:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 lastPathComponent];
  v11 = [v10 stringByReplacingOccurrencesOfString:@".mov" withString:&stru_2824B1A78];

  v12 = [v11 componentsSeparatedByString:@"_"];
  if ([v12 count] > 3)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v15 = [a1 _clipStartDateFromComponents:v12 today:v13];
    v16 = v15;
    if (v15 && ([v15 timeIntervalSinceDate:v13], v17 <= 0.0))
    {
      v19 = [v12 lastObject];
      v18 = [a1 _eventsFromString:v19 startDate:v16 cameraProfile:v9];

      v14 = [objc_alloc(MEMORY[0x277CD19C8]) initWithClipURL:v8 startDate:v16 duration:v18 significantEvents:a4];
      v20 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Creating demo clip:%@ from path:%@", &v23, 0x16u);
      }
    }

    else
    {
      v18 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Invalid start date:%@ for url:%@. Unable to create demo clip.", &v23, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v13 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Invalid url:%@. Unable to create demo clip.", &v23, 0xCu);
    }

    v14 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_clipStartDateFromComponents:(id)a3 today:(id)a4
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 hf_sharedCalendar];
  v9 = [v8 components:156 fromDate:v6];

  v10 = [v7 objectAtIndexedSubscript:0];
  [v9 setDay:{objc_msgSend(v9, "day") - objc_msgSend(v10, "integerValue")}];

  v11 = [v7 objectAtIndexedSubscript:1];
  [v9 setHour:{objc_msgSend(v11, "integerValue")}];

  v12 = [v7 objectAtIndexedSubscript:2];

  [v9 setMinute:{objc_msgSend(v12, "integerValue")}];
  v13 = [v8 dateFromComponents:v9];

  return v13;
}

+ (id)_eventsFromString:(id)a3 startDate:(id)a4 cameraProfile:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB58] set];
  if ([v7 containsString:@"h"])
  {
    v11 = objc_alloc(MEMORY[0x277CD18F8]);
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v9 uuid];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v11 initWithUniqueIdentifier:v12 reason:2 dateOfOccurrence:v8 confidenceLevel:100 cameraProfileUUID:v13 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:v14];

    [v10 addObject:v15];
  }

  if ([v7 containsString:@"a"])
  {
    v16 = objc_alloc(MEMORY[0x277CD18F8]);
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v9 uuid];
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v16 initWithUniqueIdentifier:v17 reason:3 dateOfOccurrence:v8 confidenceLevel:100 cameraProfileUUID:v18 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:v19];

    [v10 addObject:v20];
  }

  if ([v7 containsString:@"v"])
  {
    v21 = objc_alloc(MEMORY[0x277CD18F8]);
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v9 uuid];
    v24 = [MEMORY[0x277CCAD78] UUID];
    v25 = [v21 initWithUniqueIdentifier:v22 reason:4 dateOfOccurrence:v8 confidenceLevel:100 cameraProfileUUID:v23 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:v24];

    [v10 addObject:v25];
  }

  if ([v7 containsString:@"p"])
  {
    v26 = objc_alloc(MEMORY[0x277CD18F8]);
    v27 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v9 uuid];
    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v26 initWithUniqueIdentifier:v27 reason:5 dateOfOccurrence:v8 confidenceLevel:100 cameraProfileUUID:v28 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:v29];

    [v10 addObject:v30];
  }

  return v10;
}

@end