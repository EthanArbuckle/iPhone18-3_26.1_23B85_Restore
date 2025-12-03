@interface NTKGreenfieldPlaceholderComplication
+ (id)placeholderWithComplication:(id)complication;
+ (id)placeholderWithComplication:(id)complication appStoreItemId:(id)id appName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NTKGreenfieldPlaceholderComplication)initWithCoder:(id)coder;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKGreenfieldPlaceholderComplication

+ (id)placeholderWithComplication:(id)complication appStoreItemId:(id)id appName:(id)name
{
  complicationCopy = complication;
  idCopy = id;
  nameCopy = name;
  v11 = [[self alloc] initWithComplicationType:55];
  v12 = v11[5];
  v11[5] = idCopy;
  v13 = idCopy;

  v14 = v11[4];
  v11[4] = complicationCopy;
  v15 = complicationCopy;

  v16 = v11[6];
  v11[6] = nameCopy;
  v17 = nameCopy;

  _generateUniqueIdentifier = [v11 _generateUniqueIdentifier];
  v19 = v11[1];
  v11[1] = _generateUniqueIdentifier;

  return v11;
}

+ (id)placeholderWithComplication:(id)complication
{
  complicationCopy = complication;
  v5 = [[self alloc] initWithComplicationType:55];
  v6 = v5[4];
  v5[4] = complicationCopy;
  v7 = complicationCopy;

  _generateUniqueIdentifier = [v5 _generateUniqueIdentifier];
  v9 = v5[1];
  v5[1] = _generateUniqueIdentifier;

  return v5;
}

- (id)_generateUniqueIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(NTKComplication *)self->_complication uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"greenfieldPlaceholder-%@", uniqueIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = NTKGreenfieldPlaceholderComplication;
    v5 = [(NTKComplication *)&v7 isEqual:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldPlaceholderComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_complication);
  objc_storeStrong(v4 + 5, self->_appStoreItemId);
  objc_storeStrong(v4 + 6, self->_appName);
  return v4;
}

- (NTKGreenfieldPlaceholderComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NTKGreenfieldPlaceholderComplication;
  v5 = [(NTKComplication *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
    appStoreItemId = v5->_appStoreItemId;
    v5->_appStoreItemId = v6;

    if (!v5->_appStoreItemId)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ appStoreItemId must not be nil", objc_opt_class()}];
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v8;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
    appName = v5->_appName;
    v5->_appName = v10;

    if (!v5->_appName)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ app name must not be nil", objc_opt_class()}];
    }

    _generateUniqueIdentifier = [(NTKGreenfieldPlaceholderComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = _generateUniqueIdentifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKGreenfieldPlaceholderComplication;
  coderCopy = coder;
  [(NTKComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_complication forKey:{@"_ComplicationGreenfieldPlaceholderComplicationKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_appStoreItemId forKey:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
  [coderCopy encodeObject:self->_appName forKey:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldPlaceholderComplication;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:dictionaryCopy];
  [dictionaryCopy setObject:self->_appStoreItemId forKeyedSubscript:{@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey", v6.receiver, v6.super_class}];
  [dictionaryCopy setObject:self->_appName forKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
  jSONObjectRepresentation = [(NTKComplication *)self->_complication JSONObjectRepresentation];
  [dictionaryCopy setObject:jSONObjectRepresentation forKeyedSubscript:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = NTKGreenfieldPlaceholderComplication;
  v7 = [(NTKComplication *)&v16 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppStoreItemIdKey"];
    v9 = v7[5];
    v7[5] = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderAppNameKey"];
    v11 = v7[6];
    v7[6] = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"_ComplicationGreenfieldPlaceholderComplicationKey"];
    v13 = [NTKComplication complicationWithJSONObjectRepresentation:v12];
    v14 = v7[4];
    v7[4] = v13;
  }

  return v7;
}

@end