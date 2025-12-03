@interface HFDemoModeFaceRecognitionDataSource
- (HFDemoModeFaceRecognitionDataSource)init;
- (id)arrayFromPlistArray:(id)array;
@end

@implementation HFDemoModeFaceRecognitionDataSource

- (HFDemoModeFaceRecognitionDataSource)init
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HFDemoModeFaceRecognitionDataSource;
  v2 = [(HFDemoModeFaceRecognitionDataSource *)&v25 init];
  v3 = v2;
  if (v2)
  {
    recentsEntries = v2->_recentsEntries;
    v5 = MEMORY[0x277CBEBF8];
    v2->_recentsEntries = MEMORY[0x277CBEBF8];

    knownToHouseholdEntries = v3->_knownToHouseholdEntries;
    v3->_knownToHouseholdEntries = v5;

    v7 = +[HFUtilities demoModeDirectoryURL];
    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"FaceRecognition.plist" relativeToURL:v7];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v8 path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
      v13 = [v12 objectForKeyedSubscript:@"recentVisitors"];
      v14 = [v12 objectForKeyedSubscript:@"knownPersons"];
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v13 = 0;
    }

    if ([v13 count])
    {
      v15 = [(HFDemoModeFaceRecognitionDataSource *)v3 arrayFromPlistArray:v13];
      v16 = v3->_recentsEntries;
      v3->_recentsEntries = v15;

      v17 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(NSArray *)v3->_recentsEntries count];
        *buf = 134217984;
        v27 = v18;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu recents entries", buf, 0xCu);
      }
    }

    else
    {
      v17 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "No recents items found in plist at location %@", buf, 0xCu);
      }
    }

    if ([v14 count])
    {
      v19 = [(HFDemoModeFaceRecognitionDataSource *)v3 arrayFromPlistArray:v14];
      v20 = v3->_knownToHouseholdEntries;
      v3->_knownToHouseholdEntries = v19;

      v21 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(NSArray *)v3->_knownToHouseholdEntries count];
        *buf = 134217984;
        v27 = v22;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu known to household entries", buf, 0xCu);
      }
    }

    else
    {
      v21 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "No persons found in plist at location %@", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)arrayFromPlistArray:(id)array
{
  v41 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v31 = +[HFUtilities demoModeDirectoryURL];
  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = arrayCopy;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v33 = *v35;
    *&v5 = 138412290;
    v29 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v12 = [v11 objectForKeyedSubscript:@"displayName"];
        v13 = [v11 objectForKeyedSubscript:@"fileName"];
        v14 = [v11 objectForKeyedSubscript:@"secondsOffset"];
        if ([v13 length] || objc_msgSend(v12, "length"))
        {
          if ([v13 length])
          {
            v15 = MEMORY[0x277CBEA90];
            v16 = [MEMORY[0x277CBEBC0] URLWithString:v13 relativeToURL:v31];
            v17 = [v15 dataWithContentsOfURL:v16];

            v18 = MEMORY[0x277CBEAA8];
            if (v14)
            {
              [v14 doubleValue];
              [v18 dateWithTimeIntervalSinceNow:?];
            }

            else
            {
              [MEMORY[0x277CBEAA8] distantFuture];
            }
            v20 = ;
            if (v17)
            {
              v21 = objc_alloc(MEMORY[0x277CD1A30]);
              uUID = [MEMORY[0x277CCAD78] UUID];
              v19 = [v21 initWithUUID:uUID dataRepresentation:v17 dateCreated:v20 faceBoundingBox:{0.0, 0.0, 1.0, 1.0}];
            }

            else
            {
              uUID = HFLogForCategory(0x21uLL);
              if (os_log_type_enabled(uUID, OS_LOG_TYPE_ERROR))
              {
                *buf = v29;
                v39 = v13;
                _os_log_error_impl(&dword_20D9BF000, uUID, OS_LOG_TYPE_ERROR, "Filename %@ specified but no data was found for image", buf, 0xCu);
              }

              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v23 = objc_alloc(MEMORY[0x277CD1C70]);
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          v25 = [v23 initWithUUID:uUID2];

          [v25 setName:v12];
          v26 = [[HFDemoModeFaceRecognitionRecentsData alloc] initWithPerson:v25 faceCrop:v19];
          [v32 addObject:v26];
        }

        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v32;
}

@end