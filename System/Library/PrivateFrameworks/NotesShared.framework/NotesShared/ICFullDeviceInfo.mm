@interface ICFullDeviceInfo
- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)a3;
- (BOOL)isHardwareInfoUpgradableToIOS13:(ICDeviceHardwareInfo *)a3;
- (BOOL)isHardwareInfoUpgradableToMacOS11:(ICDeviceHardwareInfo *)a3;
- (BOOL)shouldBeHidden;
- (BOOL)upgradableToIOS14orMacOS11;
- (BOOL)upgraded;
- (BOOL)upgradedToIOS13;
- (BOOL)upgradedToIOS14EorMacOS11E;
- (BOOL)upgradedToMajor:(int)a3 minor:(int)a4;
- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)a3;
- (ICFullDeviceInfo)init;
- (ICFullDeviceInfo)initWithName:(id)a3 model:(id)a4 modelDisplayName:(id)a5 softwareVersion:(id)a6;
- (id)description;
- (id)loggableDescription;
- (unint64_t)hardwareInfoNameFromString:(id)a3;
@end

@implementation ICFullDeviceInfo

- (ICFullDeviceInfo)init
{
  [(ICFullDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICFullDeviceInfo)initWithName:(id)a3 model:(id)a4 modelDisplayName:(id)a5 softwareVersion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ICFullDeviceInfo;
  v14 = [(ICMigrationDeviceInfo *)&v19 initWithName:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_model, a4);
    objc_storeStrong(&v15->_modelDisplayName, a5);
    objc_storeStrong(&v15->_softwareVersion, a6);
    [(ICFullDeviceInfo *)v15 hardwareInfoFromModelId:v11];
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
  v5 = [(ICMigrationDeviceInfo *)self name];
  v6 = [(ICFullDeviceInfo *)self model];
  v7 = [(ICFullDeviceInfo *)self modelDisplayName];
  v8 = [(ICFullDeviceInfo *)self softwareVersion];
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

  v11 = [v4 stringWithFormat:@"%@ <name: %@, model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)loggableDescription
{
  v12.receiver = self;
  v12.super_class = ICFullDeviceInfo;
  v3 = [(ICFullDeviceInfo *)&v12 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ICFullDeviceInfo *)self model];
  v6 = [(ICFullDeviceInfo *)self modelDisplayName];
  v7 = [(ICFullDeviceInfo *)self softwareVersion];
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

  v10 = [v4 stringWithFormat:@"%@ <model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)a3
{
  switch(a3->modelName)
  {
    case 1uLL:
      version = a3->version;
      v6 = __OFSUB__(version, 6);
      v4 = version == 6;
      v5 = version - 6 < 0;
      goto LABEL_9;
    case 2uLL:
      v11 = a3->version;
      v6 = 0;
      v4 = v11 == 0;
      v5 = v11 < 0;
      goto LABEL_9;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:
      v3 = a3->version;
      v6 = __OFSUB__(v3, 2);
      v4 = v3 == 2;
      v5 = v3 - 2 < 0;
      goto LABEL_9;
    case 6uLL:
    case 9uLL:
      v9 = a3->version;
      v6 = __OFSUB__(v9, 4);
      v4 = v9 == 4;
      v5 = v9 - 4 < 0;
      goto LABEL_9;
    case 8uLL:
    case 0xBuLL:
      v8 = a3->version;
      v6 = __OFSUB__(v8, 1);
      v4 = v8 == 1;
      v5 = v8 - 1 < 0;
      goto LABEL_9;
    case 0xAuLL:
      v12 = a3->version;
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

- (BOOL)isHardwareInfoUpgradableToIOS13:(ICDeviceHardwareInfo *)a3
{
  modelName = a3->modelName;
  if (a3->modelName != 11)
  {
    if (modelName == 10 || modelName == 9)
    {
      v5 = a3->version <= 7;
      goto LABEL_5;
    }

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  version = a3->version;
  if (version != 6)
  {
    v6 = version > 6;
    if (version != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = a3->subVersion <= 2;
LABEL_5:
  v6 = !v5;
LABEL_12:
  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICFullDeviceInfo *)a3 isHardwareInfoUpgradableToIOS13:v6, v8];
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

- (BOOL)isHardwareInfoUpgradableToMacOS11:(ICDeviceHardwareInfo *)a3
{
  modelName = a3->modelName;
  result = 1;
  if (a3->modelName > 3)
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
        return *(&a3->modelName + v7) > v5;
      }

      return result;
    }

    v5 = 5;
    goto LABEL_18;
  }

  switch(modelName)
  {
    case 1:
      version = a3->version;
      if (version <= 14)
      {
        if (version == 14)
        {
          v5 = 3;
          v7 = 16;
          return *(&a3->modelName + v7) > v5;
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

- (BOOL)upgradedToMajor:(int)a3 minor:(int)a4
{
  v7 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v7)
  {
    return 0;
  }

  v8 = objc_alloc(MEMORY[0x277CCAC80]);
  v9 = [(ICFullDeviceInfo *)self softwareVersion];
  v10 = [v8 initWithString:v9];

  v11 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v12 = [v11 invertedSet];
  [v10 setCharactersToBeSkipped:v12];

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

  if (SHIDWORD(v16) <= a3 && (HIDWORD(v16) != a3 || v16 < a4))
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
  v3 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICFullDeviceInfo *)self softwareVersion];
  v5 = [v4 hasPrefix:@"OSX"];

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
    v3 = self;
    v4 = 14;
    v5 = 5;
  }

  else
  {
    if (![(ICFullDeviceInfo *)self isOSXDevice])
    {
      return 1;
    }

    v3 = self;
    v4 = 11;
    v5 = 3;
  }

  return [(ICFullDeviceInfo *)v3 upgradedToMajor:v4 minor:v5];
}

- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)a3
{
  result = a4;
  retstr->version = 0;
  retstr->subVersion = 0;
  retstr->modelName = 0;
  if (result)
  {
    v7 = result;
    v8 = [(ICDeviceHardwareInfo *)result lowercaseString];

    v24 = 0;
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-z]+)([0-9]+) options:([0-9]+)" error:{1, &v24}];
    v10 = [v9 firstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    v11 = v10;
    if (v10 && [v10 numberOfRanges] == 4)
    {
      v12 = [v11 rangeAtIndex:1];
      v14 = [v8 substringWithRange:{v12, v13}];
      v15 = [(ICFullDeviceInfo *)self hardwareInfoNameFromString:v14];
      retstr->modelName = v15;
      if (v15)
      {
        v16 = [v11 rangeAtIndex:2];
        v18 = [v8 substringWithRange:{v16, v17}];
        v19 = [v18 integerValue];

        v20 = [v11 rangeAtIndex:3];
        v22 = [v8 substringWithRange:{v20, v21}];
        v23 = [v22 integerValue];

        retstr->version = v19;
        retstr->subVersion = v23;
      }
    }
  }

  return result;
}

- (unint64_t)hardwareInfoNameFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"imac"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"imacpro"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"macmini"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"macpro"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"xserve"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"macbook"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"macbookair"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"macbookpro"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ipod"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"iphone"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ipad"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"appletv"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"audioaccessory"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"realitydevice"])
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
  v3 = [(ICFullDeviceInfo *)self softwareVersion];
  if ([v3 hasPrefix:@"OSX"])
  {
    v4 = 0;
  }

  else if ([v3 hasPrefix:@"iOS"] && (-[ICFullDeviceInfo hardwareInfo](self, "hardwareInfo"), v7 != 12))
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