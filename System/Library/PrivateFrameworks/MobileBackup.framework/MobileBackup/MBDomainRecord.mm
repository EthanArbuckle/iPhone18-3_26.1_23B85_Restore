@interface MBDomainRecord
+ (id)_recordIDForDomain:(id)domain commitID:(id)d hmacKey:(id)key pageIndex:(unint64_t)index;
+ (id)baseRecordIDForDomain:(id)domain commitID:(id)d hmacKey:(id)key;
+ (id)domainHmacFromBaseRecordID:(id)d;
+ (id)domainRecordForDomain:(id)domain commitID:(id)d addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets hmacKey:(id)key fileListStats:(id *)stats fileListPath:(id)path fileListEncodingType:(char)self0;
+ (id)domainRecordFromCKRecord:(id)record;
+ (id)domainRecordPageForDomain:(id)domain commitID:(id)d addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets hmacKey:(id)key pageIndex:(unint64_t)index;
+ (id)recordIDFromBaseRecordID:(id)d pageIndex:(unint64_t)index;
- (BOOL)decompressAssetIntoSnapshotDirectoryRoot:(id)root commitID:(id)d error:(id *)error;
- (MBDomainRecord)initWithDomainName:(id)name recordID:(id)d pageIndex:(unint64_t)index addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets cumulativeDirectoryCount:(unint64_t)count cumulativeRegCount:(unint64_t)regCount cumulativeEmptyRegCount:(unint64_t)self0 cumulativeSymlinkCount:(unint64_t)self1 cumulativeAssetCount:(unint64_t)self2 fileList:(id)self3 fileListEncodingType:(char)self4;
- (id)asCKRecord;
@end

@implementation MBDomainRecord

- (MBDomainRecord)initWithDomainName:(id)name recordID:(id)d pageIndex:(unint64_t)index addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets cumulativeDirectoryCount:(unint64_t)count cumulativeRegCount:(unint64_t)regCount cumulativeEmptyRegCount:(unint64_t)self0 cumulativeSymlinkCount:(unint64_t)self1 cumulativeAssetCount:(unint64_t)self2 fileList:(id)self3 fileListEncodingType:(char)self4
{
  nameCopy = name;
  dCopy = d;
  assetsCopy = assets;
  deletedAssetsCopy = deletedAssets;
  listCopy = list;
  v29.receiver = self;
  v29.super_class = MBDomainRecord;
  v23 = [(MBDomainRecord *)&v29 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_domainName, name);
    objc_storeStrong(&v24->_recordID, d);
    v24->_pageIndex = index;
    v24->_cumulativeDirectoryCount = count;
    v24->_cumulativeRegCount = regCount;
    v24->_cumulativeEmptyRegCount = emptyRegCount;
    v24->_cumulativeSymlinkCount = symlinkCount;
    v24->_cumulativeAssetCount = assetCount;
    objc_storeStrong(&v24->_addedOrModifiedAssets, assets);
    objc_storeStrong(&v24->_deletedAssets, deletedAssets);
    objc_storeStrong(&v24->_fileList, list);
    v24->_fileListEncodingType = type;
    if (type == -1)
    {
      __assert_rtn("[MBDomainRecord initWithDomainName:recordID:pageIndex:addedOrModifiedAssets:deletedAssets:cumulativeDirectoryCount:cumulativeRegCount:cumulativeEmptyRegCount:cumulativeSymlinkCount:cumulativeAssetCount:fileList:fileListEncodingType:]", "MBDomainRecord.m", 55, "fileListEncodingType != MBFileCompressionMethodDefault");
    }
  }

  return v24;
}

- (id)asCKRecord
{
  v3 = [CKRecord alloc];
  recordID = [(MBDomainRecord *)self recordID];
  v5 = [v3 initWithRecordType:@"Domain" recordID:recordID];

  domainName = [(MBDomainRecord *)self domainName];
  [v5 setObject:domainName forKeyedSubscript:@"domainName"];

  domainName2 = [(MBDomainRecord *)self domainName];
  v8 = [domainName2 dataUsingEncoding:4];
  encryptedValues = [v5 encryptedValues];
  [encryptedValues setObject:v8 forKeyedSubscript:@"domain"];

  addedOrModifiedAssets = [(MBDomainRecord *)self addedOrModifiedAssets];
  v11 = [addedOrModifiedAssets count];

  if (v11)
  {
    addedOrModifiedAssets2 = [(MBDomainRecord *)self addedOrModifiedAssets];
    [v5 setObject:addedOrModifiedAssets2 forKeyedSubscript:@"newAssets"];
  }

  deletedAssets = [(MBDomainRecord *)self deletedAssets];
  v14 = [deletedAssets count];

  if (v14)
  {
    deletedAssets2 = [(MBDomainRecord *)self deletedAssets];
    [v5 setObject:deletedAssets2 forKeyedSubscript:@"deletedAssets"];
  }

  if (![(MBDomainRecord *)self pageIndex])
  {
    fileList = [(MBDomainRecord *)self fileList];
    [v5 setObject:fileList forKeyedSubscript:@"fileList"];

    v17 = [NSNumber numberWithChar:[(MBDomainRecord *)self fileListEncodingType]];
    [v5 setObject:v17 forKeyedSubscript:@"fileListEncoding"];

    v18 = [NSNumber numberWithUnsignedLongLong:[(MBDomainRecord *)self cumulativeDirectoryCount]];
    [v5 setObject:v18 forKeyedSubscript:@"cumulativeDirectoryCount"];

    v19 = [NSNumber numberWithUnsignedLongLong:[(MBDomainRecord *)self cumulativeRegCount]];
    [v5 setObject:v19 forKeyedSubscript:@"cumulativeFileCount"];

    v20 = [NSNumber numberWithUnsignedLongLong:[(MBDomainRecord *)self cumulativeEmptyRegCount]];
    [v5 setObject:v20 forKeyedSubscript:@"cumulativeEmptyFileCount"];

    v21 = [NSNumber numberWithUnsignedLongLong:[(MBDomainRecord *)self cumulativeSymlinkCount]];
    [v5 setObject:v21 forKeyedSubscript:@"cumulativeSymLinkCount"];

    v22 = [NSNumber numberWithUnsignedLongLong:[(MBDomainRecord *)self cumulativeAssetCount]];
    [v5 setObject:v22 forKeyedSubscript:@"cumulativeAssetCount"];
  }

  return v5;
}

- (BOOL)decompressAssetIntoSnapshotDirectoryRoot:(id)root commitID:(id)d error:(id *)error
{
  rootCopy = root;
  dCopy = d;
  fileList = [(MBDomainRecord *)self fileList];
  fileURL = [fileList fileURL];

  if (!fileURL)
  {
    __assert_rtn("[MBDomainRecord decompressAssetIntoSnapshotDirectoryRoot:commitID:error:]", "MBDomainRecord.m", 89, "assetURL");
  }

  path = [fileURL path];
  fileListEncodingType = [(MBDomainRecord *)self fileListEncodingType];
  domainName = [(MBDomainRecord *)self domainName];
  v15 = MBDecompressFileListDB(path, fileListEncodingType, rootCopy, dCopy, domainName, error);
  v16 = v15 != 0;

  return v16;
}

+ (id)baseRecordIDForDomain:(id)domain commitID:(id)d hmacKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  domainCopy = domain;
  v10 = [objc_opt_class() domainHmacForDomainName:domainCopy hmacKey:keyCopy];

  v11 = [[NSString alloc] initWithFormat:@"%@%@:%@", @"N:", dCopy, v10];

  return v11;
}

+ (id)domainHmacFromBaseRecordID:(id)d
{
  dCopy = d;
  if (([dCopy hasPrefix:@"N:"] & 1) == 0)
  {
    __assert_rtn("+[MBDomainRecord domainHmacFromBaseRecordID:]", "MBDomainRecord.m", 105, "[recordID hasPrefix:MBDomainRecordPrefix]");
  }

  v4 = [dCopy componentsSeparatedByString:@":"];
  if ([v4 count] != 3)
  {
    __assert_rtn("+[MBDomainRecord domainHmacFromBaseRecordID:]", "MBDomainRecord.m", 108, "components.count == 3");
  }

  v5 = [v4 objectAtIndexedSubscript:2];

  return v5;
}

+ (id)recordIDFromBaseRecordID:(id)d pageIndex:(unint64_t)index
{
  dCopy = d;
  v6 = [MBCKDatabaseManager zoneIDOfType:1];
  index = [[NSString alloc] initWithFormat:@"%@:%llu", dCopy, index];

  v8 = [[CKRecordID alloc] initWithRecordName:index zoneID:v6];

  return v8;
}

+ (id)_recordIDForDomain:(id)domain commitID:(id)d hmacKey:(id)key pageIndex:(unint64_t)index
{
  keyCopy = key;
  dCopy = d;
  domainCopy = domain;
  v12 = [objc_opt_class() baseRecordIDForDomain:domainCopy commitID:dCopy hmacKey:keyCopy];

  v13 = [objc_opt_class() recordIDFromBaseRecordID:v12 pageIndex:index];

  return v13;
}

+ (id)domainRecordForDomain:(id)domain commitID:(id)d addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets hmacKey:(id)key fileListStats:(id *)stats fileListPath:(id)path fileListEncodingType:(char)self0
{
  HIDWORD(v27) = type;
  pathCopy = path;
  keyCopy = key;
  deletedAssetsCopy = deletedAssets;
  assetsCopy = assets;
  dCopy = d;
  domainCopy = domain;
  v22 = [objc_opt_class() _recordIDForDomain:domainCopy commitID:dCopy hmacKey:keyCopy pageIndex:0];

  v23 = [NSURL fileURLWithPath:pathCopy];

  v24 = [[CKAsset alloc] initWithFileURL:v23];
  LOBYTE(v27) = type;
  v25 = [[MBDomainRecord alloc] initWithDomainName:domainCopy recordID:v22 pageIndex:0 addedOrModifiedAssets:assetsCopy deletedAssets:deletedAssetsCopy cumulativeDirectoryCount:stats->var3 cumulativeRegCount:stats->var1 cumulativeEmptyRegCount:stats->var2 cumulativeSymlinkCount:stats->var4 cumulativeAssetCount:stats->var0 fileList:v24 fileListEncodingType:v27];

  return v25;
}

+ (id)domainRecordPageForDomain:(id)domain commitID:(id)d addedOrModifiedAssets:(id)assets deletedAssets:(id)deletedAssets hmacKey:(id)key pageIndex:(unint64_t)index
{
  domainCopy = domain;
  dCopy = d;
  assetsCopy = assets;
  deletedAssetsCopy = deletedAssets;
  keyCopy = key;
  if (!index)
  {
    __assert_rtn("+[MBDomainRecord domainRecordPageForDomain:commitID:addedOrModifiedAssets:deletedAssets:hmacKey:pageIndex:]", "MBDomainRecord.m", 144, "pageIndex != 0");
  }

  v18 = keyCopy;
  v19 = [objc_opt_class() _recordIDForDomain:domainCopy commitID:dCopy hmacKey:keyCopy pageIndex:index];
  LOBYTE(v22) = 0;
  v20 = [[MBDomainRecord alloc] initWithDomainName:domainCopy recordID:v19 pageIndex:index addedOrModifiedAssets:assetsCopy deletedAssets:deletedAssetsCopy cumulativeDirectoryCount:0 cumulativeRegCount:0 cumulativeEmptyRegCount:0 cumulativeSymlinkCount:0 cumulativeAssetCount:0 fileList:0 fileListEncodingType:v22];

  return v20;
}

+ (id)domainRecordFromCKRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  encryptedValues = [recordCopy encryptedValues];
  v30 = [encryptedValues objectForKeyedSubscript:@"domain"];

  v5 = [[NSString alloc] initWithData:v30 encoding:4];
  v29 = [recordCopy objectForKeyedSubscript:@"cumulativeDirectoryCount"];
  unsignedLongLongValue = [v29 unsignedLongLongValue];
  v27 = [recordCopy objectForKeyedSubscript:@"cumulativeFileCount"];
  unsignedLongLongValue2 = [v27 unsignedLongLongValue];
  v26 = [recordCopy objectForKeyedSubscript:@"cumulativeSymLinkCount"];
  unsignedLongLongValue3 = [v26 unsignedLongLongValue];
  v24 = [recordCopy objectForKeyedSubscript:@"cumulativeEmptyFileCount"];
  unsignedLongLongValue4 = [v24 unsignedLongLongValue];
  v6 = [recordCopy objectForKeyedSubscript:@"cumulativeAssetCount"];
  unsignedLongLongValue5 = [v6 unsignedLongLongValue];
  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];
  v9 = [recordName componentsSeparatedByString:@":"];
  lastObject = [v9 lastObject];

  longLongValue = [lastObject longLongValue];
  v12 = [recordCopy objectForKeyedSubscript:@"fileList"];
  v13 = [recordCopy objectForKeyedSubscript:@"fileListEncoding"];
  unsignedLongLongValue6 = [v13 unsignedLongLongValue];
  v15 = [recordCopy objectForKeyedSubscript:@"newAssets"];
  v16 = [recordCopy objectForKeyedSubscript:@"deletedAssets"];

  LOBYTE(v19) = unsignedLongLongValue6;
  v17 = [[MBDomainRecord alloc] initWithDomainName:v5 recordID:recordID pageIndex:longLongValue addedOrModifiedAssets:v15 deletedAssets:v16 cumulativeDirectoryCount:unsignedLongLongValue cumulativeRegCount:unsignedLongLongValue2 cumulativeEmptyRegCount:unsignedLongLongValue4 cumulativeSymlinkCount:unsignedLongLongValue3 cumulativeAssetCount:unsignedLongLongValue5 fileList:v12 fileListEncodingType:v19];

  return v17;
}

@end