@interface AUDeveloperSettingsDatabase
+ (id)sharedDatabase;
- (AUDeveloperSettingsDatabase)init;
- (BOOL)isSeedParticipationEnabled:(id)enabled;
- (BOOL)isValidLocationType:(unint64_t)type;
- (NSDictionary)accessoriesDictionary;
- (id)accessoryList;
- (id)copyAccessoryForSignature:(id)signature modelNumber:(id)number fusingType:(id)type partnerSerialNumbers:(id)numbers;
- (id)copyAccessoryWithSerialNumber:(id)number;
- (unint64_t)urlLocationTypeForAccessory:(id)accessory;
- (void)addAccessoryWithSerialNumber:(id)number info:(id)info;
- (void)removeAccessory:(id)accessory;
- (void)removeAccessoryWithSerialNumber:(id)number;
- (void)setAccessoriesDictionary:(id)dictionary;
- (void)updateAccessory:(id)accessory;
- (void)updateAccessory:(id)accessory locationType:(unint64_t)type;
- (void)updateAccessoryWithSerialNumber:(id)number info:(id)info;
@end

@implementation AUDeveloperSettingsDatabase

+ (id)sharedDatabase
{
  if (qword_1000997C0 != -1)
  {
    sub_100047B24();
  }

  v3 = qword_1000997B8;

  return v3;
}

- (AUDeveloperSettingsDatabase)init
{
  v6.receiver = self;
  v6.super_class = AUDeveloperSettingsDatabase;
  v2 = [(AUDeveloperSettingsDatabase *)&v6 init];
  if (v2)
  {
    v3 = os_log_create([@"com.apple.AUDeveloperSettings" UTF8String], "default");
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

- (id)accessoryList
{
  v3 = objc_opt_new();
  accessoriesDictionary = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100004374;
  v11 = &unk_100081198;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [accessoriesDictionary enumerateKeysAndObjectsUsingBlock:&v8];
  selfCopy = [NSArray arrayWithArray:v5, v8, v9, v10, v11, selfCopy];

  return selfCopy;
}

- (void)removeAccessory:(id)accessory
{
  serialNumber = [accessory serialNumber];
  [(AUDeveloperSettingsDatabase *)self removeAccessoryWithSerialNumber:serialNumber];
}

- (void)updateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  encodeAsChangedDictionary = [accessoryCopy encodeAsChangedDictionary];
  if (encodeAsChangedDictionary)
  {
    serialNumber = [accessoryCopy serialNumber];
    [(AUDeveloperSettingsDatabase *)self updateAccessoryWithSerialNumber:serialNumber info:encodeAsChangedDictionary];
  }
}

- (id)copyAccessoryWithSerialNumber:(id)number
{
  numberCopy = number;
  [(AUDeveloperSettingsDatabase *)self accessoryList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        serialNumber = [v10 serialNumber];
        v12 = [serialNumber isEqualToString:numberCopy];

        if (v12)
        {
          v15 = [v10 copy];
          [v15 setSerialNumber:numberCopy];
          goto LABEL_14;
        }

        partnerSerialNumbers = [v10 partnerSerialNumbers];
        v14 = [partnerSerialNumbers containsObject:numberCopy];

        if (v14)
        {
          v15 = [v10 copy];
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_14:

  return v15;
}

- (id)copyAccessoryForSignature:(id)signature modelNumber:(id)number fusingType:(id)type partnerSerialNumbers:(id)numbers
{
  v7 = sub_100005CC0(signature, number, type, numbers);
  if (v7)
  {
    v8 = [(AUDeveloperSettingsDatabase *)self copyAccessoryWithSerialNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setAccessoriesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100047BC4();
  }

  [NSUserDefaults AUDeveloperSettingsSetObject:dictionaryCopy withKey:@"accessories"];
}

- (NSDictionary)accessoriesDictionary
{
  v3 = [NSUserDefaults AUDeveloperSettingsObjectWithKey:@"accessories"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100047C44();
    }
  }

  v3 = objc_alloc_init(NSDictionary);
LABEL_8:

  return v3;
}

- (BOOL)isSeedParticipationEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [(AUDeveloperSettingsDatabase *)self urlLocationTypeForAccessory:enabledCopy]== 3 || [(AUDeveloperSettingsDatabase *)self urlLocationTypeForAccessory:enabledCopy]== 8;

  return v5;
}

- (unint64_t)urlLocationTypeForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoriesDictionary = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v6 = [accessoriesDictionary objectForKeyedSubscript:accessoryCopy];

  v7 = [v6 objectForKeyedSubscript:@"assetLocation"];
  v8 = sub_100005020(v7);

  return v8;
}

- (void)updateAccessory:(id)accessory locationType:(unint64_t)type
{
  accessoryCopy = accessory;
  if ([(AUDeveloperSettingsDatabase *)self isValidLocationType:type])
  {
    accessoriesDictionary = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
    v8 = [accessoriesDictionary objectForKeyedSubscript:accessoryCopy];
    v9 = [v8 mutableCopy];

    v10 = [NSString stringWithUTF8String:sub_100004FFC(type)];
    [v9 setObject:v10 forKeyedSubscript:@"assetLocation"];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = log;
      v13 = sub_100004FFC(type);
      v14 = [v9 objectForKeyedSubscript:@"name"];
      v16 = 136315650;
      v17 = "[AUDeveloperSettingsDatabase updateAccessory:locationType:]";
      v18 = 2080;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Updating location = %s for accessoryName = %@", &v16, 0x20u);
    }

    v15 = [NSDictionary dictionaryWithDictionary:v9];
    [(AUDeveloperSettingsDatabase *)self addAccessoryWithSerialNumber:accessoryCopy info:v15];
  }
}

- (void)addAccessoryWithSerialNumber:(id)number info:(id)info
{
  numberCopy = number;
  infoCopy = info;
  if ([numberCopy length])
  {
    accessoriesDictionary = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
    v9 = [accessoriesDictionary mutableCopy];

    [v9 setObject:infoCopy forKeyedSubscript:numberCopy];
    [(AUDeveloperSettingsDatabase *)self setAccessoriesDictionary:v9];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[AUDeveloperSettingsDatabase addAccessoryWithSerialNumber:info:]";
      v13 = 2112;
      v14 = infoCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Not adding empty serial number with info = %@", &v11, 0x16u);
    }
  }
}

- (void)removeAccessoryWithSerialNumber:(id)number
{
  numberCopy = number;
  accessoriesDictionary = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v6 = [accessoriesDictionary mutableCopy];

  [v6 removeObjectForKey:numberCopy];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = numberCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Removing accessory from database %@", &v8, 0xCu);
  }

  [(AUDeveloperSettingsDatabase *)self setAccessoriesDictionary:v6];
}

- (void)updateAccessoryWithSerialNumber:(id)number info:(id)info
{
  numberCopy = number;
  infoCopy = info;
  if ([numberCopy length] && objc_msgSend(infoCopy, "count"))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = numberCopy;
      v12 = 2112;
      v13 = infoCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Updating database with %@ / %@", &v10, 0x16u);
    }

    [NSUserDefaults AUDeveloperSettingsUpdateAccessory:infoCopy withKey:numberCopy];
  }

  else
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[AUDeveloperSettingsDatabase updateAccessoryWithSerialNumber:info:]";
      v12 = 2112;
      v13 = numberCopy;
      v14 = 2112;
      v15 = infoCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Invalid key value / pair = %@ / %@", &v10, 0x20u);
    }
  }
}

- (BOOL)isValidLocationType:(unint64_t)type
{
  v4 = (type & 0xFFFFFFFFFFFFFFFCLL) == 4 || type == 8;
  if (type < 3)
  {
    v4 = 1;
  }

  return type == 3 || v4;
}

@end