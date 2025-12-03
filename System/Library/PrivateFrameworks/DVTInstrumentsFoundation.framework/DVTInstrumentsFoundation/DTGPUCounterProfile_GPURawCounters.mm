@interface DTGPUCounterProfile_GPURawCounters
+ (id)_sourceNameFromProfile:(unint64_t)profile;
+ (id)_supportedProfileNameFromEnum:(unint64_t)enum vendor:(unsigned int)vendor;
+ (id)create:(id)create profile:(unint64_t)profile;
+ (unsigned)vendorFromDevice:(id)device;
- (BOOL)_validateAndConfigureRawCounters;
- (BOOL)start:(unint64_t)start vendorFeatures:(id)features;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device profile:(unint64_t)profile;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device sourceName:(id)name profile:(unint64_t)profile;
- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)profile;
- (id)counterProfileForHost;
- (id)ringBufferCounts;
- (id)sampleSizes;
- (void)_releaseCounterSource;
- (void)_releaseDataSource;
- (void)sampleCounters:(unint64_t)counters callback:(id)callback;
- (void)stop;
@end

@implementation DTGPUCounterProfile_GPURawCounters

+ (id)_supportedProfileNameFromEnum:(unint64_t)enum vendor:(unsigned int)vendor
{
  if (enum == 4)
  {
    if (vendor == 2)
    {
      return @"Set2";
    }

    else
    {
      return 0;
    }
  }

  else if (enum == 3 && vendor < 3)
  {
    return off_278EF4258[vendor];
  }

  else
  {
    return 0;
  }
}

+ (id)_sourceNameFromProfile:(unint64_t)profile
{
  if (profile - 5 > 8)
  {
    return 0;
  }

  else
  {
    return off_278EF4270[profile - 5];
  }
}

+ (id)create:(id)create profile:(unint64_t)profile
{
  createCopy = create;
  v6 = 0;
  if (profile <= 4)
  {
    if (profile - 3 < 2 || profile == 1)
    {
      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy profile:profile];
    }

    else
    {
      if (profile != 2)
      {
        goto LABEL_18;
      }

      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithLimitersProfile:createCopy];
    }

    goto LABEL_14;
  }

  if (profile - 5 >= 6)
  {
    if (profile == 12)
    {
      v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:12];
      if (!v7 || [DTGPUCounterProfile_GPURawCounters vendorFromDevice:createCopy]!= 1)
      {
        goto LABEL_5;
      }

      v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy sourceName:v7 profile:12];
LABEL_16:
      v6 = v9;
      goto LABEL_17;
    }

    if (profile != 13)
    {
      goto LABEL_18;
    }

    v8 = [[DTGPUCounterProfile_GPURawCountersAPS alloc] initWithProfile:13 device:createCopy];
LABEL_14:
    v6 = v8;
    goto LABEL_18;
  }

  v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:profile];
  if (v7 && ![DTGPUCounterProfile_GPURawCounters vendorFromDevice:createCopy])
  {
    v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:createCopy sourceName:v7 profile:profile];
    goto LABEL_16;
  }

LABEL_5:
  v6 = 0;
LABEL_17:

LABEL_18:

  return v6;
}

+ (unsigned)vendorFromDevice:(id)device
{
  deviceCopy = device;
  vendorName = [deviceCopy vendorName];
  lowercaseString = [vendorName lowercaseString];

  if ([deviceCopy supportsFamily:1001])
  {
    v6 = 2;
  }

  else if ([lowercaseString rangeOfString:@"intel"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([lowercaseString rangeOfString:@"amd"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device profile:(unint64_t)profile
{
  v158 = *MEMORY[0x277D85DE8];
  v148.receiver = self;
  v148.super_class = DTGPUCounterProfile_GPURawCounters;
  deviceCopy = device;
  v6 = [(DTGPUCounterProfile *)&v148 initWithProfile:profile device:?];
  p_isa = &v6->super.super.isa;
  v133 = v6;
  if (!v6)
  {
    goto LABEL_74;
  }

  objc_storeStrong(&v6->_device, device);
  p_isa = &v133->super.super.isa;
  v8 = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:deviceCopy];
  v133->_vendor = v8;
  if (profile != 1)
  {
    v114 = [DTGPUCounterProfile_GPURawCounters _supportedProfileNameFromEnum:profile vendor:v8];
    if (!v114 && v133->_vendor == 2)
    {
      goto LABEL_76;
    }

    v122 = deviceCopy;
    CFProperty = IORegistryEntryCreateCFProperty([v122 acceleratorPort], @"MetalPluginName", 0, 0);
    v121 = IORegistryEntryCreateCFProperty([v122 acceleratorPort], @"MetalStatisticsName", 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v121;
      if ([v9 count])
      {
        v134 = [v9 objectAtIndexedSubscript:0];
      }

      else
      {
        v134 = 0;
      }

      p_isa = &v133->super.super.isa;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_14:
        v134 = @"MetalStatistics";
LABEL_15:
        v116 = GRCCopyAllCounterSourceGroup();
        if ([v116 count])
        {
          firstObject = [v116 firstObject];
          v11 = MEMORY[0x277CBEB38];
          features = [firstObject features];
          v13 = [features objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];
          v14 = [v11 dictionaryWithDictionary:v13];
          v15 = p_isa[22];
          p_isa[22] = v14;

          p_isa = &v133->super.super.isa;
        }

        v16 = p_isa[22];
        if (!v16 || ![v16 count])
        {
          v17 = MEMORY[0x277CBEB38];
          v18 = IORegistryEntryCreateCFProperty([v122 acceleratorPort], @"GPUConfigurationVariable", 0, 0);
          v19 = [v17 dictionaryWithDictionary:v18];
          v20 = p_isa[22];
          p_isa[22] = v19;

          p_isa = &v133->super.super.isa;
        }

        GRCReleaseAllCounterSourceGroup();
        v21 = p_isa[22];
        v22 = v21;
        if (v21)
        {
          v130 = [v21 objectForKeyedSubscript:@"core_mask_list"];
          v23 = objc_opt_new();
          if (v130 && [v130 count])
          {
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v24 = v130;
            v25 = [v24 countByEnumeratingWithState:&v149 objects:v157 count:16];
            v26 = 0;
            if (v25)
            {
              v27 = *v150;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v150 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29.i32[0] = [*(*(&v149 + 1) + 8 * i) unsignedIntValue];
                  v30 = vcnt_s8(v29);
                  v30.i16[0] = vaddlv_u8(v30);
                  v31 = v30.i32[0];
                  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30.u32[0]];
                  [v23 addObject:v32];

                  v26 = (v31 + v26);
                }

                v25 = [v24 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v25);
            }

            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
            [v22 setObject:v33 forKeyedSubscript:@"num_cores"];

            [v22 setObject:v23 forKeyedSubscript:@"num_cores_per_ringbuffer"];
          }
        }

        if (!v133->_vendor)
        {
          name = [(MTLDevice *)v133->_device name];
          v35 = [name containsString:@"Iris"];

          if ([CFProperty rangeOfString:@"KBL"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(CFProperty, "rangeOfString:", @"SKL") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(CFProperty, "rangeOfString:", @"BDW") == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([CFProperty rangeOfString:@"HSW"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([CFProperty rangeOfString:@"ICL"] != 0x7FFFFFFFFFFFFFFFLL)
              {
                [(NSMutableDictionary *)v133->_gpuConfigurationVariables setObject:&unk_285A36DE0 forKeyedSubscript:@"EUCoreCount"];
              }

              goto LABEL_43;
            }

            v36 = MEMORY[0x277CCABB0];
            if (v35)
            {
              v37 = 40;
            }

            else
            {
              v37 = 20;
            }
          }

          else
          {
            v36 = MEMORY[0x277CCABB0];
            if (v35)
            {
              v37 = 48;
            }

            else
            {
              v37 = 24;
            }
          }

          v38 = [v36 numberWithInt:v37];
          [(NSMutableDictionary *)v133->_gpuConfigurationVariables setObject:v38 forKeyedSubscript:@"EUCoreCount"];
        }

LABEL_43:
        v39 = IORegistryEntryCreateCFProperty([v122 acceleratorPort], @"AGXInternalPerfCounterResourcesPath", 0, 0);
        v40 = v39;
        v41 = @"/AppleInternal/Library/AGX/Performance";
        if (v39)
        {
          v41 = v39;
        }

        v117 = v41;

        v42 = [(__CFString *)v117 stringByAppendingPathComponent:CFProperty];
        v156[0] = v42;
        cFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
        v156[1] = cFProperty;
        cFProperty2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/Contents/Resources", CFProperty];
        v156[2] = cFProperty2;
        v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        obj = v110;
        v45 = [obj countByEnumeratingWithState:&v144 objects:v155 count:16];
        if (v45)
        {
          v46 = 0;
          v47 = 0;
          v48 = *v145;
          while (2)
          {
            v49 = 0;
            v50 = v46;
            v51 = v47;
            do
            {
              if (*v145 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v52 = [*(*(&v144 + 1) + 8 * v49) stringByAppendingPathComponent:v134];
              v53 = [v52 stringByAppendingString:@"-counters.plist"];

              v54 = v53;
              v55 = [v52 stringByAppendingString:@"-derived.js"];

              v56 = v55;
              if ([defaultManager fileExistsAtPath:v54] && (objc_msgSend(defaultManager, "fileExistsAtPath:", v55) & 1) != 0)
              {
                v46 = v55;
                v47 = v54;
LABEL_60:

                goto LABEL_61;
              }

              v47 = [v54 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              v46 = [v56 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              if ([defaultManager fileExistsAtPath:v47] && objc_msgSend(defaultManager, "fileExistsAtPath:", v46))
              {
                goto LABEL_60;
              }

              ++v49;
              v50 = v46;
              v51 = v47;
            }

            while (v45 != v49);
            v45 = [obj countByEnumeratingWithState:&v144 objects:v155 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }

LABEL_61:
          v111 = v46;
          v115 = v47;

          v113 = 0;
          if (!v47)
          {
            goto LABEL_71;
          }

          v58 = v46;
          if (!v46)
          {
            goto LABEL_73;
          }

          if (![defaultManager fileExistsAtPath:v47] || !objc_msgSend(defaultManager, "fileExistsAtPath:", v46))
          {
            v113 = 0;
LABEL_73:

            p_isa = &v133->super.super.isa;
            if (v113)
            {
              goto LABEL_74;
            }

LABEL_76:
            v67 = 0;
            goto LABEL_75;
          }

          v107 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v47];
          v59 = [v107 objectForKeyedSubscript:@"DerivedCounters"];
          v109 = [v107 objectForKeyedSubscript:@"Instruments"];
          v60 = [v109 objectForKeyedSubscript:@"DefaultSamplingInterval"];
          unsignedIntegerValue = [v60 unsignedIntegerValue];

          v62 = 50;
          if (unsignedIntegerValue > 0x32)
          {
            v62 = unsignedIntegerValue;
          }

          [(DTGPUCounterProfile *)v133 setDefaultSampleInterval:1000 * v62];
          v63 = [v109 objectForKeyedSubscript:@"Profiles"];
          v108 = v63;
          if ([v63 count])
          {
            if (!v114 || ([v63 objectForKeyedSubscript:v114], v64 = objc_claimAutoreleasedReturnValue(), v65 = v64 == 0, v64, v65))
            {
              allKeys = [v63 allKeys];
              v71 = [allKeys objectAtIndexedSubscript:0];

              v66 = v71;
              v63 = v108;
            }

            else
            {
              v66 = v114;
            }

            v114 = v66;
            v72 = [v63 objectForKeyedSubscript:?];
            v73 = v72;
            if (v72)
            {
              v74 = [v72 objectForKeyedSubscript:@"DerivedCounters"];
              v113 = v74 != 0;
              if (v74)
              {
                v105 = v73;
                v106 = v74;
                v75 = [v73 objectForKeyedSubscript:@"Name"];
                [(DTGPUCounterProfile *)v133 setProfileName:v75];

                profileName = [(DTGPUCounterProfile *)v133 profileName];
                LODWORD(v75) = profileName == 0;

                if (v75)
                {
                  [(DTGPUCounterProfile *)v133 setProfileName:v114];
                }

                profileName2 = [(DTGPUCounterProfile *)v133 profileName];
                sourceName = v133->_sourceName;
                v133->_sourceName = profileName2;

                v79 = [v105 objectForKeyedSubscript:@"RawCounterWidth"];
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v112 = v106;
                v120 = [v112 countByEnumeratingWithState:&v140 objects:v154 count:16];
                if (v120)
                {
                  v119 = *v141;
                  do
                  {
                    for (j = 0; j != v120; ++j)
                    {
                      if (*v141 != v119)
                      {
                        objc_enumerationMutation(v112);
                      }

                      v80 = *(*(&v140 + 1) + 8 * j);
                      v132 = [v80 objectForKeyedSubscript:@"Name"];
                      v124 = [v80 objectForKeyedSubscript:@"GroupIndex"];
                      v125 = [v80 objectForKeyedSubscript:@"Multiplier"];
                      v81 = [v59 objectForKeyedSubscript:v132];
                      if (v81)
                      {
                        v128 = v81;
                        v123 = [v81 objectForKeyedSubscript:@"name"];
                        v82 = [DTGPUCounter alloc];
                        if (v123)
                        {
                          v83 = v123;
                        }

                        else
                        {
                          v83 = v132;
                        }

                        v131 = [(DTGPUCounter *)v82 initWithName:v83 maxValue:0];
                        v84 = [v128 objectForKeyedSubscript:@"description"];
                        [(DTGPUCounter *)v131 setCounterDescription:v84];

                        v85 = [v128 objectForKeyedSubscript:@"type"];
                        [(DTGPUCounter *)v131 setType:v85];

                        if (v124)
                        {
                          v86 = v131;
                          unsignedIntValue = [v124 unsignedIntValue];
                        }

                        else
                        {
                          unsignedIntValue = 0;
                          v86 = v131;
                        }

                        [(DTGPUCounter *)v86 setGroupIndex:unsignedIntValue];
                        if (v125)
                        {
                          unsignedIntValue2 = [v125 unsignedIntValue];
                        }

                        else
                        {
                          unsignedIntValue2 = 1;
                        }

                        [(DTGPUCounter *)v86 setMultiplier:unsignedIntValue2];
                        type = [(DTGPUCounter *)v86 type];
                        v90 = [type isEqualToString:@"Percentage"];

                        if (v90)
                        {
                          [(DTGPUCounter *)v131 setMaxValue:100];
                          [(DTGPUCounter *)v131 setMultiplier:100];
                        }

                        else
                        {
                          [(DTGPUCounter *)v131 setMaxValue:0x225C17D04];
                        }

                        [(DTGPUCounter *)v131 setFunctionName:v132];
                        v91 = objc_opt_new();
                        v92 = [v128 objectForKeyedSubscript:@"counters"];
                        v138 = 0u;
                        v139 = 0u;
                        v136 = 0u;
                        v137 = 0u;
                        v93 = v92;
                        v94 = [v93 countByEnumeratingWithState:&v136 objects:v153 count:16];
                        if (v94)
                        {
                          v95 = *v137;
                          do
                          {
                            for (k = 0; k != v94; ++k)
                            {
                              if (*v137 != v95)
                              {
                                objc_enumerationMutation(v93);
                              }

                              v97 = *(*(&v136 + 1) + 8 * k);
                              v98 = [v59 objectForKeyedSubscript:v97];
                              v99 = v98 == 0;

                              if (v99)
                              {
                                v100 = [v79 objectForKeyedSubscript:v97];
                                v101 = v100 == 0;

                                if (v101)
                                {
                                  unsignedIntValue3 = 32;
                                }

                                else
                                {
                                  v102 = [v79 objectForKeyedSubscript:v97];
                                  unsignedIntValue3 = [v102 unsignedIntValue];
                                }

                                v104 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:v97 width:unsignedIntValue3];
                                [v91 addObject:v104];
                              }
                            }

                            v94 = [v93 countByEnumeratingWithState:&v136 objects:v153 count:16];
                          }

                          while (v94);
                        }

                        [(DTGPUCounter *)v131 setRawCounters:v91];
                        [(DTGPUCounterProfile *)v133 addCounter:v131];

                        v81 = v128;
                      }
                    }

                    v120 = [v112 countByEnumeratingWithState:&v140 objects:v154 count:16];
                  }

                  while (v120);
                }

                [(DTGPUCounterProfile *)v133 setDerivedCounterScriptPath:v111];
                v73 = v105;
                v74 = v106;
              }
            }

            else
            {
              v113 = 0;
            }

            v63 = v108;
          }

          else
          {
            v113 = 0;
          }

          v57 = v107;
        }

        else
        {
          v115 = 0;
          v111 = 0;
          v113 = 0;
          v57 = obj;
        }

LABEL_71:
        v58 = v111;
        goto LABEL_73;
      }

      v134 = v121;
    }

    if (v134)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  [(DTGPUCounterProfile *)v133 setDefaultSampleInterval:10000, v8];
LABEL_74:
  v67 = p_isa;
LABEL_75:

  v68 = *MEMORY[0x277D85DE8];
  return v67;
}

- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)profile
{
  v52 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = DTGPUCounterProfile_GPURawCounters;
  profileCopy = profile;
  v3 = [(DTGPUCounterProfile *)&v50 initWithProfile:2 device:?];
  v44 = v3;
  if (v3)
  {
    v38 = profileCopy;
    v3->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v38];
    CFProperty = IORegistryEntryCreateCFProperty([v38 acceleratorPort], @"MetalPluginName", 0, 0);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    cFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
    v42 = [defaultManager enumeratorAtPath:cFProperty];

    nextObject = [v42 nextObject];
    if (nextObject)
    {
      while ([nextObject rangeOfString:@"MetalLimiters"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        nextObject2 = [v42 nextObject];

        nextObject = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_5;
        }
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = nextObject;
      v37 = [v7 stringWithFormat:@"/System/Library/Extensions/%@.bundle/%@", CFProperty, v8];
      v35 = v8;

      cFProperty2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/AGXMetalPerfCounters.plist", CFProperty];
      if ([defaultManager fileExistsAtPath:v37] && objc_msgSend(defaultManager, "fileExistsAtPath:", cFProperty2))
      {
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v37];
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:cFProperty2];
        v9 = [v34 objectForKeyedSubscript:@"Configuration"];
        v10 = [v9 objectForKeyedSubscript:@"Timer Interval (microseconds)"];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = 50;
        if (unsignedIntegerValue > 0x32)
        {
          v12 = unsignedIntegerValue;
        }

        [(DTGPUCounterProfile *)v44 setDefaultSampleInterval:1000 * v12];
        v13 = [v34 objectForKeyedSubscript:@"Profiles"];
        v14 = [v13 objectForKeyedSubscript:@"limiters"];
        v15 = [v14 objectForKeyedSubscript:@"Counters"];

        if (v15)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          obj = v15;
          v16 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v16)
          {
            v17 = *v47;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v47 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v46 + 1) + 8 * i);
                v20 = [v19 objectForKeyedSubscript:@"Name"];
                v21 = [v19 objectForKeyedSubscript:@"Width"];
                v22 = [v45 objectForKeyedSubscript:v20];
                if (v22)
                {
                  v23 = objc_opt_new();
                  v24 = [DTGPURawCounter_GPURawCounter alloc];
                  if (v21)
                  {
                    unsignedIntValue = [v21 unsignedIntValue];
                  }

                  else
                  {
                    unsignedIntValue = 32;
                  }

                  v26 = [(DTGPURawCounter_GPURawCounter *)v24 initWithName:v20 width:unsignedIntValue];
                  [v23 addObject:v26];

                  v27 = [[DTGPUCounter alloc] initWithName:v20 maxValue:0];
                  [(DTGPUCounter *)v27 setRawCounters:v23];
                  v28 = [v22 objectForKeyedSubscript:@"Description"];
                  v29 = v28;
                  if (v28)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = &stru_285A19CB8;
                  }

                  [(DTGPUCounter *)v27 setCounterDescription:v30];
                  [(DTGPUCounter *)v27 setFunctionName:v20];
                  [(DTGPUCounter *)v27 setMaxValue:0x7FFFFFFFLL];
                  [(DTGPUCounter *)v27 setMultiplier:1];
                  [(DTGPUCounter *)v27 setGroupIndex:1];
                  [(DTGPUCounterProfile *)v44 addCounter:v27];
                }
              }

              v16 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
            }

            while (v16);
          }

          [(DTGPUCounterProfile *)v44 setDerivedCounterScriptPath:0];
          v3 = v44;
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_5:
    }

    v31 = 0;
    goto LABEL_30;
  }

LABEL_27:
  v31 = v3;
LABEL_30:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)device sourceName:(id)name profile:(unint64_t)profile
{
  deviceCopy = device;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = DTGPUCounterProfile_GPURawCounters;
  v10 = [(DTGPUCounterProfile *)&v14 initWithProfile:profile device:deviceCopy];
  if (v10)
  {
    lowercaseString = [nameCopy lowercaseString];
    sourceName = v10->_sourceName;
    v10->_sourceName = lowercaseString;

    v10->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:deviceCopy];
    [(DTGPUCounterProfile *)v10 setDerivedCounterScriptPath:0];
    [(DTGPUCounterProfile *)v10 setDefaultSampleInterval:50000];
  }

  return v10;
}

- (BOOL)_validateAndConfigureRawCounters
{
  v159 = *MEMORY[0x277D85DE8];
  v96 = GRCCopyAllCounterSourceGroup();
  if (![v96 count])
  {
    goto LABEL_58;
  }

  selfCopy = self;
  if (self->_vendor != 2)
  {
    v146 = 0uLL;
    v147 = 0uLL;
    v144 = 0uLL;
    v145 = 0uLL;
    v104 = v96;
    v20 = [v104 countByEnumeratingWithState:&v144 objects:v158 count:16];
    if (v20)
    {
      v110 = *v145;
      do
      {
        v116 = 0;
        v107 = v20;
        do
        {
          if (*v145 != v110)
          {
            objc_enumerationMutation(v104);
          }

          v21 = *(*(&v144 + 1) + 8 * v116);
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          sourceList = [v21 sourceList];
          v23 = [sourceList countByEnumeratingWithState:&v140 objects:v157 count:16];
          v113 = v21;
          if (!v23)
          {
LABEL_36:

            goto LABEL_38;
          }

          v24 = *v141;
LABEL_30:
          v25 = 0;
          while (1)
          {
            if (*v141 != v24)
            {
              objc_enumerationMutation(sourceList);
            }

            v26 = *(*(&v140 + 1) + 8 * v25);
            name = [v26 name];
            lowercaseString = [name lowercaseString];
            lowercaseString2 = [(NSString *)selfCopy->_sourceName lowercaseString];
            v30 = [lowercaseString isEqualToString:lowercaseString2];

            if (v30)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [sourceList countByEnumeratingWithState:&v140 objects:v157 count:16];
              if (!v23)
              {
                goto LABEL_36;
              }

              goto LABEL_30;
            }
          }

          objc_storeStrong(&selfCopy->_sourceGroup, v113);
          objc_storeStrong(&selfCopy->_source, v26);

LABEL_38:
          if (selfCopy->_sourceGroup)
          {
            goto LABEL_41;
          }

          ++v116;
        }

        while (v116 != v107);
        v20 = [v104 countByEnumeratingWithState:&v144 objects:v158 count:16];
      }

      while (v20);
    }

LABEL_41:

    goto LABEL_51;
  }

  v138 = 0uLL;
  v139 = 0uLL;
  v136 = 0uLL;
  v137 = 0uLL;
  obj = v96;
  v3 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
  if (!v3)
  {
    v112 = 0;
    v115 = 0;
    v106 = 0;
    v109 = 0;
    goto LABEL_44;
  }

  v112 = 0;
  v115 = 0;
  v106 = 0;
  v109 = 0;
  v98 = *v137;
  do
  {
    v4 = 0;
    v99 = v3;
    do
    {
      if (*v137 != v98)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v136 + 1) + 8 * v4);
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      sourceList2 = [v5 sourceList];
      v6 = [sourceList2 countByEnumeratingWithState:&v132 objects:v155 count:16];
      v101 = v4;
      if (v6)
      {
        v7 = *v133;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v133 != v7)
            {
              objc_enumerationMutation(sourceList2);
            }

            v9 = *(*(&v132 + 1) + 8 * i);
            name2 = [v9 name];
            v11 = [name2 rangeOfString:@"RDE"] == 0;

            if (v11)
            {
              v15 = v106;
              v14 = v109;
              v17 = v112;
              v16 = v115;
              v106 = v9;
              v109 = v5;
LABEL_17:
              v18 = v9;

              v19 = v5;
              v112 = v17;
              v115 = v16;
              continue;
            }

            name3 = [v9 name];
            v13 = [name3 isEqualToString:@"Firmware"];

            v15 = v112;
            v14 = v115;
            v16 = v5;
            v17 = v9;
            if (v13)
            {
              goto LABEL_17;
            }
          }

          v6 = [sourceList2 countByEnumeratingWithState:&v132 objects:v155 count:16];
        }

        while (v6);
      }

      v4 = v101 + 1;
    }

    while ((v101 + 1) != v99);
    v3 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
  }

  while (v3);
LABEL_44:

  v31 = v106 ? v106 : v112;
  objc_storeStrong(&selfCopy->_source, v31);
  v32 = v106 ? v109 : v115;
  objc_storeStrong(&selfCopy->_sourceGroup, v32);

LABEL_51:
  if (!selfCopy->_sourceGroup || (source = selfCopy->_source) == 0)
  {
LABEL_58:
    v43 = 0;
    goto LABEL_59;
  }

  v34 = 0;
  memset(v130, 0, sizeof(v130));
  v131 = 1065353216;
  while (1)
  {
    availableCounters = [(GPURawCounterSource *)source availableCounters];
    v36 = [availableCounters count] > v34;

    if (!v36)
    {
      break;
    }

    availableCounters2 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
    v38 = [availableCounters2 objectAtIndexedSubscript:v34];

    counterValueType = [v38 counterValueType];
    name4 = [v38 name];
    v41 = name4;
    sub_247F85940(__p, [name4 UTF8String]);
    v148 = __p;
    v42 = sub_247FF84D8(v130, __p);
    *(v42 + 10) = v34;
    v42[6] = counterValueType;
    if (v154 < 0)
    {
      operator delete(*__p);
    }

    v34 = (v34 + 1);
    source = selfCopy->_source;
  }

  v46 = objc_opt_new();
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  counters = [(DTGPUCounterProfile *)selfCopy counters];
  v108 = [counters countByEnumeratingWithState:&v126 objects:v152 count:16];
  if (v108)
  {
    v105 = *v127;
    v47 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v108; j = j + 1)
      {
        if (*v127 != v105)
        {
          objc_enumerationMutation(counters);
        }

        v48 = *(*(&v126 + 1) + 8 * j);
        v34 = objc_opt_new();
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v111 = v48;
        rawCounters = [v48 rawCounters];
        v50 = [rawCounters countByEnumeratingWithState:&v122 objects:v151 count:16];
        if (v50)
        {
          v51 = *v123;
          do
          {
            for (k = 0; k != v50; ++k)
            {
              if (*v123 != v51)
              {
                objc_enumerationMutation(rawCounters);
              }

              v53 = *(*(&v122 + 1) + 8 * k);
              name5 = [v53 name];
              v55 = name5;
              sub_247F85940(__p, [name5 UTF8String]);
              v56 = sub_247FF8CE4(v130, __p);
              if (v154 < 0)
              {
                operator delete(*__p);
              }

              if (v56)
              {
                [v53 setCounterIdx:*(v56 + 10)];
                [v53 setValueType:v56[6]];
                [v46 addObject:v53];
                [v34 addObject:v53];
              }

              else if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                name6 = [v53 name];
                v58 = name6;
                uTF8String = [name6 UTF8String];
                *__p = 136315138;
                *&__p[4] = uTF8String;
                _os_log_impl(&dword_247F67000, v47, OS_LOG_TYPE_ERROR, "Failed to find counter: failed at %s", __p, 0xCu);
              }
            }

            v50 = [rawCounters countByEnumeratingWithState:&v122 objects:v151 count:16];
          }

          while (v50);
        }

        [v111 setRawCounters:v34];
      }

      v108 = [counters countByEnumeratingWithState:&v126 objects:v152 count:16];
    }

    while (v108);
  }

  if (selfCopy->_vendor != 2)
  {
    counters2 = [(DTGPUCounterProfile *)selfCopy counters];
    v61 = [counters2 count] == 0;

    if (v61)
    {
      for (m = 0; ; m = v82 + 1)
      {
        availableCounters3 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
        v82 = m;
        v83 = [availableCounters3 count] > m;

        if (!v83)
        {
          break;
        }

        availableCounters4 = [(GPURawCounterSource *)selfCopy->_source availableCounters];
        v85 = [availableCounters4 objectAtIndexedSubscript:v82];

        v86 = [DTGPURawCounter_GPURawCounter alloc];
        name7 = [v85 name];
        v88 = [(DTGPURawCounter_GPURawCounter *)v86 initWithName:name7 width:64];

        [(DTGPURawCounter_GPURawCounter *)v88 setCounterIdx:v82];
        -[DTGPURawCounter_GPURawCounter setValueType:](v88, "setValueType:", [v85 counterValueType]);
        [v46 addObject:v88];
        v89 = [DTGPUCounter alloc];
        name8 = [v85 name];
        v91 = [(DTGPUCounter *)v89 initWithName:name8 maxValue:0x7FFFFFFFLL];

        v150 = v88;
        v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];
        [(DTGPUCounter *)v91 setRawCounters:v92];

        v93 = [v85 description];
        if (v93)
        {
          v34 = [v85 description];
          v94 = v34;
        }

        else
        {
          v94 = &stru_285A19CB8;
        }

        [(DTGPUCounter *)v91 setCounterDescription:v94];
        if (v93)
        {
        }

        name9 = [v85 name];
        [(DTGPUCounter *)v91 setFunctionName:name9];

        [(DTGPUCounter *)v91 setMaxValue:0x7FFFFFFFLL];
        [(DTGPUCounter *)v91 setMultiplier:1];
        [(DTGPUCounter *)v91 setGroupIndex:1];
        [(DTGPUCounterProfile *)selfCopy addCounter:v91];
      }
    }
  }

  v62 = objc_opt_new();
  if (selfCopy->_vendor == 2)
  {
    v63 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_TIMESTAMP"];
    [v62 addObject:v63];

    v64 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_GPU_CYCLES"];
    [v62 addObject:v64];

    v65 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_ENCODER_ID"];
    [v62 addObject:v65];

    v66 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_KICK_TRACE_ID"];
    [v62 addObject:v66];

    v67 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:@"GRC_SAMPLE_TYPE"];
    [v62 addObject:v67];
  }

  allObjects = [v46 allObjects];
  [v62 addObjectsFromArray:allObjects];

  selfCopy->_gpuTimeIndex = -1;
  if (selfCopy->_vendor)
  {
    selfCopy->_gpuTimeIndex = 0;
    goto LABEL_87;
  }

  [v62 sortUsingComparator:&unk_285A18F60];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = sub_247FF68F4;
  v121[3] = &unk_278EF4210;
  v121[4] = selfCopy;
  [v62 enumerateObjectsUsingBlock:v121];
  if (selfCopy->_gpuTimeIndex == -1)
  {
    v43 = 0;
  }

  else
  {
LABEL_87:
    objc_storeStrong(&selfCopy->_rawCounters, v62);
    v69 = objc_opt_new();
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v70 = selfCopy->_rawCounters;
    v71 = [(NSArray *)v70 countByEnumeratingWithState:&v117 objects:v149 count:16];
    if (v71)
    {
      v72 = *v118;
      do
      {
        for (n = 0; n != v71; ++n)
        {
          if (*v118 != v72)
          {
            objc_enumerationMutation(v70);
          }

          rawCounterSelect = [*(*(&v117 + 1) + 8 * n) rawCounterSelect];
          [v69 addObject:rawCounterSelect];
        }

        v71 = [(NSArray *)v70 countByEnumeratingWithState:&v117 objects:v149 count:16];
      }

      while (v71);
    }

    if (selfCopy->_vendor == 2)
    {
      v75 = [DTGPUAGXCounterSourceGroup alloc];
      sourceGroup = selfCopy->_sourceGroup;
      profile = [(DTGPUCounterProfile *)selfCopy profile];
      v78 = [(DTGPUAGXCounterSourceGroup *)v75 initWithSourceGroup:sourceGroup selects:v69 apsSelects:MEMORY[0x277CBEBF8] profile:profile];
      agxSource = selfCopy->_agxSource;
      selfCopy->_agxSource = v78;
    }

    v43 = 1;
  }

  sub_247FF8450(v130);
LABEL_59:

  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

- (void)_releaseCounterSource
{
  v16 = *MEMORY[0x277D85DE8];
  sourceGroup = self->_sourceGroup;
  if (sourceGroup)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    sourceList = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [sourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(sourceList);
          }

          [*(*(&v11 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [sourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(GPURawCounterSourceGroup *)self->_sourceGroup stopSampling];
    source = self->_source;
    self->_source = 0;

    v9 = self->_sourceGroup;
    self->_sourceGroup = 0;

    GRCReleaseAllCounterSourceGroup();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)start:(unint64_t)start vendorFeatures:(id)features
{
  v34 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  source = self->_source;
  if (!source || !self->_sourceGroup)
  {
    goto LABEL_6;
  }

  if (self->_vendor != 2)
  {
    [(GPURawCounterSource *)source setOptions:featuresCopy];
    v28 = 0;
    v9 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = self->_rawCounters;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          rawCounterSelect = [*(*(&v24 + 1) + 8 * i) rawCounterSelect];
          [v9 addObject:rawCounterSelect];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v11);
    }

    if (([(GPURawCounterSource *)self->_source requestCounters:v9 firstErrorIndex:&v28]& 1) != 0)
    {
      if (([(GPURawCounterSource *)self->_source setEnabled:1]& 1) != 0)
      {
        self->_startTime = mach_absolute_time();
        mach_timebase_info(&self->_timeBaseInfo);
        self->_firstGpuTime = 0;
        startSampling = [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
LABEL_22:

        goto LABEL_23;
      }

      [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
    }

    else
    {
      v15 = objc_opt_new();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = [v9 objectAtIndexedSubscript:v28];
        name = [v16 name];
        v18 = name;
        uTF8String = [name UTF8String];
        v20 = v15;
        uTF8String2 = [v15 UTF8String];
        *buf = 136315394;
        v30 = uTF8String;
        v31 = 2080;
        v32 = uTF8String2;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to request counters: failed at %s (%s)", buf, 0x16u);
      }

      [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
    }

    startSampling = 0;
    goto LABEL_22;
  }

  if (![(DTGPUAGXCounterSourceGroup *)self->_agxSource request:start vendorFeatures:featuresCopy])
  {
LABEL_6:
    startSampling = 0;
    goto LABEL_23;
  }

  [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
  [(DTGPUAGXCounterSourceGroup *)self->_agxSource resume];
  startSampling = 1;
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
  return startSampling;
}

- (void)_releaseDataSource
{
  v16 = *MEMORY[0x277D85DE8];
  sourceGroup = self->_sourceGroup;
  if (sourceGroup)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    sourceList = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [sourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(sourceList);
          }

          [*(*(&v11 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [sourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(GPURawCounterSourceGroup *)self->_sourceGroup stopSampling];
    source = self->_source;
    self->_source = 0;

    v9 = self->_sourceGroup;
    self->_sourceGroup = 0;

    GRCReleaseAllCounterSourceGroup();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  [(DTGPUAGXCounterSourceGroup *)self->_agxSource stop];

  [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
}

- (void)sampleCounters:(unint64_t)counters callback:(id)callback
{
  callbackCopy = callback;
  if (self->_vendor == 2)
  {
    [(DTGPUAGXCounterSourceGroup *)self->_agxSource sampleCounters:counters callback:callbackCopy];
  }

  else
  {
    mach_timebase_info(&info);
    for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; i = (i + 1))
    {
      source = self->_source;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_247FF7118;
      v9[3] = &unk_278EF4238;
      v9[4] = self;
      v10 = callbackCopy;
      [(GPURawCounterSource *)source pollCountersAtBufferIndex:i withBlock:v9];
    }
  }
}

- (id)counterProfileForHost
{
  v124 = *MEMORY[0x277D85DE8];
  vendor = self->_vendor;
  v75 = objc_opt_new();
  if (vendor == 2)
  {
    v81 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v3 = self->_rawCounters;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v106 objects:v123 count:16];
    if (v4)
    {
      v5 = *v107;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v107 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v106 + 1) + 8 * i);
          name = [v7 name];
          [v81 setObject:v7 forKeyedSubscript:name];
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v106 objects:v123 count:16];
      }

      while (v4);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v9 = 0x277CBE000uLL;
    v71 = [obj countByEnumeratingWithState:&v102 objects:v122 count:16];
    if (v71)
    {
      v70 = *v103;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v103 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v79 = *(*(&v102 + 1) + 8 * j);
          v10 = *(v9 + 2840);
          v80 = objc_opt_new();
          v11 = objc_opt_new();
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          selects = [v79 selects];
          v13 = [selects countByEnumeratingWithState:&v98 objects:v121 count:16];
          if (v13)
          {
            v14 = *v99;
            do
            {
              for (k = 0; k != v13; ++k)
              {
                if (*v99 != v14)
                {
                  objc_enumerationMutation(selects);
                }

                name2 = [*(*(&v98 + 1) + 8 * k) name];
                v17 = [v81 objectForKeyedSubscript:name2];

                name3 = [v17 name];
                v120[0] = name3;
                v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "valueType") == 1}];
                v120[1] = v19;
                v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
                [v80 addObject:v20];

                name4 = [v17 name];
                [v11 setObject:v17 forKeyedSubscript:name4];
              }

              v13 = [selects countByEnumeratingWithState:&v98 objects:v121 count:16];
            }

            while (v13);
          }

          v76 = objc_opt_new();
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          counters = [(DTGPUCounterProfile *)self counters];
          v22 = [counters countByEnumeratingWithState:&v94 objects:v119 count:16];
          if (v22)
          {
            v78 = *v95;
            do
            {
              for (m = 0; m != v22; ++m)
              {
                if (*v95 != v78)
                {
                  objc_enumerationMutation(counters);
                }

                v24 = *(*(&v94 + 1) + 8 * m);
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                rawCounters = [v24 rawCounters];
                v26 = [rawCounters countByEnumeratingWithState:&v90 objects:v118 count:16];
                if (v26)
                {
                  v27 = *v91;
                  while (2)
                  {
                    for (n = 0; n != v26; ++n)
                    {
                      if (*v91 != v27)
                      {
                        objc_enumerationMutation(rawCounters);
                      }

                      name5 = [*(*(&v90 + 1) + 8 * n) name];
                      v30 = [v11 objectForKeyedSubscript:name5];
                      v31 = v30 == 0;

                      if (v31)
                      {
                        v32 = 0;
                        goto LABEL_36;
                      }
                    }

                    v26 = [rawCounters countByEnumeratingWithState:&v90 objects:v118 count:16];
                    if (v26)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v32 = 1;
LABEL_36:

                source = [v79 source];
                name6 = [source name];
                if ([name6 hasPrefix:@"BMPR"])
                {
                  name7 = [v24 name];
                  v36 = [name7 containsString:@"Bandwidth"];
                }

                else
                {
                  v36 = 0;
                }

                if ((v32 | v36))
                {
                  infoArray = [v24 infoArray];
                  [v76 addObject:infoArray];
                }
              }

              v22 = [counters countByEnumeratingWithState:&v94 objects:v119 count:16];
            }

            while (v22);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          derivedCounterScriptPath = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
          v40 = [defaultManager fileExistsAtPath:derivedCounterScriptPath];

          v41 = &stru_285A19CB8;
          if (v40)
          {
            v42 = MEMORY[0x277CCACA8];
            derivedCounterScriptPath2 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
            v41 = [v42 stringWithContentsOfFile:derivedCounterScriptPath2 encoding:4 error:0];
          }

          v116[0] = &unk_285A36DB0;
          v116[1] = &unk_285A36DF8;
          v117[0] = v76;
          v117[1] = v80;
          gpuConfigurationVariables = self->_gpuConfigurationVariables;
          v116[2] = &unk_285A36E10;
          v116[3] = &unk_285A36E28;
          if (!gpuConfigurationVariables)
          {
            gpuConfigurationVariables = MEMORY[0x277CBEC10];
          }

          v117[2] = v41;
          v117[3] = gpuConfigurationVariables;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:{4, v70}];
          [v75 addObject:v45];

          v9 = 0x277CBE000;
        }

        v71 = [obj countByEnumeratingWithState:&v102 objects:v122 count:16];
      }

      while (v71);
    }
  }

  else
  {
    obj = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    counters2 = [(DTGPUCounterProfile *)self counters];
    v47 = [counters2 countByEnumeratingWithState:&v86 objects:v115 count:16];
    if (v47)
    {
      v48 = *v87;
      do
      {
        for (ii = 0; ii != v47; ++ii)
        {
          if (*v87 != v48)
          {
            objc_enumerationMutation(counters2);
          }

          infoArray2 = [*(*(&v86 + 1) + 8 * ii) infoArray];
          [v75 addObject:infoArray2];
        }

        v47 = [counters2 countByEnumeratingWithState:&v86 objects:v115 count:16];
      }

      while (v47);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v51 = self->_rawCounters;
    v52 = [(NSArray *)v51 countByEnumeratingWithState:&v82 objects:v114 count:16];
    if (v52)
    {
      v53 = *v83;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v83 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v55 = *(*(&v82 + 1) + 8 * jj);
          name8 = [v55 name];
          v113[0] = name8;
          v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v55, "valueType") == 1}];
          v113[1] = v57;
          v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
          [obj addObject:v58];
        }

        v52 = [(NSArray *)v51 countByEnumeratingWithState:&v82 objects:v114 count:16];
      }

      while (v52);
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    derivedCounterScriptPath3 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
    v61 = [defaultManager2 fileExistsAtPath:derivedCounterScriptPath3];

    if (v61)
    {
      v62 = MEMORY[0x277CCACA8];
      derivedCounterScriptPath4 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
      v64 = [v62 stringWithContentsOfFile:derivedCounterScriptPath4 encoding:4 error:0];
    }

    else
    {
      v64 = &stru_285A19CB8;
    }

    v110[0] = &unk_285A36DB0;
    v110[1] = &unk_285A36DF8;
    v111[0] = v75;
    v111[1] = obj;
    v110[2] = &unk_285A36E10;
    v110[3] = &unk_285A36E28;
    v65 = self->_gpuConfigurationVariables;
    if (!v65)
    {
      v65 = MEMORY[0x277CBEC10];
    }

    v111[2] = v64;
    v111[3] = v65;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:4];
    v112 = v66;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];

    v81 = v75;
    v75 = v67;
  }

  v68 = *MEMORY[0x277D85DE8];

  return v75;
}

- (id)sampleSizes
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (self->_vendor == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sources = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v5 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(sources);
          }

          v8 = MEMORY[0x277CCABB0];
          selects = [*(*(&v14 + 1) + 8 * i) selects];
          v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(selects, "count")}];
          [v3 addObject:v10];
        }

        v5 = [sources countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_rawCounters, "count")}];
    [v3 addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)ringBufferCounts
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_vendor == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sources = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v6 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(sources);
          }

          v9 = MEMORY[0x277CCABB0];
          source = [*(*(&v16 + 1) + 8 * i) source];
          ringBufferNum = [source ringBufferNum];

          if (ringBufferNum <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = ringBufferNum;
          }

          v13 = [v9 numberWithUnsignedInt:v12];
          [v4 addObject:v13];
        }

        v6 = [sources countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [v3 addObject:&unk_285A36DC8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end