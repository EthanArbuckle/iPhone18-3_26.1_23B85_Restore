@interface DESDebugRecord
+ (id)recordIDFromPluginID:(id)d taskSource:(int64_t)source;
- (BOOL)commitWithError:(id *)error;
- (DESDebugRecord)initWithPluginID:(id)d taskSource:(int64_t)source;
- (DESDebugRecord)initWithRecordID:(id)d debugInfo:(id)info;
- (NSDictionary)debugInfo;
- (id)description;
- (id)initFromStoreWithPluginID:(id)d taskSource:(int64_t)source;
- (id)stringForResult:(id)result;
- (void)addForTaskID:(id)d result:(int64_t)result description:(id)description;
@end

@implementation DESDebugRecord

+ (id)recordIDFromPluginID:(id)d taskSource:(int64_t)source
{
  v4 = @"trial";
  if (source != 1)
  {
    v4 = 0;
  }

  return [d stringByAppendingFormat:@".%@", v4];
}

- (id)initFromStoreWithPluginID:(id)d taskSource:(int64_t)source
{
  dCopy = d;
  v7 = [objc_opt_class() recordIDFromPluginID:dCopy taskSource:source];

  v8 = [[DESUserDefaultsStoreRecord alloc] initWithRecordID:v7];
  debugInfo = [(DESUserDefaultsStoreRecord *)v8 debugInfo];
  v10 = [(DESDebugRecord *)self initWithRecordID:v7 debugInfo:debugInfo];

  return v10;
}

- (DESDebugRecord)initWithPluginID:(id)d taskSource:(int64_t)source
{
  dCopy = d;
  v7 = [objc_opt_class() recordIDFromPluginID:dCopy taskSource:source];

  v8 = [(DESDebugRecord *)self initWithRecordID:v7 debugInfo:0];
  return v8;
}

- (DESDebugRecord)initWithRecordID:(id)d debugInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    v17.receiver = self;
    v17.super_class = DESDebugRecord;
    v9 = [(DESDebugRecord *)&v17 init];
    if (v9)
    {
      v10 = [[DESUserDefaultsStoreRecord alloc] initWithRecordID:dCopy];
      storeRecord = v9->_storeRecord;
      v9->_storeRecord = v10;

      objc_storeStrong(&v9->_recordID, d);
      if (infoCopy)
      {
        v12 = infoCopy;
      }

      else
      {
        v12 = MEMORY[0x277CBEC10];
      }

      v13 = [v12 mutableCopy];
      debugInfo = v9->_debugInfo;
      v9->_debugInfo = v13;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"%@: %lu task(s) in last run", self->_recordID, -[NSMutableDictionary count](self->_debugInfo, "count")];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_debugInfo;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_debugInfo objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKeyedSubscript:@"result"];
          v10 = [(DESDebugRecord *)self stringForResult:v9];
          v11 = [v8 objectForKeyedSubscript:@"timestamp"];
          [string appendFormat:@"\n\t%@ (%@) at %@", v7, v10, v11];

          v12 = [v8 objectForKeyedSubscript:@"description"];

          if (v12)
          {
            v13 = [v8 objectForKeyedSubscript:@"description"];
            [string appendFormat:@"\n\t\t%@", v13];
          }
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  v14 = [string copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)stringForResult:(id)result
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_285C15F18;
  v11[1] = &unk_285C15F30;
  v12[0] = @"success";
  v12[1] = @"skipped";
  v11[2] = &unk_285C15F48;
  v11[3] = &unk_285C15F60;
  v12[2] = @"deferred by OS";
  v12[3] = @"deferred by plugin";
  v11[4] = &unk_285C15F78;
  v12[4] = @"fail to run";
  v3 = MEMORY[0x277CBEAC0];
  resultCopy = result;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:v11 count:5];
  v6 = [v5 objectForKeyedSubscript:resultCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown result";
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSDictionary)debugInfo
{
  v2 = [(NSMutableDictionary *)self->_debugInfo copy];

  return v2;
}

- (void)addForTaskID:(id)d result:(int64_t)result description:(id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  descriptionCopy = description;
  v10 = DESIsInternalInstall();
  if (dCopy && v10)
  {
    v11 = MEMORY[0x277CBEB38];
    v18[0] = @"result";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:result];
    v18[1] = @"timestamp";
    v19[0] = v12;
    date = [MEMORY[0x277CBEAA8] date];
    v19[1] = date;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v15 = [v11 dictionaryWithDictionary:v14];

    if (descriptionCopy)
    {
      [v15 setObject:descriptionCopy forKeyedSubscript:@"description"];
    }

    v16 = [v15 copy];
    [(NSMutableDictionary *)self->_debugInfo setObject:v16 forKeyedSubscript:dCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)commitWithError:(id *)error
{
  if (DESIsInternalInstall())
  {
    [(DESUserDefaultsStoreRecord *)self->_storeRecord setDebugInfo:self->_debugInfo];
  }

  return 1;
}

@end