@interface DTGPUDataSource
- (BOOL)isEqual:(id)a3;
- (BOOL)run;
- (DTGPUDataSource)initWithMTLDevice:(id)a3 workQueue:(id)a4;
- (DTGPUDataSourceDelegate)delegate;
- (MTLDevice)device;
- (NSArray)supportedCounterProfiles;
- (NSDictionary)deviceInfoDict;
- (NSString)deviceName;
- (id).cxx_construct;
- (id)_queryDisplayInfoDict;
- (id)configure:(unsigned int)a3 interval:(unint64_t)a4 windowLimit:(unint64_t)a5;
- (id)currentConsistentGPUPerformanceState;
- (unint64_t)minSampleInterval;
- (unint64_t)timestampOfFirstSample;
- (void)_sampleCounters;
- (void)getRemainingData:(id)a3;
- (void)reset;
- (void)setAPSCounterConfig:(id)a3;
- (void)stop;
@end

@implementation DTGPUDataSource

- (DTGPUDataSource)initWithMTLDevice:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = DTGPUDataSource;
  v8 = [(DTGPUDataSource *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workQueue, a4);
    objc_storeWeak(&v9->_device, v6);
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(&v9->_device);
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = objc_loadWeakRetained(&v9->_device);
      v13 = [v12 baseObject];
      objc_storeWeak(&v9->_device, v13);
    }

    v9->_isAGXDevice = [v6 supportsFamily:1001];
    v14 = sub_247F7481C(v6);
    perfStateControl = v9->_perfStateControl;
    v9->_perfStateControl = v14;

    v9->_isAPS = 0;
  }

  return v9;
}

- (NSArray)supportedCounterProfiles
{
  p_supportedCounterProfiles = &self->_supportedCounterProfiles;
  supportedCounterProfiles = self->_supportedCounterProfiles;
  if (supportedCounterProfiles)
  {
LABEL_28:
    v5 = supportedCounterProfiles;
    goto LABEL_29;
  }

  v5 = objc_opt_new();
  if (!self->_isAGXDevice || (v6 = objc_loadWeakRetained(&self->_device), [DTGPUCounterProfile_GPURawCountersAPS create:v6 profile:13], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v11 = [DTGPUCounterProfile_GPUStats create:WeakRetained];

    if (v11)
    {
      [(NSArray *)v5 addObject:v11];
    }

    v12 = objc_loadWeakRetained(&self->_device);
    v13 = [DTGPUCounterProfile_GPURawCounters create:v12 profile:3];

    if (v13)
    {
      [(NSArray *)v5 addObject:v13];
    }

    v14 = objc_loadWeakRetained(&self->_device);
    v15 = [DTGPUCounterProfile_GPURawCounters create:v14 profile:4];

    if (v15)
    {
      [(NSArray *)v5 addObject:v15];
    }

    if (self->_isAGXDevice)
    {
      v16 = objc_loadWeakRetained(&self->_device);
      v17 = [DTGPUCounterProfile_GPURawCounters create:v16 profile:1];

      if (v17)
      {
        [(NSArray *)v5 addObject:v17];
      }

      v18 = objc_loadWeakRetained(&self->_device);
      v19 = [DTGPUCounterProfile_GPURawCounters create:v18 profile:2];

      if (v19)
      {
        [(NSArray *)v5 addObject:v19];
      }
    }

    else
    {
      v20 = [(DTGPUDataSource *)self device];
      v21 = [v20 vendorName];
      v19 = [v21 lowercaseString];

      if ([v19 rangeOfString:@"intel"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v19 rangeOfString:@"amd"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_loadWeakRetained(&self->_device);
          v23 = [DTGPUCounterProfile_GPURawCounters create:v22 profile:12];

          if (v23)
          {
            [(NSArray *)v5 addObject:v23];
          }
        }
      }

      else
      {
        for (i = 5; i != 12; ++i)
        {
          v25 = objc_loadWeakRetained(&self->_device);
          v26 = [DTGPUCounterProfile_GPURawCounters create:v25 profile:i];

          if (v26)
          {
            [(NSArray *)v5 addObject:v26];
          }
        }
      }
    }

    v27 = *p_supportedCounterProfiles;
    *p_supportedCounterProfiles = v5;

    supportedCounterProfiles = *p_supportedCounterProfiles;
    goto LABEL_28;
  }

  [(NSArray *)v5 addObject:v7];
  v8 = objc_loadWeakRetained(&self->_device);
  v9 = [DTGPUCounterProfile_GPURawCountersAPS create:v8 profile:14];

  if (v9)
  {
    [(NSArray *)v5 addObject:v9];
  }

  self->_isAPS = 1;
  objc_storeStrong(p_supportedCounterProfiles, v5);

LABEL_29:

  return v5;
}

- (void)setAPSCounterConfig:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Profile"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_supportedCounterProfiles;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = v11;
          if (!v5 || (v13 = [v11 profile], v13 == objc_msgSend(v5, "unsignedIntValue")))
          {
            [v12 setAPSCounterConfig:{v4, v15}];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)minSampleInterval
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_supportedCounterProfiles;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {

LABEL_13:
    v5 = 50000;
    goto LABEL_14;
  }

  v4 = *v11;
  v5 = -1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v11 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v10 + 1) + 8 * i) defaultSampleInterval];
      if (v5 >= v7)
      {
        v5 = v7;
      }
    }

    v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v3);

  if (v5 == -1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)deviceName
{
  if (self->_isImportAPS)
  {
    v2 = @"Import Device";
  }

  else
  {
    isAGXDevice = self->_isAGXDevice;
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v5 = WeakRetained;
    if (isAGXDevice)
    {
      [WeakRetained familyName];
    }

    else
    {
      [WeakRetained name];
    }
    v2 = ;
  }

  return v2;
}

- (NSDictionary)deviceInfoDict
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    v31 = objc_loadWeakRetained(&self->_device);
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [(DTGPUDataSource *)self supportedCounterProfiles];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "profile")}];
          [v4 addObject:v11];

          v12 = [v10 counterProfileForHost];
          [v5 addObject:v12];
        }

        v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v7);
    }

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v31, "sharedMemorySize")}];
    CFProperty = IORegistryEntryCreateCFProperty([v31 acceleratorPort], @"AGXTraceCodeVersion", 0, 0);
    v14 = @"0";
    if (CFProperty)
    {
      v14 = CFProperty;
    }

    v28 = v14;
    v36[0] = @"accelerator-id";
    v15 = MEMORY[0x277CCABB0];
    v30 = objc_loadWeakRetained(&self->_device);
    v26 = [v15 numberWithUnsignedLongLong:{objc_msgSend(v30, "registryID")}];
    v37[0] = v26;
    v36[1] = @"vendor-name";
    v27 = [v31 vendorName];
    v37[1] = v27;
    v36[2] = @"family-name";
    v16 = [v31 familyName];
    v37[2] = v16;
    v36[3] = @"product-name";
    v17 = [v31 productName];
    v37[3] = v17;
    v36[4] = @"device-name";
    v18 = [(DTGPUDataSource *)self deviceName];
    v37[4] = v18;
    v37[5] = v4;
    v36[5] = @"supported-counter-profiles";
    v36[6] = @"counter-profile-configs";
    v37[6] = v5;
    v36[7] = @"min-collection-interval";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DTGPUDataSource minSampleInterval](self, "minSampleInterval")}];
    v37[7] = v19;
    v37[8] = MEMORY[0x277CBEC28];
    v36[8] = @"headless";
    v36[9] = @"removable";
    v37[9] = MEMORY[0x277CBEC28];
    v37[10] = MEMORY[0x277CBEC28];
    v36[10] = @"low-power";
    v36[11] = @"recommended-max-working-set-size";
    v37[11] = v29;
    v36[12] = @"mobile";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAGXDevice];
    v37[12] = v20;
    v36[13] = @"displays";
    v21 = [(DTGPUDataSource *)self _queryDisplayInfoDict];
    v37[13] = v21;
    v37[14] = v28;
    v36[14] = @"agx-tracecode-version";
    v36[15] = @"perf-state";
    v22 = [(DTGPUDataSource *)self currentConsistentGPUPerformanceState];
    v37[15] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:16];
  }

  else
  {
    v23 = MEMORY[0x277CBEC10];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)configure:(unsigned int)a3 interval:(unint64_t)a4 windowLimit:(unint64_t)a5
{
  v47 = *MEMORY[0x277D85DE8];
  p_collectingProfile = &self->_collectingProfile;
  if (self->_collectingProfile)
  {
    v6 = 0;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = self->_supportedCounterProfiles;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v11)
    {
      v12 = *v43;
      v13 = a3;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          if ([v15 profile] == v13)
          {
            objc_storeStrong(p_collectingProfile, v15);
            goto LABEL_13;
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v16 = [(DTGPUCounterProfile *)*p_collectingProfile prepare];
    v17 = *p_collectingProfile;
    if (v16)
    {
      v17 = [(DTGPUCounterProfile *)*p_collectingProfile ringBufferCounts];
      v18 = [(DTGPUCounterProfile *)*p_collectingProfile sampleSizes];
      if ([v18 count] && objc_msgSend(v17, "count") && (v19 = objc_msgSend(v17, "count"), v19 == objc_msgSend(v18, "count")))
      {
        self->_windowLimit = a5;
        v20 = [(DTGPUCounterProfile *)self->_collectingProfile defaultSampleInterval];
        self->_sampleInterval = v20;
        collectingProfile = self->_collectingProfile;
        if (collectingProfile)
        {
          windowLimit = 1000000000;
          if (self->_windowLimit + 1 >= 2)
          {
            windowLimit = self->_windowLimit;
          }

          v23 = windowLimit / v20;
          if (v23 >= 0x4E20)
          {
            v23 = 20000;
          }

          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          begin = self->_sampleBuffers.__begin_;
          end = self->_sampleBuffers.__end_;
          p_sampleBuffers = &self->_sampleBuffers;
          while (end != begin)
          {
            end -= 3;
            v35[0] = end;
            sub_247FBF570(v35);
          }

          v31 = 0;
          self->_sampleBuffers.__end_ = begin;
          while (v31 < [v17 count])
          {
            memset(v41, 0, sizeof(v41));
            v32 = [v17 objectAtIndexedSubscript:v31];
            v33 = [v32 unsignedIntegerValue];

            for (; v33; --v33)
            {
              v34 = [v18 objectAtIndexedSubscript:v31];
              sub_247FBEB8C(v35, [v34 unsignedIntValue], v24);
              sub_247FBEB8C(&v38, 4, v24);

              sub_247FBCF0C(v41, v35);
              if (__p)
              {
                v40 = __p;
                operator delete(__p);
              }

              if (v36)
              {
                v37 = v36;
                operator delete(v36);
              }
            }

            sub_247FBCF4C(p_sampleBuffers, v41);
            v35[0] = v41;
            sub_247FBF570(v35);
            ++v31;
          }

          collectingProfile = *p_collectingProfile;
        }

        v6 = collectingProfile;
      }

      else
      {
        v28 = *p_collectingProfile;
        *p_collectingProfile = 0;

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      *p_collectingProfile = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)run
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_enableShaderProfiler)
  {
    [v3 setObject:&unk_285A36BD0 forKeyedSubscript:@"ShaderProfiler"];
  }

  apsConfig = self->_apsConfig;
  if (apsConfig)
  {
    [v4 setObject:apsConfig forKeyedSubscript:@"APSConfig"];
  }

  v6 = [(DTGPUCounterProfile *)self->_collectingProfile start:self->_sampleInterval vendorFeatures:v4];
  if (v6)
  {
    self->_stopTime = 0;
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FBD0EC;
    block[3] = &unk_278EF3100;
    objc_copyWeak(&v10, &location);
    block[4] = self;
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(DTGPUCounterProfile *)self->_collectingProfile stop];
  }

  return v6;
}

- (void)stop
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBD400;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)getRemainingData:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FBD500;
  v7[3] = &unk_278EF3178;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(workQueue, v7);
}

- (void)reset
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FBD978;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(workQueue, block);
  v4 = [(DTGPUDataSource *)self disableConsistentGPUPerformanceState];
}

- (void)_sampleCounters
{
  isAPS = self->_isAPS;
  collectingProfile = self->_collectingProfile;
  if (isAPS)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FBDAC0;
    v7[3] = &unk_278EF31A0;
    v7[4] = self;
    [(DTGPUCounterProfile *)collectingProfile sampleAPS:v7];
  }

  else
  {
    sampleInterval = self->_sampleInterval;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FBDB64;
    v6[3] = &unk_278EF31F0;
    v6[4] = self;
    [(DTGPUCounterProfile *)collectingProfile sampleCounters:sampleInterval callback:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DTGPUDataSource *)self device];
    v7 = [v5 device];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)timestampOfFirstSample
{
  begin = self->_sampleBuffers.__begin_;
  if (begin == self->_sampleBuffers.__end_)
  {
    return 0;
  }

  v3 = *begin;
  v4 = begin[1];
  if (*begin == v4)
  {
    return -1;
  }

  v6 = -1;
  do
  {
    v10 = 0;
    v11 = 0;
    windowLimit = self->_windowLimit;
    v8 = mach_absolute_time();
    sub_247FBE2B8(v3, windowLimit, v8, &v11, &v10);
    if (v11 && *v11 < v6)
    {
      v6 = *v11;
    }

    v3 += 14;
  }

  while (v3 != v4);
  return v6;
}

- (id)_queryDisplayInfoDict
{
  v69 = *MEMORY[0x277D85DE8];
  v33 = objc_opt_new();
  [MEMORY[0x277CD9E40] displays];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v2 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v2)
  {
    v3 = *v52;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v52 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v51 + 1) + 8 * i);
        if (([v5 isSupported] & 1) != 0 && objc_msgSend(v5, "displayType") != 3)
        {
          [v5 bounds];
          if (v6 != 0.0)
          {
            [v5 bounds];
            if (v7 != 0.0)
            {
              v8 = [v5 displayId];
              if ([v5 displayId])
              {
                v9 = [v5 displayId] - 1;
              }

              else
              {
                v9 = [v5 displayId];
              }

              v45 = [v5 displayType];
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v10 = [v5 availableModes];
              v11 = [v10 countByEnumeratingWithState:&v47 objects:v67 count:16];
              v43 = v9;
              v12 = 0;
              if (v11)
              {
                v13 = *v48;
                do
                {
                  for (j = 0; j != v11; ++j)
                  {
                    if (*v48 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    [*(*(&v47 + 1) + 8 * j) refreshRate];
                    v16 = vcvtpd_s64_f64(v15);
                    if (v12 <= v16)
                    {
                      v12 = v16;
                    }

                    else
                    {
                      v12 = v12;
                    }
                  }

                  v11 = [v10 countByEnumeratingWithState:&v47 objects:v67 count:16];
                }

                while (v11);
              }

              v56[0] = @"accelerator-id";
              v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
              v57 = v41;
              v56[1] = @"display-id";
              v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
              v56[2] = @"device-name";
              v42 = v58;
              if (v45)
              {
                v34 = [v5 deviceName];
                v17 = v34;
              }

              else
              {
                v17 = @"Built-In Display";
              }

              v59 = v17;
              v56[3] = @"framebuffer-index";
              v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v43];
              v60 = v44;
              v56[4] = @"pixel-width";
              v18 = MEMORY[0x277CCABB0];
              [v5 bounds];
              v40 = [v18 numberWithDouble:v19];
              v61 = v40;
              v56[5] = @"pixel-height";
              v20 = MEMORY[0x277CCABB0];
              [v5 bounds];
              v38 = [v20 numberWithDouble:v21];
              v62 = v38;
              v56[6] = @"resolution";
              v22 = MEMORY[0x277CCABB0];
              v39 = [v5 currentMode];
              v36 = [v22 numberWithUnsignedLong:{objc_msgSend(v39, "width")}];
              v55[0] = v36;
              v23 = MEMORY[0x277CCABB0];
              v37 = [v5 currentMode];
              v35 = [v23 numberWithUnsignedLong:{objc_msgSend(v37, "height")}];
              v55[1] = v35;
              v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
              v63 = v24;
              v56[7] = @"built-in";
              v25 = [MEMORY[0x277CCABB0] numberWithBool:v45 == 0];
              v64 = v25;
              v56[8] = @"max-refresh-rate";
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v12];
              v65 = v26;
              v56[9] = @"is-main-display";
              v27 = MEMORY[0x277CCABB0];
              v28 = [MEMORY[0x277CD9E40] mainDisplay];
              v29 = [v27 numberWithBool:v5 == v28];
              v66 = v29;
              v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:v56 count:10];

              if (v45)
              {
              }

              [v33 addObject:v30];
            }
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v2);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)currentConsistentGPUPerformanceState
{
  v2 = [(DTGPUPerformanceStateControl *)self->_perfStateControl currentState];
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

- (MTLDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (DTGPUDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end