@interface GCSController
+ (id)archivalClasses;
- (GCSController)initWithCoder:(id)coder;
- (GCSController)initWithJSONObject:(id)object;
- (GCSController)initWithName:(id)name persistentIdentifier:(id)identifier productCategoryKey:(id)key hidden:(BOOL)hidden shareButton:(id)button buttons:(id)buttons dpads:(id)dpads logoSfSymbolsName:(id)self0 supportsHaptics:(BOOL)self1 supportsLight:(BOOL)self2 baseProfile:(id)self3 miscellaneous:(id)self4;
- (GCSJSONObject)jsonObject;
- (NSString)localizedName;
- (id)allButtons;
- (id)allDpads;
- (id)allElements;
- (id)copyWithBaseProfile:(id)profile;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initDummy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSController

- (id)initDummy
{
  v18.receiver = self;
  v18.super_class = GCSController;
  v2 = [(GCSController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"Controller";

    date = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v3->_modifiedDate;
    v3->_modifiedDate = date;

    persistentIdentifier = v3->_persistentIdentifier;
    v3->_persistentIdentifier = @"__Dummy Controller";

    productCategoryKey = v3->_productCategoryKey;
    v3->_productCategoryKey = @"PRODUCT_CATEGORY_MFI";

    v3->_hidden = 1;
    shareButton = v3->_shareButton;
    v3->_shareButton = 0;

    v10 = objc_opt_new();
    buttons = v3->_buttons;
    v3->_buttons = v10;

    v12 = objc_opt_new();
    dpads = v3->_dpads;
    v3->_dpads = v12;

    logoSfSymbolsName = v3->_logoSfSymbolsName;
    v3->_logoSfSymbolsName = @"gamecontroller.fill";

    *&v3->_supportsHaptics = 0;
    v15 = +[GCSProfile newBaseProfile];
    baseProfile = v3->_baseProfile;
    v3->_baseProfile = v15;
  }

  return v3;
}

- (GCSController)initWithName:(id)name persistentIdentifier:(id)identifier productCategoryKey:(id)key hidden:(BOOL)hidden shareButton:(id)button buttons:(id)buttons dpads:(id)dpads logoSfSymbolsName:(id)self0 supportsHaptics:(BOOL)self1 supportsLight:(BOOL)self2 baseProfile:(id)self3 miscellaneous:(id)self4
{
  nameCopy = name;
  identifierCopy = identifier;
  keyCopy = key;
  buttonCopy = button;
  buttonsCopy = buttons;
  dpadsCopy = dpads;
  symbolsNameCopy = symbolsName;
  profileCopy = profile;
  miscellaneousCopy = miscellaneous;
  v35.receiver = self;
  v35.super_class = GCSController;
  v21 = [(GCSController *)&v35 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, name);
    date = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v22->_modifiedDate;
    v22->_modifiedDate = date;

    objc_storeStrong(&v22->_persistentIdentifier, identifier);
    objc_storeStrong(&v22->_productCategoryKey, key);
    v22->_hidden = hidden;
    objc_storeStrong(&v22->_shareButton, button);
    objc_storeStrong(&v22->_buttons, buttons);
    objc_storeStrong(&v22->_dpads, dpads);
    objc_storeStrong(&v22->_logoSfSymbolsName, symbolsName);
    v22->_supportsHaptics = haptics;
    v22->_supportsLight = light;
    objc_storeStrong(&v22->_baseProfile, profile);
    objc_storeStrong(&v22->_miscellaneous, miscellaneous);
  }

  return v22;
}

- (id)copyWithBaseProfile:(id)profile
{
  profileCopy = profile;
  v5 = [(GCSController *)self copy];
  v6 = v5[10];
  v5[10] = profileCopy;

  return v5;
}

- (id)allElements
{
  allButtons = [(GCSController *)self allButtons];
  allDpads = [(GCSController *)self allDpads];
  v5 = [allButtons arrayByAddingObjectsFromArray:allDpads];

  return v5;
}

- (id)allButtons
{
  allValues = [(NSDictionary *)self->_buttons allValues];
  v3 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

  return v3;
}

BOOL __27__GCSController_allButtons__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 remappingKey];
  v5 = [v4 remappingKey];

  return a2 < v5;
}

- (id)allDpads
{
  allValues = [(NSDictionary *)self->_dpads allValues];
  v3 = [allValues sortedArrayUsingComparator:&__block_literal_global_18];

  return v3;
}

BOOL __25__GCSController_allDpads__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 remappingKey];
  v5 = [v4 remappingKey];

  return a2 < v5;
}

- (NSString)localizedName
{
  if ([(NSString *)self->_name isEqualToString:@"GAME_CONTROLLER_DEFAULT_NAME"])
  {
    v3 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v3 = self->_name;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GCSController);
  objc_storeStrong(&v4->_name, self->_name);
  objc_storeStrong(&v4->_modifiedDate, self->_modifiedDate);
  objc_storeStrong(&v4->_persistentIdentifier, self->_persistentIdentifier);
  objc_storeStrong(&v4->_productCategoryKey, self->_productCategoryKey);
  v4->_hidden = self->_hidden;
  objc_storeStrong(&v4->_shareButton, self->_shareButton);
  objc_storeStrong(&v4->_buttons, self->_buttons);
  objc_storeStrong(&v4->_dpads, self->_dpads);
  objc_storeStrong(&v4->_logoSfSymbolsName, self->_logoSfSymbolsName);
  v4->_supportsHaptics = self->_supportsHaptics;
  v4->_supportsLight = self->_supportsLight;
  objc_storeStrong(&v4->_baseProfile, self->_baseProfile);
  objc_storeStrong(&v4->_miscellaneous, self->_miscellaneous);
  selfCopy = self;

  return selfCopy;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (GCSController)initWithCoder:(id)coder
{
  v40[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = GCSController;
  v5 = [(GCSController *)&v37 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_persistentIdentifier"];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_productCategoryKey"];
    productCategoryKey = v5->_productCategoryKey;
    v5->_productCategoryKey = v12;

    v5->_hidden = [coderCopy decodeBoolForKey:@"_hidden"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shareButton"];
    shareButton = v5->_shareButton;
    v5->_shareButton = v14;

    v16 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_buttons"];
    buttons = v5->_buttons;
    v5->_buttons = v19;

    v21 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_dpads"];
    dpads = v5->_dpads;
    v5->_dpads = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_logoSfSymbolsName"];
    logoSfSymbolsName = v5->_logoSfSymbolsName;
    v5->_logoSfSymbolsName = v26;

    v5->_supportsHaptics = [coderCopy decodeBoolForKey:@"_supportsHaptics"];
    v5->_supportsLight = [coderCopy decodeBoolForKey:@"_supportsLight"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_baseProfile"];
    baseProfile = v5->_baseProfile;
    v5->_baseProfile = v28;

    v30 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v38[4] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"_miscellaneous"];
    miscellaneous = v5->_miscellaneous;
    v5->_miscellaneous = v33;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  persistentIdentifier = self->_persistentIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:persistentIdentifier forKey:@"_persistentIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_modifiedDate forKey:@"_modifiedDate"];
  [coderCopy encodeObject:self->_productCategoryKey forKey:@"_productCategoryKey"];
  [coderCopy encodeBool:self->_hidden forKey:@"_hidden"];
  [coderCopy encodeObject:self->_shareButton forKey:@"_shareButton"];
  [coderCopy encodeObject:self->_buttons forKey:@"_buttons"];
  [coderCopy encodeObject:self->_dpads forKey:@"_dpads"];
  [coderCopy encodeObject:self->_logoSfSymbolsName forKey:@"_logoSfSymbolsName"];
  [coderCopy encodeBool:self->_supportsHaptics forKey:@"_supportsHaptics"];
  [coderCopy encodeBool:self->_supportsLight forKey:@"_supportsLight"];
  [coderCopy encodeObject:self->_baseProfile forKey:@"_baseProfile"];
  [coderCopy encodeObject:self->_miscellaneous forKey:@"_miscellaneous"];
}

- (GCSController)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v40.receiver = self;
    v40.super_class = GCSController;
    v6 = [(GCSController *)&v40 init];
    if (v6)
    {
      v7 = [v5 _gcs_stringForJSONKey:@"persistentIdentifier"];
      persistentIdentifier = v6->_persistentIdentifier;
      v6->_persistentIdentifier = v7;

      v9 = [v5 _gcs_stringForJSONKey:@"name"];
      name = v6->_name;
      v6->_name = v9;

      v11 = [v5 _gcs_dateForJSONKey:@"modifiedDate"];
      v12 = v11;
      if (v11)
      {
        date = v11;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
      }

      modifiedDate = v6->_modifiedDate;
      v6->_modifiedDate = date;

      v16 = [v5 _gcs_stringForJSONKey:@"productCategoryKey"];
      productCategoryKey = v6->_productCategoryKey;
      v6->_productCategoryKey = v16;

      v18 = [v5 _gcs_numberForJSONKey:@"hidden"];
      v6->_hidden = [v18 BOOLValue];

      v19 = [v5 _gcs_gscElementForJSONKey:@"shareButton"];
      shareButton = v6->_shareButton;
      v6->_shareButton = v19;

      v21 = MEMORY[0x277CBEAC0];
      v22 = [v5 _gcs_dictionaryForJSONKey:@"buttons"];
      v23 = [v21 _gcs_serializableDictionaryForJsonObject:v22 withValuesOfClass:objc_opt_class()];
      buttons = v6->_buttons;
      v6->_buttons = v23;

      v25 = MEMORY[0x277CBEAC0];
      v26 = [v5 _gcs_dictionaryForJSONKey:@"dpads"];
      v27 = [v25 _gcs_serializableDictionaryForJsonObject:v26 withValuesOfClass:objc_opt_class()];
      dpads = v6->_dpads;
      v6->_dpads = v27;

      v29 = [v5 _gcs_stringForJSONKey:@"logoSfSymbolsName"];
      logoSfSymbolsName = v6->_logoSfSymbolsName;
      v6->_logoSfSymbolsName = v29;

      v31 = [v5 _gcs_numberForJSONKey:@"supportsHaptics"];
      v6->_supportsHaptics = [v31 BOOLValue];

      v32 = [v5 _gcs_numberForJSONKey:@"supportsLight"];
      v6->_supportsLight = [v32 BOOLValue];

      v33 = [v5 _gcs_gscProfileForJSONKey:@"baseProfile"];
      baseProfile = v6->_baseProfile;
      v6->_baseProfile = v33;

      v35 = MEMORY[0x277CBEAC0];
      v36 = [v5 _gcs_dictionaryForJSONKey:@"miscellaneous"];
      v37 = [v35 _gcs_serializableDictionaryForDictionaryJsonObject:v36];
      miscellaneous = v6->_miscellaneous;
      v6->_miscellaneous = v37;
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
  v25[10] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  persistentIdentifier = self->_persistentIdentifier;
  v24[0] = @"persistentIdentifier";
  v24[1] = @"name";
  name = self->_name;
  productCategoryKey = self->_productCategoryKey;
  v25[0] = persistentIdentifier;
  v25[1] = name;
  v25[2] = productCategoryKey;
  v24[2] = @"productCategoryKey";
  v24[3] = @"hidden";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  v25[3] = v7;
  v24[4] = @"buttons";
  v8 = [MEMORY[0x277CBEAC0] _gcs_jsonObjectForSerializableDictionary:self->_buttons];
  v25[4] = v8;
  v24[5] = @"dpads";
  v9 = [MEMORY[0x277CBEAC0] _gcs_jsonObjectForSerializableDictionary:self->_dpads];
  logoSfSymbolsName = self->_logoSfSymbolsName;
  v25[5] = v9;
  v25[6] = logoSfSymbolsName;
  v24[6] = @"logoSfSymbolsName";
  v24[7] = @"supportsHaptics";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsHaptics];
  v25[7] = v11;
  v24[8] = @"supportsLight";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsLight];
  v25[8] = v12;
  v24[9] = @"baseProfile";
  jsonObject = [(GCSProfile *)self->_baseProfile jsonObject];
  v25[9] = jsonObject;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:10];
  v15 = [v3 dictionaryWithDictionary:v14];

  shareButton = self->_shareButton;
  if (shareButton)
  {
    jsonObject2 = [(GCSElement *)shareButton jsonObject];
    [v15 setObject:jsonObject2 forKeyedSubscript:@"shareButton"];
  }

  modifiedDate = self->_modifiedDate;
  if (modifiedDate)
  {
    jsonObject3 = [(NSDate *)modifiedDate jsonObject];
    [v15 setObject:jsonObject3 forKeyedSubscript:@"modifiedDate"];
  }

  miscellaneous = self->_miscellaneous;
  if (miscellaneous)
  {
    jsonObject4 = [(NSDictionary *)miscellaneous jsonObject];
    [v15 setObject:jsonObject4 forKeyedSubscript:@"miscellaneous"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

@end