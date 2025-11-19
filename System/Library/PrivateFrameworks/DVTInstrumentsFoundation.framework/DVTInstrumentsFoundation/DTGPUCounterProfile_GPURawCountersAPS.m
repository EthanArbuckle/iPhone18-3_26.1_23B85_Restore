@interface DTGPUCounterProfile_GPURawCountersAPS
+ (id)create:(id)a3 profile:(unint64_t)a4;
- (BOOL)_validateAndConfigureRawCounters;
- (BOOL)start:(unint64_t)a3 vendorFeatures:(id)a4;
- (DTGPUCounterProfile_GPURawCountersAPS)initWithDevice:(id)a3 profile:(unint64_t)a4;
- (id)counterProfileForHost;
- (id)ringBufferCounts;
- (id)sampleSizes;
- (void)setAPSCounterConfig:(id)a3;
- (void)stop;
@end

@implementation DTGPUCounterProfile_GPURawCountersAPS

+ (id)create:(id)a3 profile:(unint64_t)a4
{
  v5 = a3;
  v6 = [[DTGPUCounterProfile_GPURawCountersAPS alloc] initWithDevice:v5 profile:a4];

  return v6;
}

- (DTGPUCounterProfile_GPURawCountersAPS)initWithDevice:(id)a3 profile:(unint64_t)a4
{
  v7 = a3;
  if ([v7 supportsFamily:1009])
  {
    v15.receiver = self;
    v15.super_class = DTGPUCounterProfile_GPURawCountersAPS;
    v8 = [(DTGPUCounterProfile *)&v15 initWithProfile:a4 device:v7];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    objc_storeStrong(&v8->_device, a3);
    v10 = v7;
    v11 = sub_247FFF4F0(v10);
    gpuConfig = v9->_gpuConfig;
    v9->_gpuConfig = v11;

    v13 = v9->_gpuConfig;
    if (!v13)
    {
      self = v9;
    }

    else
    {
LABEL_4:
      self = v9;
      v13 = self;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setAPSCounterConfig:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v4 = objc_opt_new();
  rdeSelects = self->_rdeSelects;
  self->_rdeSelects = v4;

  v6 = objc_opt_new();
  apsSelects = self->_apsSelects;
  v61 = self;
  self->_apsSelects = v6;

  v64 = [v60 objectForKeyedSubscript:@"RawCounterGRCs"];
  v8 = 0;
  memset(v85, 0, sizeof(v85));
  v86 = 1065353216;
  while (v8 < [v64 count])
  {
    v9 = [v64 objectAtIndexedSubscript:v8];
    v10 = [v9 objectForKeyedSubscript:@"Name"];
    v11 = v10;
    sub_247F85940(v79, [v10 UTF8String]);
    *__p = *v79;
    v12 = v80;
    v79[1] = 0;
    *&v80 = 0;
    v79[0] = 0;
    *&v83 = v12;
    *(&v83 + 1) = v8;
    sub_248002504(v85, __p);
    if (SBYTE7(v83) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v80) < 0)
    {
      operator delete(v79[0]);
    }

    ++v8;
  }

  *__p = 0u;
  v83 = 0u;
  v84 = 1065353216;
  *v79 = 0u;
  v80 = 0u;
  v81 = 1065353216;
  GRCReleaseAllCounterSourceGroup();
  v59 = GRCCopyAllCounterSourceGroup();
  if ([v59 count])
  {
    [v59 firstObject];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v58 = v76 = 0u;
    v13 = [v58 sourceList];
    v14 = [v13 countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v14)
    {
      v15 = *v76;
      obj = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v75 + 1) + 8 * i);
          v18 = [v17 name];
          v19 = [v18 hasPrefix:@"APS_USC"];

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v20 = [v17 availableCounters];
          v21 = [v20 countByEnumeratingWithState:&v71 objects:v87 count:16];
          if (v21)
          {
            v22 = *v72;
            if (v19)
            {
              v23 = __p;
            }

            else
            {
              v23 = v79;
            }

            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v72 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(*(&v71 + 1) + 8 * j) name];
                v26 = v25;
                sub_247F85940(&v68, [v25 UTF8String]);
                v27 = sub_247FF8CE4(v85, &v68);
                if (SHIBYTE(v70) < 0)
                {
                  operator delete(v68);
                }

                if (v27)
                {
                  sub_2480027C8(v23, v27 + 5);
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v71 objects:v87 count:16];
            }

            while (v21);
          }
        }

        v13 = obj;
        v14 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
      }

      while (v14);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    if (v80)
    {
      v28 = 0;
      v29 = v80;
      v30 = v61;
      do
      {
        ++v28;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      v28 = 0;
      v30 = v61;
    }

    sub_24800158C(&v68, 0, v80, 0, v28);
    v31 = 126 - 2 * __clz((v69 - v68) >> 3);
    if (v69 == v68)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    sub_2480017F0(v68, v69, v32, 1);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    if (v83)
    {
      v33 = 0;
      v34 = v83;
      do
      {
        ++v33;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      v33 = 0;
    }

    sub_24800158C(&v65, 0, v83, 0, v33);
    v35 = 126 - 2 * __clz((v66 - v65) >> 3);
    if (v66 == v65)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    sub_2480017F0(v65, v66, v36, 1);
    obja = [(NSDictionary *)v30->_gpuConfig objectForKeyedSubscript:@"RawCounterWidth"];
    v37 = v68;
    v38 = v69;
    if (v68 != v69)
    {
      do
      {
        v39 = [v64 objectAtIndexedSubscript:*v37];
        v40 = [v39 objectForKeyedSubscript:@"Name"];
        v41 = MEMORY[0x277CBEB38];
        v42 = [v39 objectForKeyedSubscript:@"Options"];
        v43 = [v41 dictionaryWithDictionary:v42];

        v44 = [obja objectForKeyedSubscript:v40];
        v45 = v44;
        v46 = &unk_285A36EB8;
        if (v44)
        {
          v46 = v44;
        }

        v47 = v46;

        [v43 setObject:v47 forKeyedSubscript:@"Width"];
        if (v40)
        {
          v48 = v61->_rdeSelects;
          v49 = [objc_alloc(MEMORY[0x277D0AF28]) initWithName:v40 options:v43];
          [(NSMutableArray *)v48 addObject:v49];
        }

        v37 += 8;
      }

      while (v37 != v38);
    }

    v50 = v65;
    v51 = v66;
    if (v65 != v66)
    {
      do
      {
        v52 = [v64 objectAtIndexedSubscript:*v50];
        v53 = [v52 objectForKeyedSubscript:@"Name"];
        v54 = [v52 objectForKeyedSubscript:@"Options"];
        if (v53)
        {
          v55 = v61->_apsSelects;
          v56 = [objc_alloc(MEMORY[0x277D0AF28]) initWithName:v53 options:v54];
          [(NSMutableArray *)v55 addObject:v56];
        }

        v50 += 8;
      }

      while (v50 != v51);
    }

    GRCReleaseAllCounterSourceGroup();

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }
  }

  sub_24800277C(v79);
  sub_24800277C(__p);
  sub_247FF8450(v85);

  v57 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateAndConfigureRawCounters
{
  if (![(NSMutableArray *)self->_apsSelects count]&& ![(NSMutableArray *)self->_rdeSelects count])
  {
    return 0;
  }

  if (!self->_sourceGroup)
  {
    GRCReleaseAllCounterSourceGroup();
    agxSource = GRCCopyAllCounterSourceGroup();
    if (![agxSource count])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v4 = [agxSource firstObject];
    sourceGroup = self->_sourceGroup;
    self->_sourceGroup = v4;
  }

  v6 = [[DTGPUAGXCounterSourceGroup alloc] initWithSourceGroup:self->_sourceGroup selects:self->_rdeSelects apsSelects:self->_apsSelects profile:[(DTGPUCounterProfile *)self profile]];
  agxSource = self->_agxSource;
  self->_agxSource = v6;
  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)start:(unint64_t)a3 vendorFeatures:(id)a4
{
  v6 = a4;
  if (!self->_sourceGroup)
  {
    goto LABEL_10;
  }

  v7 = [(NSDictionary *)self->_gpuConfig objectForKeyedSubscript:@"RDESampleInterval"];
  v8 = [v7 unsignedIntValue];

  v9 = v8;
  if (v8 <= a3)
  {
    v9 = a3;
  }

  v10 = v9 ? v9 : 50000;
  if ([(DTGPUAGXCounterSourceGroup *)self->_agxSource request:v10 vendorFeatures:v6]&& [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling])
  {
    [(DTGPUAGXCounterSourceGroup *)self->_agxSource resume];
    v11 = 1;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

- (void)stop
{
  if (self->_sourceGroup)
  {
    [(DTGPUAGXCounterSourceGroup *)self->_agxSource stop];
    [(GPURawCounterSourceGroup *)self->_sourceGroup stopSampling];
    sourceGroup = self->_sourceGroup;
    self->_sourceGroup = 0;

    GRCReleaseAllCounterSourceGroup();
  }
}

- (id)counterProfileForHost
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v46[0] = @"GPUConfigurationVariables";
  v4 = [(NSDictionary *)self->_gpuConfig objectForKeyedSubscript:?];
  v46[1] = @"AcceleratorID";
  v47[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MTLDevice registryID](self->_device, "registryID")}];
  v47[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  v33 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 apsConfig];
          v15 = [v14 toDictionary];
          [v7 setObject:v15 forKeyedSubscript:@"APSConfig"];

          v16 = MEMORY[0x277CCABB0];
          v17 = [v13 apsConfig];
          v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "countPeriod")}];
          [v7 setObject:v18 forKeyedSubscript:@"CountPeriod"];

          v19 = MEMORY[0x277CCABB0];
          v20 = [v13 apsConfig];
          v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "pulsePeriod")}];
          [v7 setObject:v21 forKeyedSubscript:@"PulsePeriod"];

          v22 = MEMORY[0x277CCABB0];
          v23 = [v13 apsConfig];
          v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "systemTimePeriod")}];
          [v7 setObject:v24 forKeyedSubscript:@"SystemTimePeriod"];
        }

        else
        {
          v13 = objc_opt_new();
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v25 = [v12 selects];
          v26 = [v25 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v26)
          {
            v27 = *v36;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v36 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = [*(*(&v35 + 1) + 8 * j) name];
                [v13 addObject:v29];
              }

              v26 = [v25 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v26);
          }

          [v33 addObject:v13];
        }
      }

      v8 = obj;
      v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  if (v33)
  {
    [v7 setObject:v33 forKeyedSubscript:@"RDERawCounters"];
  }

  v43 = v7;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)sampleSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = MEMORY[0x277CCABB0];
        v9 = [*(*(&v13 + 1) + 8 * i) selects];
        v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        [v3 addObject:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)ringBufferCounts
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = MEMORY[0x277CCABB0];
        v9 = [*(*(&v13 + 1) + 8 * i) source];
        v10 = [v8 numberWithUnsignedInt:{objc_msgSend(v9, "ringBufferNum")}];
        [v3 addObject:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end