@interface MBProperties
+ (MBProperties)propertiesWithFile:(id)a3 error:(id *)a4;
+ (id)properties;
- (BOOL)_BOOLForKey:(id)a3;
- (BOOL)hasCorruptSQLiteDBs;
- (BOOL)hasEncryptedManifestDB;
- (BOOL)writeToFile:(id)a3 error:(id *)a4;
- (MBProperties)initWithData:(id)a3 error:(id *)a4;
- (MBProperties)initWithFile:(id)a3 error:(id *)a4;
- (MBProperties)initWithVersion:(double)a3 minVersion:(double)a4 maxVersion:(double)a5;
- (NSData)manifestEncryptionKey;
- (NSDate)date;
- (NSDictionary)appleIDs;
- (NSNumber)accountClass;
- (NSNumber)accountType;
- (NSString)requiredProductVersion;
- (double)systemDomainsVersion;
- (double)version;
- (id)_containers;
- (id)_dataForKey:(id)a3;
- (id)_dictionaryForKey:(id)a3;
- (id)_stringForLockdownKey:(id)a3;
- (id)containerWithIdentifier:(id)a3;
- (id)description;
- (void)_addContainer:(id)a3;
- (void)addAppleID:(id)a3 DSID:(id)a4 altDSID:(id)a5 dataClass:(id)a6;
- (void)addAppleIDsFromSet:(id)a3 dataClass:(id)a4;
- (void)addAssetDescriptionForAppleID:(id)a3 assetDescription:(id)a4;
- (void)addContainersFromArray:(id)a3;
- (void)removeAllContainers;
- (void)setAccountClass:(id)a3;
- (void)setAccountType:(id)a3;
- (void)setActiveAppleID:(id)a3;
- (void)setRequiredProductVersion:(id)a3;
- (void)setSystemDomainsVersion:(double)a3;
- (void)setVersion:(double)a3;
@end

@implementation MBProperties

+ (id)properties
{
  v2 = objc_alloc_init(MBProperties);

  return v2;
}

+ (MBProperties)propertiesWithFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[MBProperties alloc] initWithFile:v5 error:a4];

  return v6;
}

- (MBProperties)initWithVersion:(double)a3 minVersion:(double)a4 maxVersion:(double)a5
{
  v14.receiver = self;
  v14.super_class = MBProperties;
  v8 = [(MBProperties *)&v14 init];
  if (v8)
  {
    v9 = [[NSMutableDictionary alloc] initWithCapacity:0];
    plist = v8->_plist;
    v8->_plist = v9;

    [(MBProperties *)v8 setVersion:a3];
    [(MBProperties *)v8 setMinSupportedVersion:a4];
    [(MBProperties *)v8 setMaxSupportedVersion:a5];
    v11 = +[MBSystemDomainsVersions defaultSystemDomainsVersions];
    [v11 version];
    [(MBProperties *)v8 setSystemDomainsVersion:?];
    v8->_protected = 1;
    v12 = +[NSDate date];
    [(MBProperties *)v8 setDate:v12];
  }

  return v8;
}

- (MBProperties)initWithData:(id)a3 error:(id *)a4
{
  v24 = 0;
  v6 = [NSPropertyListSerialization propertyListFromData:a3 mutabilityOption:1 format:0 errorDescription:&v24];
  if (!v6)
  {
    if (a4)
    {
      [MBError errorWithCode:11 format:@"Error deserializing properties: %@", v24];
      *a4 = v8 = 0;
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
      if (a4)
      {
        [(MBProperties *)v8 version];
        *a4 = [MBError errorWithCode:203 format:@"Unsupported properties version: %0.1f", v22];
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

      if (a4)
      {
        [(MBProperties *)v8 systemDomainsVersion];
        *a4 = [MBError errorWithCode:203 format:@"Unsupported system domains version: %0.1f", v21];
      }
    }

    goto LABEL_15;
  }

LABEL_17:

  return v8;
}

- (MBProperties)initWithFile:(id)a3 error:(id *)a4
{
  v6 = [NSData dataWithContentsOfFile:a3 options:0 error:a4];
  if (v6)
  {
    v7 = [(MBProperties *)self initWithData:v6 error:a4];
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)_BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [self->_plist objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSNumber", v4}]);
    }
  }

  v6 = [v5 BOOLValue];

  return v6;
}

- (id)_dataForKey:(id)a3
{
  v4 = a3;
  v5 = [self->_plist objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSData", v4}]);
    }
  }

  return v5;
}

- (id)_dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [self->_plist objectForKeyedSubscript:v4];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"%@ value not an NSDictionary", v4}]);
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

- (void)setRequiredProductVersion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setRequiredProductVersion:]", "MBProperties.m", 168, "!requiredProductVersion || [requiredProductVersion isKindOfClass:NSString.class]");
    }

    [self->_plist setObject:v4 forKeyedSubscript:@"RequiredProductVersion"];
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

- (void)setAccountClass:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setAccountClass:]", "MBProperties.m", 185, "!accountClass || [accountClass isKindOfClass:NSNumber.class]");
    }

    [self->_plist setObject:v4 forKeyedSubscript:@"AccountClass"];
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

- (void)setAccountType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBProperties setAccountType:]", "MBProperties.m", 200, "!accountType || [accountType isKindOfClass:NSNumber.class]");
    }

    [self->_plist setObject:v4 forKeyedSubscript:@"AccountType"];
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

- (void)setVersion:(double)a3
{
  v4 = [NSString stringWithFormat:@"%0.1f", *&a3];
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

- (void)setSystemDomainsVersion:(double)a3
{
  v4 = [NSString stringWithFormat:@"%0.1f", *&a3];
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

- (id)_stringForLockdownKey:(id)a3
{
  v4 = a3;
  v5 = [(MBProperties *)self lockdownKeys];
  v6 = [v5 objectForKeyedSubscript:v4];

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
  v3 = [(MBProperties *)self encrypted];
  if (v3)
  {
    v4 = [(MBProperties *)self buildVersion];
    if ([v4 hasPrefix:@"9A"])
    {
      v5 = [(MBProperties *)self buildVersion];
      v6 = [v5 length];

      if (v6 >= 3)
      {
        v7 = [(MBProperties *)self buildVersion];
        v8 = [v7 substringFromIndex:2];
        v9 = [v8 intValue];

        LOBYTE(v3) = v9 - 124 < 0x52;
        return v3;
      }
    }

    else
    {
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)hasEncryptedManifestDB
{
  if (![(MBProperties *)self encrypted])
  {
    return 0;
  }

  v3 = [(MBProperties *)self manifestEncryptionKey];
  v4 = v3 != 0;

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

- (void)addAppleIDsFromSet:(id)a3 dataClass:(id)a4
{
  v6 = a3;
  v30 = a4;
  v7 = [(MBProperties *)self appleIDs];
  if (!v7)
  {
    v7 = +[NSMutableDictionary dictionary];
    [self->_plist setObject:v7 forKeyedSubscript:@"AppleIDs"];
  }

  v26 = self;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = v30;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v31)
  {
    v9 = MBError_ptr;
    v10 = MBError_ptr;
    v11 = *v33;
    v28 = v7;
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
          [v25 handleFailureInMethod:a2 object:v26 file:@"MBProperties.m" lineNumber:377 description:{@"Account item %@ not a string", v13}];
        }

        v15 = [v7 objectForKeyedSubscript:v13];
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
            v24 = [v23 allObjects];

            v9 = v22;
            v10 = v21;
            v11 = v20;
            v7 = v28;
          }

          else
          {
            v36 = v8;
            v24 = [NSArray arrayWithObjects:&v36 count:1];
          }

          [v17 setObject:v24 forKeyedSubscript:@"dataClasses"];

          v8 = v30;
        }

        [v7 setObject:v17 forKeyedSubscript:v13];

        v12 = v12 + 1;
      }

      while (v31 != v12);
      v31 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v31);
  }
}

- (void)addAppleID:(id)a3 DSID:(id)a4 altDSID:(id)a5 dataClass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Adding appleID:%@, DSID:%@, altDSID:%@, dataClass:%@", buf, 0x2Au);
    v32 = v12;
    v33 = v13;
    v28 = v10;
    v30 = v11;
    _MBLog();
  }

  if (!v10)
  {
    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412802;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "nil appleID, DSID:%@, altDSID:%@, dataClass:%@", buf, 0x20u);
LABEL_31:
    _MBLog();
    goto LABEL_35;
  }

  if (!(v11 | v12))
  {
    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 138412546;
    v36 = v10;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "appleID:%@, nil DSID&altDSID, dataClass:%@", buf, 0x16u);
    goto LABEL_31;
  }

  v15 = [(MBProperties *)self appleIDs];
  if (!v15)
  {
    v15 = +[NSMutableDictionary dictionary];
    [self->_plist setObject:v15 forKeyedSubscript:@"AppleIDs"];
  }

  v16 = [v15 objectForKeyedSubscript:v10, v28, v30, v32, v33];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v17 = v16) == 0)
  {
    v17 = +[NSMutableDictionary dictionary];
  }

  if (v11)
  {
    v18 = [v17 objectForKeyedSubscript:@"dsid"];
    v19 = v18;
    if (v18 && ([v18 isEqualToString:v11] & 1) == 0)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v19;
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "DSID mismatch: existingDSID:%@ != DSID:%@", buf, 0x16u);
        v29 = v19;
        v31 = v11;
        _MBLog();
      }
    }

    [v17 setObject:v11 forKeyedSubscript:{@"dsid", v29, v31}];
  }

  if (v12)
  {
    v21 = [v17 objectForKeyedSubscript:@"altDsid"];
    v22 = v21;
    if (v21 && ([v21 isEqualToString:v12] & 1) == 0)
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v22;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "altDSID mismatch: existingAltDSID:%@ != altDSID:%@", buf, 0x16u);
        v29 = v22;
        v31 = v12;
        _MBLog();
      }
    }

    [v17 setObject:v12 forKeyedSubscript:{@"altDsid", v29, v31}];
  }

  if (v13)
  {
    v24 = [v17 objectForKeyedSubscript:@"dataClasses"];
    if (v24)
    {
      v25 = v24;
      v26 = [NSMutableSet setWithArray:v24];
      [v26 addObject:v13];
      v27 = [v26 allObjects];
    }

    else
    {
      v34 = v13;
      v27 = [NSArray arrayWithObjects:&v34 count:1];
    }

    [v17 setObject:v27 forKeyedSubscript:@"dataClasses"];
  }

  [v15 setObject:v17 forKeyedSubscript:v10];

LABEL_35:
}

- (void)addAssetDescriptionForAppleID:(id)a3 assetDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(MBProperties *)self appleIDs];
    v10 = [v9 objectForKeyedSubscript:v6];
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
      v15 = [v14 allObjects];
    }

    else
    {
      v16 = v8;
      v15 = [NSArray arrayWithObjects:&v16 count:1];
    }

    [v11 setObject:v15 forKeyedSubscript:@"assets"];
    [v9 setObject:v11 forKeyedSubscript:v6];
  }
}

- (void)setActiveAppleID:(id)a3
{
  plist = self->_plist;
  if (a3)
  {
    [plist setObject:a3 forKeyedSubscript:@"ActiveAppleID"];
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

- (id)containerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MBProperties *)self _containers];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_addContainer:(id)a3
{
  v4 = a3;
  if (([v4 isSystemContainer] & 1) == 0 && (objc_msgSend(v4, "isSystemSharedContainer") & 1) == 0)
  {
    v5 = [(MBProperties *)self _containers];
    if (!v5)
    {
      v5 = [NSMutableDictionary dictionaryWithCapacity:32];
      [self->_plist setObject:v5 forKeyedSubscript:@"Applications"];
    }

    v6 = [v4 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = [v4 identifier];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Duplicate container ID detected: %@", buf, 0xCu);

      v10 = [v4 identifier];
      _MBLog();
    }

    else
    {
      v8 = [v4 propertyListForBackupProperties];
      v10 = [v4 identifier];
      [v5 setObject:v8 forKeyedSubscript:v10];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addContainersFromArray:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MBProperties *)self _addContainer:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllContainers
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:32];
  [self->_plist setObject:v3 forKeyedSubscript:@"Applications"];
}

- (BOOL)writeToFile:(id)a3 error:(id *)a4
{
  v6 = a3;
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

    v10 = [v7 writeToFile:v6 options:v9 error:a4];
  }

  else if (a4)
  {
    [MBError errorWithCode:100 format:@"Error serializing properties: %@", v12];
    *a4 = v10 = 0;
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
  v8 = [(MBProperties *)self requiredProductVersion];
  v9 = [(MBProperties *)self date];
  v10 = [(MBProperties *)self encrypted];
  v11 = [(MBProperties *)self wasPasscodeSet];
  v12 = [(MBProperties *)self lockdownKeys];
  v13 = MBStringWithDictionary();
  v14 = [NSString stringWithFormat:@"<%@: version=%0.1f, systemDomainsVersion=%0.1f, requiredProductVersion=%@, date=%@, encrypted=%d, passcodeSet=%d, lockdownKeys=%@>", v3, v5, v7, v8, v9, v10, v11, v13];

  return v14;
}

@end