@interface MBProperties
+ (MBProperties)propertiesWithFile:(id)file error:(id *)error;
+ (id)properties;
- (BOOL)_BOOLForKey:(id)key;
- (BOOL)hasCorruptSQLiteDBs;
- (BOOL)hasEncryptedManifestDB;
- (BOOL)writeToFile:(id)file error:(id *)error;
- (MBProperties)initWithData:(id)data error:(id *)error;
- (MBProperties)initWithFile:(id)file error:(id *)error;
- (MBProperties)initWithVersion:(double)version minVersion:(double)minVersion maxVersion:(double)maxVersion;
- (NSData)manifestEncryptionKey;
- (NSDate)date;
- (NSDictionary)appleIDs;
- (NSNumber)accountClass;
- (NSNumber)accountType;
- (NSString)requiredProductVersion;
- (double)systemDomainsVersion;
- (double)version;
- (id)_containers;
- (id)_dataForKey:(id)key;
- (id)_dictionaryForKey:(id)key;
- (id)_stringForLockdownKey:(id)key;
- (id)containerWithIdentifier:(id)identifier;
- (id)description;
- (void)_addContainer:(id)container;
- (void)addAppleID:(id)d DSID:(id)iD altDSID:(id)sID dataClass:(id)class;
- (void)addAppleIDsFromSet:(id)set dataClass:(id)class;
- (void)addAssetDescriptionForAppleID:(id)d assetDescription:(id)description;
- (void)addContainersFromArray:(id)array;
- (void)removeAllContainers;
- (void)setAccountClass:(id)class;
- (void)setAccountType:(id)type;
- (void)setActiveAppleID:(id)d;
- (void)setRequiredProductVersion:(id)version;
- (void)setSystemDomainsVersion:(double)version;
- (void)setVersion:(double)version;
@end

@implementation MBProperties

+ (id)properties
{
  v2 = objc_alloc_init(MBProperties);

  return v2;
}

+ (MBProperties)propertiesWithFile:(id)file error:(id *)error
{
  fileCopy = file;
  v6 = [[MBProperties alloc] initWithFile:fileCopy error:error];

  return v6;
}

- (MBProperties)initWithVersion:(double)version minVersion:(double)minVersion maxVersion:(double)maxVersion
{
  v14.receiver = self;
  v14.super_class = MBProperties;
  v8 = [(MBProperties *)&v14 init];
  if (v8)
  {
    v9 = [[NSMutableDictionary alloc] initWithCapacity:0];
    plist = v8->_plist;
    v8->_plist = v9;

    [(MBProperties *)v8 setVersion:version];
    [(MBProperties *)v8 setMinSupportedVersion:minVersion];
    [(MBProperties *)v8 setMaxSupportedVersion:maxVersion];
    v11 = +[MBSystemDomainsVersions defaultSystemDomainsVersions];
    [v11 version];
    [(MBProperties *)v8 setSystemDomainsVersion:?];
    v8->_protected = 1;
    v12 = +[NSDate date];
    [(MBProperties *)v8 setDate:v12];
  }

  return v8;
}

- (MBProperties)initWithData:(id)data error:(id *)error
{
  v24 = 0;
  v6 = [NSPropertyListSerialization propertyListFromData:data mutabilityOption:1 format:0 errorDescription:&v24];
  if (!v6)
  {
    if (error)
    {
      [MBError errorWithCode:11 format:@"Error deserializing properties: %@", v24];
      *error = v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = [(MBProperties *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_plist, v6);
    v8->_protected = 1;
    [(MBProperties *)v8 minSupportedVersion];
    v10 = v9;
    [(MBProperties *)v8 version];
    if (v10 > v11 || ([(MBProperties *)v8 version], v13 = v12, [(MBProperties *)v8 maxSupportedVersion], v13 >= v14))
    {
      if (error)
      {
        [(MBProperties *)v8 version];
        *error = [MBError errorWithCode:203 format:@"Unsupported properties version: %0.1f", v22];
      }

      self = v8;
    }

    else
    {
      self = +[MBSystemDomainsVersions defaultSystemDomainsVersions];
      [(MBProperties *)self minSupportedVersion];
      v16 = v15;
      [(MBProperties *)v8 systemDomainsVersion];
      if (v16 <= v17)
      {
        [(MBProperties *)v8 systemDomainsVersion];
        v19 = v18;
        [(MBProperties *)self maxSupportedVersion];
        if (v19 < v20)
        {
          goto LABEL_16;
        }
      }

      if (error)
      {
        [(MBProperties *)v8 systemDomainsVersion];
        *error = [MBError errorWithCode:203 format:@"Unsupported system domains version: %0.1f", v21];
      }
    }

    goto LABEL_15;
  }

LABEL_17:

  return v8;
}

- (MBProperties)initWithFile:(id)file error:(id *)error
{
  v6 = [NSData dataWithContentsOfFile:file options:0 error:error];
  if (v6)
  {
    v7 = [(MBProperties *)self initWithData:v6 error:error];
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)_BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [self->_plist objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSNumber", keyCopy}]);
    }
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)_dataForKey:(id)key
{
  keyCopy = key;
  v5 = [self->_plist objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSData", keyCopy}]);
    }
  }

  return v5;
}

- (id)_dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [self->_plist objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSDictionary", keyCopy}]);
    }
  }

  return v5;
}

- (NSString)requiredProductVersion
{
  v2 = [self->_plist objectForKeyedSubscript:@"RequiredProductVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequiredProductVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setRequiredProductVersion:]", "MBProperties.m", 168, "!requiredProductVersion || [requiredProductVersion isKindOfClass:NSString.class]");
    }

    [self->_plist setObject:versionCopy forKeyedSubscript:@"RequiredProductVersion"];
  }

  else
  {
    [self->_plist removeObjectForKey:@"RequiredProductVersion"];
  }
}

- (NSNumber)accountClass
{
  v2 = [self->_plist objectForKeyedSubscript:@"AccountClass"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccountClass:(id)class
{
  classCopy = class;
  if (classCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setAccountClass:]", "MBProperties.m", 185, "!accountClass || [accountClass isKindOfClass:NSNumber.class]");
    }

    [self->_plist setObject:classCopy forKeyedSubscript:@"AccountClass"];
  }

  else
  {
    [self->_plist removeObjectForKey:@"AccountClass"];
  }
}

- (NSNumber)accountType
{
  v2 = [self->_plist objectForKeyedSubscript:@"AccountType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccountType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setAccountType:]", "MBProperties.m", 200, "!accountType || [accountType isKindOfClass:NSNumber.class]");
    }

    [self->_plist setObject:typeCopy forKeyedSubscript:@"AccountType"];
  }

  else
  {
    [self->_plist removeObjectForKey:@"AccountType"];
  }
}

- (double)version
{
  v2 = [self->_plist objectForKeyedSubscript:@"Version"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Version value not an NSNumber or NSString"]);
      }
    }

    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)setVersion:(double)version
{
  v4 = [NSString stringWithFormat:@"%0.1f", *&version];
  [self->_plist setObject:v4 forKeyedSubscript:@"Version"];
}

- (double)systemDomainsVersion
{
  v2 = [self->_plist objectForKeyedSubscript:@"SystemDomainsVersion"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"SystemDomainsVersion not an NSString"]);
  }

  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSystemDomainsVersion:(double)version
{
  v4 = [NSString stringWithFormat:@"%0.1f", *&version];
  [self->_plist setObject:v4 forKeyedSubscript:@"SystemDomainsVersion"];
}

- (NSDate)date
{
  v2 = [self->_plist objectForKeyedSubscript:@"Date"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Date value not an NSDate"]);
    }
  }

  return v2;
}

- (NSData)manifestEncryptionKey
{
  v2 = [self->_plist objectForKeyedSubscript:@"ManifestKey"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Manifest key is not an NSData"]);
    }
  }

  return v2;
}

- (id)_stringForLockdownKey:(id)key
{
  keyCopy = key;
  lockdownKeys = [(MBProperties *)self lockdownKeys];
  v6 = [lockdownKeys objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ lockdown value not an NSString", v6}]);
    }
  }

  return v6;
}

- (BOOL)hasCorruptSQLiteDBs
{
  encrypted = [(MBProperties *)self encrypted];
  if (encrypted)
  {
    buildVersion = [(MBProperties *)self buildVersion];
    if ([buildVersion hasPrefix:@"9A"])
    {
      buildVersion2 = [(MBProperties *)self buildVersion];
      v6 = [buildVersion2 length];

      if (v6 >= 3)
      {
        buildVersion3 = [(MBProperties *)self buildVersion];
        v8 = [buildVersion3 substringFromIndex:2];
        intValue = [v8 intValue];

        LOBYTE(encrypted) = intValue - 124 < 0x52;
        return encrypted;
      }
    }

    else
    {
    }

    LOBYTE(encrypted) = 0;
  }

  return encrypted;
}

- (BOOL)hasEncryptedManifestDB
{
  if (![(MBProperties *)self encrypted])
  {
    return 0;
  }

  manifestEncryptionKey = [(MBProperties *)self manifestEncryptionKey];
  v4 = manifestEncryptionKey != 0;

  return v4;
}

- (NSDictionary)appleIDs
{
  v4 = [self->_plist objectForKeyedSubscript:@"AppleIDs"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[NSAssertionHandler currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"MBProperties.m" lineNumber:360 description:{@"%@ value not an NSDictionary", @"AppleIDs"}];
    }
  }

  return v4;
}

- (void)addAppleIDsFromSet:(id)set dataClass:(id)class
{
  setCopy = set;
  classCopy = class;
  appleIDs = [(MBProperties *)self appleIDs];
  if (!appleIDs)
  {
    appleIDs = +[NSMutableDictionary dictionary];
    [self->_plist setObject:appleIDs forKeyedSubscript:@"AppleIDs"];
  }

  selfCopy = self;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = setCopy;
  v8 = classCopy;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v31)
  {
    v9 = MBError_ptr;
    v10 = MBError_ptr;
    v11 = *v33;
    v28 = appleIDs;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = v9[101];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = +[NSAssertionHandler currentHandler];
          [v25 handleFailureInMethod:a2 object:selfCopy file:@"MBProperties.m" lineNumber:377 description:{@"Account item %@ not a string", v13}];
        }

        v15 = [appleIDs objectForKeyedSubscript:v13];
        v16 = v10[146];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v17 = v15) == 0)
        {
          v17 = +[NSMutableDictionary dictionary];
        }

        if (v8)
        {
          v18 = [v17 objectForKeyedSubscript:@"dataClasses"];
          if (v18)
          {
            v19 = v18;
            [NSMutableSet setWithArray:v18];
            v20 = v11;
            v21 = v10;
            v23 = v22 = v9;
            [v23 addObject:v8];
            allObjects = [v23 allObjects];

            v9 = v22;
            v10 = v21;
            v11 = v20;
            appleIDs = v28;
          }

          else
          {
            v36 = v8;
            allObjects = [NSArray arrayWithObjects:&v36 count:1];
          }

          [v17 setObject:allObjects forKeyedSubscript:@"dataClasses"];

          v8 = classCopy;
        }

        [appleIDs setObject:v17 forKeyedSubscript:v13];

        v12 = v12 + 1;
      }

      while (v31 != v12);
      v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v31);
  }
}

- (void)addAppleID:(id)d DSID:(id)iD altDSID:(id)sID dataClass:(id)class
{
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  classCopy = class;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v36 = dCopy;
    v37 = 2112;
    v38 = iDCopy;
    v39 = 2112;
    v40 = sIDCopy;
    v41 = 2112;
    v42 = classCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Adding appleID:%@, DSID:%@, altDSID:%@, dataClass:%@", buf, 0x2Au);
    v32 = sIDCopy;
    v33 = classCopy;
    v28 = dCopy;
    v30 = iDCopy;
    _MBLog();
  }

  if (!dCopy)
  {
    appleIDs = MBGetDefaultLog();
    if (!os_log_type_enabled(appleIDs, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412802;
    v36 = iDCopy;
    v37 = 2112;
    v38 = sIDCopy;
    v39 = 2112;
    v40 = classCopy;
    _os_log_impl(&_mh_execute_header, appleIDs, OS_LOG_TYPE_ERROR, "nil appleID, DSID:%@, altDSID:%@, dataClass:%@", buf, 0x20u);
LABEL_31:
    _MBLog();
    goto LABEL_35;
  }

  if (!(iDCopy | sIDCopy))
  {
    appleIDs = MBGetDefaultLog();
    if (!os_log_type_enabled(appleIDs, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412546;
    v36 = dCopy;
    v37 = 2112;
    v38 = classCopy;
    _os_log_impl(&_mh_execute_header, appleIDs, OS_LOG_TYPE_ERROR, "appleID:%@, nil DSID&altDSID, dataClass:%@", buf, 0x16u);
    goto LABEL_31;
  }

  appleIDs = [(MBProperties *)self appleIDs];
  if (!appleIDs)
  {
    appleIDs = +[NSMutableDictionary dictionary];
    [self->_plist setObject:appleIDs forKeyedSubscript:@"AppleIDs"];
  }

  v16 = [appleIDs objectForKeyedSubscript:dCopy, v28, v30, v32, v33];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v17 = v16) == 0)
  {
    v17 = +[NSMutableDictionary dictionary];
  }

  if (iDCopy)
  {
    v18 = [v17 objectForKeyedSubscript:@"dsid"];
    v19 = v18;
    if (v18 && ([v18 isEqualToString:iDCopy] & 1) == 0)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v19;
        v37 = 2112;
        v38 = iDCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "DSID mismatch: existingDSID:%@ != DSID:%@", buf, 0x16u);
        v29 = v19;
        v31 = iDCopy;
        _MBLog();
      }
    }

    [v17 setObject:iDCopy forKeyedSubscript:{@"dsid", v29, v31}];
  }

  if (sIDCopy)
  {
    v21 = [v17 objectForKeyedSubscript:@"altDsid"];
    v22 = v21;
    if (v21 && ([v21 isEqualToString:sIDCopy] & 1) == 0)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v22;
        v37 = 2112;
        v38 = sIDCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "altDSID mismatch: existingAltDSID:%@ != altDSID:%@", buf, 0x16u);
        v29 = v22;
        v31 = sIDCopy;
        _MBLog();
      }
    }

    [v17 setObject:sIDCopy forKeyedSubscript:{@"altDsid", v29, v31}];
  }

  if (classCopy)
  {
    v24 = [v17 objectForKeyedSubscript:@"dataClasses"];
    if (v24)
    {
      v25 = v24;
      v26 = [NSMutableSet setWithArray:v24];
      [v26 addObject:classCopy];
      allObjects = [v26 allObjects];
    }

    else
    {
      v34 = classCopy;
      allObjects = [NSArray arrayWithObjects:&v34 count:1];
    }

    [v17 setObject:allObjects forKeyedSubscript:@"dataClasses"];
  }

  [appleIDs setObject:v17 forKeyedSubscript:dCopy];

LABEL_35:
}

- (void)addAssetDescriptionForAppleID:(id)d assetDescription:(id)description
{
  dCopy = d;
  descriptionCopy = description;
  v8 = descriptionCopy;
  if (dCopy && descriptionCopy)
  {
    appleIDs = [(MBProperties *)self appleIDs];
    v10 = [appleIDs objectForKeyedSubscript:dCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = v10) == 0)
    {
      v11 = +[NSMutableDictionary dictionary];
    }

    v12 = [v11 objectForKeyedSubscript:@"assets"];

    if (v12)
    {
      v13 = [v11 objectForKeyedSubscript:@"assets"];
      v14 = [NSMutableSet setWithArray:v13];

      [v14 addObject:v8];
      allObjects = [v14 allObjects];
    }

    else
    {
      v16 = v8;
      allObjects = [NSArray arrayWithObjects:&v16 count:1];
    }

    [v11 setObject:allObjects forKeyedSubscript:@"assets"];
    [appleIDs setObject:v11 forKeyedSubscript:dCopy];
  }
}

- (void)setActiveAppleID:(id)d
{
  plist = self->_plist;
  if (d)
  {
    [plist setObject:d forKeyedSubscript:@"ActiveAppleID"];
  }

  else
  {
    [plist removeObjectForKey:@"ActiveAppleID"];
  }
}

- (id)_containers
{
  v4 = [self->_plist objectForKeyedSubscript:@"Applications"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[NSAssertionHandler currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"MBProperties.m" lineNumber:501 description:@"Containers value not an NSDictionary"];
    }
  }

  return v4;
}

- (id)containerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _containers = [(MBProperties *)self _containers];
  v6 = [_containers objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = [MBContainer containerWithPropertyList:v6 volumeMountPoint:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addContainer:(id)container
{
  containerCopy = container;
  if (([containerCopy isSystemContainer] & 1) == 0 && (objc_msgSend(containerCopy, "isSystemSharedContainer") & 1) == 0)
  {
    _containers = [(MBProperties *)self _containers];
    if (!_containers)
    {
      _containers = [NSMutableDictionary dictionaryWithCapacity:32];
      [self->_plist setObject:_containers forKeyedSubscript:@"Applications"];
    }

    identifier = [containerCopy identifier];
    v7 = [_containers objectForKeyedSubscript:identifier];

    if (v7)
    {
      propertyListForBackupProperties = MBGetDefaultLog();
      if (!os_log_type_enabled(propertyListForBackupProperties, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      identifier2 = [containerCopy identifier];
      *buf = 138412290;
      v12 = identifier2;
      _os_log_impl(&_mh_execute_header, propertyListForBackupProperties, OS_LOG_TYPE_FAULT, "Duplicate container ID detected: %@", buf, 0xCu);

      identifier3 = [containerCopy identifier];
      _MBLog();
    }

    else
    {
      propertyListForBackupProperties = [containerCopy propertyListForBackupProperties];
      identifier3 = [containerCopy identifier];
      [_containers setObject:propertyListForBackupProperties forKeyedSubscript:identifier3];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addContainersFromArray:(id)array
{
  arrayCopy = array;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        [(MBProperties *)self _addContainer:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllContainers
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:32];
  [self->_plist setObject:v3 forKeyedSubscript:@"Applications"];
}

- (BOOL)writeToFile:(id)file error:(id *)error
{
  fileCopy = file;
  v12 = 0;
  v7 = [NSPropertyListSerialization dataFromPropertyList:self->_plist format:200 errorDescription:&v12];
  v8 = v7;
  if (v7)
  {
    if (self->_protected)
    {
      v9 = 536870913;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v7 writeToFile:fileCopy options:v9 error:error];
  }

  else if (error)
  {
    [MBError errorWithCode:100 format:@"Error serializing properties: %@", v12];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  [(MBProperties *)self version];
  v5 = v4;
  [(MBProperties *)self systemDomainsVersion];
  v7 = v6;
  requiredProductVersion = [(MBProperties *)self requiredProductVersion];
  date = [(MBProperties *)self date];
  encrypted = [(MBProperties *)self encrypted];
  wasPasscodeSet = [(MBProperties *)self wasPasscodeSet];
  lockdownKeys = [(MBProperties *)self lockdownKeys];
  v13 = MBStringWithDictionary();
  v14 = [NSString stringWithFormat:@"<%@: version=%0.1f, systemDomainsVersion=%0.1f, requiredProductVersion=%@, date=%@, encrypted=%d, passcodeSet=%d, lockdownKeys=%@>", v3, v5, v7, requiredProductVersion, date, encrypted, wasPasscodeSet, v13];

  return v14;
}

@end