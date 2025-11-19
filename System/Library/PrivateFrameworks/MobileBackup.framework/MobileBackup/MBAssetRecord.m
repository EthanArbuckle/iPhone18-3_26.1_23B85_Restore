@interface MBAssetRecord
+ (id)_assetIDForDomain:(id)a3 inode:(unint64_t)a4 hmacKey:(id)a5;
+ (id)_contentAssetForFileAtPath:(id)a3 domain:(id)a4 assetType:(unint64_t)a5 compressionMethod:(char)a6 protectionClass:(unsigned __int8)a7;
+ (id)_recordIDForAssetIDPrefix:(id)a3 commitID:(id)a4 domainName:(id)a5 inode:(unint64_t)a6 hmacKey:(id)a7 logicalSize:(int64_t)a8;
+ (id)assetRecordForDomain:(id)a3 absolutePath:(id)a4 extension:(id)a5 inode:(unint64_t)a6 protectionClass:(unsigned __int8)a7 assetType:(unint64_t)a8 compressionMethod:(char)a9 device:(id)a10 commitID:(id)a11 outAssetSize:(int64_t *)a12 error:(id *)a13;
+ (id)assetRecordFromCKRecord:(id)a3;
+ (id)assetRecordIDPrefixFromAssetIDPrefix:(id)a3;
+ (id)recordIDFromAssetIDPrefix:(id)a3 recordIDSuffix:(id)a4;
- (MBAssetRecord)initWithRecordID:(id)a3 contents:(id)a4 extension:(id)a5 pluginFields:(id)a6;
- (NSString)recordIDSuffix;
- (id)asCKRecord;
@end

@implementation MBAssetRecord

- (MBAssetRecord)initWithRecordID:(id)a3 contents:(id)a4 extension:(id)a5 pluginFields:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    __assert_rtn("[MBAssetRecord initWithRecordID:contents:extension:pluginFields:]", "MBAssetRecord.m", 28, "recordID");
  }

  if (!v12)
  {
    __assert_rtn("[MBAssetRecord initWithRecordID:contents:extension:pluginFields:]", "MBAssetRecord.m", 29, "contents");
  }

  v15 = v14;
  v19.receiver = self;
  v19.super_class = MBAssetRecord;
  v16 = [(MBAssetRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_recordID, a3);
    objc_storeStrong(&v17->_contents, a4);
    objc_storeStrong(&v17->_extension, a5);
    objc_storeStrong(&v17->_pluginFields, a6);
  }

  return v17;
}

- (id)asCKRecord
{
  v3 = [CKRecord alloc];
  v4 = [(MBAssetRecord *)self recordID];
  v5 = [v3 initWithRecordType:@"BackupAsset" recordID:v4];

  v6 = [(MBAssetRecord *)self contents];
  [v5 setObject:v6 forKeyedSubscript:@"contents"];

  v7 = [(MBAssetRecord *)self extension];
  [v5 setObject:v7 forKeyedSubscript:@"extension"];

  if ([(NSDictionary *)self->_pluginFields count])
  {
    [v5 setPluginFields:self->_pluginFields];
  }

  return v5;
}

- (NSString)recordIDSuffix
{
  v2 = [(MBAssetRecord *)self recordID];
  v3 = [v2 recordName];

  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] != 5)
  {
    __assert_rtn("[MBAssetRecord recordIDSuffix]", "MBAssetRecord.m", 54, "components.count == expectedLength");
  }

  v5 = [@":" length];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 length];

  v8 = [v4 objectAtIndexedSubscript:1];
  v9 = [v8 length];

  v10 = [v3 substringFromIndex:&v9[v7 + 2 * v5]];

  return v10;
}

+ (id)assetRecordFromCKRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"contents"];
  v5 = [v3 objectForKeyedSubscript:@"extension"];
  v6 = [MBAssetRecord alloc];
  v7 = [v3 recordID];

  v8 = [(MBAssetRecord *)v6 initWithRecordID:v7 contents:v4 extension:v5 pluginFields:0];

  return v8;
}

+ (id)assetRecordIDPrefixFromAssetIDPrefix:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"A:", v3];

  return v4;
}

+ (id)recordIDFromAssetIDPrefix:(id)a3 recordIDSuffix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [MBCKDatabaseManager zoneIDOfType:1];
  v8 = [[NSString alloc] initWithFormat:@"%@%@:%@", @"A:", v6, v5];

  v9 = [[CKRecordID alloc] initWithRecordName:v8 zoneID:v7];

  return v9;
}

+ (id)_assetIDForDomain:(id)a3 inode:(unint64_t)a4 hmacKey:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[NSString alloc] initWithFormat:@"%@:%llu", v8, a4];

  v10 = [MBDigestSHA1 sha1HmacForString:v9 key:v7];

  v11 = [v10 base64EncodedStringWithOptions:0];

  return v11;
}

+ (id)_recordIDForAssetIDPrefix:(id)a3 commitID:(id)a4 domainName:(id)a5 inode:(unint64_t)a6 hmacKey:(id)a7 logicalSize:(int64_t)a8
{
  v14 = a4;
  v15 = a3;
  v16 = [a1 _assetIDForDomain:a5 inode:a6 hmacKey:a7];
  v17 = [[NSString alloc] initWithFormat:@"%@:%@:%llu", v14, v16, a8];

  v18 = [a1 recordIDFromAssetIDPrefix:v15 recordIDSuffix:v17];

  return v18;
}

+ (id)_contentAssetForFileAtPath:(id)a3 domain:(id)a4 assetType:(unint64_t)a5 compressionMethod:(char)a6 protectionClass:(unsigned __int8)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = [NSURL fileURLWithPath:v11];
  v14 = [[CKAsset alloc] initWithFileURL:v13];
  if (v7 == 3)
  {
    v15 = [v12 name];
    if ([v15 isEqualToString:@"CameraRollDomain"])
    {
      v16 = [v12 shouldBackupRelativePathIgnoringProtectionClass:v11];

      if (v16)
      {
        if (a5 == 2)
        {
          goto LABEL_26;
        }

        if (!v8)
        {
          if (a5 != 3)
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

  if (a5 != 2)
  {
    if ((v7 | 4) == 7)
    {
      [v14 setItemTypeHint:@"fxd"];
    }

    if (v8)
    {
      [v14 setItemTypeHint:@"fxd"];
    }

    else if (a5 == 3)
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
  v19 = [v12 name];
  if (![v19 isEqualToString:@"HealthDomain"])
  {

    goto LABEL_21;
  }

  v20 = [v11 hasSuffix:@"healthdb_secure.sqlite"];

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
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not using fxd for: %@", buf, 0xCu);
    v25 = v11;
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

+ (id)assetRecordForDomain:(id)a3 absolutePath:(id)a4 extension:(id)a5 inode:(unint64_t)a6 protectionClass:(unsigned __int8)a7 assetType:(unint64_t)a8 compressionMethod:(char)a9 device:(id)a10 commitID:(id)a11 outAssetSize:(int64_t *)a12 error:(id *)a13
{
  v14 = a7;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a10;
  v36 = a11;
  if (!v20)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 172, "device");
  }

  v21 = [v20 assetIDPrefix];
  if (!v21)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 173, "device.assetIDPrefix");
  }

  v22 = [v20 hmacKey];
  if (!v22)
  {
    __assert_rtn("+[MBAssetRecord assetRecordForDomain:absolutePath:extension:inode:protectionClass:assetType:compressionMethod:device:commitID:outAssetSize:error:]", "MBAssetRecord.m", 174, "device.hmacKey");
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  v23 = 0;
  if (MBNodeForPath(v18, v37, a13))
  {
    v33 = v14;
    v24 = *(&v38 + 1);
    if (a12)
    {
      *a12 = *(&v38 + 1);
    }

    v25 = [v20 assetIDPrefix];
    v26 = [v17 name];
    v27 = [v20 hmacKey];
    v28 = [a1 _recordIDForAssetIDPrefix:v25 commitID:v36 domainName:v26 inode:a6 hmacKey:v27 logicalSize:v24];

    v29 = [a1 _contentAssetForFileAtPath:v18 domain:v17 assetType:a8 compressionMethod:a9 protectionClass:v33];
    v41 = @"domainName";
    v30 = [v17 name];
    v42 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

    v23 = [[MBAssetRecord alloc] initWithRecordID:v28 contents:v29 extension:v19 pluginFields:v31];
  }

  return v23;
}

@end