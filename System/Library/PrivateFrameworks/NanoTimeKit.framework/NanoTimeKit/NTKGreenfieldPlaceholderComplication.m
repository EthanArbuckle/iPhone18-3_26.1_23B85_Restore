@interface NTKGreenfieldPlaceholderComplication
+ (id)placeholderWithComplication:(id)a3;
+ (id)placeholderWithComplication:(id)a3 appStoreItemId:(id)a4 appName:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NTKGreenfieldPlaceholderComplication)initWithCoder:(id)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKGreenfieldPlaceholderComplication

+ (id)placeholderWithComplication:(id)a3 appStoreItemId:(id)a4 appName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithComplicationType:55];
  v12 = v11[5];
  v11[5] = v9;
  v13 = v9;

  v14 = v11[4];
  v11[4] = v8;
  v15 = v8;

  v16 = v11[6];
  v11[6] = v10;
  v17 = v10;

  v18 = [v11 _generateUniqueIdentifier];
  v19 = v11[1];
  v11[1] = v18;

  return v11;
}

+ (id)placeholderWithComplication:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComplicationType:55];
  v6 = v5[4];
  v5[4] = v4;
  v7 = v4;

  v8 = [v5 _generateUniqueIdentifier];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (id)_generateUniqueIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NTKComplication *)self->_complication uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"greenfieldPlaceholder-%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = NTKGreenfieldPlaceholderComplication;
    v5 = [(NTKComplication *)&v7 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldPlaceholderComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_complication);
  objc_storeStrong(v4 + 5, self->_appStoreItemId);
  objc_storeStrong(v4 + 6, self->_appName);
  return v4;
}

- (NTKGreenfieldPlaceholderComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldPlaceholderComplication;
  v5 = [(NTKComplication *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
    appStoreItemId = v5->_appStoreItemId;
    v5->_appStoreItemId = v6;

    if (!v5->_appStoreItemId)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ appStoreItemId must not be nil", objc_opt_class()}];
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v8;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
    appName = v5->_appName;
    v5->_appName = v10;

    if (!v5->_appName)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ app name must not be nil", objc_opt_class()}];
    }

    v12 = [(NTKGreenfieldPlaceholderComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKGreenfieldPlaceholderComplication;
  v4 = a3;
  [(NTKComplication *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_complication forKey:{@"_ComplicationGreenfieldPlaceholderComplicationKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_appStoreItemId forKey:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
  [v4 encodeObject:self->_appName forKey:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldPlaceholderComplication;
  v4 = a3;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:v4];
  [v4 setObject:self->_appStoreItemId forKeyedSubscript:{@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey", v6.receiver, v6.super_class}];
  [v4 setObject:self->_appName forKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
  v5 = [(NTKComplication *)self->_complication JSONObjectRepresentation];
  [v4 setObject:v5 forKeyedSubscript:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = NTKGreenfieldPlaceholderComplication;
  v7 = [(NTKComplication *)&v16 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
    v9 = v7[5];
    v7[5] = v8;

    v10 = [v6 objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
    v11 = v7[6];
    v7[6] = v10;

    v12 = [v6 objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
    v13 = [NTKComplication complicationWithJSONObjectRepresentation:v12];
    v14 = v7[4];
    v7[4] = v13;
  }

  return v7;
}

@end