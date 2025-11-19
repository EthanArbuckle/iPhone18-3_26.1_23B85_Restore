@interface GCSGame
+ (GCSGame)defaultGame;
+ (id)archivalClasses;
- (GCSGame)initWithBundleIdentifier:(id)a3 title:(id)a4 controllerToProfileMappings:(id)a5 controllerToCompatibilityModeMappings:(id)a6;
- (GCSGame)initWithCoder:(id)a3;
- (GCSGame)initWithJSONObject:(id)a3;
- (GCSJSONObject)jsonObject;
- (NSString)title;
- (id)profileForController:(id)a3 profiles:(id)a4;
- (id)profileUUIDForPersistentControllerIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (GCSGame)initWithBundleIdentifier:(id)a3 title:(id)a4 controllerToProfileMappings:(id)a5 controllerToCompatibilityModeMappings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = GCSGame;
  v14 = [(GCSGame *)&v26 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v14->_modifiedDate;
    v14->_modifiedDate = v15;

    v17 = [v10 copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v17;

    v19 = [v11 copy];
    title = v14->_title;
    v14->_title = v19;

    v21 = [v12 copy];
    controllerToProfileMappings = v14->_controllerToProfileMappings;
    v14->_controllerToProfileMappings = v21;

    v23 = [v13 copy];
    controllerToCompatibilityModeMappings = v14->_controllerToCompatibilityModeMappings;
    v14->_controllerToCompatibilityModeMappings = v23;
  }

  return v14;
}

- (id)profileForController:(id)a3 profiles:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  controllerToProfileMappings = self->_controllerToProfileMappings;
  v8 = [a3 persistentIdentifier];
  v9 = [(NSDictionary *)controllerToProfileMappings objectForKeyedSubscript:v8];

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
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
          v15 = [v14 uuid];
          v16 = [v15 isEqual:v9];

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

- (id)profileUUIDForPersistentControllerIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_controllerToProfileMappings objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[GCSProfile defaultProfile];
    v5 = [v6 uuid];
  }

  return v5;
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

- (GCSGame)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = GCSGame;
  v5 = [(GCSGame *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 initWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_controllerToProfileMappings"];
    controllerToProfileMappings = v5->_controllerToProfileMappings;
    v5->_controllerToProfileMappings = v16;

    v18 = objc_opt_class();
    v19 = [v4 decodeDictionaryWithKeysOfClass:v18 objectsOfClass:objc_opt_class() forKey:@"_controllerToCompatibilityModeMappings"];
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

- (void)encodeWithCoder:(id)a3
{
  modifiedDate = self->_modifiedDate;
  v5 = a3;
  [v5 encodeObject:modifiedDate forKey:@"_modifiedDate"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeObject:self->_controllerToProfileMappings forKey:@"_controllerToProfileMappings"];
  [v5 encodeObject:self->_controllerToCompatibilityModeMappings forKey:@"_controllerToCompatibilityModeMappings"];
}

- (GCSGame)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v25.receiver = self;
    v25.super_class = GCSGame;
    v6 = [(GCSGame *)&v25 init];
    if (v6)
    {
      v7 = [v5 _gcs_dateForJSONKey:@"modifiedDate"];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x277CBEAA8] date];
      }

      modifiedDate = v6->_modifiedDate;
      v6->_modifiedDate = v9;

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

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (GCSJSONObject)jsonObject
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"modifiedDate";
  v3 = [(NSDate *)self->_modifiedDate jsonObject];
  bundleIdentifier = self->_bundleIdentifier;
  v11[0] = v3;
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