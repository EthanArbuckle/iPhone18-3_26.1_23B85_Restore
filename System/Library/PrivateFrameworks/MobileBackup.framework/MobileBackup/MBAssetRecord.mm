@interface MBAssetRecord
+ (id)_assetIDForDomain:(id)domain inode:(unint64_t)inode hmacKey:(id)key;
+ (id)_contentAssetForFileAtPath:(id)path domain:(id)domain assetType:(unint64_t)type compressionMethod:(char)method protectionClass:(unsigned __int8)class;
+ (id)_recordIDForAssetIDPrefix:(id)prefix commitID:(id)d domainName:(id)name inode:(unint64_t)inode hmacKey:(id)key logicalSize:(int64_t)size;
+ (id)assetRecordForDomain:(id)domain absolutePath:(id)path extension:(id)extension inode:(unint64_t)inode protectionClass:(unsigned __int8)class assetType:(unint64_t)type compressionMethod:(char)method device:(id)self0 commitID:(id)self1 outAssetSize:(int64_t *)self2 error:(id *)self3;
+ (id)assetRecordFromCKRecord:(id)record;
+ (id)assetRecordIDPrefixFromAssetIDPrefix:(id)prefix;
+ (id)recordIDFromAssetIDPrefix:(id)prefix recordIDSuffix:(id)suffix;
- (MBAssetRecord)initWithRecordID:(id)d contents:(id)contents extension:(id)extension pluginFields:(id)fields;
- (NSString)recordIDSuffix;
- (id)asCKRecord;
@end

@implementation MBAssetRecord

- (MBAssetRecord)initWithRecordID:(id)d contents:(id)contents extension:(id)extension pluginFields:(id)fields
{
  dCopy = d;
  contentsCopy = contents;
  extensionCopy = extension;
  fieldsCopy = fields;
  if (!dCopy)
  {
    __assert_rtn("[MBAssetRecord initWithRecordID:contents:extension:pluginFields:]", "MBAssetRecord.m", 28, "recordID");
  }

  if (!contentsCopy)
  {
    __assert_rtn("[MBAssetRecord initWithRecordID:contents:extension:pluginFields:]", "MBAssetRecord.m", 29, "contents");
  }

  v15 = fieldsCopy;
  v19.receiver = self;
  v19.super_class = MBAssetRecord;
  v16 = [(MBAssetRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_recordID, d);
    objc_storeStrong(&v17->_contents, contents);
    objc_storeStrong(&v17->_extension, extension);
    objc_storeStrong(&v17->_pluginFields, fields);
  }

  return v17;
}

- (id)asCKRecord
{
  v3 = [CKRecord alloc];
  recordID = [(MBAssetRecord *)self recordID];
  v5 = [v3 initWithRecordType:@"BackupAsset" recordID:recordID];

  contents = [(MBAssetRecord *)self contents];
  [v5 setObject:contents forKeyedSubscript:@"contents"];

  extension = [(MBAssetRecord *)self extension];
  [v5 setObject:extension forKeyedSubscript:@"extension"];

  if ([(NSDictionary *)self->_pluginFields count])
  {
    [v5 setPluginFields:self->_pluginFields];
  }

  return v5;
}

- (NSString)recordIDSuffix
{
  recordID = [(MBAssetRecord *)self recordID];
  recordName = [recordID recordName];

  v4 = [recordName componentsSeparatedByString:@":"];
  if ([v4 count] != 5)
  {
    __assert_rtn("[MBAssetRecord recordIDSuffix]", "MBAssetRecord.m", 54, "components.count == expectedLength");
  }

  v5 = [@":" length];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 length];

  v8 = [v4 objectAtIndexedSubscript:1];
  v9 = [v8 length];

  v10 = [recordName substringFromIndex:&v9[v7 + 2 * v5]];

  return v10;
}

+ (id)assetRecordFromCKRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKeyedSubscript:@"contents"];
  v5 = [recordCopy objectForKeyedSubscript:@"extension"];
  v6 = [MBAssetRecord alloc];
  recordID = [recordCopy recordID];

  v8 = [(MBAssetRecord *)v6 initWithRecordID:recordID contents:v4 extension:v5 pluginFields:0];

  return v8;
}

+ (id)assetRecordIDPrefixFromAssetIDPrefix:(id)prefix
{
  prefixCopy = prefix;
  prefixCopy = [[NSString alloc] initWithFormat:@"%@%@", @"A:", prefixCopy];

  return prefixCopy;
}

+ (id)recordIDFromAssetIDPrefix:(id)prefix recordIDSuffix:(id)suffix
{
  suffixCopy = suffix;
  prefixCopy = prefix;
  v7 = [MBCKDatabaseManager zoneIDOfType:1];
  suffixCopy = [[NSString alloc] initWithFormat:@"%@%@:%@", @"A:", prefixCopy, suffixCopy];

  v9 = [[CKRecordID alloc] initWithRecordName:suffixCopy zoneID:v7];

  return v9;
}

+ (id)_assetIDForDomain:(id)domain inode:(unint64_t)inode hmacKey:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  inode = [[NSString alloc] initWithFormat:@"%@:%llu", domainCopy, inode];

  v10 = [MBDigestSHA1 sha1HmacForString:inode key:keyCopy];

  v11 = [v10 base64EncodedStringWithOptions:0];

  return v11;
}

+ (id)_recordIDForAssetIDPrefix:(id)prefix commitID:(id)d domainName:(id)name inode:(unint64_t)inode hmacKey:(id)key logicalSize:(int64_t)size
{
  dCopy = d;
  prefixCopy = prefix;
  v16 = [self _assetIDForDomain:name inode:inode hmacKey:key];
  v17 = [[NSString alloc] initWithFormat:@"%@:%@:%llu", dCopy, v16, size];

  v18 = [self recordIDFromAssetIDPrefix:prefixCopy recordIDSuffix:v17];

  return v18;
}

+ (id)_contentAssetForFileAtPath:(id)path domain:(id)domain assetType:(unint64_t)type compressionMethod:(char)method protectionClass:(unsigned __int8)class
{
  classCopy = class;
  methodCopy = method;
  pathCopy = path;
  domainCopy = domain;
  v13 = [NSURL fileURLWithPath:pathCopy];
  v14 = [[CKAsset alloc] initWithFileURL:v13];
  if (classCopy == 3)
  {
    name = [domainCopy name];
    if ([name isEqualToString:@"CameraRollDomain"])
    {
      v16 = [domainCopy shouldBackupRelativePathIgnoringProtectionClass:pathCopy];

      if (v16)
      {
        if (type == 2)
        {
          goto LABEL_26;
        }

        if (!methodCopy)
        {
          if (type != 3)
          {
            goto LABEL_26;
          }

          v26 = kCKAssetChunkLength;
          v27 = &off_1003E0DE0;
          v17 = &v27;
          v18 = &v26;
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  if (type != 2)
  {
    if ((classCopy | 4) == 7)
    {
      [v14 setItemTypeHint:@"fxd"];
    }

    if (methodCopy)
    {
      [v14 setItemTypeHint:@"fxd"];
    }

    else if (type == 3)
    {
      v26 = kCKAssetChunkLength;
      v27 = &off_1003E0DE0;
      v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v14 setAssetChunkerOptions:v23];
    }

    v22 = objc_opt_new();
    [v22 setUseMMCSEncryptionV2:&__kCFBooleanTrue];
    [v14 setAssetTransferOptions:v22];
    goto LABEL_25;
  }

  [v14 setShouldReadRawEncryptedData:1];
  name2 = [domainCopy name];
  if (![name2 isEqualToString:@"HealthDomain"])
  {

    goto LABEL_21;
  }

  v20 = [pathCopy hasSuffix:@"healthdb_secure.sqlite"];

  if (!v20)
  {
LABEL_21:
    [v14 setItemTypeHint:@"fxd"];
    goto LABEL_26;
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = pathCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not using fxd for: %@", buf, 0xCu);
    v25 = pathCopy;
    _MBLog();
  }

  v28 = kCKAssetChunkLength;
  v29 = &off_1003E0DE0;
  v17 = &v29;
  v18 = &v28;
LABEL_15:
  v22 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:1, v25];
  [v14 setAssetChunkerOptions:v22];
LABEL_25:

LABEL_26:

  return v14;
}

+ (id)assetRecordForDomain:(id)domain absolutePath:(id)path extension:(id)extension inode:(unint64_t)inode protectionClass:(unsigned __int8)class assetType:(unint64_t)type compressionMethod:(char)method device:(id)self0 commitID:(id)self1 outAssetSize:(int64_t *)self2 error:(id *)self3
{
  classCopy = class;
  domainCopy = domain;
  pathCopy = path;
  extensionCopy = extension;
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 172, "device");
  }

  assetIDPrefix = [deviceCopy assetIDPrefix];
  if (!assetIDPrefix)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 173, "device.assetIDPrefix");
  }

  hmacKey = [deviceCopy hmacKey];
  if (!hmacKey)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 174, "device.hmacKey");
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  v23 = 0;
  if (MBNodeForPath(pathCopy, v37, error))
  {
    v33 = classCopy;
    v24 = *(&v38 + 1);
    if (size)
    {
      *size = *(&v38 + 1);
    }

    assetIDPrefix2 = [deviceCopy assetIDPrefix];
    name = [domainCopy name];
    hmacKey2 = [deviceCopy hmacKey];
    v28 = [self _recordIDForAssetIDPrefix:assetIDPrefix2 commitID:dCopy domainName:name inode:inode hmacKey:hmacKey2 logicalSize:v24];

    v29 = [self _contentAssetForFileAtPath:pathCopy domain:domainCopy assetType:type compressionMethod:method protectionClass:v33];
    v41 = @"domainName";
    name2 = [domainCopy name];
    v42 = name2;
    v31 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

    v23 = [[MBAssetRecord alloc] initWithRecordID:v28 contents:v29 extension:extensionCopy pluginFields:v31];
  }

  return v23;
}

@end