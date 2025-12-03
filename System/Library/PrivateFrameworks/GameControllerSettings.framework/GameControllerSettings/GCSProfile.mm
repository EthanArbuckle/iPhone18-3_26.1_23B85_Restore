@interface GCSProfile
+ (GCSProfile)defaultProfile;
+ (GCSProfile)profileWithName:(id)name;
+ (NSUUID)defaultProfileUUID;
+ (id)adhocProfileForController:(id)controller gameBundleIdentifier:(id)identifier;
+ (id)archivalClasses;
+ (id)elementMappingsFrom:(id)from for:(id)for;
+ (id)newBaseProfile;
+ (id)profile;
- (GCSJSONObject)jsonObject;
- (GCSProfile)initWithCoder:(id)coder;
- (GCSProfile)initWithJSONObject:(id)object;
- (GCSProfile)initWithUUID:(id)d name:(id)name persistentControllerIdentifier:(id)identifier gameBundleIdentifier:(id)bundleIdentifier baseProfile:(BOOL)profile customizable:(BOOL)customizable sfSymbolsName:(id)symbolsName elementMappings:(id)self0 hapticFeedbackOverride:(BOOL)self1 hapticStrength:(double)self2 doublePressShareGesture:(int64_t)self3 longPressShareGesture:(int64_t)self4 lightbarOverride:(BOOL)self5 lightbarCustomColorEnabled:(BOOL)self6 lightbarColor:(int64_t)self7;
- (NSString)name;
- (id)anonymizedCopy;
- (id)description;
- (id)elementMappingsWithJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
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
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v5 = [v2 stringWithFormat:@"<GCSProfile %@ (%@)>", name, uUIDString];

  return v5;
}

- (GCSProfile)initWithUUID:(id)d name:(id)name persistentControllerIdentifier:(id)identifier gameBundleIdentifier:(id)bundleIdentifier baseProfile:(BOOL)profile customizable:(BOOL)customizable sfSymbolsName:(id)symbolsName elementMappings:(id)self0 hapticFeedbackOverride:(BOOL)self1 hapticStrength:(double)self2 doublePressShareGesture:(int64_t)self3 longPressShareGesture:(int64_t)self4 lightbarOverride:(BOOL)self5 lightbarCustomColorEnabled:(BOOL)self6 lightbarColor:(int64_t)self7
{
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  symbolsNameCopy = symbolsName;
  mappingsCopy = mappings;
  v35.receiver = self;
  v35.super_class = GCSProfile;
  v26 = [(GCSProfile *)&v35 init];
  if (v26)
  {
    date = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v26->_modifiedDate;
    v26->_modifiedDate = date;

    objc_storeStrong(&v26->_uuid, d);
    objc_storeStrong(&v26->_name, name);
    objc_storeStrong(&v26->_persistentControllerIdentifier, identifier);
    objc_storeStrong(&v26->_gameBundleIdentifier, bundleIdentifier);
    v26->_baseProfile = profile;
    v26->_customizable = customizable;
    objc_storeStrong(&v26->_sfSymbolsName, symbolsName);
    objc_storeStrong(&v26->_elementMappings, mappings);
    v26->_hapticFeedbackOverride = override;
    v26->_hapticStrength = strength;
    v26->_doublePressShareGesture = gesture;
    v26->_longPressShareGesture = shareGesture;
    v26->_lightbarOverride = lightbarOverride;
    v26->_lightbarCustomColorEnabled = enabled;
    v26->_lightbarColor = color;
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
  jsonObject = [(GCSProfile *)self jsonObject];
  v5 = [(GCSProfile *)v3 initWithJSONObject:jsonObject];

  name = v5->_name;
  v5->_name = @"Profile";

  return v5;
}

+ (id)elementMappingsFrom:(id)from for:(id)for
{
  v40 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  forCopy = for;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = forCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v31 = fromCopy;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        name = [v12 name];
        v14 = [fromCopy objectForKey:name];
        mappingKey = [v14 mappingKey];
        v16 = mappingKey;
        if (mappingKey)
        {
          name2 = mappingKey;
        }

        else
        {
          name2 = [v12 name];
        }

        v34 = name2;

        if ([v12 kind] == 2)
        {
          v18 = [fromCopy objectForKey:name];
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

          fromCopy = v31;
          v21 = v34;
          v22 = [GCSDirectionPadMapping initWithElementKey:v33 mappingKey:"initWithElementKey:mappingKey:remappingOrder:invertHorizontally:invertVertically:swapAxes:" remappingOrder:name invertHorizontally:? invertVertically:? swapAxes:?];
        }

        else
        {
          v23 = [GCSElementMapping alloc];
          remappingKey = [v12 remappingKey];
          v25 = v23;
          v21 = v34;
          v22 = [(GCSElementMapping *)v25 initWithElementKey:name mappingKey:v34 remappingOrder:remappingKey];
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

+ (GCSProfile)profileWithName:(id)name
{
  nameCopy = name;
  v4 = +[GCSProfile profile];
  v5 = v4[2];
  v4[2] = nameCopy;

  return v4;
}

+ (id)adhocProfileForController:(id)controller gameBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v7 = +[GCSProfile profile];
  v8 = v7[2];
  v7[2] = @"-";

  persistentIdentifier = [controllerCopy persistentIdentifier];

  v10 = v7[5];
  v7[5] = persistentIdentifier;

  v11 = v7[6];
  v7[6] = identifierCopy;

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

- (GCSProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = GCSProfile;
  v5 = [(GCSProfile *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_persistentControllerIdentifier"];
    persistentControllerIdentifier = v5->_persistentControllerIdentifier;
    v5->_persistentControllerIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_gameBundleIdentifier"];
    gameBundleIdentifier = v5->_gameBundleIdentifier;
    v5->_gameBundleIdentifier = v14;

    v5->_baseProfile = [coderCopy decodeBoolForKey:@"_baseProfile"];
    v5->_customizable = [coderCopy decodeBoolForKey:@"_customizable"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sfSymbolsName"];
    sfSymbolsName = v5->_sfSymbolsName;
    v5->_sfSymbolsName = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"_elementMappings"];
    elementMappings = v5->_elementMappings;
    v5->_elementMappings = v23;

    v5->_hapticFeedbackOverride = [coderCopy decodeBoolForKey:@"_hapticFeedbackOverride"];
    [coderCopy decodeDoubleForKey:@"_hapticStrength"];
    v5->_hapticStrength = v25;
    v5->_doublePressShareGesture = [coderCopy decodeInt64ForKey:@"_doublePressShareGesture_ios"];
    v5->_longPressShareGesture = [coderCopy decodeInt64ForKey:@"_longPressShareGesture_ios"];
    v5->_lightbarOverride = [coderCopy decodeBoolForKey:@"_lightbarOverride"];
    v5->_lightbarCustomColorEnabled = [coderCopy decodeBoolForKey:@"_lightbarCustomColorEnabled"];
    v5->_lightbarColor = [coderCopy decodeInt64ForKey:@"_lightbarColor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_modifiedDate forKey:@"_modifiedDate"];
  [coderCopy encodeObject:self->_uuid forKey:@"_uuid"];
  name = self->_name;
  v5 = _GCFConvertStringToLocalizedString();
  LODWORD(name) = [(NSString *)name isEqualToString:v5];

  if (name)
  {
    v6 = self->_name;
    self->_name = @"GCS_PROFILE_DEFAULT";
  }

  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_persistentControllerIdentifier forKey:@"_persistentControllerIdentifier"];
  [coderCopy encodeObject:self->_gameBundleIdentifier forKey:@"_gameBundleIdentifier"];
  [coderCopy encodeBool:self->_baseProfile forKey:@"_baseProfile"];
  [coderCopy encodeBool:self->_customizable forKey:@"_customizable"];
  [coderCopy encodeObject:self->_sfSymbolsName forKey:@"_sfSymbolsName"];
  [coderCopy encodeObject:self->_elementMappings forKey:@"_elementMappings"];
  [coderCopy encodeBool:self->_hapticFeedbackOverride forKey:@"_hapticFeedbackOverride"];
  [coderCopy encodeDouble:@"_hapticStrength" forKey:self->_hapticStrength];
  [coderCopy encodeInt64:self->_doublePressShareGesture forKey:@"_doublePressShareGesture_ios"];
  [coderCopy encodeInt64:self->_longPressShareGesture forKey:@"_longPressShareGesture_ios"];
  [coderCopy encodeBool:self->_lightbarOverride forKey:@"_lightbarOverride"];
  [coderCopy encodeBool:self->_lightbarCustomColorEnabled forKey:@"_lightbarCustomColorEnabled"];
  [coderCopy encodeInt64:self->_lightbarColor forKey:@"_lightbarColor"];
}

- (id)elementMappingsWithJSONDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [dictionary _gcs_dictionaryForJSONKey:@"elementMappings"];
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

- (GCSProfile)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v35.receiver = self;
    v35.super_class = GCSProfile;
    v6 = [(GCSProfile *)&v35 init];
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
  jsonObject = [(NSDate *)self->_modifiedDate jsonObject];
  v29[0] = jsonObject;
  v28[1] = @"uuid";
  jsonObject2 = [(NSUUID *)self->_uuid jsonObject];
  v7 = self->_name;
  v29[1] = jsonObject2;
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