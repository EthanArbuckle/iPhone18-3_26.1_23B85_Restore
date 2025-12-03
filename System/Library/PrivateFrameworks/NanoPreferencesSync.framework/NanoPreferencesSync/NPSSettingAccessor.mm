@interface NPSSettingAccessor
+ (id)serializeObject:(id)object error:(id *)error;
+ (id)unserializeObject:(id)object error:(id *)error;
- (BOOL)requiresDeviceUnlockedSinceBoot;
- (BOOL)sizeSafeToLoadInMemory;
- (BOOL)sizeSafeToWrite;
- (BOOL)synchronize;
- (BOOL)synchronizeForWriting;
- (NPSSettingAccessor)initWithNanoDomain:(id)domain;
- (NPSSettingAccessor)initWithUserDefaultsDomain:(id)domain container:(id)container appGroupContainer:(id)groupContainer;
- (NPSSettingAccessor)initWithUserDefaultsDomain:(id)domain containerPath:(id)path;
- (NSString)containerPath;
- (id)copyKeyList;
- (id)objectForKey:(id)key;
- (id)serializedObjectForKey:(id)key error:(id *)error;
- (id)typeString;
- (unint64_t)domainPlistSize;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NPSSettingAccessor

- (NPSSettingAccessor)initWithUserDefaultsDomain:(id)domain container:(id)container appGroupContainer:(id)groupContainer
{
  domainCopy = domain;
  containerCopy = container;
  groupContainerCopy = groupContainer;
  v11 = sub_1000239F0(containerCopy, groupContainerCopy);
  v12 = v11;
  if (!containerCopy || v11)
  {
    v15 = [(NPSSettingAccessor *)self initWithUserDefaultsDomain:domainCopy containerPath:v11];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_container, container);
      objc_storeStrong(p_isa + 5, groupContainer);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = containerCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not resolve containerPath for container (%@)", &v18, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NPSSettingAccessor)initWithUserDefaultsDomain:(id)domain containerPath:(id)path
{
  domainCopy = domain;
  pathCopy = path;
  if (domainCopy)
  {
    v13.receiver = self;
    v13.super_class = NPSSettingAccessor;
    v9 = [(NPSSettingAccessor *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_domain, domain);
      objc_storeStrong(&v10->_containerPath, path);
      v10->_type = 0;
      v10->_hasChangesToWrite = 0;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NPSSettingAccessor)initWithNanoDomain:(id)domain
{
  domainCopy = domain;
  v6 = [[NPSDomainAccessor alloc] initWithDomain:domainCopy];
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = NPSSettingAccessor;
    v7 = [(NPSSettingAccessor *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_domain, domain);
      objc_storeStrong(&v8->_nanoDomainAccessor, v6);
      v8->_type = 1;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)containerPath
{
  v3 = sub_1000239F0(self->_container, self->_appGroupContainer);
  v4 = v3;
  containerPath = self->_containerPath;
  if (v3)
  {
    if (![(NSString *)v3 isEqualToString:containerPath])
    {
      v6 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_containerPath;
        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v4;
        v8 = "Container path changed from (%@) to (%@)";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
      }
    }
  }

  else if (containerPath)
  {
    v6 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      container = self->_container;
      v10 = self->_containerPath;
      v12 = 138412546;
      v13 = container;
      v14 = 2112;
      v15 = v10;
      v8 = "Could not resolve containerPath for container (%@), previous containerPath: (%@)";
      goto LABEL_8;
    }
  }

  objc_storeStrong(&self->_containerPath, v4);

  return v4;
}

- (BOOL)synchronizeForWriting
{
  if (self->_hasChangesToWrite)
  {
    return [(NPSSettingAccessor *)self synchronize];
  }

  else
  {
    return 1;
  }
}

- (BOOL)synchronize
{
  type = self->_type;
  if (type == 1)
  {
    synchronize = [(NPSDomainAccessor *)self->_nanoDomainAccessor synchronize];
    v6 = synchronize != 0;

    v10 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    domain = self->_domain;
    v16 = 138412546;
    v17 = domain;
    v18 = 1024;
    LODWORD(v19) = synchronize != 0;
    v12 = "Synchronized nano-setting domain (%@); ret: (%d).";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v16, 0x12u);
    return v6;
  }

  if (type)
  {
    return 0;
  }

  containerPath = [(NPSSettingAccessor *)self containerPath];
  if (!containerPath)
  {
    v13 = CFPreferencesSynchronize(self->_domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = v13 != 0;
    v10 = nps_daemon_log;
    if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      return v6;
    }

    v14 = self->_domain;
    v16 = 138412546;
    v17 = v14;
    v18 = 1024;
    LODWORD(v19) = v13 != 0;
    v12 = "Synchronized user defaults domain (%@); ret: (%d).";
    goto LABEL_12;
  }

  v5 = _CFPreferencesSynchronizeWithContainer();
  v6 = v5 != 0;
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_domain;
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = containerPath;
    v20 = 1024;
    v21 = v5 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Synchronized user defaults domain (%@) for containerPath: (%@); ret: (%d).", &v16, 0x1Cu);
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  type = self->_type;
  if (type == 1)
  {
    v8 = [(NPSDomainAccessor *)self->_nanoDomainAccessor objectForKey:keyCopy];
    v12 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      v14 = @"YES";
      v19 = 138412802;
      if (!v8)
      {
        v14 = @"NO";
      }

      v20 = domain;
      v21 = 2112;
      v22 = keyCopy;
      v23 = 2114;
      v24 = v14;
      v15 = "Read nano-setting <%@, %@>; value: (%{public}@)";
      goto LABEL_17;
    }

LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  if (type)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  containerPath = [(NPSSettingAccessor *)self containerPath];
  if (!containerPath)
  {
    v8 = CFPreferencesCopyValue(keyCopy, self->_domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v12 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_domain;
      v17 = @"YES";
      v19 = 138412802;
      if (!v8)
      {
        v17 = @"NO";
      }

      v20 = v16;
      v21 = 2112;
      v22 = keyCopy;
      v23 = 2114;
      v24 = v17;
      v15 = "Read user default <%@, %@>; value: (%{public}@)";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, &v19, 0x20u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v7 = containerPath;
  v8 = _CFPreferencesCopyValueWithContainer();
  v9 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_domain;
    v11 = @"YES";
    v19 = 138413058;
    if (!v8)
    {
      v11 = @"NO";
    }

    v20 = v10;
    v21 = 2112;
    v22 = keyCopy;
    v23 = 2112;
    v24 = v7;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Read containerized user default <%@, %@> for containerPath: (%@); value: (%{public}@)", &v19, 0x2Au);
  }

LABEL_19:

  return v8;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(NPSSettingAccessor *)self sizeSafeToWrite])
  {
    type = self->_type;
    if (type == 1)
    {
      [(NPSDomainAccessor *)self->_nanoDomainAccessor setObject:objectCopy forKey:keyCopy];
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        domain = self->_domain;
        v20 = 138412802;
        v21 = domain;
        v22 = 2112;
        v23 = keyCopy;
        v24 = 2112;
        domainPlistSize = objectCopy;
        v18 = "Written nano-setting <%@, %@>; value: (%@)";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, &v20, 0x20u);
      }
    }

    else if (!type)
    {
      containerPath = [(NPSSettingAccessor *)self containerPath];
      if (containerPath)
      {
        v10 = containerPath;
        _CFPreferencesSetValueWithContainer();
        v11 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_domain;
          v20 = 138413058;
          v21 = v12;
          v22 = 2112;
          v23 = keyCopy;
          v24 = 2112;
          domainPlistSize = v10;
          v26 = 2112;
          v27 = objectCopy;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Written containerized user default <%@, %@> for containerPath: (%@); value: (%@)", &v20, 0x2Au);
        }

        goto LABEL_15;
      }

      CFPreferencesSetValue(keyCopy, objectCopy, self->_domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_domain;
        v20 = 138412802;
        v21 = v19;
        v22 = 2112;
        v23 = keyCopy;
        v24 = 2112;
        domainPlistSize = objectCopy;
        v18 = "Written user default <%@, %@>; value: (%@)";
        goto LABEL_14;
      }
    }

LABEL_15:
    self->_hasChangesToWrite = 1;
    goto LABEL_16;
  }

  v13 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_domain;
    v15 = v13;
    v20 = 138412802;
    v21 = v14;
    v22 = 2112;
    v23 = keyCopy;
    v24 = 2048;
    domainPlistSize = [(NPSSettingAccessor *)self domainPlistSize];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not safe to write value into domain %@ for key %@. (size %lld Bytes is beyond what we can handle)", &v20, 0x20u);
  }

LABEL_16:
}

- (id)copyKeyList
{
  type = self->_type;
  if (type == 1)
  {
    nanoDomainAccessor = self->_nanoDomainAccessor;

    return [(NPSDomainAccessor *)nanoDomainAccessor copyKeyList];
  }

  else
  {
    if (!type)
    {
      containerPath = [(NPSSettingAccessor *)self containerPath];
      if (containerPath)
      {
        v6 = _CFPrefsCopyAppDictionaryWithContainer();
        allKeys = [v6 allKeys];
      }

      else
      {
        allKeys = CFPreferencesCopyKeyList(self->_domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      }

      v2 = [NSSet setWithArray:allKeys];
    }

    return v2;
  }
}

- (id)serializedObjectForKey:(id)key error:(id *)error
{
  v5 = [(NPSSettingAccessor *)self objectForKey:key];
  v6 = [objc_opt_class() serializeObject:v5 error:error];

  return v6;
}

+ (id)serializeObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    error = 0;
    v6 = CFPropertyListCreateData(kCFAllocatorDefault, objectCopy, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    v7 = v6;
    if (error)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = objectCopy;
        v14 = 2112;
        errorCopy = error;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to serialized value (%@) with error: %@ ", buf, 0x16u);
      }

      if (error)
      {
        *error = error;
      }

      CFRelease(error);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unserializeObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    error = 0;
    v6 = CFPropertyListCreateWithData(kCFAllocatorDefault, objectCopy, 0, 0, &error);
    v7 = v6;
    if (error)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = objectCopy;
        v14 = 2112;
        errorCopy = error;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to unserialized data (%@) with error: %@", buf, 0x16u);
      }

      if (error)
      {
        *error = error;
      }

      CFRelease(error);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)domainPlistSize
{
  p_type = &self->_type;
  type = self->_type;
  if (type == 1)
  {
    nanoDomainAccessor = self->_nanoDomainAccessor;

    return [(NPSDomainAccessor *)nanoDomainAccessor domainSize];
  }

  else if (type)
  {
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_FAULT))
    {
      sub_100026EDC(p_type);
    }

    return 0;
  }

  else
  {
    domain = self->_domain;
    containerPath = self->_containerPath;

    return [NPSPrefPlistSizeUtil prefSizeFor:"prefSizeFor:inContainer:" inContainer:?];
  }
}

- (BOOL)sizeSafeToWrite
{
  domainPlistSize = [(NPSSettingAccessor *)self domainPlistSize];
  type = self->_type;
  p_type = &self->_type;
  v4 = type;
  if (type != 1)
  {
    if (!v4)
    {
      return domainPlistSize <= 0x300000;
    }

    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_FAULT))
    {
      sub_100026EDC(p_type);
    }
  }

  return 1;
}

- (BOOL)sizeSafeToLoadInMemory
{
  domainPlistSize = [(NPSSettingAccessor *)self domainPlistSize];
  v4 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = domainPlistSize;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "domain size: %llu", &v9, 0xCu);
  }

  type = self->_type;
  p_type = &self->_type;
  v5 = type;
  if (type == 1 || !v5)
  {
    return domainPlistSize <= 0x80000;
  }

  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_FAULT))
  {
    sub_100026EDC(p_type);
  }

  return 1;
}

- (id)typeString
{
  p_type = &self->_type;
  type = self->_type;
  if (!type)
  {
    return @"UserDefaults";
  }

  if (type == 1)
  {
    return @"NanoSetting";
  }

  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_FAULT))
  {
    sub_100026EDC(p_type);
  }

  return @"undefined";
}

- (BOOL)requiresDeviceUnlockedSinceBoot
{
  type = self->_type;
  if (type == 1)
  {
    requiresDeviceUnlockedSinceBoot = [(NPSDomainAccessor *)self->_nanoDomainAccessor requiresDeviceUnlockedSinceBoot];
  }

  else if (type)
  {
    requiresDeviceUnlockedSinceBoot = 0;
  }

  else
  {
    domain = self->_domain;
    containerPath = self->_containerPath;
    FileProtectionClass = _CFPreferencesGetFileProtectionClass();
    v7 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_domain;
      v9 = self->_containerPath;
      v16 = 136315906;
      v17 = "[NPSSettingAccessor requiresDeviceUnlockedSinceBoot]";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 1024;
      v23 = FileProtectionClass;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Protection Class for %@ at path %@ is %d", &v16, 0x26u);
    }

    requiresDeviceUnlockedSinceBoot = FileProtectionClass != -1 && FileProtectionClass < 4;
  }

  v12 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v14 = self->_domain;
    if (requiresDeviceUnlockedSinceBoot)
    {
      v13 = @"YES";
    }

    v16 = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Is user defaults domain %@ protected: %@", &v16, 0x16u);
  }

  return requiresDeviceUnlockedSinceBoot;
}

@end