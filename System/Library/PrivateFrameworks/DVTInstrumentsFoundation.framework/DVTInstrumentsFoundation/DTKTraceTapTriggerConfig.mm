@interface DTKTraceTapTriggerConfig
+ (id)deviceSignPostConfig;
- (BOOL)hasThreadStateFilter;
- (BOOL)isAllProcesses;
- (DTKPKDebugCodeSet)kdebugFilter;
- (DTKTraceTapTriggerConfig)init;
- (DTKTraceTapTriggerConfig)initWithPlist:(id)a3;
- (DTKTraceTapTriggerConfig)initWithUUIDString:(id)a3;
- (XRRecountConfiguration)recountConfiguration;
- (int)kind;
- (unint64_t)callstackFrameDepth;
- (unint64_t)eventLimitHint;
- (unint64_t)pmiEventThreshold;
- (unint64_t)sampleInterval;
- (void)addAction:(int)a3;
- (void)enumerateActions:(id)a3;
- (void)enumeratePIDsInFilter:(id)a3;
- (void)enumerateThreadStatesToInclude:(id)a3;
- (void)setCallstackFrameDepth:(unint64_t)a3;
- (void)setEventLimitHint:(unint64_t)a3;
- (void)setHasThreadStateFilter:(BOOL)a3;
- (void)setIsAllProcesses:(BOOL)a3;
- (void)setKdebugFilter:(id)a3;
- (void)setPmiEventThreshold:(unint64_t)a3;
- (void)setRecountConfiguration:(id)a3;
- (void)setSampleInterval:(unint64_t)a3;
@end

@implementation DTKTraceTapTriggerConfig

+ (id)deviceSignPostConfig
{
  v2 = [[DTKTraceTapTriggerConfig alloc] initWithUUIDString:@"56594D66-845C-4205-B7D1-A8D7CF32362D"];
  [(DTKTraceTapTriggerConfig *)v2 setKind:3];
  v3 = objc_opt_new();
  [v3 addClass:33 subclassID:10];
  [(DTKTraceTapTriggerConfig *)v2 setKdebugFilter:v3];
  [(DTKTraceTapTriggerConfig *)v2 addAction:3];
  [(DTKTraceTapTriggerConfig *)v2 addAction:0];
  [(DTKTraceTapTriggerConfig *)v2 addAction:2];

  return v2;
}

- (DTKTraceTapTriggerConfig)init
{
  v8.receiver = self;
  v8.super_class = DTKTraceTapTriggerConfig;
  v2 = [(DTKTraceTapTriggerConfig *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dict = v2->_dict;
    v2->_dict = v3;

    v5 = CFUUIDCreate(0);
    v6 = CFUUIDCreateString(0, v5);
    CFRelease(v5);
    [(NSMutableDictionary *)v2->_dict setObject:v6 forKeyedSubscript:@"uuid"];
  }

  return v2;
}

- (DTKTraceTapTriggerConfig)initWithPlist:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DTKTraceTapTriggerConfig;
  v5 = [(DTKTraceTapTriggerConfig *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    dict = v5->_dict;
    v5->_dict = v6;
  }

  return v5;
}

- (DTKTraceTapTriggerConfig)initWithUUIDString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DTKTraceTapTriggerConfig;
  v5 = [(DTKTraceTapTriggerConfig *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    dict = v5->_dict;
    v5->_dict = v6;

    [(NSMutableDictionary *)v5->_dict setObject:v4 forKeyedSubscript:@"uuid"];
  }

  return v5;
}

- (int)kind
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"tk"];
  v3 = [v2 intValue];
  if ((v3 - 1) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (unint64_t)sampleInterval
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"si"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 1000000;
  }

  return v4;
}

- (void)setSampleInterval:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)self->_dict setObject:v4 forKeyedSubscript:@"si"];
}

- (unint64_t)eventLimitHint
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"elh"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setEventLimitHint:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_dict setObject:v4 forKeyedSubscript:@"elh"];
}

- (BOOL)hasThreadStateFilter
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKey:@"tsf"];
  v3 = v2 != 0;

  return v3;
}

- (void)setHasThreadStateFilter:(BOOL)a3
{
  dict = self->_dict;
  if (a3)
  {
    v5 = [(NSMutableDictionary *)dict objectForKeyedSubscript:@"tsf"];

    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_dict setObject:v6 forKeyedSubscript:@"tsf"];
    }
  }

  else
  {

    [(NSMutableDictionary *)dict removeObjectForKey:@"tsf"];
  }
}

- (void)enumerateThreadStatesToInclude:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:@"tsf"];
  v6 = v5;
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v4[2](v4, [*(*(&v12 + 1) + 8 * i) intValue]);
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4[2](v4, 1);
    v4[2](v4, 0x400000);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAllProcesses
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"pf"];
  v3 = v2 == 0;

  return v3;
}

- (void)setIsAllProcesses:(BOOL)a3
{
  dict = self->_dict;
  if (a3)
  {

    [(NSMutableDictionary *)dict removeObjectForKey:@"pf"];
  }

  else
  {
    v5 = [(NSMutableDictionary *)dict objectForKeyedSubscript:@"pf"];

    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_dict setObject:v6 forKeyedSubscript:@"pf"];
    }
  }
}

- (void)enumeratePIDsInFilter:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"pf"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, [*(*(&v11 + 1) + 8 * v9++) intValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addAction:(int)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    if ((a3 - 2) < 2 || !a3)
    {
      v8 = MEMORY[0x277CBEA60];
      v4 = [MEMORY[0x277CCABB0] numberWithInt:?];
      v7 = [v8 arrayWithObjects:{v4, 0}];
      goto LABEL_14;
    }

    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v16[0] = v4;
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    v16[1] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v16[2] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    goto LABEL_12;
  }

  switch(a3)
  {
    case 4:
      v9 = MEMORY[0x277CCABB0];
      v5 = v19;
      v4 = v18;
      v6 = [v9 numberWithInt:4];
      v15[0] = v6;
      v15[1] = v4;
      v15[2] = v5;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
      v15[3] = v10;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];

LABEL_12:
      goto LABEL_14;
    case 5:
      v11 = MEMORY[0x277CCABB0];
      v4 = v18;
      v12 = [v11 numberWithInt:5];
      v17[0] = v12;
      v17[1] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

LABEL_14:
      if (v7)
      {
        v13 = [(NSMutableDictionary *)self->_dict objectForKey:@"ta"];
        if (!v13)
        {
          v13 = objc_opt_new();
          [(NSMutableDictionary *)self->_dict setObject:v13 forKey:@"ta"];
        }

        [v13 addObject:v7];
      }

      break;
    case 6:
      NSLog(&cfstr_DtktActionMaxN.isa, a2);
      break;
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateActions:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:@"ta"];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 count];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 objectAtIndex:0];
          v14 = [v13 intValue];
          if (v14 > 5)
          {
            goto LABEL_20;
          }

          if (v14 <= 1)
          {
            if (v14)
            {
              if (v12 >= 3)
              {
                v15 = [v10 objectAtIndex:1];
                [v15 intValue];
                v18 = [v10 objectAtIndex:2];
                [v18 intValue];
                v4[2](v4, 1);

LABEL_17:
              }

LABEL_20:

              continue;
            }
          }

          else if ((v14 - 2) >= 2)
          {
            if (v14 == 4)
            {
              if (v12 >= 4)
              {
                v15 = [v10 objectAtIndex:1];
                v16 = [v10 objectAtIndex:2];
                v17 = [v10 objectAtIndex:3];
                [v17 unsignedIntValue];
                v4[2](v4, 4);

                goto LABEL_17;
              }
            }

            else if (v12 != 1)
            {
              v20 = [v10 objectAtIndex:1];
              v4[2](v4, 5);
            }

            goto LABEL_20;
          }

          v4[2](v4, v14);
          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (unint64_t)pmiEventThreshold
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"pmiet"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setPmiEventThreshold:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_dict setObject:v4 forKeyedSubscript:@"pmiet"];
}

- (XRRecountConfiguration)recountConfiguration
{
  v3 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"recount-configuation-analysis-mode"];
  v4 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"recount-configuration-counting-mode"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[XRRecountConfiguration alloc] initWithAnalysisMode:v3 countingMode:v4];
  }

  return v7;
}

- (void)setRecountConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 analysisMode];
  [(NSMutableDictionary *)self->_dict setObject:v5 forKeyedSubscript:@"recount-configuation-analysis-mode"];

  v6 = [v4 countingMode];

  [(NSMutableDictionary *)self->_dict setObject:v6 forKeyedSubscript:@"recount-configuration-counting-mode"];
}

- (void)setKdebugFilter:(id)a3
{
  v4 = a3;
  v7 = [(DTKPKDebugCodeSet *)v4 legacyXML];
  if (v7)
  {
    [(NSMutableDictionary *)self->_dict setObject:v7 forKeyedSubscript:@"kdf"];
    v5 = [(DTKPKDebugCodeSet *)v4 kdebugCodes];
    [(NSMutableDictionary *)self->_dict setObject:v5 forKeyedSubscript:@"kdf2"];
  }

  kdebugFilterSet = self->_kdebugFilterSet;
  self->_kdebugFilterSet = v4;
}

- (DTKPKDebugCodeSet)kdebugFilter
{
  kdebugFilterSet = self->_kdebugFilterSet;
  if (!kdebugFilterSet)
  {
    v4 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"kdf2"];
    if (v4)
    {
      v5 = [[DTKPKDebugCodeSet alloc] initWithCodes:v4];
      v6 = self->_kdebugFilterSet;
      self->_kdebugFilterSet = v5;
    }

    kdebugFilterSet = self->_kdebugFilterSet;
  }

  return kdebugFilterSet;
}

- (unint64_t)callstackFrameDepth
{
  v2 = [(NSMutableDictionary *)self->_dict objectForKeyedSubscript:@"csd"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 128;
  }

  return v4;
}

- (void)setCallstackFrameDepth:(unint64_t)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(NSMutableDictionary *)self->_dict setObject:v5 forKeyedSubscript:@"csd"];
  }

  else
  {
    dict = self->_dict;

    [(NSMutableDictionary *)dict removeObjectForKey:@"csd"];
  }
}

@end