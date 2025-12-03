@interface GCSGame
+ (GCSGame)defaultGame;
+ (id)archivalClasses;
- (GCSGame)initWithBundleIdentifier:(id)identifier title:(id)title controllerToProfileMappings:(id)mappings controllerToCompatibilityModeMappings:(id)modeMappings;
- (GCSGame)initWithCoder:(id)coder;
- (GCSGame)initWithJSONObject:(id)object;
- (GCSJSONObject)jsonObject;
- (NSString)title;
- (id)profileForController:(id)controller profiles:(id)profiles;
- (id)profileUUIDForPersistentControllerIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSGame

+ (GCSGame)defaultGame
{
  v2 = [GCSGame alloc];
  v3 = +[GCSGame defaultIdentifier];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(GCSGame *)v2 initWithBundleIdentifier:v3 title:@"GCS_GAME_ALL_GAMES" controllerToProfileMappings:v4 controllerToCompatibilityModeMappings:v5];

  return v6;
}

- (GCSGame)initWithBundleIdentifier:(id)identifier title:(id)title controllerToProfileMappings:(id)mappings controllerToCompatibilityModeMappings:(id)modeMappings
{
  identifierCopy = identifier;
  titleCopy = title;
  mappingsCopy = mappings;
  modeMappingsCopy = modeMappings;
  v26.receiver = self;
  v26.super_class = GCSGame;
  v14 = [(GCSGame *)&v26 init];
  if (v14)
  {
    date = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v14->_modifiedDate;
    v14->_modifiedDate = date;

    v17 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v17;

    v19 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v19;

    v21 = [mappingsCopy copy];
    controllerToProfileMappings = v14->_controllerToProfileMappings;
    v14->_controllerToProfileMappings = v21;

    v23 = [modeMappingsCopy copy];
    controllerToCompatibilityModeMappings = v14->_controllerToCompatibilityModeMappings;
    v14->_controllerToCompatibilityModeMappings = v23;
  }

  return v14;
}

- (id)profileForController:(id)controller profiles:(id)profiles
{
  v24 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  controllerToProfileMappings = self->_controllerToProfileMappings;
  persistentIdentifier = [controller persistentIdentifier];
  v9 = [(NSDictionary *)controllerToProfileMappings objectForKeyedSubscript:persistentIdentifier];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = profilesCopy;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          uuid = [v14 uuid];
          v16 = [uuid isEqual:v9];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)profileUUIDForPersistentControllerIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_controllerToProfileMappings objectForKeyedSubscript:identifier];
  v4 = v3;
  if (v3)
  {
    uuid = v3;
  }

  else
  {
    v6 = +[GCSProfile defaultProfile];
    uuid = [v6 uuid];
  }

  return uuid;
}

- (NSString)title
{
  if ([(NSString *)self->_title isEqualToString:@"GCS_GAME_ALL_GAMES"])
  {
    v3 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v3 = self->_title;
  }

  return v3;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (GCSGame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = GCSGame;
  v5 = [(GCSGame *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 initWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_controllerToProfileMappings"];
    controllerToProfileMappings = v5->_controllerToProfileMappings;
    v5->_controllerToProfileMappings = v16;

    v18 = objc_opt_class();
    v19 = [coderCopy decodeDictionaryWithKeysOfClass:v18 objectsOfClass:objc_opt_class() forKey:@"_controllerToCompatibilityModeMappings"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_opt_new();
    }

    controllerToCompatibilityModeMappings = v5->_controllerToCompatibilityModeMappings;
    v5->_controllerToCompatibilityModeMappings = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modifiedDate = self->_modifiedDate;
  coderCopy = coder;
  [coderCopy encodeObject:modifiedDate forKey:@"_modifiedDate"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_controllerToProfileMappings forKey:@"_controllerToProfileMappings"];
  [coderCopy encodeObject:self->_controllerToCompatibilityModeMappings forKey:@"_controllerToCompatibilityModeMappings"];
}

- (GCSGame)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v25.receiver = self;
    v25.super_class = GCSGame;
    v6 = [(GCSGame *)&v25 init];
    if (v6)
    {
      v7 = [v5 _gcs_dateForJSONKey:@"modifiedDate"];
      v8 = v7;
      if (v7)
      {
        date = v7;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
      }

      modifiedDate = v6->_modifiedDate;
      v6->_modifiedDate = date;

      v12 = [v5 _gcs_stringForJSONKey:@"bundleIdentifier"];
      bundleIdentifier = v6->_bundleIdentifier;
      v6->_bundleIdentifier = v12;

      v14 = [v5 _gcs_stringForJSONKey:@"title"];
      title = v6->_title;
      v6->_title = v14;

      v16 = MEMORY[0x277CBEAC0];
      v17 = [v5 _gcs_dictionaryForJSONKey:@"controllerToProfileMappings"];
      v18 = [v16 _gcs_serializableDictionaryForJsonObject:v17 withValuesOfClass:objc_opt_class()];
      controllerToProfileMappings = v6->_controllerToProfileMappings;
      v6->_controllerToProfileMappings = v18;

      v20 = MEMORY[0x277CBEAC0];
      v21 = [v5 _gcs_dictionaryForJSONKey:@"controllerToCompatibilityModeMappings"];
      v22 = [v20 _gcs_serializableDictionaryForJsonObject:v21 withValuesOfClass:objc_opt_class()];
      controllerToCompatibilityModeMappings = v6->_controllerToCompatibilityModeMappings;
      v6->_controllerToCompatibilityModeMappings = v22;
    }

    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GCSJSONObject)jsonObject
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"modifiedDate";
  jsonObject = [(NSDate *)self->_modifiedDate jsonObject];
  bundleIdentifier = self->_bundleIdentifier;
  v11[0] = jsonObject;
  v11[1] = bundleIdentifier;
  v10[1] = @"bundleIdentifier";
  v10[2] = @"title";
  v11[2] = self->_title;
  v10[3] = @"controllerToProfileMappings";
  v5 = [MEMORY[0x277CBEAC0] _gcs_jsonObjectForSerializableDictionary:self->_controllerToProfileMappings];
  v11[3] = v5;
  v10[4] = @"controllerToCompatibilityModeMappings";
  v6 = [MEMORY[0x277CBEAC0] _gcs_jsonObjectForSerializableDictionary:self->_controllerToCompatibilityModeMappings];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end