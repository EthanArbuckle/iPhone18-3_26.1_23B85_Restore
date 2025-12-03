@interface DYMTLDerivedCounterSupport
+ (void)mergeDictionaries:(id)dictionaries right:(id)right;
- (BOOL)addAnalysisWithPrefix:(id)prefix andScriptPrefix:(id)scriptPrefix;
- (DYMTLDerivedCounterSupport)init;
- (DYMTLDerivedCounterSupport)initWithAcceleratorPort:(unsigned int)port;
- (DYMTLDerivedCounterSupport)initWithMTLDevice:(id)device;
- (id)_addGPUTimeEntry;
- (void)_addGPUTimeEntry;
- (void)_loadAnalysis:(id)analysis vendorStringNames:(id)names vendorScriptPrefix:(id)prefix;
@end

@implementation DYMTLDerivedCounterSupport

+ (void)mergeDictionaries:(id)dictionaries right:(id)right
{
  v28 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  rightCopy = right;
  v6 = [dictionariesCopy objectForKeyedSubscript:@"Version"];
  if (v6)
  {
    v7 = [dictionariesCopy objectForKeyedSubscript:@"Version"];
    v8 = [rightCopy objectForKeyedSubscript:@"Version"];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v20 = *MEMORY[0x277D0B240];
      _DYOLog();
      goto LABEL_21;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = rightCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = *v24;
  v13 = 0x277CBE000uLL;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      v16 = [dictionariesCopy objectForKey:v15];
      v17 = [v10 objectForKey:v15];
      if (!v16)
      {
        [dictionariesCopy setObject:v17 forKeyedSubscript:v15];
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_17;
        }

        [v16 addObjectsFromArray:v17];
        goto LABEL_16;
      }

      v18 = *(v13 + 2872);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = *(v13 + 2872);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [DYMTLDerivedCounterSupport mergeDictionaries:v16 right:v17];
LABEL_16:

          v13 = 0x277CBE000;
        }
      }

LABEL_17:
    }

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v11);
LABEL_19:

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)addAnalysisWithPrefix:(id)prefix andScriptPrefix:(id)scriptPrefix
{
  scriptPrefixCopy = scriptPrefix;
  v7 = [prefix stringByAppendingString:@"-counters.plist"];
  v31 = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v7 options:0 error:&v31];
  v9 = v31;
  if (v8)
  {
    v30 = 0;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:1 format:0 error:&v30];
    v11 = v30;
    v12 = MEMORY[0x277D0B238];
    if (v11)
    {
      v13 = *MEMORY[0x277D0B238];
      _DYOLog();
    }

    else if (v10)
    {
      [DYMTLDerivedCounterSupport mergeDictionaries:self->_counterDictionary right:v10];
    }

    v14 = [scriptPrefixCopy stringByAppendingString:@"-analysis.js"];
    v29 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v14 encoding:4 error:&v29];
    v16 = v29;
    if (v16)
    {
      v17 = *v12;
      _DYOLog();
      analysisScript = self->_analysisScript;
      self->_analysisScript = &stru_2868EDC68;
    }

    else
    {
      v19 = self->_analysisScript;
      if (v19)
      {
        v20 = [(NSString *)v19 stringByAppendingString:v15];
      }

      else
      {
        v20 = v15;
      }

      analysisScript = self->_analysisScript;
      self->_analysisScript = v20;
    }

    v21 = [scriptPrefixCopy stringByAppendingString:@"-derived.js"];

    v28 = 0;
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfFile:v21 encoding:4 error:&v28];
    v9 = v28;
    if (v9)
    {
      v23 = *v12;
      _DYOLog();
    }

    else
    {
      derivedCounterScript = self->_derivedCounterScript;
      if (derivedCounterScript)
      {
        v25 = [(NSString *)derivedCounterScript stringByAppendingString:v22];
      }

      else
      {
        v25 = v22;
      }

      v26 = self->_derivedCounterScript;
      self->_derivedCounterScript = v25;
    }
  }

  return v8 != 0;
}

- (void)_loadAnalysis:(id)analysis vendorStringNames:(id)names vendorScriptPrefix:(id)prefix
{
  v42 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  namesCopy = names;
  prefixCopy = prefix;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  counterDictionary = self->_counterDictionary;
  selfCopy = self;
  self->_counterDictionary = v8;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = [&unk_2868F0DB0 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v24 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(&unk_2868F0DB0);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (prefixCopy && ([MEMORY[0x277CCACA8] stringWithFormat:v10, analysisCopy, prefixCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28 = v11;
          stringByStandardizingPath = [v11 stringByStandardizingPath];
        }

        else
        {
          stringByStandardizingPath = 0;
          v28 = 0;
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = namesCopy;
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v14)
        {
          v15 = *v33;
LABEL_12:
          v16 = 0;
          while (1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v32 + 1) + 8 * v16);
            if (([v17 containsString:@"autocorr"] & 1) == 0)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:v10, analysisCopy, v17];
              stringByStandardizingPath2 = [v18 stringByStandardizingPath];
              v20 = stringByStandardizingPath2;
              v21 = stringByStandardizingPath ? stringByStandardizingPath : stringByStandardizingPath2;
              v22 = [(DYMTLDerivedCounterSupport *)selfCopy addAnalysisWithPrefix:stringByStandardizingPath2 andScriptPrefix:v21];

              if (v22)
              {
                break;
              }
            }

            if (v14 == ++v16)
            {
              v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v14)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }
      }

      v27 = [&unk_2868F0DB0 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_addGPUTimeEntry
{
  if ((_MergedGlobals & 1) == 0)
  {
    [DYMTLDerivedCounterSupport _addGPUTimeEntry];
  }

  v9 = objc_opt_new();
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:@"MTLStat_nSec"];
  [v9 setObject:v3 forKeyedSubscript:@"counters"];

  [v9 setObject:@"GPU Time" forKeyedSubscript:@"name"];
  [v9 setObject:@"GPU Time in nSec" forKeyedSubscript:@"description"];
  [v9 setObject:@"Count" forKeyedSubscript:@"type"];
  v4 = [(NSMutableDictionary *)self->_counterDictionary objectForKeyedSubscript:*MEMORY[0x277D0B148]];
  [v4 setObject:v9 forKeyedSubscript:qword_27F8EFDE8];
  derivedCounterScript = self->_derivedCounterScript;
  if (derivedCounterScript)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"\nfunction GPUToolsGPUTime()\n{\n   return MTLStat_nSec\n}\n"];
    v7 = [(NSString *)derivedCounterScript stringByAppendingString:v6];

    v8 = self->_derivedCounterScript;
    self->_derivedCounterScript = v7;
  }
}

- (DYMTLDerivedCounterSupport)initWithMTLDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = DYMTLDerivedCounterSupport;
  v5 = [(DYMTLDerivedCounterSupport *)&v9 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    baseObject = [deviceCopy baseObject];

    deviceCopy = baseObject;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = -[DYMTLDerivedCounterSupport initWithAcceleratorPort:](v5, "initWithAcceleratorPort:", [deviceCopy acceleratorPort]);
    v7 = v5;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (DYMTLDerivedCounterSupport)initWithAcceleratorPort:(unsigned int)port
{
  v23.receiver = self;
  v23.super_class = DYMTLDerivedCounterSupport;
  v4 = [(DYMTLDerivedCounterSupport *)&v23 init];
  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(port, @"MetalPluginName", 0, 0);
    if (CFProperty)
    {
      objc_storeStrong(&v4->_metalPluginName, CFProperty);
      v6 = IORegistryEntryCreateCFProperty(port, @"MetalStatisticsName", 0, 0);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = @"MetalStatistics";
      }

      v8 = CFGetTypeID(v7);
      if (v8 == CFStringGetTypeID())
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v7, 0}];
      }

      else
      {
        v11 = CFGetTypeID(v7);
        TypeID = CFArrayGetTypeID();
        v13 = v11 == TypeID;
        if (v11 == TypeID)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        if (v13)
        {
          v7 = 0;
        }
      }

      v14 = MTLCreateSystemDefaultDevice();
      name = [v14 name];
      v16 = [name compare:@"Unknown Unknown"];

      if (!v16 && [(__CFString *)v9 count])
      {
        firstObject = [(__CFString *)v9 firstObject];
        v18 = [firstObject rangeOfString:@"AGXMetalStatistics"];
        if ([firstObject rangeOfString:@"AGXMetalStatisticsExternal"] == 0x7FFFFFFFFFFFFFFFLL && v18 < objc_msgSend(firstObject, "length"))
        {
          v19 = [firstObject substringFromIndex:{objc_msgSend(@"AGXMetalStatistics", "length")}];
          v20 = [@"AGXMetalStatisticsExternal" stringByAppendingString:v19];

          [(__CFString *)v9 addObject:v20];
        }
      }

      if (v9)
      {
        [(DYMTLDerivedCounterSupport *)v4 _loadAnalysis:CFProperty vendorStringNames:v9 vendorScriptPrefix:0];
        [(DYMTLDerivedCounterSupport *)v4 _addGPUTimeEntry];
      }

      if (v7)
      {
        CFRelease(v7);
      }

      CFRelease(CFProperty);
      v21 = v4;
    }

    else
    {
      v10 = v4;
    }
  }

  return v4;
}

- (DYMTLDerivedCounterSupport)init
{
  v9.receiver = self;
  v9.super_class = DYMTLDerivedCounterSupport;
  v2 = [(DYMTLDerivedCounterSupport *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    counterDictionary = v2->_counterDictionary;
    v2->_counterDictionary = v3;

    v5 = objc_opt_new();
    configurationVariables = v2->_configurationVariables;
    v2->_configurationVariables = v5;

    v7 = v2;
  }

  return v2;
}

- (id)_addGPUTimeEntry
{
  result = *MEMORY[0x277D0B1C8];
  qword_27F8EFDE8 = result;
  _MergedGlobals = 1;
  return result;
}

@end