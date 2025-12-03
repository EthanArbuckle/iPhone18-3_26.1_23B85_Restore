@interface HFDemoModeAccessoryManager
+ (BOOL)isInternalAccessoryType:(id)type;
+ (id)_clipStartDateFromComponents:(id)components today:(id)today;
+ (id)_demoClipWithURL:(id)l duration:(double)duration cameraProfile:(id)profile;
+ (id)_eventsFromString:(id)string startDate:(id)date cameraProfile:(id)profile;
+ (id)accessoryWithContentsOfDictionary:(id)dictionary forHome:(id)home;
+ (id)clipsForCameraProfile:(id)profile;
+ (id)configurationProfileFromAccessoryType:(id)type;
+ (id)demoURLWithCamera:(id)camera fileName:(id)name extension:(id)extension;
+ (id)imageIconDescriptorFromDictionary:(id)dictionary;
+ (id)profileURLForDemoModeAccessoryName:(id)name;
+ (id)sharedManager;
- (HFDemoModeAccessoryManager)initWithNullValueSource:(id)source;
- (id)accessories;
- (void)dispatchUpdateMessageForAccessory:(id)accessory;
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

- (HFDemoModeAccessoryManager)initWithNullValueSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = HFDemoModeAccessoryManager;
  v6 = [(HFDemoModeAccessoryManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueSource, source);
    v8 = +[HFUtilities isAMac];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = defaultCenter;
    v11 = MEMORY[0x277D76768];
    if (v8)
    {
      v11 = MEMORY[0x277D76770];
    }

    [defaultCenter addObserver:v7 selector:sel_saveAccessories name:*v11 object:0];
  }

  return v7;
}

+ (BOOL)isInternalAccessoryType:(id)type
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"HomePod";
  v8[1] = @"HomePodMini";
  v8[2] = @"MediaSystem-HomePod";
  v8[3] = @"MediaSystem-HomePodMini";
  v8[4] = @"AppleTV";
  v8[5] = @"Generic";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v5 = [v3 arrayWithObjects:v8 count:6];
  LOBYTE(v3) = [v5 containsObject:typeCopy];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)configurationProfileFromAccessoryType:(id)type
{
  typeCopy = type;
  v5 = [self accessoryProfileName:typeCopy];
  v6 = [self isInternalAccessoryType:typeCopy];

  if ((v6 & 1) != 0 || ([self isValidExternalType:v5] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:self];
    v7 = [v8 URLForResource:v5 withExtension:@"plist"];
  }

  else
  {
    v7 = [self profileURLForDemoModeAccessoryName:v5];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];

  return v9;
}

+ (id)accessoryWithContentsOfDictionary:(id)dictionary forHome:(id)home
{
  homeCopy = home;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v9 = v8;
  v10 = @"Generic";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [self configurationProfileFromAccessoryType:v11];

  v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
  [v13 setValuesForKeysWithDictionary:dictionaryCopy];

  v14 = [HFDemoModeAccessory accessoryWithContentsOfDictionary:v13 forHome:homeCopy];

  return v14;
}

+ (id)profileURLForDemoModeAccessoryName:(id)name
{
  nameCopy = name;
  v4 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", nameCopy];

  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v7 = [nameCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

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
      selfCopy = self;
      v6 = +[HFHomeKitDispatcher sharedDispatcher];
      home = [v6 home];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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
            uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
            v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

            v16 = [MEMORY[0x277CBEBC0] URLWithString:v15 relativeToURL:v32];
            path = [v16 path];
            v18 = [defaultManager fileExistsAtPath:path];

            if (v18)
            {
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v16];
            }

            else
            {
              v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
              [v19 setObject:v15 forKeyedSubscript:@"fileName"];
            }

            v20 = [HFDemoModeAccessoryManager accessoryWithContentsOfDictionary:v19 forHome:home];
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
      allObjects = [v30 allObjects];
      v23 = [v21 arrayWithArray:allObjects];
      v24 = selfCopy->_demoAccessories;
      selfCopy->_demoAccessories = v23;

      v3 = [(NSArray *)selfCopy->_demoAccessories copy];
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
        applicationData = [v8 applicationData];
        v10 = [applicationData objectForKeyedSubscript:@"fileName"];

        v11 = [MEMORY[0x277CBEBC0] URLWithString:v10 relativeToURL:v3];
        applicationData2 = [v8 applicationData];
        dictionary = [applicationData2 dictionary];
        [dictionary writeToURL:v11 atomically:1];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)imageIconDescriptorFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"icon"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"type"];

  if ([HFDemoModeAccessoryManager isInternalAccessoryType:v5])
  {
    v6 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v4];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
    uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v11 = MEMORY[0x277CBEBC0];
    v12 = +[HFDemoModeAccessoryManager demoModeDirectoryURL];
    v13 = [v11 URLWithString:v10 relativeToURL:v12];

    path = [v13 path];
    v15 = [defaultManager fileExistsAtPath:path];

    v16 = [HFImageIconDescriptor alloc];
    v17 = v16;
    if (v15)
    {
      path2 = [v13 path];
      v6 = [(HFImageIconDescriptor *)v17 initWithDemoModeImageIdentifier:path2];
    }

    else
    {
      v6 = [(HFImageIconDescriptor *)v16 initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
    }
  }

  return v6;
}

- (void)dispatchUpdateMessageForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HFDemoModeAccessoryManager_dispatchUpdateMessageForAccessory___block_invoke;
  v6[3] = &unk_277DF27B8;
  v7 = accessoryCopy;
  v5 = accessoryCopy;
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

+ (id)demoURLWithCamera:(id)camera fileName:(id)name extension:(id)extension
{
  extensionCopy = extension;
  nameCopy = name;
  uuid = [camera uuid];
  uUIDString = [uuid UUIDString];

  extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.%@", uUIDString, nameCopy, extensionCopy];

  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [extensionCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  v14 = MEMORY[0x277CBEBC0];
  v15 = +[HFUtilities demoModeDirectoryURL];
  v16 = [v14 URLWithString:v13 relativeToURL:v15];

  return v16;
}

+ (id)clipsForCameraProfile:(id)profile
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  array = [MEMORY[0x277CBEB18] array];
  accessory = [profileCopy accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/clips", uUIDString];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  v11 = MEMORY[0x277CBEBC0];
  v12 = +[HFUtilities demoModeDirectoryURL];
  v13 = [v11 URLWithString:v10 relativeToURL:v12];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v30 = 0;
  v16 = [defaultManager contentsOfDirectoryAtPath:path error:&v30];
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

    v19 = array;
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__HFDemoModeAccessoryManager_clipsForCameraProfile___block_invoke;
    v25[3] = &unk_277DF27E0;
    v26 = v13;
    selfCopy = self;
    v27 = profileCopy;
    v20 = array;
    v28 = v20;
    [v16 enumerateObjectsUsingBlock:v25];
    [v20 sortUsingComparator:&__block_literal_global_67];
    v21 = v20;
  }

  v22 = *MEMORY[0x277D85DE8];

  return array;
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

+ (id)_demoClipWithURL:(id)l duration:(double)duration cameraProfile:(id)profile
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  profileCopy = profile;
  lastPathComponent = [lCopy lastPathComponent];
  v11 = [lastPathComponent stringByReplacingOccurrencesOfString:@".mov" withString:&stru_2824B1A78];

  v12 = [v11 componentsSeparatedByString:@"_"];
  if ([v12 count] > 3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v15 = [self _clipStartDateFromComponents:v12 today:date];
    v16 = v15;
    if (v15 && ([v15 timeIntervalSinceDate:date], v17 <= 0.0))
    {
      lastObject = [v12 lastObject];
      v18 = [self _eventsFromString:lastObject startDate:v16 cameraProfile:profileCopy];

      v14 = [objc_alloc(MEMORY[0x277CD19C8]) initWithClipURL:lCopy startDate:v16 duration:v18 significantEvents:duration];
      v20 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = lCopy;
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
        v26 = lCopy;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Invalid start date:%@ for url:%@. Unable to create demo clip.", &v23, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    date = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_20D9BF000, date, OS_LOG_TYPE_DEFAULT, "Invalid url:%@. Unable to create demo clip.", &v23, 0xCu);
    }

    v14 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_clipStartDateFromComponents:(id)components today:(id)today
{
  v5 = MEMORY[0x277CBEAA8];
  todayCopy = today;
  componentsCopy = components;
  hf_sharedCalendar = [v5 hf_sharedCalendar];
  v9 = [hf_sharedCalendar components:156 fromDate:todayCopy];

  v10 = [componentsCopy objectAtIndexedSubscript:0];
  [v9 setDay:{objc_msgSend(v9, "day") - objc_msgSend(v10, "integerValue")}];

  v11 = [componentsCopy objectAtIndexedSubscript:1];
  [v9 setHour:{objc_msgSend(v11, "integerValue")}];

  v12 = [componentsCopy objectAtIndexedSubscript:2];

  [v9 setMinute:{objc_msgSend(v12, "integerValue")}];
  v13 = [hf_sharedCalendar dateFromComponents:v9];

  return v13;
}

+ (id)_eventsFromString:(id)string startDate:(id)date cameraProfile:(id)profile
{
  stringCopy = string;
  dateCopy = date;
  profileCopy = profile;
  v10 = [MEMORY[0x277CBEB58] set];
  if ([stringCopy containsString:@"h"])
  {
    v11 = objc_alloc(MEMORY[0x277CD18F8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = [profileCopy uuid];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v11 initWithUniqueIdentifier:uUID reason:2 dateOfOccurrence:dateCopy confidenceLevel:100 cameraProfileUUID:uuid faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:uUID2];

    [v10 addObject:v15];
  }

  if ([stringCopy containsString:@"a"])
  {
    v16 = objc_alloc(MEMORY[0x277CD18F8]);
    uUID3 = [MEMORY[0x277CCAD78] UUID];
    uuid2 = [profileCopy uuid];
    uUID4 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v16 initWithUniqueIdentifier:uUID3 reason:3 dateOfOccurrence:dateCopy confidenceLevel:100 cameraProfileUUID:uuid2 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:uUID4];

    [v10 addObject:v20];
  }

  if ([stringCopy containsString:@"v"])
  {
    v21 = objc_alloc(MEMORY[0x277CD18F8]);
    uUID5 = [MEMORY[0x277CCAD78] UUID];
    uuid3 = [profileCopy uuid];
    uUID6 = [MEMORY[0x277CCAD78] UUID];
    v25 = [v21 initWithUniqueIdentifier:uUID5 reason:4 dateOfOccurrence:dateCopy confidenceLevel:100 cameraProfileUUID:uuid3 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:uUID6];

    [v10 addObject:v25];
  }

  if ([stringCopy containsString:@"p"])
  {
    v26 = objc_alloc(MEMORY[0x277CD18F8]);
    uUID7 = [MEMORY[0x277CCAD78] UUID];
    uuid4 = [profileCopy uuid];
    uUID8 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v26 initWithUniqueIdentifier:uUID7 reason:5 dateOfOccurrence:dateCopy confidenceLevel:100 cameraProfileUUID:uuid4 faceClassification:0 timeOffsetWithinClip:0.0 clipUUID:uUID8];

    [v10 addObject:v30];
  }

  return v10;
}

@end