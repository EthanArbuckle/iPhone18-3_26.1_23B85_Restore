@interface MBDomain
+ (BOOL)_BOOLFromValue:(id)value forKey:(id)key;
+ (BOOL)isContainerizedName:(id)name;
+ (double)doubleFromStringValueForKey:(id)key plist:(id)plist;
+ (id)_dictionaryOfStringsToStringFromValue:(id)value forKey:(id)key;
+ (id)_domainWithName:(id)name volumeMountPoint:(id)point rootPath:(id)path;
+ (id)_relativePathsByAddingSQLiteJournals:(id)journals;
+ (id)_setOfStringsFromValue:(id)value forKey:(id)key;
+ (id)_stringByRemovingCommentsFromValue:(id)value forKey:(id)key;
+ (id)appDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appGroupDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appPlaceholderDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appPluginDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)containerIDWithName:(id)name;
+ (id)domainForTestingWithName:(id)name plist:(id)plist;
+ (id)nonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point;
+ (id)systemContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)systemSharedContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)uninstalledDomainWithName:(id)name;
+ (int)containerTypeWithName:(id)name;
- (BOOL)_loadDomainFromExternalPlist:(id)plist;
- (BOOL)_loadSystemDomain:(id)domain plist:(id)plist volumeMountPoint:(id)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUninstalledAppDomain;
- (BOOL)shouldBackUpAnyChildOfRelativePath:(id)path;
- (BOOL)shouldBackupRelativePathFromLiveFileSystem:(id)system;
- (BOOL)shouldBackupRelativePathIgnoringProtectionClass:(id)class;
- (BOOL)supportsFSEventsForDetectingChanges;
- (NSString)rootPath;
- (NSString)rootPathRelativeToVolumeMountPoint;
- (id)_initNonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point;
- (id)_initWithName:(id)name volumeMountPoint:(id)point volumeType:(unint64_t)type rootPath:(id)path;
- (id)standardizedRelativePathFor:(id)for;
- (int)containerType;
- (int64_t)compare:(id)compare;
- (void)rootPath;
@end

@implementation MBDomain

+ (BOOL)_BOOLFromValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not a number: %@", keyCopy, valueCopy]);
  }

  bOOLValue = [valueCopy BOOLValue];

  return bOOLValue;
}

+ (id)_stringByRemovingCommentsFromValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not a string: %@", keyCopy, valueCopy]);
  }

  v7 = [valueCopy componentsSeparatedByString:@"#"];
  v8 = [v7 objectAtIndexedSubscript:0];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v10;
}

+ (id)_setOfStringsFromValue:(id)value forKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not an array", keyCopy]);
  }

  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(valueCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = valueCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MBDomain _stringByRemovingCommentsFromValue:*(*(&v16 + 1) + 8 * i) forKey:keyCopy];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_dictionaryOfStringsToStringFromValue:(id)value forKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    keyCopy = [[MBException alloc] initWithCode:11 format:@"Domain %@ value not a dictionary", keyCopy];
LABEL_14:
    objc_exception_throw(keyCopy);
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(valueCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = valueCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *v20;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        keyCopy = [[MBException alloc] initWithCode:11 format:@"Domain %@ item key not a string", keyCopy];
        goto LABEL_14;
      }

      v14 = [v8 objectForKeyedSubscript:v13];
      v15 = [MBDomain _stringByRemovingCommentsFromValue:v14 forKey:v13];
      [v7 setObject:v15 forKeyedSubscript:keyCopy];
    }

    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v10);
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (double)doubleFromStringValueForKey:(id)key plist:(id)plist
{
  keyCopy = key;
  v6 = [plist objectForKeyedSubscript:keyCopy];
  v7 = [MBDomain _stringByRemovingCommentsFromValue:v6 forKey:keyCopy];

  [v7 doubleValue];
  v9 = v8;

  return v9;
}

+ (id)_relativePathsByAddingSQLiteJournals:(id)journals
{
  v33 = *MEMORY[0x1E69E9840];
  journalsCopy = journals;
  v4 = MBSQLitePathExtensions();
  v5 = [journalsCopy mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = journalsCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      v21 = v7;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        pathExtension = [v10 pathExtension];
        v12 = [v4 containsObject:pathExtension];

        if (v12)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = MBSQLiteJournalSuffixes();
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [v10 stringByAppendingString:*(*(&v23 + 1) + 8 * i)];
                [v5 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }

          v7 = v21;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)isContainerizedName:(id)name
{
  v3 = [self containerIDWithName:name];
  v4 = v3 != 0;

  return v4;
}

+ (id)containerIDWithName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&unk_1F59DC790 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(&unk_1F59DC790);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([nameCopy hasPrefix:v8])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [&unk_1F59DC790 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v9 = [v8 length];
    if (v9 >= [nameCopy length])
    {
      goto LABEL_12;
    }

    v10 = [nameCopy substringFromIndex:{objc_msgSend(v8, "length") + 1}];
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (int)containerTypeWithName:(id)name
{
  nameCopy = name;
  if ([MBDomain isAppPluginName:nameCopy])
  {
    v4 = 2;
  }

  else if ([MBDomain isAppGroupName:nameCopy])
  {
    v4 = 3;
  }

  else if ([MBDomain isSystemContainerName:nameCopy])
  {
    v4 = 4;
  }

  else if ([MBDomain isSystemSharedContainerName:nameCopy])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)_domainWithName:(id)name volumeMountPoint:(id)point rootPath:(id)path
{
  nameCopy = name;
  pointCopy = point;
  pathCopy = path;
  if (!nameCopy)
  {
    +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
  }

  v10 = pathCopy;
  if (pathCopy)
  {
    if (([pointCopy hasPrefix:@"/"] & 1) == 0)
    {
      +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
    }

    if ((MBPathHasVolumePrefix(v10, pointCopy) & 1) == 0)
    {
      [MBDomain _domainWithName:pointCopy volumeMountPoint:v10 rootPath:?];
    }
  }

  v11 = MBVolumeTypeFromMountPoint(pointCopy);
  if (!v11)
  {
    +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
  }

  v12 = [[MBDomain alloc] _initWithName:nameCopy volumeMountPoint:pointCopy volumeType:v11 rootPath:v10];

  return v12;
}

+ (id)appDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appPlaceholderDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  pathCopy = path;
  pointCopy = point;
  v10 = [self placeholderNameWithAppID:identifier];
  v11 = [MBDomain _domainWithName:v10 volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appPluginDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomainPlugin", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appGroupDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomainGroup", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)systemContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"SysContainerDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)systemSharedContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"SysSharedContainerDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)uninstalledDomainWithName:(id)name
{
  nameCopy = name;
  v4 = [[MBDomain alloc] _initWithName:nameCopy volumeMountPoint:0 volumeType:0 rootPath:0];

  return v4;
}

+ (id)nonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point
{
  pointCopy = point;
  plistCopy = plist;
  nameCopy = name;
  v12 = [[MBDomain alloc] _initNonContainerizedDomainWithName:nameCopy plist:plistCopy accountType:type volumeMountPoint:pointCopy];

  return v12;
}

- (id)_initWithName:(id)name volumeMountPoint:(id)point volumeType:(unint64_t)type rootPath:(id)path
{
  nameCopy = name;
  pointCopy = point;
  pathCopy = path;
  if (!nameCopy)
  {
    [MBDomain _initWithName:volumeMountPoint:volumeType:rootPath:];
  }

  v14 = pathCopy;
  if ([nameCopy containsString:@"/"])
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain name cannot contain a slash"]);
  }

  v18.receiver = self;
  v18.super_class = MBDomain;
  v15 = [(MBDomain *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_volumeMountPoint, point);
    v16->_volumeType = type;
    objc_storeStrong(&v16->_rootPath, path);
    v16->_shouldDigest = 1;
    v16->_shouldRestoreRelativeSymlinks = [MBDomain _shouldRestoreRelativeSymlinksForDomainName:nameCopy];
  }

  return v16;
}

- (id)_initNonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point
{
  nameCopy = name;
  plistCopy = plist;
  pointCopy = point;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MBException alloc];
    v24 = @"Domain name not a string";
    goto LABEL_24;
  }

  if ([nameCopy containsString:@"/"])
  {
    v23 = [MBException alloc];
    v24 = @"Domain name cannot contain a slash";
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MBException alloc];
    v24 = @"Domain plist not a dictionary";
    goto LABEL_24;
  }

  if (!type)
  {
    [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
  }

  v14 = pointCopy;
  v15 = v14;
  if (type == 1)
  {
    v16 = [plistCopy objectForKeyedSubscript:@"RootPath"];
    v17 = v16;
    v15 = v14;
    if (v16)
    {
      v15 = v14;
      if ((MBPathHasVolumePrefix(v16, v14) & 1) == 0)
      {

        v15 = @"/private/var";
        if ((MBPathHasVolumePrefix(v17, @"/private/var") & 1) == 0)
        {
          [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
        }
      }
    }
  }

  v26.receiver = self;
  v26.super_class = MBDomain;
  v18 = [(MBDomain *)&v26 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v18->_name, name);
  v19->_shouldDigest = 1;
  v19->_shouldRestoreRelativeSymlinks = [MBDomain _shouldRestoreRelativeSymlinksForDomainName:nameCopy];
  if (![(MBDomain *)v19 _loadSystemDomain:nameCopy plist:plistCopy volumeMountPoint:v15])
  {
    v21 = 0;
    goto LABEL_16;
  }

  if (!v19->_rootPath)
  {
    v23 = [MBException alloc];
    v25 = nameCopy;
    v24 = @"Root path not specified for domain: %@";
LABEL_24:
    objc_exception_throw([(MBException *)v23 initWithCode:11 format:v24, v25]);
  }

  objc_storeStrong(&v19->_volumeMountPoint, v15);
  v20 = MBVolumeTypeFromMountPoint(v19->_volumeMountPoint);
  v19->_volumeType = v20;
  if (!v20)
  {
    [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
  }

LABEL_14:
  v21 = v19;
LABEL_16:

  return v21;
}

+ (id)domainForTestingWithName:(id)name plist:(id)plist
{
  plistCopy = plist;
  nameCopy = name;
  v7 = [[MBDomain alloc] _initNonContainerizedDomainWithName:nameCopy plist:plistCopy accountType:1 volumeMountPoint:@"/private/var/mobile"];

  return v7;
}

- (BOOL)_loadSystemDomain:(id)domain plist:(id)plist volumeMountPoint:(id)point
{
  v122 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  plistCopy = plist;
  pointCopy = point;
  if (!domainCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  if (!plistCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  v11 = pointCopy;
  if (!pointCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  v12 = [plistCopy objectForKeyedSubscript:@"BackupRulesPath"];
  if (!v12)
  {
    goto LABEL_16;
  }

  self->_isExternalConfig = 1;
  if (![(MBDomain *)self _loadDomainFromExternalPlist:v12])
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412546;
      v119 = name;
      v120 = 2112;
      v121 = v12;
      _os_log_impl(&dword_1DEB5D000, v24, OS_LOG_TYPE_DEFAULT, "Failed to load backup rules for '%@' from external plist at '%@'", buf, 0x16u);
      v108 = v12;
      _MBLog(@"Df", "Failed to load backup rules for '%@' from external plist at '%@'", v26, v27, v28, v29, v30, v31, self->_name);
    }

    v32 = [plistCopy objectForKeyedSubscript:@"HasFallbackConfig"];

    if (!v32)
    {
      v94 = [plistCopy objectForKeyedSubscript:@"RootPath"];
      v95 = [MBDomain _stringByRemovingCommentsFromValue:v94 forKey:@"RootPath"];
      rootPath = self->_rootPath;
      self->_rootPath = v95;

      v23 = 1;
      goto LABEL_99;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->_name;
      *buf = 138412290;
      v119 = v34;
      _os_log_impl(&dword_1DEB5D000, v33, OS_LOG_TYPE_DEFAULT, "Unable to load external config for domain '%@', falling back to system definition", buf, 0xCu);
      _MBLog(@"Df", "Unable to load external config for domain '%@', falling back to system definition", v35, v36, v37, v38, v39, v40, self->_name);
    }

    self->_isExternalConfig = 0;
LABEL_16:
    v41 = v11;
    v111 = domainCopy;
    v109 = v11;
    if ([v41 hasPrefix:@"/private"])
    {
      v42 = [v41 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v41 = v42;
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v110 = plistCopy;
    v43 = plistCopy;
    v44 = [v43 countByEnumeratingWithState:&v113 objects:v117 count:16];
    if (!v44)
    {
LABEL_91:

      v23 = 1;
      plistCopy = v110;
      domainCopy = v111;
      v11 = v109;
      goto LABEL_99;
    }

    v45 = v44;
    v46 = *v114;
    v112 = v41;
LABEL_20:
    v47 = 0;
    while (1)
    {
      if (*v114 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v48 = *(*(&v113 + 1) + 8 * v47);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v108 = [[MBException alloc] initWithCode:11 format:@"Domain plist key not a string", v107, v108];
        goto LABEL_104;
      }

      v49 = [v43 objectForKeyedSubscript:v48];
      if ([v48 isEqualToString:@"RootPath"])
      {
        v50 = [MBDomain _stringByRemovingCommentsFromValue:v49 forKey:v48];
        relativePathsToOnlyBackupEncrypted = self->_rootPath;
        self->_rootPath = v50;
      }

      else
      {
        if ([v48 isEqualToString:@"RootPathRelativeToVolumeMountPoint"])
        {
          v52 = [MBDomain _stringByRemovingCommentsFromValue:v49 forKey:v48];
          v53 = [v41 stringByAppendingPathComponent:v52];
          relativePathsToBackupAndRestore = self->_rootPath;
          self->_rootPath = v53;
LABEL_29:

          goto LABEL_33;
        }

        if ([v48 isEqualToString:@"BackupRulesPlistPath"])
        {
          goto LABEL_33;
        }

        if ([v48 isEqualToString:@"ShouldDigest"])
        {
          self->_shouldDigest = [MBDomain _BOOLFromValue:v49 forKey:v48];
          goto LABEL_33;
        }

        if ([v48 isEqualToString:@"RelativePathsToBackupAndRestore"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v55 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsToBackupAndRestore;
          self->_relativePathsToBackupAndRestore = v55;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsToBackupLive"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v56 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsToBackupLive;
          self->_relativePathsToBackupLive = v56;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsNotToBackup"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v57 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackup;
          self->_relativePathsNotToBackup = v57;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsNotToBackupToDrive"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v58 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToDrive;
          self->_relativePathsNotToBackupToDrive = v58;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsNotToBackupToService"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v59 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToService;
          self->_relativePathsNotToBackupToService = v59;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsNotToBackupToLocal"])
        {
          v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          v41 = v112;
          v60 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToLocal;
          self->_relativePathsNotToBackupToLocal = v60;
          goto LABEL_29;
        }

        if ([v48 isEqualToString:@"RelativePathsToOnlyBackupEncrypted"])
        {
          v61 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          relativePathsToOnlyBackupEncrypted = self->_relativePathsToOnlyBackupEncrypted;
          self->_relativePathsToOnlyBackupEncrypted = v61;
        }

        else if ([v48 isEqualToString:@"RelativePathsNotToCheckIfModifiedDuringBackup"])
        {
          v62 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
          relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToCheckIfModifiedDuringBackup;
          self->_relativePathsNotToCheckIfModifiedDuringBackup = v62;
        }

        else
        {
          if ([v48 isEqualToString:@"RelativePathsToRestoreOnly"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v63 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsToRestoreOnly;
            self->_relativePathsToRestoreOnly = v63;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsToRestoreOnlyFromService"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v64 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsToRestoreOnlyFromService;
            self->_relativePathsToRestoreOnlyFromService = v64;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsToRemoveOnRestore"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v65 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsToRemoveOnRestore;
            self->_relativePathsToRemoveOnRestore = v65;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsOfSystemFilesToAlwaysRestore"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v66 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsOfSystemFilesToAlwaysRestore;
            self->_relativePathsOfSystemFilesToAlwaysRestore = v66;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsOfSystemFilesToAlwaysRemoveOnRestore"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v67 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsOfSystemFilesToAlwaysRemoveOnRestore;
            self->_relativePathsOfSystemFilesToAlwaysRemoveOnRestore = v67;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsNotToRestore"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v68 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsNotToRestore;
            self->_relativePathsNotToRestore = v68;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsNotToRestoreFromLocal"])
          {
            v52 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            v41 = v112;
            v69 = [MBDomain _relativePathsByAddingSQLiteJournals:v52];
            relativePathsToBackupAndRestore = self->_relativePathsNotToRestoreFromLocal;
            self->_relativePathsNotToRestoreFromLocal = v69;
            goto LABEL_29;
          }

          if ([v48 isEqualToString:@"RelativePathsNotToMigrate"])
          {
            v70 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToMigrate;
            self->_relativePathsNotToMigrate = v70;
          }

          else if ([v48 isEqualToString:@"RelativePathsToBackgroundRestore"])
          {
            v71 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsToBackgroundRestore;
            self->_relativePathsToBackgroundRestore = v71;
          }

          else if ([v48 isEqualToString:@"RelativePathsNotToRemoveIfNotRestored"])
          {
            v72 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToRemoveIfNotRestored;
            self->_relativePathsNotToRemoveIfNotRestored = v72;
          }

          else
          {
            if (![v48 isEqualToString:@"RelativePathAggregateDictionaryGroups"])
            {
              if ([v48 isEqualToString:@"RelativePathDomainRedirects"])
              {
                v74 = [MBDomain _dictionaryOfStringsToStringFromValue:v49 forKey:v48];
                relativePathDomainRedirects = self->_relativePathDomainRedirects;
                self->_relativePathDomainRedirects = v74;
                goto LABEL_75;
              }

              if ([v48 isEqualToString:@"RelativePathsToBackupIgnoringProtectionClass"])
              {
                v76 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
                v77 = [MBDomain _relativePathsByAddingSQLiteJournals:v76];
                relativePathsToBackupIgnoringProtectionClass = self->_relativePathsToBackupIgnoringProtectionClass;
                self->_relativePathsToBackupIgnoringProtectionClass = v77;
                goto LABEL_78;
              }

              if ([v48 isEqualToString:@"RelativePathsToIgnoreExclusionsForDrive"])
              {
                v79 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
                relativePathDomainRedirects = self->_relativePathsToIgnoreExclusionsForDrive;
                self->_relativePathsToIgnoreExclusionsForDrive = v79;
LABEL_75:
              }

              else
              {
                v41 = v112;
                if ([v48 isEqualToString:@"BackupRulesPath"] & 1) != 0 || (objc_msgSend(v48, "isEqualToString:", @"HasFallbackConfig"))
                {
                  goto LABEL_33;
                }

                if ([v48 isEqualToString:@"RelativePathsToBackupToDriveAndStandardAccount"])
                {
                  v76 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
                  v80 = [MBDomain _relativePathsByAddingSQLiteJournals:v76];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsToBackupToDriveAndStandardAccount;
                  self->_relativePathsToBackupToDriveAndStandardAccount = v80;
                }

                else if ([v48 isEqualToString:@"RelativePathsNotToBackupInMegaBackup"])
                {
                  v76 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
                  v81 = [MBDomain _relativePathsByAddingSQLiteJournals:v76];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsNotToBackupInMegaBackup;
                  self->_relativePathsNotToBackupInMegaBackup = v81;
                }

                else
                {
                  if (![v48 isEqualToString:@"RelativePathsNotToTransferDeviceToDevice"])
                  {
                    v108 = [[MBException alloc] initWithCode:11 format:@"Unexpected domain plist key: %@", v48, v108];
LABEL_104:
                    objc_exception_throw(v108);
                  }

                  v76 = [MBDomain _setOfStringsFromValue:v49 forKey:v48];
                  v82 = [MBDomain _relativePathsByAddingSQLiteJournals:v76];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsNotToTransferDeviceToDevice;
                  self->_relativePathsNotToTransferDeviceToDevice = v82;
                }

LABEL_78:
              }

              v41 = v112;
              goto LABEL_33;
            }

            v73 = [MBDomain _dictionaryOfStringsToStringFromValue:v49 forKey:v48];
            relativePathsToOnlyBackupEncrypted = self->_relativePathAggregateDictionaryGroups;
            self->_relativePathAggregateDictionaryGroups = v73;
          }
        }
      }

LABEL_33:
      if (v45 == ++v47)
      {
        v83 = [v43 countByEnumeratingWithState:&v113 objects:v117 count:16];
        v45 = v83;
        if (!v83)
        {
          goto LABEL_91;
        }

        goto LABEL_20;
      }
    }
  }

  v13 = self->_rootPath;
  v14 = [plistCopy objectForKeyedSubscript:@"RootPath"];
  LOBYTE(v13) = [(NSString *)v13 isEqualToString:v14];

  if (v13)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_name;
      *buf = 138412546;
      v119 = v16;
      v120 = 2112;
      v121 = v12;
      _os_log_impl(&dword_1DEB5D000, v15, OS_LOG_TYPE_DEFAULT, "Loaded backup rules for '%@' from external plist at '%@'", buf, 0x16u);
      _MBLog(@"Df", "Loaded backup rules for '%@' from external plist at '%@'", v17, v18, v19, v20, v21, v22, self->_name);
    }

    v23 = 1;
    self->_hasExternalConfig = 1;
  }

  else
  {
    v84 = MBIsInternalInstall();
    v85 = MBGetDefaultLog();
    v86 = v85;
    if (v84)
    {
      if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
      {
        v87 = self->_name;
        *buf = 138412546;
        v119 = v87;
        v120 = 2112;
        v121 = v12;
        _os_log_impl(&dword_1DEB5D000, v86, OS_LOG_TYPE_FAULT, "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", buf, 0x16u);
        _MBLog(@"F ", "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", v88, v89, v90, v91, v92, v93, self->_name);
      }
    }

    else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v97 = self->_name;
      *buf = 138412546;
      v119 = v97;
      v120 = 2112;
      v121 = v12;
      _os_log_impl(&dword_1DEB5D000, v86, OS_LOG_TYPE_ERROR, "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", buf, 0x16u);
      _MBLog(@"E ", "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", v98, v99, v100, v101, v102, v103, self->_name);
    }

    v23 = 0;
  }

LABEL_99:

  v104 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_loadDomainFromExternalPlist:(id)plist
{
  v113 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:plistCopy];

  if ((v6 & 1) == 0)
  {
    v37 = MBIsInternalInstall();
    v38 = MBGetDefaultLog();
    v10 = v38;
    if (v37)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v110 = plistCopy;
        _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", buf, 0xCu);
        _MBLog(@"F ", "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", v39, v40, v41, v42, v43, v44, plistCopy);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v110 = plistCopy;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", buf, 0xCu);
      _MBLog(@"E ", "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", v45, v46, v47, v48, v49, v50, plistCopy);
    }

    v35 = 0;
    goto LABEL_66;
  }

  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:plistCopy];
  v106 = 0;
  v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v106];
  v10 = v106;

  if (!v9)
  {
    v51 = MBIsInternalInstall();
    v52 = MBGetDefaultLog();
    v36 = v52;
    if (v51)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v110 = plistCopy;
        v111 = 2112;
        v112 = v10;
        _os_log_impl(&dword_1DEB5D000, v36, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", buf, 0x16u);
        _MBLog(@"F ", "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", v53, v54, v55, v56, v57, v58, plistCopy);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v110 = plistCopy;
      v111 = 2112;
      v112 = v10;
      _os_log_impl(&dword_1DEB5D000, v36, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", buf, 0x16u);
      _MBLog(@"E ", "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", v71, v72, v73, v74, v75, v76, plistCopy);
    }

    goto LABEL_64;
  }

  v97 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59DC7A8];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v102 objects:v108 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v103;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v103 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v102 + 1) + 8 * i);
        if (([v97 containsObject:v16]& 1) == 0)
        {
          v59 = MBIsInternalInstall();
          v60 = MBGetDefaultLog();
          v61 = v60;
          if (v59)
          {
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
LABEL_54:
              *buf = 138412546;
              v110 = plistCopy;
              v111 = 2112;
              v112 = v16;
              _os_log_impl(&dword_1DEB5D000, v61, OS_LOG_TYPE_FAULT, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", buf, 0x16u);
              v70 = @"F ";
              goto LABEL_61;
            }

LABEL_62:
            v36 = v97;
LABEL_63:

            goto LABEL_64;
          }

          if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

LABEL_60:
          *buf = 138412546;
          v110 = plistCopy;
          v111 = 2112;
          v112 = v16;
          _os_log_impl(&dword_1DEB5D000, v61, OS_LOG_TYPE_ERROR, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", buf, 0x16u);
          v70 = @"E ";
LABEL_61:
          v36 = v97;
          _MBLog(v70, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", v64, v65, v66, v67, v68, v69, plistCopy);
          goto LABEL_63;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v62 = MBIsInternalInstall();
          v63 = MBGetDefaultLog();
          v61 = v63;
          if (v62)
          {
            if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_54;
            }

            goto LABEL_62;
          }

          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          goto LABEL_60;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v102 objects:v108 count:16];
    }

    while (v13);
  }

  v94 = v9;
  v95 = v10;
  v96 = plistCopy;

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (!v18)
  {
    goto LABEL_38;
  }

  v19 = v18;
  v20 = *v99;
  do
  {
    v21 = 0;
    do
    {
      if (*v99 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v98 + 1) + 8 * v21);
      v23 = [v17 objectForKeyedSubscript:v22];
      if ([v22 isEqualToString:@"RootPath"])
      {
        v24 = [MBDomain _stringByRemovingCommentsFromValue:v23 forKey:v22];
        rootPath = self->_rootPath;
        self->_rootPath = v24;
        goto LABEL_24;
      }

      if ([v22 isEqualToString:@"RelativePathsToBackupAndRestore"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        v26 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsToBackupAndRestore;
        self->_relativePathsToBackupAndRestore = v26;
        goto LABEL_21;
      }

      if ([v22 isEqualToString:@"RelativePathsToOnlyBackupEncrypted"])
      {
        v28 = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        rootPath = self->_relativePathsToOnlyBackupEncrypted;
        self->_relativePathsToOnlyBackupEncrypted = v28;
        goto LABEL_24;
      }

      if ([v22 isEqualToString:@"RelativePathsNotToBackup"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        v29 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToBackup;
        self->_relativePathsNotToBackup = v29;
        goto LABEL_21;
      }

      if ([v22 isEqualToString:@"RelativePathsNotToBackupToDrive"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        v30 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToDrive;
        self->_relativePathsNotToBackupToDrive = v30;
        goto LABEL_21;
      }

      if ([v22 isEqualToString:@"RelativePathsToBackgroundRestore"])
      {
        v31 = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        rootPath = self->_relativePathsToBackgroundRestore;
        self->_relativePathsToBackgroundRestore = v31;
        goto LABEL_24;
      }

      if ([v22 isEqualToString:@"RelativePathsToRemoveOnRestore"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        v32 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsToRemoveOnRestore;
        self->_relativePathsToRemoveOnRestore = v32;
        goto LABEL_21;
      }

      if ([v22 isEqualToString:@"RelativePathsNotToTransferDeviceToDevice"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v23 forKey:v22];
        v33 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToTransferDeviceToDevice;
        self->_relativePathsNotToTransferDeviceToDevice = v33;
LABEL_21:

LABEL_24:
      }

      ++v21;
    }

    while (v19 != v21);
    v34 = [v17 countByEnumeratingWithState:&v98 objects:v107 count:16];
    v19 = v34;
  }

  while (v34);
LABEL_38:

  plistCopy = v96;
  if (self->_rootPath)
  {
    v35 = 1;
    v9 = v94;
    v10 = v95;
    v36 = v97;
    goto LABEL_65;
  }

  v79 = MBIsInternalInstall();
  v80 = MBGetDefaultLog();
  v81 = v80;
  v9 = v94;
  v10 = v95;
  v36 = v97;
  if (v79)
  {
    if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v110 = v96;
      _os_log_impl(&dword_1DEB5D000, v81, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", buf, 0xCu);
      _MBLog(@"F ", "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", v82, v83, v84, v85, v86, v87, v96);
    }
  }

  else if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v110 = v96;
    _os_log_impl(&dword_1DEB5D000, v81, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", buf, 0xCu);
    _MBLog(@"E ", "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", v88, v89, v90, v91, v92, v93, v96);
  }

LABEL_64:
  v35 = 0;
LABEL_65:

LABEL_66:
  v77 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MBDomain *)self isEqualToDomain:equalCopy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_name compare:compareCopy[4]];
  }

  else
  {
    v5 = NSOrderedSame;
  }

  return v5;
}

- (int)containerType
{
  if ([(MBDomain *)self isPluginAppDomain])
  {
    return 2;
  }

  if ([(MBDomain *)self isGroupAppDomain])
  {
    return 3;
  }

  if ([(MBDomain *)self isSystemContainerDomain])
  {
    return 4;
  }

  if ([(MBDomain *)self isSystemSharedContainerDomain])
  {
    return 5;
  }

  return 1;
}

- (BOOL)isUninstalledAppDomain
{
  isAppDomain = [(MBDomain *)self isAppDomain];
  if (isAppDomain)
  {
    LOBYTE(isAppDomain) = self->_rootPath == 0;
  }

  return isAppDomain;
}

- (BOOL)supportsFSEventsForDetectingChanges
{
  if ([(MBDomain *)self isAppDomain]|| [(MBDomain *)self isPluginAppDomain]|| [(MBDomain *)self isGroupAppDomain]|| [(MBDomain *)self isSystemContainerDomain])
  {
    return 1;
  }

  return [(MBDomain *)self isSystemSharedContainerDomain];
}

- (NSString)rootPath
{
  rootPath = self->_rootPath;
  if (!rootPath)
  {
    [MBDomain rootPath];
    rootPath = v5;
  }

  return rootPath;
}

- (BOOL)shouldBackUpAnyChildOfRelativePath:(id)path
{
  v46 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy length];
  if (v5)
  {
    v6 = v5;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
    relativePathsNotToBackup = [(MBDomain *)self relativePathsNotToBackup];
    v8 = [relativePathsNotToBackup countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(relativePathsNotToBackup);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = pathCopy;
          v14 = v12;
          v15 = [v13 length];
          if (v15 == [v14 length])
          {
            v16 = [v13 isEqualToString:v14];

            if (v16)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v17 = [v14 stringByAppendingString:@"/"];

            v18 = [v13 hasPrefix:v17];
            if (v18)
            {
              goto LABEL_28;
            }
          }
        }

        v9 = [relativePathsNotToBackup countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v9);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    relativePathsNotToBackup = [(MBDomain *)selfCopy relativePathsToBackup];
    v19 = [relativePathsNotToBackup countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(relativePathsNotToBackup);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          v24 = [v23 length];
          if (!v24)
          {
LABEL_30:
            v32 = 1;
            goto LABEL_31;
          }

          if (v6 >= v24)
          {
            v25 = pathCopy;
            v26 = v23;
          }

          else
          {
            v25 = v23;
            v26 = pathCopy;
          }

          v27 = v26;
          v28 = [v25 length];
          if (v28 == [v27 length])
          {
            v29 = [v25 isEqualToString:v27];

            if (v29)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v30 = [v27 stringByAppendingString:@"/"];

            v31 = [v25 hasPrefix:v30];
            if (v31)
            {
              goto LABEL_30;
            }
          }
        }

        v20 = [relativePathsNotToBackup countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:
    v32 = 0;
LABEL_31:
  }

  else
  {
    v32 = 1;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BOOL)shouldBackupRelativePathIgnoringProtectionClass:(id)class
{
  v23 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  relativePathsToBackupIgnoringProtectionClass = [(MBDomain *)self relativePathsToBackupIgnoringProtectionClass];
  v6 = [relativePathsToBackupIgnoringProtectionClass countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(relativePathsToBackupIgnoringProtectionClass);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = classCopy;
        v11 = v9;
        v12 = [v10 length];
        if (v12 == [v11 length])
        {
          v13 = [v10 isEqualToString:v11];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v14 = [v11 stringByAppendingString:@"/"];

          v15 = [v10 hasPrefix:v14];
          if (v15)
          {
LABEL_13:
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [relativePathsToBackupIgnoringProtectionClass countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)shouldBackupRelativePathFromLiveFileSystem:(id)system
{
  v28 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  name = [(MBDomain *)self name];
  v6 = [name isEqualToString:@"SkippedFilesDomain"];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = self->_relativePathsToBackupLive;
    if ([(NSSet *)v8 count])
    {
      stringByStandardizingPath = [systemCopy stringByStandardizingPath];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v8;
      v7 = [(NSSet *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v22 = v8;
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = stringByStandardizingPath;
            v15 = v13;
            v16 = [v14 length];
            if (v16 == [v15 length])
            {
              v17 = [v14 isEqualToString:v15];

              if (v17)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v18 = [v15 stringByAppendingString:@"/"];

              v19 = [v14 hasPrefix:v18];
              if (v19)
              {
LABEL_16:
                LOBYTE(v7) = 1;
                goto LABEL_17;
              }
            }
          }

          v7 = [(NSSet *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

LABEL_17:
        v8 = v22;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)rootPathRelativeToVolumeMountPoint
{
  volumeMountPoint = [(MBDomain *)self volumeMountPoint];
  v4 = [volumeMountPoint hasPrefix:@"/private"];

  if (v4)
  {
    v5 = [@"/private" length];
    volumeMountPoint2 = [(MBDomain *)self volumeMountPoint];
    v7 = [volumeMountPoint2 length] - v5;
  }

  else
  {
    volumeMountPoint2 = [(MBDomain *)self volumeMountPoint];
    v7 = [volumeMountPoint2 length];
  }

  rootPath = [(MBDomain *)self rootPath];
  v9 = [rootPath substringFromIndex:v7 + 1];

  return v9;
}

- (id)standardizedRelativePathFor:(id)for
{
  stringByStandardizingPath = [for stringByStandardizingPath];
  if ([stringByStandardizingPath isAbsolutePath])
  {
    if (([stringByStandardizingPath hasPrefix:self->_rootPath] & 1) == 0)
    {
      [MBDomain standardizedRelativePathFor:];
    }

    v5 = [stringByStandardizingPath substringFromIndex:{-[NSString length](self->_rootPath, "length") + 1}];

    stringByStandardizingPath = v5;
  }

  return stringByStandardizingPath;
}

+ (void)_domainWithName:(uint64_t)a1 volumeMountPoint:(uint64_t)a2 rootPath:.cold.2(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MBDomain _domainWithName:volumeMountPoint:rootPath:]"];
  [v5 handleFailureInFunction:v4 file:@"MBDomain.m" lineNumber:141 description:{@"%@ is not a prefix of %@", a1, a2}];
}

- (void)rootPath
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v2 object:v3 file:@"MBDomain.m" lineNumber:540 description:{@"Domain has no root path (uninstalled app?): %@", *(v3 + 32)}];

  *v0 = *v1;
}

- (void)standardizedRelativePathFor:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"MBDomain.m" lineNumber:625 description:{@"Absolute path doesn't have domain root %@ as prefix: %@", *v3, v0}];
}

@end