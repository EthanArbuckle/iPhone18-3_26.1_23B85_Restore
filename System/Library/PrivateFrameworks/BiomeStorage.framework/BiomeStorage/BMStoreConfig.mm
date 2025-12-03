@interface BMStoreConfig
+ (id)newLibraryStoreConfigForStreamIdentifier:(id)identifier domain:(unint64_t)domain segmentSize:(unint64_t)size protectionClass:(unint64_t)class pruningPolicy:(id)policy;
+ (id)newPrivateStreamDefaultConfigurationWithStoreBasePath:(id)path protectionClass:(unint64_t)class;
+ (id)newRestrictedStreamWithSegmentSize:(unint64_t)size protectionClass:(unint64_t)class domain:(unint64_t)domain;
+ (id)newStreamDefaultConfigurationForPublicStream:(BOOL)stream protectionClass:(unint64_t)class segmentSize:(unint64_t)size;
+ (unint64_t)_streamTypeFromStorePath:(id)path domain:(unint64_t *)domain;
- (BMStoreConfig)initWithStoreBasePath:(id)path segmentSize:(unint64_t)size protectionClass:(unint64_t)class;
- (BOOL)isEqual:(id)equal;
- (id)_initWithStoreVersion:(unint64_t)version storeBasePath:(id)path segmentSize:(unint64_t)size protectionClass:(unint64_t)class storeLocationOption:(int64_t)option account:(id)account remoteName:(id)name pruningPolicy:(id)self0 streamType:(unint64_t)self1 domain:(unint64_t)self2 user:(unsigned int)self3 isManaged:(BOOL)self4 streamIdentifier:(id)self5 currentDevice:(id)self6;
- (id)copyWithRemoteName:(id)name;
- (id)copyWithStoreBasePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedPathWithStreamIdentifier:(id)identifier;
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

+ (id)newStreamDefaultConfigurationForPublicStream:(BOOL)stream protectionClass:(unint64_t)class segmentSize:(unint64_t)size
{
  if (stream)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [MEMORY[0x1E698E9C8] pathForStreamType:v7 domain:0];
  v9 = [[BMStoreConfig alloc] initWithStoreBasePath:v8 segmentSize:size protectionClass:class];

  return v9;
}

+ (id)newRestrictedStreamWithSegmentSize:(unint64_t)size protectionClass:(unint64_t)class domain:(unint64_t)domain
{
  v8 = [BMStoreConfig alloc];
  v9 = [MEMORY[0x1E698E9C8] pathForStreamType:2 domain:domain];
  v10 = [(BMStoreConfig *)v8 initWithStoreBasePath:v9 segmentSize:size protectionClass:class];

  return v10;
}

+ (id)newPrivateStreamDefaultConfigurationWithStoreBasePath:(id)path protectionClass:(unint64_t)class
{
  pathCopy = path;
  if (!pathCopy)
  {
    pathCopy = [MEMORY[0x1E698E9C8] pathForStreamType:4 domain:0];
  }

  v7 = [[self alloc] initWithStoreBasePath:pathCopy segmentSize:0x100000 protectionClass:class];

  return v7;
}

+ (id)newLibraryStoreConfigForStreamIdentifier:(id)identifier domain:(unint64_t)domain segmentSize:(unint64_t)size protectionClass:(unint64_t)class pruningPolicy:(id)policy
{
  policyCopy = policy;
  identifierCopy = identifier;
  v14 = +[BMStoreConfig defaultStoreVersion];
  v15 = [MEMORY[0x1E698E9C8] _pathForLibraryStreamWithDomain:domain];
  _pathForTesting = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (_pathForTesting)
  {
    v17 = _pathForTesting;
    [MEMORY[0x1E698E9C8] _pathForTesting];
    v33 = v14;
    domainCopy = domain;
    v19 = identifierCopy;
    v20 = policyCopy;
    selfCopy = self;
    sizeCopy = size;
    v24 = v23 = class;
    v25 = [v15 hasPrefix:v24];

    class = v23;
    size = sizeCopy;
    self = selfCopy;
    policyCopy = v20;
    identifierCopy = v19;
    domain = domainCopy;
    v14 = v33;

    v26 = v25 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = v14;
  v28 = [self alloc];
  v29 = objc_opt_new();
  BYTE4(v32) = v26 & 1;
  LODWORD(v32) = 0;
  v30 = [v28 _initWithStoreVersion:v27 storeBasePath:v15 segmentSize:size protectionClass:class storeLocationOption:0 account:0 remoteName:0 pruningPolicy:policyCopy streamType:2 domain:domain user:v32 isManaged:identifierCopy streamIdentifier:v29 currentDevice:?];

  return v30;
}

- (id)_initWithStoreVersion:(unint64_t)version storeBasePath:(id)path segmentSize:(unint64_t)size protectionClass:(unint64_t)class storeLocationOption:(int64_t)option account:(id)account remoteName:(id)name pruningPolicy:(id)self0 streamType:(unint64_t)self1 domain:(unint64_t)self2 user:(unsigned int)self3 isManaged:(BOOL)self4 streamIdentifier:(id)self5 currentDevice:(id)self6
{
  pathCopy = path;
  accountCopy = account;
  nameCopy = name;
  policyCopy = policy;
  identifierCopy = identifier;
  deviceCopy = device;
  if ([pathCopy hasPrefix:@"file://"])
  {
    [BMStoreConfig _initWithStoreVersion:a2 storeBasePath:self segmentSize:? protectionClass:? storeLocationOption:? account:? remoteName:? pruningPolicy:? streamType:? domain:? user:? isManaged:? streamIdentifier:? currentDevice:?];
  }

  v36.receiver = self;
  v36.super_class = BMStoreConfig;
  v22 = [(BMStoreConfig *)&v36 init];
  v23 = v22;
  if (v22)
  {
    v27 = nameCopy;
    if (nameCopy)
    {
      v24 = (option & 0xFFFFFFFFFFFFFFFELL) + 1;
    }

    else
    {
      v24 = option & 0xFFFFFFFFFFFFFFFELL;
    }

    v22->_configDatastoreVersion = version;
    objc_storeStrong(&v22->_datastorePath, path);
    v23->_segmentSize = size;
    v23->_storeLocationOption = v24;
    objc_storeStrong(&v23->_account, account);
    objc_storeStrong(&v23->_remoteName, name);
    objc_storeStrong(&v23->_pruningPolicy, policy);
    v23->_protectionClass = class;
    v23->_streamType = type;
    v23->_domain = domain;
    if (domain == 1)
    {
      userCopy = 0;
    }

    else
    {
      userCopy = user;
      if (!user)
      {
        userCopy = geteuid();
      }
    }

    v23->_uid = userCopy;
    v23->_isManaged = managed;
    objc_storeStrong(&v23->_streamIdentifierForLogging, identifier);
    objc_storeStrong(&v23->_currentDevice, device);
    nameCopy = v27;
  }

  return v23;
}

- (BMStoreConfig)initWithStoreBasePath:(id)path segmentSize:(unint64_t)size protectionClass:(unint64_t)class
{
  pathCopy = path;
  v9 = +[BMStoreConfig defaultStoreVersion];
  v22 = 0;
  v10 = [objc_opt_class() _streamTypeFromStorePath:pathCopy domain:&v22];
  v12 = v10 == 4 || (v10 - 1) < 2;
  _pathForTesting = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (_pathForTesting)
  {
    v14 = _pathForTesting;
    _pathForTesting2 = [MEMORY[0x1E698E9C8] _pathForTesting];
    v16 = [pathCopy hasPrefix:_pathForTesting2];

    v12 &= v16 ^ 1;
  }

  v17 = v22;
  v18 = objc_opt_new();
  BYTE4(v21) = v12 & 1;
  LODWORD(v21) = 0;
  v19 = [(BMStoreConfig *)self _initWithStoreVersion:v9 storeBasePath:pathCopy segmentSize:size protectionClass:class storeLocationOption:0 account:0 remoteName:0 pruningPolicy:0 streamType:v10 domain:v17 user:v21 isManaged:0 streamIdentifier:v18 currentDevice:?];

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

- (id)copyWithRemoteName:(id)name
{
  nameCopy = name;
  v5 = [BMStoreConfig alloc];
  streamType = self->_streamType;
  streamIdentifierForLogging = self->_streamIdentifierForLogging;
  BYTE4(v10) = self->_isManaged;
  LODWORD(v10) = self->_uid;
  v8 = [(BMStoreConfig *)v5 _initWithStoreVersion:self->_configDatastoreVersion storeBasePath:self->_datastorePath segmentSize:self->_segmentSize protectionClass:self->_protectionClass storeLocationOption:self->_storeLocationOption account:self->_account remoteName:nameCopy pruningPolicy:self->_pruningPolicy streamType:streamType domain:self->_domain user:v10 isManaged:streamIdentifierForLogging streamIdentifier:self->_currentDevice currentDevice:?];

  return v8;
}

- (id)copyWithStoreBasePath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v5 = [objc_opt_class() _streamTypeFromStorePath:pathCopy domain:&v15];
  v7 = v5 == 4 || (v5 - 1) < 2;
  _pathForTesting = [MEMORY[0x1E698E9C8] _pathForTesting];
  if (_pathForTesting)
  {
    v9 = _pathForTesting;
    _pathForTesting2 = [MEMORY[0x1E698E9C8] _pathForTesting];
    v11 = [pathCopy hasPrefix:_pathForTesting2];

    v7 &= v11 ^ 1;
  }

  v12 = [(BMStoreConfig *)self copy];
  v13 = *(v12 + 16);
  *(v12 + 16) = pathCopy;

  *(v12 + 32) = v7 & 1;
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

+ (unint64_t)_streamTypeFromStorePath:(id)path domain:(unint64_t *)domain
{
  v18 = 0;
  v4 = [MEMORY[0x1E698E9C8] getServiceDomain:domain subpath:&v18 forPath:path];
  v5 = v18;
  if (v4)
  {
    streams = [MEMORY[0x1E698EA08] streams];
    public = [MEMORY[0x1E698EA08] public];
    v8 = [streams stringByAppendingPathComponent:public];
    v9 = [v5 hasPrefix:v8];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      restricted = [MEMORY[0x1E698EA08] restricted];
      v12 = [streams stringByAppendingPathComponent:restricted];
      v13 = [v5 hasPrefix:v12];

      if (v13)
      {
        v10 = 2;
      }

      else
      {
        private = [MEMORY[0x1E698EA08] private];
        v15 = [streams stringByAppendingPathComponent:private];
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

- (id)resolvedPathWithStreamIdentifier:(id)identifier
{
  v4 = [(NSString *)self->_datastorePath stringByAppendingPathComponent:identifier];
  storeLocationOption = self->_storeLocationOption;
  if (storeLocationOption)
  {
    remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
    v7 = [v4 stringByAppendingPathComponent:remoteDevices];
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
    remoteDevices = ;
    v8 = [v4 stringByAppendingPathComponent:remoteDevices];
  }

  if ((self->_storeLocationOption & 2) != 0)
  {
    tombstones = [MEMORY[0x1E698EA08] tombstones];
    v10 = [v8 stringByAppendingPathComponent:tombstones];

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