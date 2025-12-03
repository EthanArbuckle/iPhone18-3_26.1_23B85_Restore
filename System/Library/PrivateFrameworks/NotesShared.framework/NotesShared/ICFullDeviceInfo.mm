@interface ICFullDeviceInfo
- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)upgradable;
- (BOOL)isHardwareInfoUpgradableToIOS13:(ICDeviceHardwareInfo *)s13;
- (BOOL)isHardwareInfoUpgradableToMacOS11:(ICDeviceHardwareInfo *)s11;
- (BOOL)shouldBeHidden;
- (BOOL)upgradableToIOS14orMacOS11;
- (BOOL)upgraded;
- (BOOL)upgradedToIOS13;
- (BOOL)upgradedToIOS14EorMacOS11E;
- (BOOL)upgradedToMajor:(int)major minor:(int)minor;
- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)id;
- (ICFullDeviceInfo)init;
- (ICFullDeviceInfo)initWithName:(id)name model:(id)model modelDisplayName:(id)displayName softwareVersion:(id)version;
- (id)description;
- (id)loggableDescription;
- (unint64_t)hardwareInfoNameFromString:(id)string;
@end

@implementation ICFullDeviceInfo

- (ICFullDeviceInfo)init
{
  [(ICFullDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICFullDeviceInfo)initWithName:(id)name model:(id)model modelDisplayName:(id)displayName softwareVersion:(id)version
{
  modelCopy = model;
  displayNameCopy = displayName;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = ICFullDeviceInfo;
  v14 = [(ICMigrationDeviceInfo *)&v19 initWithName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_model, model);
    objc_storeStrong(&v15->_modelDisplayName, displayName);
    objc_storeStrong(&v15->_softwareVersion, version);
    [(ICFullDeviceInfo *)v15 hardwareInfoFromModelId:modelCopy];
    v15->_hardwareInfo.subVersion = v18;
    *&v15->_hardwareInfo.modelName = v17;
  }

  return v15;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = ICFullDeviceInfo;
  v3 = [(ICFullDeviceInfo *)&v13 description];
  v4 = MEMORY[0x277CCACA8];
  name = [(ICMigrationDeviceInfo *)self name];
  model = [(ICFullDeviceInfo *)self model];
  modelDisplayName = [(ICFullDeviceInfo *)self modelDisplayName];
  softwareVersion = [(ICFullDeviceInfo *)self softwareVersion];
  if ([(ICFullDeviceInfo *)self upgradable])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(ICFullDeviceInfo *)self upgraded])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v4 stringWithFormat:@"%@ <name: %@, model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, name, model, modelDisplayName, softwareVersion, v9, v10];

  return v11;
}

- (id)loggableDescription
{
  v12.receiver = self;
  v12.super_class = ICFullDeviceInfo;
  v3 = [(ICFullDeviceInfo *)&v12 description];
  v4 = MEMORY[0x277CCACA8];
  model = [(ICFullDeviceInfo *)self model];
  modelDisplayName = [(ICFullDeviceInfo *)self modelDisplayName];
  softwareVersion = [(ICFullDeviceInfo *)self softwareVersion];
  if ([(ICFullDeviceInfo *)self upgradable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ICFullDeviceInfo *)self upgraded])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v4 stringWithFormat:@"%@ <model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, model, modelDisplayName, softwareVersion, v8, v9];

  return v10;
}

- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)upgradable
{
  switch(upgradable->modelName)
  {
    case 1uLL:
      version = upgradable->version;
      v6 = __OFSUB__(version, 6);
      v4 = version == 6;
      v5 = version - 6 < 0;
      goto LABEL_9;
    case 2uLL:
      v11 = upgradable->version;
      v6 = 0;
      v4 = v11 == 0;
      v5 = v11 < 0;
      goto LABEL_9;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:
      v3 = upgradable->version;
      v6 = __OFSUB__(v3, 2);
      v4 = v3 == 2;
      v5 = v3 - 2 < 0;
      goto LABEL_9;
    case 6uLL:
    case 9uLL:
      v9 = upgradable->version;
      v6 = __OFSUB__(v9, 4);
      v4 = v9 == 4;
      v5 = v9 - 4 < 0;
      goto LABEL_9;
    case 8uLL:
    case 0xBuLL:
      v8 = upgradable->version;
      v6 = __OFSUB__(v8, 1);
      v4 = v8 == 1;
      v5 = v8 - 1 < 0;
      goto LABEL_9;
    case 0xAuLL:
      v12 = upgradable->version;
      v6 = __OFSUB__(v12, 3);
      v4 = v12 == 3;
      v5 = v12 - 3 < 0;
LABEL_9:
      if (v5 ^ v6 | v4)
      {
        result = 0;
      }

      else
      {
        result = 1;
      }

      break;
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
      result = 0;
      break;
    default:
      result = 1;
      break;
  }

  return result;
}

- (BOOL)isHardwareInfoUpgradableToIOS13:(ICDeviceHardwareInfo *)s13
{
  modelName = s13->modelName;
  if (s13->modelName != 11)
  {
    if (modelName == 10 || modelName == 9)
    {
      v5 = s13->version <= 7;
      goto LABEL_5;
    }

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  version = s13->version;
  if (version != 6)
  {
    v6 = version > 6;
    if (version != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = s13->subVersion <= 2;
LABEL_5:
  v6 = !v5;
LABEL_12:
  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICFullDeviceInfo *)s13 isHardwareInfoUpgradableToIOS13:v6, v8];
  }

  return v6;
}

- (BOOL)upgradableToIOS14orMacOS11
{
  if ([(ICFullDeviceInfo *)self isIOSDevice])
  {

    return [(ICFullDeviceInfo *)self upgradedToIOS13];
  }

  else if ([(ICFullDeviceInfo *)self isOSXDevice])
  {
    [(ICFullDeviceInfo *)self hardwareInfo];
    return [(ICFullDeviceInfo *)self isHardwareInfoUpgradableToMacOS11:v4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)isHardwareInfoUpgradableToMacOS11:(ICDeviceHardwareInfo *)s11
{
  modelName = s11->modelName;
  result = 1;
  if (s11->modelName > 3)
  {
    if (modelName > 6)
    {
      if (modelName == 7)
      {
        v5 = 10;
        goto LABEL_18;
      }

      if (modelName != 8)
      {
        return result;
      }
    }

    else if (modelName != 4)
    {
      if (modelName == 6)
      {
        v5 = 7;
LABEL_18:
        v7 = 8;
        return *(&s11->modelName + v7) > v5;
      }

      return result;
    }

    v5 = 5;
    goto LABEL_18;
  }

  switch(modelName)
  {
    case 1:
      version = s11->version;
      if (version <= 14)
      {
        if (version == 14)
        {
          v5 = 3;
          v7 = 16;
          return *(&s11->modelName + v7) > v5;
        }

        return 0;
      }

      break;
    case 2:
      v5 = 0;
      goto LABEL_18;
    case 3:
      v5 = 6;
      goto LABEL_18;
  }

  return result;
}

- (BOOL)upgradedToMajor:(int)major minor:(int)minor
{
  softwareVersion = [(ICFullDeviceInfo *)self softwareVersion];

  if (!softwareVersion)
  {
    return 0;
  }

  v8 = objc_alloc(MEMORY[0x277CCAC80]);
  softwareVersion2 = [(ICFullDeviceInfo *)self softwareVersion];
  v10 = [v8 initWithString:softwareVersion2];

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  [v10 setCharactersToBeSkipped:invertedSet];

  v16 = 0;
  if (![v10 scanInt:&v16 + 4] || !objc_msgSend(v10, "scanInt:", &v16))
  {
    v14 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICFullDeviceInfo upgradedToMajor:v14 minor:?];
    }

    goto LABEL_11;
  }

  if (SHIDWORD(v16) <= major && (HIDWORD(v16) != major || v16 < minor))
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)upgraded
{
  softwareVersion = [(ICFullDeviceInfo *)self softwareVersion];

  if (!softwareVersion)
  {
    return 0;
  }

  softwareVersion2 = [(ICFullDeviceInfo *)self softwareVersion];
  v5 = [softwareVersion2 hasPrefix:@"OSX"];

  if (v5)
  {
    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  if (v5)
  {
    v7 = 11;
  }

  else
  {
    v7 = 0;
  }

  return [(ICFullDeviceInfo *)self upgradedToMajor:v6 minor:v7];
}

- (BOOL)upgradedToIOS13
{
  if (![(ICFullDeviceInfo *)self isIOSDevice])
  {
    return 1;
  }

  return [(ICFullDeviceInfo *)self upgradedToMajor:13 minor:0];
}

- (BOOL)upgradedToIOS14EorMacOS11E
{
  if ([(ICFullDeviceInfo *)self isIOSDevice])
  {
    selfCopy2 = self;
    v4 = 14;
    v5 = 5;
  }

  else
  {
    if (![(ICFullDeviceInfo *)self isOSXDevice])
    {
      return 1;
    }

    selfCopy2 = self;
    v4 = 11;
    v5 = 3;
  }

  return [(ICFullDeviceInfo *)selfCopy2 upgradedToMajor:v4 minor:v5];
}

- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)id
{
  result = a4;
  retstr->version = 0;
  retstr->subVersion = 0;
  retstr->modelName = 0;
  if (result)
  {
    v7 = result;
    lowercaseString = [(ICDeviceHardwareInfo *)result lowercaseString];

    v24 = 0;
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-z]+)([0-9]+) options:([0-9]+)" error:{1, &v24}];
    v10 = [v9 firstMatchInString:lowercaseString options:0 range:{0, objc_msgSend(lowercaseString, "length")}];
    v11 = v10;
    if (v10 && [v10 numberOfRanges] == 4)
    {
      v12 = [v11 rangeAtIndex:1];
      v14 = [lowercaseString substringWithRange:{v12, v13}];
      v15 = [(ICFullDeviceInfo *)self hardwareInfoNameFromString:v14];
      retstr->modelName = v15;
      if (v15)
      {
        v16 = [v11 rangeAtIndex:2];
        v18 = [lowercaseString substringWithRange:{v16, v17}];
        integerValue = [v18 integerValue];

        v20 = [v11 rangeAtIndex:3];
        v22 = [lowercaseString substringWithRange:{v20, v21}];
        integerValue2 = [v22 integerValue];

        retstr->version = integerValue;
        retstr->subVersion = integerValue2;
      }
    }
  }

  return result;
}

- (unint64_t)hardwareInfoNameFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"imac"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"imacpro"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"macmini"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"macpro"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"xserve"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"macbook"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"macbookair"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"macbookpro"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"ipod"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"iphone"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"ipad"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"appletv"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"audioaccessory"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"realitydevice"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldBeHidden
{
  softwareVersion = [(ICFullDeviceInfo *)self softwareVersion];
  if ([softwareVersion hasPrefix:@"OSX"])
  {
    v4 = 0;
  }

  else if ([softwareVersion hasPrefix:@"iOS"] && (-[ICFullDeviceInfo hardwareInfo](self, "hardwareInfo"), v7 != 12))
  {
    [(ICFullDeviceInfo *)self hardwareInfo];
    v4 = v6 == 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)isHardwareInfoUpgradableToIOS13:(os_log_t)log .cold.1(uint64_t *a1, char a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = @"N";
  v6 = 134218498;
  if (a2)
  {
    v5 = @"Y";
  }

  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "isHardwareInfoUpgradableToIOS13 %lu %ld %@", &v6, 0x20u);
}

- (void)upgradedToMajor:(void *)a1 minor:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 softwareVersion];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Failed to scan softwareVersion: %@", &v4, 0xCu);
}

@end