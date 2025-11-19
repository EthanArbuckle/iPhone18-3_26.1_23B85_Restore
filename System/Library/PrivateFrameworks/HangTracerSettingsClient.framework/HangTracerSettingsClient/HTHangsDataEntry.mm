@interface HTHangsDataEntry
+ (id)sortedHangIDsByCreationDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HTHangsDataEntry)initWithPath:(id)a3 hangID:(id)a4 creationDate:(id)a5 duration:(double)a6 processBundleID:(id)a7 processPath:(id)a8 processRecord:(id)a9;
- (NSString)displayName;
- (unint64_t)fileSize;
@end

@implementation HTHangsDataEntry

- (HTHangsDataEntry)initWithPath:(id)a3 hangID:(id)a4 creationDate:(id)a5 duration:(double)a6 processBundleID:(id)a7 processPath:(id)a8 processRecord:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v37.receiver = self;
  v37.super_class = HTHangsDataEntry;
  v22 = [(HTHangsDataEntry *)&v37 init];
  if (v22)
  {
    v23 = [v16 copy];
    path = v22->_path;
    v22->_path = v23;

    v25 = [v17 copy];
    hangID = v22->_hangID;
    v22->_hangID = v25;

    objc_storeStrong(&v22->_creationDate, a5);
    v22->_duration = a6;
    v27 = [v19 copy];
    v28 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v29 = [v27 stringByTrimmingCharactersInSet:v28];
    processBundleID = v22->_processBundleID;
    v22->_processBundleID = v29;

    v31 = [v20 copy];
    processPath = v22->_processPath;
    v22->_processPath = v31;

    objc_storeStrong(&v22->_processRecord, a9);
    if ([(NSString *)v22->_path hasSuffix:@"ips"])
    {
      v33 = 1;
    }

    else
    {
      v33 = [(NSString *)v22->_path hasSuffix:@"ips.synced"];
    }

    v22->_isLogFile = v33;
    v34 = v22->_path;
    if (v34)
    {
      v35 = [(NSString *)v34 length]== 0;
    }

    else
    {
      v35 = 1;
    }

    v22->_isBeingProcessed = v35;
  }

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)v4->_hangID isEqual:self->_hangID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)displayName
{
  if (displayName_onceToken != -1)
  {
    [HTHangsDataEntry displayName];
  }

  processRecord = self->_processRecord;
  if (processRecord)
  {
    v4 = [(LSApplicationRecord *)processRecord localizedName];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 stringByTrimmingCharactersInSet:displayName_characterSet];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = [(NSString *)self->_processBundleID componentsSeparatedByString:@"."];
    v8 = [v7 lastObject];

    v4 = v8;
  }

  v9 = [v4 stringByTrimmingCharactersInSet:displayName_characterSet];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [(NSString *)self->_processPath componentsSeparatedByString:@"/"];
    v12 = [v11 lastObject];

    v4 = v12;
  }

  v13 = [v4 stringByTrimmingCharactersInSet:displayName_characterSet];
  if ([v13 length])
  {
    v14 = v4;
  }

  else
  {
    v14 = HTUIPlaceholderUnknownProcess();
  }

  v15 = v14;

  return v15;
}

void __31__HTHangsDataEntry_displayName__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = displayName_characterSet;
  displayName_characterSet = v1;

  v3 = displayName_characterSet;
  v4 = [MEMORY[0x277CCA900] controlCharacterSet];
  [v3 formUnionWithCharacterSet:v4];
}

- (unint64_t)fileSize
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  path = self->_path;
  v10 = 0;
  v5 = [v3 attributesOfItemAtPath:path error:&v10];
  v6 = v10;
  v7 = [v5 fileSize];

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    NSLog(&cfstr_UnableToRetrie.isa, self->_path, v6);
    v7 = 0;
  }

  return v7;
}

+ (id)sortedHangIDsByCreationDate:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HTHangsDataEntry_sortedHangIDsByCreationDate___block_invoke;
  v8[3] = &unk_2796A91F0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __48__HTHangsDataEntry_sortedHangIDsByCreationDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 firstObject];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 firstObject];

  v11 = [v10 creationDate];
  v12 = [v8 creationDate];
  v13 = [v11 compare:v12];

  return v13;
}

uint64_t __44__HTHangsDataEntry_sortedEntriesByFileType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isLogFile];
  v7 = [v5 isLogFile];
  if (v6 && v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v4 path];
    v10 = [v8 fileURLWithPath:v9 isDirectory:0];
    v11 = [HTHangSymbolicator isLogFileSymbolicated:v10];

    if (v11)
    {
      v12 = 1;
      goto LABEL_13;
    }

    v14 = MEMORY[0x277CBEBC0];
    v15 = [v5 path];
    v16 = [v14 fileURLWithPath:v15 isDirectory:0];
    v17 = [HTHangSymbolicator isLogFileSymbolicated:v16];

    if (v17)
    {
      v12 = -1;
      goto LABEL_13;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v13 = v6 | v7;
  if (v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v12;
}

@end