@interface DTGPUCounterProfile_GPURawCounters
+ (id)_sourceNameFromProfile:(unint64_t)a3;
+ (id)_supportedProfileNameFromEnum:(unint64_t)a3 vendor:(unsigned int)a4;
+ (id)create:(id)a3 profile:(unint64_t)a4;
+ (unsigned)vendorFromDevice:(id)a3;
- (BOOL)_validateAndConfigureRawCounters;
- (BOOL)start:(unint64_t)a3 vendorFeatures:(id)a4;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)a3 profile:(unint64_t)a4;
- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)a3 sourceName:(id)a4 profile:(unint64_t)a5;
- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)a3;
- (id)counterProfileForHost;
- (id)ringBufferCounts;
- (id)sampleSizes;
- (void)_releaseCounterSource;
- (void)_releaseDataSource;
- (void)sampleCounters:(unint64_t)a3 callback:(id)a4;
- (void)stop;
@end

@implementation DTGPUCounterProfile_GPURawCounters

+ (id)_supportedProfileNameFromEnum:(unint64_t)a3 vendor:(unsigned int)a4
{
  if (a3 == 4)
  {
    if (a4 == 2)
    {
      return @"Set2";
    }

    else
    {
      return 0;
    }
  }

  else if (a3 == 3 && a4 < 3)
  {
    return off_278EF4258[a4];
  }

  else
  {
    return 0;
  }
}

+ (id)_sourceNameFromProfile:(unint64_t)a3
{
  if (a3 - 5 > 8)
  {
    return 0;
  }

  else
  {
    return off_278EF4270[a3 - 5];
  }
}

+ (id)create:(id)a3 profile:(unint64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 <= 4)
  {
    if (a4 - 3 < 2 || a4 == 1)
    {
      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:v5 profile:a4];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_18;
      }

      v8 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithLimitersProfile:v5];
    }

    goto LABEL_14;
  }

  if (a4 - 5 >= 6)
  {
    if (a4 == 12)
    {
      v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:12];
      if (!v7 || [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v5]!= 1)
      {
        goto LABEL_5;
      }

      v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:v5 sourceName:v7 profile:12];
LABEL_16:
      v6 = v9;
      goto LABEL_17;
    }

    if (a4 != 13)
    {
      goto LABEL_18;
    }

    v8 = [[DTGPUCounterProfile_GPURawCountersAPS alloc] initWithProfile:13 device:v5];
LABEL_14:
    v6 = v8;
    goto LABEL_18;
  }

  v7 = [DTGPUCounterProfile_GPURawCounters _sourceNameFromProfile:a4];
  if (v7 && ![DTGPUCounterProfile_GPURawCounters vendorFromDevice:v5])
  {
    v9 = [[DTGPUCounterProfile_GPURawCounters alloc] initWithDevice:v5 sourceName:v7 profile:a4];
    goto LABEL_16;
  }

LABEL_5:
  v6 = 0;
LABEL_17:

LABEL_18:

  return v6;
}

+ (unsigned)vendorFromDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 vendorName];
  v5 = [v4 lowercaseString];

  if ([v3 supportsFamily:1001])
  {
    v6 = 2;
  }

  else if ([v5 rangeOfString:@"intel"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v5 rangeOfString:@"amd"] == 0x7FFFFFFFFFFFFFFFLL)
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

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)a3 profile:(unint64_t)a4
{
  v158 = *MEMORY[0x277D85DE8];
  v148.receiver = self;
  v148.super_class = DTGPUCounterProfile_GPURawCounters;
  v126 = a3;
  v6 = [(DTGPUCounterProfile *)&v148 initWithProfile:a4 device:?];
  p_isa = &v6->super.super.isa;
  v133 = v6;
  if (!v6)
  {
    goto LABEL_74;
  }

  objc_storeStrong(&v6->_device, a3);
  p_isa = &v133->super.super.isa;
  v8 = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v126];
  v133->_vendor = v8;
  if (a4 != 1)
  {
    v114 = [DTGPUCounterProfile_GPURawCounters _supportedProfileNameFromEnum:a4 vendor:v8];
    if (!v114 && v133->_vendor == 2)
    {
      goto LABEL_76;
    }

    v122 = v126;
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
          v10 = [v116 firstObject];
          v11 = MEMORY[0x277CBEB38];
          v12 = [v10 features];
          v13 = [v12 objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];
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
          v34 = [(MTLDevice *)v133->_device name];
          v35 = [v34 containsString:@"Iris"];

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
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
        v156[1] = v43;
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/Contents/Resources", CFProperty];
        v156[2] = v44;
        v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];

        v135 = [MEMORY[0x277CCAA00] defaultManager];
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
              if ([v135 fileExistsAtPath:v54] && (objc_msgSend(v135, "fileExistsAtPath:", v55) & 1) != 0)
              {
                v46 = v55;
                v47 = v54;
LABEL_60:

                goto LABEL_61;
              }

              v47 = [v54 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              v46 = [v56 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

              if ([v135 fileExistsAtPath:v47] && objc_msgSend(v135, "fileExistsAtPath:", v46))
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

          if (![v135 fileExistsAtPath:v47] || !objc_msgSend(v135, "fileExistsAtPath:", v46))
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
          v61 = [v60 unsignedIntegerValue];

          v62 = 50;
          if (v61 > 0x32)
          {
            v62 = v61;
          }

          [(DTGPUCounterProfile *)v133 setDefaultSampleInterval:1000 * v62];
          v63 = [v109 objectForKeyedSubscript:@"Profiles"];
          v108 = v63;
          if ([v63 count])
          {
            if (!v114 || ([v63 objectForKeyedSubscript:v114], v64 = objc_claimAutoreleasedReturnValue(), v65 = v64 == 0, v64, v65))
            {
              v70 = [v63 allKeys];
              v71 = [v70 objectAtIndexedSubscript:0];

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

                v76 = [(DTGPUCounterProfile *)v133 profileName];
                LODWORD(v75) = v76 == 0;

                if (v75)
                {
                  [(DTGPUCounterProfile *)v133 setProfileName:v114];
                }

                v77 = [(DTGPUCounterProfile *)v133 profileName];
                sourceName = v133->_sourceName;
                v133->_sourceName = v77;

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
                          v87 = [v124 unsignedIntValue];
                        }

                        else
                        {
                          v87 = 0;
                          v86 = v131;
                        }

                        [(DTGPUCounter *)v86 setGroupIndex:v87];
                        if (v125)
                        {
                          v88 = [v125 unsignedIntValue];
                        }

                        else
                        {
                          v88 = 1;
                        }

                        [(DTGPUCounter *)v86 setMultiplier:v88];
                        v89 = [(DTGPUCounter *)v86 type];
                        v90 = [v89 isEqualToString:@"Percentage"];

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
                                  v103 = 32;
                                }

                                else
                                {
                                  v102 = [v79 objectForKeyedSubscript:v97];
                                  v103 = [v102 unsignedIntValue];
                                }

                                v104 = [[DTGPURawCounter_GPURawCounter alloc] initWithName:v97 width:v103];
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

- (DTGPUCounterProfile_GPURawCounters)initWithLimitersProfile:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = DTGPUCounterProfile_GPURawCounters;
  v41 = a3;
  v3 = [(DTGPUCounterProfile *)&v50 initWithProfile:2 device:?];
  v44 = v3;
  if (v3)
  {
    v38 = v41;
    v3->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v38];
    CFProperty = IORegistryEntryCreateCFProperty([v38 acceleratorPort], @"MetalPluginName", 0, 0);
    v40 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
    v42 = [v40 enumeratorAtPath:v4];

    v5 = [v42 nextObject];
    if (v5)
    {
      while ([v5 rangeOfString:@"MetalLimiters"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [v42 nextObject];

        v5 = v6;
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = v5;
      v37 = [v7 stringWithFormat:@"/System/Library/Extensions/%@.bundle/%@", CFProperty, v8];
      v35 = v8;

      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/AGXMetalPerfCounters.plist", CFProperty];
      if ([v40 fileExistsAtPath:v37] && objc_msgSend(v40, "fileExistsAtPath:", v36))
      {
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v37];
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v36];
        v9 = [v34 objectForKeyedSubscript:@"Configuration"];
        v10 = [v9 objectForKeyedSubscript:@"Timer Interval (microseconds)"];
        v11 = [v10 unsignedIntegerValue];

        v12 = 50;
        if (v11 > 0x32)
        {
          v12 = v11;
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
                    v25 = [v21 unsignedIntValue];
                  }

                  else
                  {
                    v25 = 32;
                  }

                  v26 = [(DTGPURawCounter_GPURawCounter *)v24 initWithName:v20 width:v25];
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

- (DTGPUCounterProfile_GPURawCounters)initWithDevice:(id)a3 sourceName:(id)a4 profile:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = DTGPUCounterProfile_GPURawCounters;
  v10 = [(DTGPUCounterProfile *)&v14 initWithProfile:a5 device:v8];
  if (v10)
  {
    v11 = [v9 lowercaseString];
    sourceName = v10->_sourceName;
    v10->_sourceName = v11;

    v10->_vendor = [DTGPUCounterProfile_GPURawCounters vendorFromDevice:v8];
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

  v102 = self;
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
          v22 = [v21 sourceList];
          v23 = [v22 countByEnumeratingWithState:&v140 objects:v157 count:16];
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
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v140 + 1) + 8 * v25);
            v27 = [v26 name];
            v28 = [v27 lowercaseString];
            v29 = [(NSString *)v102->_sourceName lowercaseString];
            v30 = [v28 isEqualToString:v29];

            if (v30)
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [v22 countByEnumeratingWithState:&v140 objects:v157 count:16];
              if (!v23)
              {
                goto LABEL_36;
              }

              goto LABEL_30;
            }
          }

          objc_storeStrong(&v102->_sourceGroup, v113);
          objc_storeStrong(&v102->_source, v26);

LABEL_38:
          if (v102->_sourceGroup)
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
      v103 = [v5 sourceList];
      v6 = [v103 countByEnumeratingWithState:&v132 objects:v155 count:16];
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
              objc_enumerationMutation(v103);
            }

            v9 = *(*(&v132 + 1) + 8 * i);
            v10 = [v9 name];
            v11 = [v10 rangeOfString:@"RDE"] == 0;

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

            v12 = [v9 name];
            v13 = [v12 isEqualToString:@"Firmware"];

            v15 = v112;
            v14 = v115;
            v16 = v5;
            v17 = v9;
            if (v13)
            {
              goto LABEL_17;
            }
          }

          v6 = [v103 countByEnumeratingWithState:&v132 objects:v155 count:16];
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
  objc_storeStrong(&v102->_source, v31);
  v32 = v106 ? v109 : v115;
  objc_storeStrong(&v102->_sourceGroup, v32);

LABEL_51:
  if (!v102->_sourceGroup || (source = v102->_source) == 0)
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
    v35 = [(GPURawCounterSource *)source availableCounters];
    v36 = [v35 count] > v34;

    if (!v36)
    {
      break;
    }

    v37 = [(GPURawCounterSource *)v102->_source availableCounters];
    v38 = [v37 objectAtIndexedSubscript:v34];

    v39 = [v38 counterValueType];
    v40 = [v38 name];
    v41 = v40;
    sub_247F85940(__p, [v40 UTF8String]);
    v148 = __p;
    v42 = sub_247FF84D8(v130, __p);
    *(v42 + 10) = v34;
    v42[6] = v39;
    if (v154 < 0)
    {
      operator delete(*__p);
    }

    v34 = (v34 + 1);
    source = v102->_source;
  }

  v46 = objc_opt_new();
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v100 = [(DTGPUCounterProfile *)v102 counters];
  v108 = [v100 countByEnumeratingWithState:&v126 objects:v152 count:16];
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
          objc_enumerationMutation(v100);
        }

        v48 = *(*(&v126 + 1) + 8 * j);
        v34 = objc_opt_new();
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v111 = v48;
        v49 = [v48 rawCounters];
        v50 = [v49 countByEnumeratingWithState:&v122 objects:v151 count:16];
        if (v50)
        {
          v51 = *v123;
          do
          {
            for (k = 0; k != v50; ++k)
            {
              if (*v123 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = *(*(&v122 + 1) + 8 * k);
              v54 = [v53 name];
              v55 = v54;
              sub_247F85940(__p, [v54 UTF8String]);
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
                v57 = [v53 name];
                v58 = v57;
                v59 = [v57 UTF8String];
                *__p = 136315138;
                *&__p[4] = v59;
                _os_log_impl(&dword_247F67000, v47, OS_LOG_TYPE_ERROR, "Failed to find counter: failed at %s", __p, 0xCu);
              }
            }

            v50 = [v49 countByEnumeratingWithState:&v122 objects:v151 count:16];
          }

          while (v50);
        }

        [v111 setRawCounters:v34];
      }

      v108 = [v100 countByEnumeratingWithState:&v126 objects:v152 count:16];
    }

    while (v108);
  }

  if (v102->_vendor != 2)
  {
    v60 = [(DTGPUCounterProfile *)v102 counters];
    v61 = [v60 count] == 0;

    if (v61)
    {
      for (m = 0; ; m = v82 + 1)
      {
        v81 = [(GPURawCounterSource *)v102->_source availableCounters];
        v82 = m;
        v83 = [v81 count] > m;

        if (!v83)
        {
          break;
        }

        v84 = [(GPURawCounterSource *)v102->_source availableCounters];
        v85 = [v84 objectAtIndexedSubscript:v82];

        v86 = [DTGPURawCounter_GPURawCounter alloc];
        v87 = [v85 name];
        v88 = [(DTGPURawCounter_GPURawCounter *)v86 initWithName:v87 width:64];

        [(DTGPURawCounter_GPURawCounter *)v88 setCounterIdx:v82];
        -[DTGPURawCounter_GPURawCounter setValueType:](v88, "setValueType:", [v85 counterValueType]);
        [v46 addObject:v88];
        v89 = [DTGPUCounter alloc];
        v90 = [v85 name];
        v91 = [(DTGPUCounter *)v89 initWithName:v90 maxValue:0x7FFFFFFFLL];

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

        v95 = [v85 name];
        [(DTGPUCounter *)v91 setFunctionName:v95];

        [(DTGPUCounter *)v91 setMaxValue:0x7FFFFFFFLL];
        [(DTGPUCounter *)v91 setMultiplier:1];
        [(DTGPUCounter *)v91 setGroupIndex:1];
        [(DTGPUCounterProfile *)v102 addCounter:v91];
      }
    }
  }

  v62 = objc_opt_new();
  if (v102->_vendor == 2)
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

  v68 = [v46 allObjects];
  [v62 addObjectsFromArray:v68];

  v102->_gpuTimeIndex = -1;
  if (v102->_vendor)
  {
    v102->_gpuTimeIndex = 0;
    goto LABEL_87;
  }

  [v62 sortUsingComparator:&unk_285A18F60];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = sub_247FF68F4;
  v121[3] = &unk_278EF4210;
  v121[4] = v102;
  [v62 enumerateObjectsUsingBlock:v121];
  if (v102->_gpuTimeIndex == -1)
  {
    v43 = 0;
  }

  else
  {
LABEL_87:
    objc_storeStrong(&v102->_rawCounters, v62);
    v69 = objc_opt_new();
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v70 = v102->_rawCounters;
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

          v74 = [*(*(&v117 + 1) + 8 * n) rawCounterSelect];
          [v69 addObject:v74];
        }

        v71 = [(NSArray *)v70 countByEnumeratingWithState:&v117 objects:v149 count:16];
      }

      while (v71);
    }

    if (v102->_vendor == 2)
    {
      v75 = [DTGPUAGXCounterSourceGroup alloc];
      sourceGroup = v102->_sourceGroup;
      v77 = [(DTGPUCounterProfile *)v102 profile];
      v78 = [(DTGPUAGXCounterSourceGroup *)v75 initWithSourceGroup:sourceGroup selects:v69 apsSelects:MEMORY[0x277CBEBF8] profile:v77];
      agxSource = v102->_agxSource;
      v102->_agxSource = v78;
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
    v4 = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)start:(unint64_t)a3 vendorFeatures:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  source = self->_source;
  if (!source || !self->_sourceGroup)
  {
    goto LABEL_6;
  }

  if (self->_vendor != 2)
  {
    [(GPURawCounterSource *)source setOptions:v6];
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

          v14 = [*(*(&v24 + 1) + 8 * i) rawCounterSelect];
          [v9 addObject:v14];
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
        v8 = [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
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
        v17 = [v16 name];
        v18 = v17;
        v19 = [v17 UTF8String];
        v20 = v15;
        v21 = [v15 UTF8String];
        *buf = 136315394;
        v30 = v19;
        v31 = 2080;
        v32 = v21;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to request counters: failed at %s (%s)", buf, 0x16u);
      }

      [(DTGPUCounterProfile_GPURawCounters *)self _releaseDataSource];
    }

    v8 = 0;
    goto LABEL_22;
  }

  if (![(DTGPUAGXCounterSourceGroup *)self->_agxSource request:a3 vendorFeatures:v6])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_23;
  }

  [(GPURawCounterSourceGroup *)self->_sourceGroup startSampling];
  [(DTGPUAGXCounterSourceGroup *)self->_agxSource resume];
  v8 = 1;
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
  return v8;
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
    v4 = [(GPURawCounterSourceGroup *)sourceGroup sourceList];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v7++) setEnabled:0];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)sampleCounters:(unint64_t)a3 callback:(id)a4
{
  v6 = a4;
  if (self->_vendor == 2)
  {
    [(DTGPUAGXCounterSourceGroup *)self->_agxSource sampleCounters:a3 callback:v6];
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
      v10 = v6;
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
          v8 = [v7 name];
          [v81 setObject:v7 forKeyedSubscript:v8];
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
          v12 = [v79 selects];
          v13 = [v12 countByEnumeratingWithState:&v98 objects:v121 count:16];
          if (v13)
          {
            v14 = *v99;
            do
            {
              for (k = 0; k != v13; ++k)
              {
                if (*v99 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = [*(*(&v98 + 1) + 8 * k) name];
                v17 = [v81 objectForKeyedSubscript:v16];

                v18 = [v17 name];
                v120[0] = v18;
                v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "valueType") == 1}];
                v120[1] = v19;
                v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:2];
                [v80 addObject:v20];

                v21 = [v17 name];
                [v11 setObject:v17 forKeyedSubscript:v21];
              }

              v13 = [v12 countByEnumeratingWithState:&v98 objects:v121 count:16];
            }

            while (v13);
          }

          v76 = objc_opt_new();
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v77 = [(DTGPUCounterProfile *)self counters];
          v22 = [v77 countByEnumeratingWithState:&v94 objects:v119 count:16];
          if (v22)
          {
            v78 = *v95;
            do
            {
              for (m = 0; m != v22; ++m)
              {
                if (*v95 != v78)
                {
                  objc_enumerationMutation(v77);
                }

                v24 = *(*(&v94 + 1) + 8 * m);
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                v25 = [v24 rawCounters];
                v26 = [v25 countByEnumeratingWithState:&v90 objects:v118 count:16];
                if (v26)
                {
                  v27 = *v91;
                  while (2)
                  {
                    for (n = 0; n != v26; ++n)
                    {
                      if (*v91 != v27)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v29 = [*(*(&v90 + 1) + 8 * n) name];
                      v30 = [v11 objectForKeyedSubscript:v29];
                      v31 = v30 == 0;

                      if (v31)
                      {
                        v32 = 0;
                        goto LABEL_36;
                      }
                    }

                    v26 = [v25 countByEnumeratingWithState:&v90 objects:v118 count:16];
                    if (v26)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v32 = 1;
LABEL_36:

                v33 = [v79 source];
                v34 = [v33 name];
                if ([v34 hasPrefix:@"BMPR"])
                {
                  v35 = [v24 name];
                  v36 = [v35 containsString:@"Bandwidth"];
                }

                else
                {
                  v36 = 0;
                }

                if ((v32 | v36))
                {
                  v37 = [v24 infoArray];
                  [v76 addObject:v37];
                }
              }

              v22 = [v77 countByEnumeratingWithState:&v94 objects:v119 count:16];
            }

            while (v22);
          }

          v38 = [MEMORY[0x277CCAA00] defaultManager];
          v39 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
          v40 = [v38 fileExistsAtPath:v39];

          v41 = &stru_285A19CB8;
          if (v40)
          {
            v42 = MEMORY[0x277CCACA8];
            v43 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
            v41 = [v42 stringWithContentsOfFile:v43 encoding:4 error:0];
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
    v46 = [(DTGPUCounterProfile *)self counters];
    v47 = [v46 countByEnumeratingWithState:&v86 objects:v115 count:16];
    if (v47)
    {
      v48 = *v87;
      do
      {
        for (ii = 0; ii != v47; ++ii)
        {
          if (*v87 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = [*(*(&v86 + 1) + 8 * ii) infoArray];
          [v75 addObject:v50];
        }

        v47 = [v46 countByEnumeratingWithState:&v86 objects:v115 count:16];
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
          v56 = [v55 name];
          v113[0] = v56;
          v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v55, "valueType") == 1}];
          v113[1] = v57;
          v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
          [obj addObject:v58];
        }

        v52 = [(NSArray *)v51 countByEnumeratingWithState:&v82 objects:v114 count:16];
      }

      while (v52);
    }

    v59 = [MEMORY[0x277CCAA00] defaultManager];
    v60 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
    v61 = [v59 fileExistsAtPath:v60];

    if (v61)
    {
      v62 = MEMORY[0x277CCACA8];
      v63 = [(DTGPUCounterProfile *)self derivedCounterScriptPath];
      v64 = [v62 stringWithContentsOfFile:v63 encoding:4 error:0];
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
    v4 = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = MEMORY[0x277CCABB0];
          v9 = [*(*(&v14 + 1) + 8 * i) selects];
          v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
          [v3 addObject:v10];
        }

        v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v5 = [(DTGPUAGXCounterSourceGroup *)self->_agxSource sources];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = MEMORY[0x277CCABB0];
          v10 = [*(*(&v16 + 1) + 8 * i) source];
          v11 = [v10 ringBufferNum];

          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = [v9 numberWithUnsignedInt:v12];
          [v4 addObject:v13];
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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