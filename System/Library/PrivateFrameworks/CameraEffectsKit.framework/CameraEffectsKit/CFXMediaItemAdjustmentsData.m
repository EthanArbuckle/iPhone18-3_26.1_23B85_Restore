@interface CFXMediaItemAdjustmentsData
+ (NSSet)secureCodingClassWhitelist;
- (CFXMediaItemAdjustmentsData)initWithCameraMode:(int64_t)a3 metadataURL:(id)a4 cameraPosition:(int64_t)a5 effectStack:(id)a6;
- (CFXMediaItemAdjustmentsData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CFXMediaItemAdjustmentsData

+ (NSSet)secureCodingClassWhitelist
{
  if (secureCodingClassWhitelist_onceToken != -1)
  {
    +[CFXMediaItemAdjustmentsData secureCodingClassWhitelist];
  }

  v3 = secureCodingClassWhitelist_secureCodingClassWhitelist;

  return v3;
}

void __57__CFXMediaItemAdjustmentsData_secureCodingClassWhitelist__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = secureCodingClassWhitelist_secureCodingClassWhitelist;
  secureCodingClassWhitelist_secureCodingClassWhitelist = v2;
}

- (CFXMediaItemAdjustmentsData)initWithCameraMode:(int64_t)a3 metadataURL:(id)a4 cameraPosition:(int64_t)a5 effectStack:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CFXMediaItemAdjustmentsData;
  v13 = [(CFXMediaItemAdjustmentsData *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_cameraMode = a3;
    objc_storeStrong(&v13->_metadataURL, a4);
    objc_storeStrong(&v14->_effectStack, a6);
    v14->_cameraPosition = a5;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeInteger:-[CFXMediaItemAdjustmentsData cameraMode](self forKey:{"cameraMode"), @"cameraMode"}];
  v5 = [(CFXMediaItemAdjustmentsData *)self metadataURL];

  if (v5)
  {
    v6 = [(CFXMediaItemAdjustmentsData *)self metadataURL];
    [v4 encodeObject:v6 forKey:@"metadata"];
  }

  if ([(CFXMediaItemAdjustmentsData *)self cameraPosition])
  {
    [v4 encodeInteger:-[CFXMediaItemAdjustmentsData cameraPosition](self forKey:{"cameraPosition"), @"cameraPosition"}];
  }

  v7 = [(CFXMediaItemAdjustmentsData *)self effectStack];
  v8 = [v7 count];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = [(CFXMediaItemAdjustmentsData *)self effectStack];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(CFXMediaItemAdjustmentsData *)self effectStack];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v23 + 1) + 8 * v17);
          v22 = v18;
          v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:0 error:&v22];
          v15 = v22;

          if (v20)
          {
            [v11 addObject:v20];
          }

          else
          {
            v21 = JFXLog_core();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v28 = v15;
              _os_log_debug_impl(&dword_242A3B000, v21, OS_LOG_TYPE_DEBUG, "Error encoding effect: %{public}@", buf, 0xCu);
            }
          }

          ++v17;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v14);
    }

    [v4 encodeObject:v11 forKey:@"effectStack"];
  }
}

- (CFXMediaItemAdjustmentsData)initWithCoder:(id)a3
{
  v47[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"cameraMode"];
  v6 = [v4 decodeIntegerForKey:@"cameraPosition"];
  v7 = [v4 decodeObjectForKey:@"metadata"];
  v8 = MEMORY[0x277CBEB98];
  v47[0] = objc_opt_class();
  v47[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v10 = [v8 setWithArray:v9];
  v43 = 0;
  v11 = [v4 decodeTopLevelObjectOfClasses:v10 forKey:@"effectStack" error:&v43];
  v12 = v43;

  v13 = 0;
  if (v11 && !v12)
  {
    v31 = v6;
    v32 = v5;
    v33 = v7;
    v34 = self;
    v35 = v4;
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v11;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v17 = *MEMORY[0x277CCA308];
      do
      {
        v18 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v39 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x277CCAAC8]);
          v38 = 0;
          v21 = [v20 initForReadingFromData:v19 error:&v38];
          v22 = v38;
          v23 = +[CFXMediaItemAdjustmentsData secureCodingClassWhitelist];
          v37 = v22;
          v24 = [v21 decodeTopLevelObjectOfClasses:v23 forKey:v17 error:&v37];
          v25 = v37;

          [v21 finishDecoding];
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v24;
              [v26 setImageSequencePathToBundledAssets];
              [v26 setBuildInAnimation:1];
            }

            [v13 addObject:v24];
          }

          else
          {
            v27 = JFXLog_core();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v45 = v25;
              _os_log_debug_impl(&dword_242A3B000, v27, OS_LOG_TYPE_DEBUG, "Error decoding effects: %{public}@", buf, 0xCu);
            }
          }

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v15);
    }

    self = v34;
    v4 = v35;
    v5 = v32;
    v7 = v33;
    v11 = v30;
    v6 = v31;
    v12 = 0;
  }

  v28 = [(CFXMediaItemAdjustmentsData *)self initWithCameraMode:v5 metadataURL:v7 cameraPosition:v6 effectStack:v13];

  return v28;
}

@end