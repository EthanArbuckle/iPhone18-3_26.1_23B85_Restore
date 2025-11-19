@interface BMStoreConfig
+ (id)newLibraryStoreConfigForStreamIdentifier:(id)a3 domain:(unint64_t)a4 segmentSize:(unint64_t)a5 protectionClass:(unint64_t)a6 pruningPolicy:(id)a7;
+ (id)newPrivateStreamDefaultConfigurationWithStoreBasePath:(id)a3 protectionClass:(unint64_t)a4;
+ (id)newRestrictedStreamWithSegmentSize:(unint64_t)a3 protectionClass:(unint64_t)a4 domain:(unint64_t)a5;
+ (id)newStreamDefaultConfigurationForPublicStream:(BOOL)a3 protectionClass:(unint64_t)a4 segmentSize:(unint64_t)a5;
+ (unint64_t)_streamTypeFromStorePath:(id)a3 domain:(unint64_t *)a4;
- (BMStoreConfig)initWithStoreBasePath:(id)a3 segmentSize:(unint64_t)a4 protectionClass:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)_initWithStoreVersion:(unint64_t)a3 storeBasePath:(id)a4 segmentSize:(unint64_t)a5 protectionClass:(unint64_t)a6 storeLocationOption:(int64_t)a7 account:(id)a8 remoteName:(id)a9 pruningPolicy:(id)a10 streamType:(unint64_t)a11 domain:(unint64_t)a12 user:(unsigned int)a13 isManaged:(BOOL)a14 streamIdentifier:(id)a15 currentDevice:(id)a16;
- (id)copyWithRemoteName:(id)a3;
- (id)copyWithStoreBasePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedPathWithStreamIdentifier:(id)a3;
- (id)subscriptionsConfig;
- (id)tombstonesConfig;
- (unint64_t)hash;
@end

@implementation BMStoreConfig

- (id)tombstonesConfig
{
  v16 = +[BMStoreConfig defaultStoreVersion];
  v3 = [[BMPruningPolicy alloc] initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:691200.0];
  v4 = [BMStoreConfig alloc];
  protectionClass = self->_protectionClass;
  remoteName = self->_remoteName;
  account = self->_account;
  domain = self->_domain;
  uid = self->_uid;
  isManaged = self->_isManaged;
  datastorePath = self->_datastorePath;
  v11 = [(NSString *)self->_streamIdentifierForLogging stringByAppendingString:@":tombstones"];
  BYTE4(v14) = isManaged;
  LODWORD(v14) = uid;
  v12 = [(BMStoreConfig *)v4 _initWithStoreVersion:v16 storeBasePath:datastorePath segmentSize:0x100000 protectionClass:protectionClass storeLocationOption:2 account:account remoteName:remoteName pruningPolicy:v3 streamType:2 domain:domain user:v14 isManaged:v11 streamIdentifier:self->_currentDevice currentDevice:?];

  return v12;
}

+ (id)newStreamDefaultConfigurationForPublicStream:(BOOL)a3 protectionClass:(unint64_t)a4 segmentSize:(unint64_t)a5
{
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [MEMORY[0x1E698E9C8] pathForStreamType:v7 domain:0];
  v9 = [[BMStoreConfig alloc] initWithStoreBasePath:v8 segmentSize:a5 protectionClass:a4];

  return v9;
}

+ (id)newRestrictedStreamWithSegmentSize:(unint64_t)a3 protectionClass:(unint64_t)a4 domain:(unint64_t)a5
{
  v8 = [BMStoreConfig alloc];
  v9 = [MEMORY[0x1E698E9C8] pathForStreamType:2 domain:a5];
  v10 = [(BMStoreConfig *)v8 initWithStoreBasePath:v9 segmentSize:a3 protectionClass:a4];

  return v10;
}

+ (id)newPrivateStreamDefaultConfigurationWithStoreBasePath:(id)a3 protectionClass:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v6 = [MEMORY[0x1E698E9C8] pathForStreamType:4 domain:0];
  }

  v7 = [[a1 alloc] initWithStoreBasePath:v6 segmentSize:0x100000 protectionClass:a4];

  return v7;
}

+ (id)newLibraryStoreConfigForStreamIdentifier:(id)a3 domain:(unint64_t)a4 segmentSize:(unint64_t)a5 protectionClass:(unint64_t)a6 pruningPolicy:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = +[BMStoreConfig defaultStoreVersion];
  v15 = [MEMORY[0x1E698E9C8] _pathForLibraryStreamWithDomain:a4];
  v16 = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (v16)
  {
    v17 = v16;
    [MEMORY[0x1E698E9C8] _pathForTesting];
    v33 = v14;
    v18 = a4;
    v19 = v13;
    v20 = v12;
    v21 = a1;
    v22 = a5;
    v24 = v23 = a6;
    v25 = [v15 hasPrefix:v24];

    a6 = v23;
    a5 = v22;
    a1 = v21;
    v12 = v20;
    v13 = v19;
    a4 = v18;
    v14 = v33;

    v26 = v25 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = v14;
  v28 = [a1 alloc];
  v29 = objc_opt_new();
  BYTE4(v32) = v26 & 1;
  LODWORD(v32) = 0;
  v30 = [v28 _initWithStoreVersion:v27 storeBasePath:v15 segmentSize:a5 protectionClass:a6 storeLocationOption:0 account:0 remoteName:0 pruningPolicy:v12 streamType:2 domain:a4 user:v32 isManaged:v13 streamIdentifier:v29 currentDevice:?];

  return v30;
}

- (id)_initWithStoreVersion:(unint64_t)a3 storeBasePath:(id)a4 segmentSize:(unint64_t)a5 protectionClass:(unint64_t)a6 storeLocationOption:(int64_t)a7 account:(id)a8 remoteName:(id)a9 pruningPolicy:(id)a10 streamType:(unint64_t)a11 domain:(unint64_t)a12 user:(unsigned int)a13 isManaged:(BOOL)a14 streamIdentifier:(id)a15 currentDevice:(id)a16
{
  v19 = a4;
  v20 = a8;
  v21 = a9;
  v35 = a10;
  v34 = a15;
  v33 = a16;
  if ([v19 hasPrefix:@"file://"])
  {
    [BMStoreConfig _initWithStoreVersion:a2 storeBasePath:self segmentSize:? protectionClass:? storeLocationOption:? account:? remoteName:? pruningPolicy:? streamType:? domain:? user:? isManaged:? streamIdentifier:? currentDevice:?];
  }

  v36.receiver = self;
  v36.super_class = BMStoreConfig;
  v22 = [(BMStoreConfig *)&v36 init];
  v23 = v22;
  if (v22)
  {
    v27 = v21;
    if (v21)
    {
      v24 = (a7 & 0xFFFFFFFFFFFFFFFELL) + 1;
    }

    else
    {
      v24 = a7 & 0xFFFFFFFFFFFFFFFELL;
    }

    v22->_configDatastoreVersion = a3;
    objc_storeStrong(&v22->_datastorePath, a4);
    v23->_segmentSize = a5;
    v23->_storeLocationOption = v24;
    objc_storeStrong(&v23->_account, a8);
    objc_storeStrong(&v23->_remoteName, a9);
    objc_storeStrong(&v23->_pruningPolicy, a10);
    v23->_protectionClass = a6;
    v23->_streamType = a11;
    v23->_domain = a12;
    if (a12 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = a13;
      if (!a13)
      {
        v25 = geteuid();
      }
    }

    v23->_uid = v25;
    v23->_isManaged = a14;
    objc_storeStrong(&v23->_streamIdentifierForLogging, a15);
    objc_storeStrong(&v23->_currentDevice, a16);
    v21 = v27;
  }

  return v23;
}

- (BMStoreConfig)initWithStoreBasePath:(id)a3 segmentSize:(unint64_t)a4 protectionClass:(unint64_t)a5
{
  v8 = a3;
  v9 = +[BMStoreConfig defaultStoreVersion];
  v22 = 0;
  v10 = [objc_opt_class() _streamTypeFromStorePath:v8 domain:&v22];
  v12 = v10 == 4 || (v10 - 1) < 2;
  v13 = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x1E698E9C8] _pathForTesting];
    v16 = [v8 hasPrefix:v15];

    v12 &= v16 ^ 1;
  }

  v17 = v22;
  v18 = objc_opt_new();
  BYTE4(v21) = v12 & 1;
  LODWORD(v21) = 0;
  v19 = [(BMStoreConfig *)self _initWithStoreVersion:v9 storeBasePath:v8 segmentSize:a4 protectionClass:a5 storeLocationOption:0 account:0 remoteName:0 pruningPolicy:0 streamType:v10 domain:v17 user:v21 isManaged:0 streamIdentifier:v18 currentDevice:?];

  return v19;
}

- (id)subscriptionsConfig
{
  v3 = +[BMStoreConfig defaultStoreVersion];
  v4 = [[BMPruningPolicy alloc] initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:5242880 maxStreamSize:604800.0];
  v5 = [BMStoreConfig alloc];
  domain = self->_domain;
  uid = self->_uid;
  isManaged = self->_isManaged;
  datastorePath = self->_datastorePath;
  v10 = [(NSString *)self->_streamIdentifierForLogging stringByAppendingString:@":subscriptions"];
  BYTE4(v13) = isManaged;
  LODWORD(v13) = uid;
  v11 = [(BMStoreConfig *)v5 _initWithStoreVersion:v3 storeBasePath:datastorePath segmentSize:0x20000 protectionClass:4 storeLocationOption:4 account:0 remoteName:0 pruningPolicy:v4 streamType:2 domain:domain user:v13 isManaged:v10 streamIdentifier:self->_currentDevice currentDevice:?];

  return v11;
}

- (id)copyWithRemoteName:(id)a3
{
  v4 = a3;
  v5 = [BMStoreConfig alloc];
  streamType = self->_streamType;
  streamIdentifierForLogging = self->_streamIdentifierForLogging;
  BYTE4(v10) = self->_isManaged;
  LODWORD(v10) = self->_uid;
  v8 = [(BMStoreConfig *)v5 _initWithStoreVersion:self->_configDatastoreVersion storeBasePath:self->_datastorePath segmentSize:self->_segmentSize protectionClass:self->_protectionClass storeLocationOption:self->_storeLocationOption account:self->_account remoteName:v4 pruningPolicy:self->_pruningPolicy streamType:streamType domain:self->_domain user:v10 isManaged:streamIdentifierForLogging streamIdentifier:self->_currentDevice currentDevice:?];

  return v8;
}

- (id)copyWithStoreBasePath:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [objc_opt_class() _streamTypeFromStorePath:v4 domain:&v15];
  v7 = v5 == 4 || (v5 - 1) < 2;
  v8 = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E698E9C8] _pathForTesting];
    v11 = [v4 hasPrefix:v10];

    v7 &= v11 ^ 1;
  }

  v12 = [(BMStoreConfig *)self copy];
  v13 = *(v12 + 16);
  *(v12 + 16) = v4;

  *(v12 + 32) = v7 & 1;
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BMStoreConfig alloc];
  configDatastoreVersion = self->_configDatastoreVersion;
  v6 = [(NSString *)self->_datastorePath copy];
  segmentSize = self->_segmentSize;
  protectionClass = self->_protectionClass;
  remoteName = self->_remoteName;
  account = self->_account;
  storeLocationOption = self->_storeLocationOption;
  v12 = [(BMPruningPolicy *)self->_pruningPolicy copy];
  streamType = self->_streamType;
  streamIdentifierForLogging = self->_streamIdentifierForLogging;
  BYTE4(v17) = self->_isManaged;
  LODWORD(v17) = self->_uid;
  v15 = [(BMStoreConfig *)v4 _initWithStoreVersion:configDatastoreVersion storeBasePath:v6 segmentSize:segmentSize protectionClass:protectionClass storeLocationOption:storeLocationOption account:account remoteName:remoteName pruningPolicy:v12 streamType:streamType domain:self->_domain user:v17 isManaged:streamIdentifierForLogging streamIdentifier:self->_currentDevice currentDevice:?];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSString *)self->_datastorePath isEqualToString:v5[2]];
    v7 = self->_segmentSize == v5[5] && v6;
    v8 = self->_protectionClass == v5[6] && v7;
    pruningPolicy = self->_pruningPolicy;
    if (pruningPolicy == v5[7])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(BMPruningPolicy *)pruningPolicy isEqual:?];
    }

    v12 = v8 & v10;
    if (self->_configDatastoreVersion != v5[9])
    {
      v12 = 0;
    }

    if (self->_storeLocationOption == v5[10])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    remoteName = self->_remoteName;
    if (remoteName == v5[11])
    {
      v15 = 1;
    }

    else
    {
      v15 = [(NSString *)remoteName isEqualToString:?];
    }

    v16 = v13 & v15;
    account = self->_account;
    if (account == v5[12])
    {
      v18 = 1;
    }

    else
    {
      v18 = [(BMAccount *)account isEqual:?];
    }

    v11 = v16 & v18;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_datastorePath hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_configDatastoreVersion];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_segmentSize];
  v7 = [v6 hash];

  return v5 ^ v7;
}

+ (unint64_t)_streamTypeFromStorePath:(id)a3 domain:(unint64_t *)a4
{
  v18 = 0;
  v4 = [MEMORY[0x1E698E9C8] getServiceDomain:a4 subpath:&v18 forPath:a3];
  v5 = v18;
  if (v4)
  {
    v6 = [MEMORY[0x1E698EA08] streams];
    v7 = [MEMORY[0x1E698EA08] public];
    v8 = [v6 stringByAppendingPathComponent:v7];
    v9 = [v5 hasPrefix:v8];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [MEMORY[0x1E698EA08] restricted];
      v12 = [v6 stringByAppendingPathComponent:v11];
      v13 = [v5 hasPrefix:v12];

      if (v13)
      {
        v10 = 2;
      }

      else
      {
        v14 = [MEMORY[0x1E698EA08] private];
        v15 = [v6 stringByAppendingPathComponent:v14];
        v16 = [v5 hasPrefix:v15];

        if (v16)
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }
      }
    }
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  datastorePath = self->_datastorePath;
  v5 = [v3 initWithFormat:@"<BMStoreConfig datastorePath: %@ version: %lu>", datastorePath, self->_configDatastoreVersion];

  return v5;
}

- (id)resolvedPathWithStreamIdentifier:(id)a3
{
  v4 = [(NSString *)self->_datastorePath stringByAppendingPathComponent:a3];
  storeLocationOption = self->_storeLocationOption;
  if (storeLocationOption)
  {
    v6 = [MEMORY[0x1E698EA08] remoteDevices];
    v7 = [v4 stringByAppendingPathComponent:v6];
    v8 = [v7 stringByAppendingPathComponent:self->_remoteName];

    v4 = v7;
  }

  else
  {
    if ((storeLocationOption & 4) != 0)
    {
      [MEMORY[0x1E698EA08] subscriptions];
    }

    else
    {
      [MEMORY[0x1E698EA08] localDevice];
    }
    v6 = ;
    v8 = [v4 stringByAppendingPathComponent:v6];
  }

  if ((self->_storeLocationOption & 2) != 0)
  {
    v9 = [MEMORY[0x1E698EA08] tombstones];
    v10 = [v8 stringByAppendingPathComponent:v9];

    v8 = v10;
  }

  return v8;
}

- (void)_initWithStoreVersion:(uint64_t)a1 storeBasePath:(uint64_t)a2 segmentSize:protectionClass:storeLocationOption:account:remoteName:pruningPolicy:streamType:domain:user:isManaged:streamIdentifier:currentDevice:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMStoreConfig.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"![storeBasePath hasPrefix:@file://]"}];
}

@end