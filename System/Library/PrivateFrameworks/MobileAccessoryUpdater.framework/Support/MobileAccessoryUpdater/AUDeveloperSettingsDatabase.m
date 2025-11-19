@interface AUDeveloperSettingsDatabase
+ (id)sharedDatabase;
- (AUDeveloperSettingsDatabase)init;
- (BOOL)isSeedParticipationEnabled:(id)a3;
- (BOOL)isValidLocationType:(unint64_t)a3;
- (NSDictionary)accessoriesDictionary;
- (id)accessoryList;
- (id)copyAccessoryForSignature:(id)a3 modelNumber:(id)a4 fusingType:(id)a5 partnerSerialNumbers:(id)a6;
- (id)copyAccessoryWithSerialNumber:(id)a3;
- (unint64_t)urlLocationTypeForAccessory:(id)a3;
- (void)addAccessoryWithSerialNumber:(id)a3 info:(id)a4;
- (void)removeAccessory:(id)a3;
- (void)removeAccessoryWithSerialNumber:(id)a3;
- (void)setAccessoriesDictionary:(id)a3;
- (void)updateAccessory:(id)a3;
- (void)updateAccessory:(id)a3 locationType:(unint64_t)a4;
- (void)updateAccessoryWithSerialNumber:(id)a3 info:(id)a4;
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
  v4 = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100004374;
  v11 = &unk_100081198;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [NSArray arrayWithArray:v5, v8, v9, v10, v11, v12];

  return v6;
}

- (void)removeAccessory:(id)a3
{
  v4 = [a3 serialNumber];
  [(AUDeveloperSettingsDatabase *)self removeAccessoryWithSerialNumber:v4];
}

- (void)updateAccessory:(id)a3
{
  v6 = a3;
  v4 = [v6 encodeAsChangedDictionary];
  if (v4)
  {
    v5 = [v6 serialNumber];
    [(AUDeveloperSettingsDatabase *)self updateAccessoryWithSerialNumber:v5 info:v4];
  }
}

- (id)copyAccessoryWithSerialNumber:(id)a3
{
  v4 = a3;
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
        v11 = [v10 serialNumber];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v15 = [v10 copy];
          [v15 setSerialNumber:v4];
          goto LABEL_14;
        }

        v13 = [v10 partnerSerialNumbers];
        v14 = [v13 containsObject:v4];

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

- (id)copyAccessoryForSignature:(id)a3 modelNumber:(id)a4 fusingType:(id)a5 partnerSerialNumbers:(id)a6
{
  v7 = sub_100005CC0(a3, a4, a5, a6);
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

- (void)setAccessoriesDictionary:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100047BC4();
  }

  [NSUserDefaults AUDeveloperSettingsSetObject:v4 withKey:@"accessories"];
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

- (BOOL)isSeedParticipationEnabled:(id)a3
{
  v4 = a3;
  v5 = [(AUDeveloperSettingsDatabase *)self urlLocationTypeForAccessory:v4]== 3 || [(AUDeveloperSettingsDatabase *)self urlLocationTypeForAccessory:v4]== 8;

  return v5;
}

- (unint64_t)urlLocationTypeForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"assetLocation"];
  v8 = sub_100005020(v7);

  return v8;
}

- (void)updateAccessory:(id)a3 locationType:(unint64_t)a4
{
  v6 = a3;
  if ([(AUDeveloperSettingsDatabase *)self isValidLocationType:a4])
  {
    v7 = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = [v8 mutableCopy];

    v10 = [NSString stringWithUTF8String:sub_100004FFC(a4)];
    [v9 setObject:v10 forKeyedSubscript:@"assetLocation"];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = log;
      v13 = sub_100004FFC(a4);
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
    [(AUDeveloperSettingsDatabase *)self addAccessoryWithSerialNumber:v6 info:v15];
  }
}

- (void)addAccessoryWithSerialNumber:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
    v9 = [v8 mutableCopy];

    [v9 setObject:v7 forKeyedSubscript:v6];
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
      v14 = v7;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Not adding empty serial number with info = %@", &v11, 0x16u);
    }
  }
}

- (void)removeAccessoryWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [(AUDeveloperSettingsDatabase *)self accessoriesDictionary];
  v6 = [v5 mutableCopy];

  [v6 removeObjectForKey:v4];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Removing accessory from database %@", &v8, 0xCu);
  }

  [(AUDeveloperSettingsDatabase *)self setAccessoriesDictionary:v6];
}

- (void)updateAccessoryWithSerialNumber:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "count"))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Updating database with %@ / %@", &v10, 0x16u);
    }

    [NSUserDefaults AUDeveloperSettingsUpdateAccessory:v7 withKey:v6];
  }

  else
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[AUDeveloperSettingsDatabase updateAccessoryWithSerialNumber:info:]";
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Invalid key value / pair = %@ / %@", &v10, 0x20u);
    }
  }
}

- (BOOL)isValidLocationType:(unint64_t)a3
{
  v4 = (a3 & 0xFFFFFFFFFFFFFFFCLL) == 4 || a3 == 8;
  if (a3 < 3)
  {
    v4 = 1;
  }

  return a3 == 3 || v4;
}

@end