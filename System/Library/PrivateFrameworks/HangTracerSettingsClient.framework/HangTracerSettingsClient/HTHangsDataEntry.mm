@interface HTHangsDataEntry
+ (id)sortedHangIDsByCreationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (HTHangsDataEntry)initWithPath:(id)path hangID:(id)d creationDate:(id)date duration:(double)duration processBundleID:(id)iD processPath:(id)processPath processRecord:(id)record;
- (NSString)displayName;
- (unint64_t)fileSize;
@end

@implementation HTHangsDataEntry

- (HTHangsDataEntry)initWithPath:(id)path hangID:(id)d creationDate:(id)date duration:(double)duration processBundleID:(id)iD processPath:(id)processPath processRecord:(id)record
{
  pathCopy = path;
  dCopy = d;
  dateCopy = date;
  iDCopy = iD;
  processPathCopy = processPath;
  recordCopy = record;
  v37.receiver = self;
  v37.super_class = HTHangsDataEntry;
  v22 = [(HTHangsDataEntry *)&v37 init];
  if (v22)
  {
    v23 = [pathCopy copy];
    path = v22->_path;
    v22->_path = v23;

    v25 = [dCopy copy];
    hangID = v22->_hangID;
    v22->_hangID = v25;

    objc_storeStrong(&v22->_creationDate, date);
    v22->_duration = duration;
    v27 = [iDCopy copy];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v29 = [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    processBundleID = v22->_processBundleID;
    v22->_processBundleID = v29;

    v31 = [processPathCopy copy];
    processPath = v22->_processPath;
    v22->_processPath = v31;

    objc_storeStrong(&v22->_processRecord, record);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)equalCopy->_hangID isEqual:self->_hangID];
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
    localizedName = [(LSApplicationRecord *)processRecord localizedName];
  }

  else
  {
    localizedName = 0;
  }

  v5 = [localizedName stringByTrimmingCharactersInSet:displayName_characterSet];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = [(NSString *)self->_processBundleID componentsSeparatedByString:@"."];
    lastObject = [v7 lastObject];

    localizedName = lastObject;
  }

  v9 = [localizedName stringByTrimmingCharactersInSet:displayName_characterSet];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [(NSString *)self->_processPath componentsSeparatedByString:@"/"];
    lastObject2 = [v11 lastObject];

    localizedName = lastObject2;
  }

  v13 = [localizedName stringByTrimmingCharactersInSet:displayName_characterSet];
  if ([v13 length])
  {
    v14 = localizedName;
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = self->_path;
  v10 = 0;
  v5 = [defaultManager attributesOfItemAtPath:path error:&v10];
  v6 = v10;
  fileSize = [v5 fileSize];

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = fileSize == 0;
  }

  if (v8)
  {
    NSLog(&cfstr_UnableToRetrie.isa, self->_path, v6);
    fileSize = 0;
  }

  return fileSize;
}

+ (id)sortedHangIDsByCreationDate:(id)date
{
  dateCopy = date;
  allKeys = [dateCopy allKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HTHangsDataEntry_sortedHangIDsByCreationDate___block_invoke;
  v8[3] = &unk_2796A91F0;
  v9 = dateCopy;
  v5 = dateCopy;
  v6 = [allKeys sortedArrayUsingComparator:v8];

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