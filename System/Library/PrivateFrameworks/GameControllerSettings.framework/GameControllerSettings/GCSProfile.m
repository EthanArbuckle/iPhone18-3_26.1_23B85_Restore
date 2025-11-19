@interface GCSProfile
+ (GCSProfile)defaultProfile;
+ (GCSProfile)profileWithName:(id)a3;
+ (NSUUID)defaultProfileUUID;
+ (id)adhocProfileForController:(id)a3 gameBundleIdentifier:(id)a4;
+ (id)archivalClasses;
+ (id)elementMappingsFrom:(id)a3 for:(id)a4;
+ (id)newBaseProfile;
+ (id)profile;
- (GCSJSONObject)jsonObject;
- (GCSProfile)initWithCoder:(id)a3;
- (GCSProfile)initWithJSONObject:(id)a3;
- (GCSProfile)initWithUUID:(id)a3 name:(id)a4 persistentControllerIdentifier:(id)a5 gameBundleIdentifier:(id)a6 baseProfile:(BOOL)a7 customizable:(BOOL)a8 sfSymbolsName:(id)a9 elementMappings:(id)a10 hapticFeedbackOverride:(BOOL)a11 hapticStrength:(double)a12 doublePressShareGesture:(int64_t)a13 longPressShareGesture:(int64_t)a14 lightbarOverride:(BOOL)a15 lightbarCustomColorEnabled:(BOOL)a16 lightbarColor:(int64_t)a17;
- (NSString)name;
- (id)anonymizedCopy;
- (id)description;
- (id)elementMappingsWithJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCSProfile

+ (NSUUID)defaultProfileUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"42381781-1b0c-467e-aa7d-823c4ce359d1"];

  return v2;
}

+ (GCSProfile)defaultProfile
{
  v2 = +[GCSProfile defaultDoublePressGesture];
  v3 = +[GCSProfile defaultLongPressGesture];
  v4 = [GCSProfile alloc];
  v5 = +[GCSProfile defaultProfileUUID];
  v6 = objc_opt_new();
  LOWORD(v10) = 0;
  LOBYTE(v9) = 0;
  v7 = [(GCSProfile *)v4 initWithUUID:v5 name:@"GCS_PROFILE_DEFAULT" persistentControllerIdentifier:0 gameBundleIdentifier:0 baseProfile:0 customizable:0 sfSymbolsName:1.0 elementMappings:@"gamecontroller.fill" hapticFeedbackOverride:v6 hapticStrength:v9 doublePressShareGesture:v2 longPressShareGesture:v3 lightbarOverride:v10 lightbarCustomColorEnabled:0 lightbarColor:?];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  name = self->_name;
  v4 = [(NSUUID *)self->_uuid UUIDString];
  v5 = [v2 stringWithFormat:@"<GCSProfile %@ (%@)>", name, v4];

  return v5;
}

- (GCSProfile)initWithUUID:(id)a3 name:(id)a4 persistentControllerIdentifier:(id)a5 gameBundleIdentifier:(id)a6 baseProfile:(BOOL)a7 customizable:(BOOL)a8 sfSymbolsName:(id)a9 elementMappings:(id)a10 hapticFeedbackOverride:(BOOL)a11 hapticStrength:(double)a12 doublePressShareGesture:(int64_t)a13 longPressShareGesture:(int64_t)a14 lightbarOverride:(BOOL)a15 lightbarCustomColorEnabled:(BOOL)a16 lightbarColor:(int64_t)a17
{
  v23 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v24 = a9;
  v25 = a10;
  v35.receiver = self;
  v35.super_class = GCSProfile;
  v26 = [(GCSProfile *)&v35 init];
  if (v26)
  {
    v27 = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v26->_modifiedDate;
    v26->_modifiedDate = v27;

    objc_storeStrong(&v26->_uuid, a3);
    objc_storeStrong(&v26->_name, a4);
    objc_storeStrong(&v26->_persistentControllerIdentifier, a5);
    objc_storeStrong(&v26->_gameBundleIdentifier, a6);
    v26->_baseProfile = a7;
    v26->_customizable = a8;
    objc_storeStrong(&v26->_sfSymbolsName, a9);
    objc_storeStrong(&v26->_elementMappings, a10);
    v26->_hapticFeedbackOverride = a11;
    v26->_hapticStrength = a12;
    v26->_doublePressShareGesture = a13;
    v26->_longPressShareGesture = a14;
    v26->_lightbarOverride = a15;
    v26->_lightbarCustomColorEnabled = a16;
    v26->_lightbarColor = a17;
  }

  return v26;
}

- (NSString)name
{
  if ([(NSString *)self->_name isEqualToString:@"GCS_PROFILE_DEFAULT"])
  {
    v3 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v3 = self->_name;
  }

  return v3;
}

- (id)anonymizedCopy
{
  v3 = [GCSProfile alloc];
  v4 = [(GCSProfile *)self jsonObject];
  v5 = [(GCSProfile *)v3 initWithJSONObject:v4];

  name = v5->_name;
  v5->_name = @"Profile";

  return v5;
}

+ (id)elementMappingsFrom:(id)a3 for:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v31 = v5;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v5 objectForKey:v13];
        v15 = [v14 mappingKey];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = [v12 name];
        }

        v34 = v17;

        if ([v12 kind] == 2)
        {
          v18 = [v5 objectForKey:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v33 = [GCSDirectionPadMapping alloc];
          [v12 remappingKey];
          [v20 invertHorizontally];
          [v20 invertVertically];
          [v20 swapAxes];

          v5 = v31;
          v21 = v34;
          v22 = [GCSDirectionPadMapping initWithElementKey:v33 mappingKey:"initWithElementKey:mappingKey:remappingOrder:invertHorizontally:invertVertically:swapAxes:" remappingOrder:v13 invertHorizontally:? invertVertically:? swapAxes:?];
        }

        else
        {
          v23 = [GCSElementMapping alloc];
          v24 = [v12 remappingKey];
          v25 = v23;
          v21 = v34;
          v22 = [(GCSElementMapping *)v25 initWithElementKey:v13 mappingKey:v34 remappingOrder:v24];
        }

        [v7 addObject:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  v26 = [v7 sortedArrayUsingComparator:&__block_literal_global_1];
  v27 = v7;
  v28 = v26;

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

BOOL __38__GCSProfile_elementMappingsFrom_for___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 remappingOrder];
  v5 = [v4 remappingOrder];

  return a2 > v5;
}

+ (id)newBaseProfile
{
  v2 = [GCSProfile alloc];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  LOWORD(v8) = 0;
  LOBYTE(v7) = 0;
  v5 = [(GCSProfile *)v2 initWithUUID:v3 name:@"Base Profile" persistentControllerIdentifier:0 gameBundleIdentifier:0 baseProfile:1 customizable:1 sfSymbolsName:1.0 elementMappings:@"gamecontroller.fill" hapticFeedbackOverride:v4 hapticStrength:v7 doublePressShareGesture:1 longPressShareGesture:2 lightbarOverride:v8 lightbarCustomColorEnabled:0 lightbarColor:?];

  return v5;
}

+ (id)profile
{
  v2 = +[GCSProfile defaultDoublePressGesture];
  v3 = +[GCSProfile defaultLongPressGesture];
  v4 = [GCSProfile alloc];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  LOWORD(v10) = 0;
  LOBYTE(v9) = 0;
  v7 = [(GCSProfile *)v4 initWithUUID:v5 name:@"New Profile" persistentControllerIdentifier:0 gameBundleIdentifier:0 baseProfile:0 customizable:1 sfSymbolsName:1.0 elementMappings:@"gamecontroller.fill" hapticFeedbackOverride:v6 hapticStrength:v9 doublePressShareGesture:v2 longPressShareGesture:v3 lightbarOverride:v10 lightbarCustomColorEnabled:0 lightbarColor:?];

  return v7;
}

+ (GCSProfile)profileWithName:(id)a3
{
  v3 = a3;
  v4 = +[GCSProfile profile];
  v5 = v4[2];
  v4[2] = v3;

  return v4;
}

+ (id)adhocProfileForController:(id)a3 gameBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GCSProfile profile];
  v8 = v7[2];
  v7[2] = @"-";

  v9 = [v6 persistentIdentifier];

  v10 = v7[5];
  v7[5] = v9;

  v11 = v7[6];
  v7[6] = v5;

  return v7;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

- (GCSProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = GCSProfile;
  v5 = [(GCSProfile *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_persistentControllerIdentifier"];
    persistentControllerIdentifier = v5->_persistentControllerIdentifier;
    v5->_persistentControllerIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_gameBundleIdentifier"];
    gameBundleIdentifier = v5->_gameBundleIdentifier;
    v5->_gameBundleIdentifier = v14;

    v5->_baseProfile = [v4 decodeBoolForKey:@"_baseProfile"];
    v5->_customizable = [v4 decodeBoolForKey:@"_customizable"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sfSymbolsName"];
    sfSymbolsName = v5->_sfSymbolsName;
    v5->_sfSymbolsName = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_elementMappings"];
    elementMappings = v5->_elementMappings;
    v5->_elementMappings = v23;

    v5->_hapticFeedbackOverride = [v4 decodeBoolForKey:@"_hapticFeedbackOverride"];
    [v4 decodeDoubleForKey:@"_hapticStrength"];
    v5->_hapticStrength = v25;
    v5->_doublePressShareGesture = [v4 decodeInt64ForKey:@"_doublePressShareGesture_ios"];
    v5->_longPressShareGesture = [v4 decodeInt64ForKey:@"_longPressShareGesture_ios"];
    v5->_lightbarOverride = [v4 decodeBoolForKey:@"_lightbarOverride"];
    v5->_lightbarCustomColorEnabled = [v4 decodeBoolForKey:@"_lightbarCustomColorEnabled"];
    v5->_lightbarColor = [v4 decodeInt64ForKey:@"_lightbarColor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_modifiedDate forKey:@"_modifiedDate"];
  [v7 encodeObject:self->_uuid forKey:@"_uuid"];
  name = self->_name;
  v5 = _GCFConvertStringToLocalizedString();
  LODWORD(name) = [(NSString *)name isEqualToString:v5];

  if (name)
  {
    v6 = self->_name;
    self->_name = @"GCS_PROFILE_DEFAULT";
  }

  [v7 encodeObject:self->_name forKey:@"_name"];
  [v7 encodeObject:self->_persistentControllerIdentifier forKey:@"_persistentControllerIdentifier"];
  [v7 encodeObject:self->_gameBundleIdentifier forKey:@"_gameBundleIdentifier"];
  [v7 encodeBool:self->_baseProfile forKey:@"_baseProfile"];
  [v7 encodeBool:self->_customizable forKey:@"_customizable"];
  [v7 encodeObject:self->_sfSymbolsName forKey:@"_sfSymbolsName"];
  [v7 encodeObject:self->_elementMappings forKey:@"_elementMappings"];
  [v7 encodeBool:self->_hapticFeedbackOverride forKey:@"_hapticFeedbackOverride"];
  [v7 encodeDouble:@"_hapticStrength" forKey:self->_hapticStrength];
  [v7 encodeInt64:self->_doublePressShareGesture forKey:@"_doublePressShareGesture_ios"];
  [v7 encodeInt64:self->_longPressShareGesture forKey:@"_longPressShareGesture_ios"];
  [v7 encodeBool:self->_lightbarOverride forKey:@"_lightbarOverride"];
  [v7 encodeBool:self->_lightbarCustomColorEnabled forKey:@"_lightbarCustomColorEnabled"];
  [v7 encodeInt64:self->_lightbarColor forKey:@"_lightbarColor"];
}

- (id)elementMappingsWithJSONDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a3 _gcs_dictionaryForJSONKey:@"elementMappings"];
  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v4 objectForKeyedSubscript:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 objectForKeyedSubscript:@"invertHorizontally"];

            v14 = off_279681DF8;
            if (v13)
            {
              v14 = off_279681DE8;
            }

            v15 = [objc_alloc(*v14) initWithJSONObject:v12];
            if (v15)
            {
              [v18 setObject:v15 forKeyedSubscript:v10];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (GCSProfile)initWithJSONObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v35.receiver = self;
    v35.super_class = GCSProfile;
    v6 = [(GCSProfile *)&v35 init];
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

      v12 = [v5 _gcs_uuidForJSONKey:@"uuid"];
      uuid = v6->_uuid;
      v6->_uuid = v12;

      v14 = [v5 _gcs_stringForJSONKey:@"name"];
      name = v6->_name;
      v6->_name = v14;

      v16 = [v5 _gcs_stringForJSONKey:@"persistentControllerIdentifier"];
      persistentControllerIdentifier = v6->_persistentControllerIdentifier;
      v6->_persistentControllerIdentifier = v16;

      v18 = [v5 _gcs_stringForJSONKey:@"gameBundleIdentifier"];
      gameBundleIdentifier = v6->_gameBundleIdentifier;
      v6->_gameBundleIdentifier = v18;

      v20 = [v5 _gcs_numberForJSONKey:@"isBaseProfile"];
      v6->_baseProfile = [v20 BOOLValue];

      v21 = [v5 _gcs_numberForJSONKey:@"customizable"];
      v6->_customizable = [v21 BOOLValue];

      v22 = [v5 _gcs_stringForJSONKey:@"sfSymbolsName"];
      sfSymbolsName = v6->_sfSymbolsName;
      v6->_sfSymbolsName = v22;

      v24 = [(GCSProfile *)v6 elementMappingsWithJSONDictionary:v5];
      elementMappings = v6->_elementMappings;
      v6->_elementMappings = v24;

      v26 = [v5 _gcs_numberForJSONKey:@"hapticFeedbackOverride"];
      v6->_hapticFeedbackOverride = [v26 BOOLValue];

      v27 = [v5 _gcs_numberForJSONKey:@"hapticStrength"];
      [v27 floatValue];
      v6->_hapticStrength = v28;

      v29 = [v5 _gcs_numberForJSONKey:@"doublePressShareGesture_ios"];
      v6->_doublePressShareGesture = [v29 longValue];

      v30 = [v5 _gcs_numberForJSONKey:@"longPressShareGesture_ios"];
      v6->_longPressShareGesture = [v30 longValue];

      v31 = [v5 _gcs_numberForJSONKey:@"lightbarOverride"];
      v6->_lightbarOverride = [v31 BOOLValue];

      v32 = [v5 _gcs_numberForJSONKey:@"lightbarCustomColorEnabled"];
      v6->_lightbarCustomColorEnabled = [v32 BOOLValue];

      v33 = [v5 _gcs_numberForJSONKey:@"lightbarColor"];
      v6->_lightbarColor = [v33 longValue];
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
  v29[14] = *MEMORY[0x277D85DE8];
  name = self->_name;
  v4 = _GCFConvertStringToLocalizedString();
  LODWORD(name) = [(NSString *)name isEqualToString:v4];

  if (name)
  {
    v5 = self->_name;
    self->_name = @"GCS_PROFILE_DEFAULT";
  }

  v6 = MEMORY[0x277CBEB38];
  v28[0] = @"modifiedDate";
  v27 = [(NSDate *)self->_modifiedDate jsonObject];
  v29[0] = v27;
  v28[1] = @"uuid";
  v26 = [(NSUUID *)self->_uuid jsonObject];
  v7 = self->_name;
  v29[1] = v26;
  v29[2] = v7;
  v28[2] = @"name";
  v28[3] = @"isBaseProfile";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_baseProfile];
  v29[3] = v25;
  v28[4] = @"customizable";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_customizable];
  sfSymbolsName = self->_sfSymbolsName;
  elementMappings = self->_elementMappings;
  v29[4] = v24;
  v29[5] = sfSymbolsName;
  v28[5] = @"sfSymbolsName";
  v28[6] = @"elementMappings";
  v23 = [MEMORY[0x277CBEAC0] _gcs_jsonObjectForSerializableDictionary:elementMappings];
  v29[6] = v23;
  v28[7] = @"hapticFeedbackOverride";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_hapticFeedbackOverride];
  v29[7] = v10;
  v28[8] = @"hapticStrength";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hapticStrength];
  v29[8] = v11;
  v28[9] = @"doublePressShareGesture_ios";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_doublePressShareGesture];
  v29[9] = v12;
  v28[10] = @"longPressShareGesture_ios";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_longPressShareGesture];
  v29[10] = v13;
  v28[11] = @"lightbarOverride";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_lightbarOverride];
  v29[11] = v14;
  v28[12] = @"lightbarCustomColorEnabled";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_lightbarCustomColorEnabled];
  v29[12] = v15;
  v28[13] = @"lightbarColor";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lightbarColor];
  v29[13] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:14];
  v18 = [v6 dictionaryWithDictionary:v17];

  persistentControllerIdentifier = self->_persistentControllerIdentifier;
  if (persistentControllerIdentifier)
  {
    [v18 setObject:persistentControllerIdentifier forKeyedSubscript:@"persistentControllerIdentifier"];
  }

  gameBundleIdentifier = self->_gameBundleIdentifier;
  if (gameBundleIdentifier)
  {
    [v18 setObject:gameBundleIdentifier forKeyedSubscript:@"gameBundleIdentifier"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

@end