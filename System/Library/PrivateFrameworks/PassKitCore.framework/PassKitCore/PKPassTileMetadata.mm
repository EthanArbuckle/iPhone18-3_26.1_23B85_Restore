@interface PKPassTileMetadata
+ (id)_createDictionaryMapForDictionaries:(id)dictionaries;
+ (id)_createMetadataForType:(int64_t)type identifier:(id)identifier context:(int64_t)context;
+ (id)_createWithDictionary:(id)dictionary privateDictionaryMap:(id)map privateDictionary:(id *)privateDictionary context:(int64_t)context;
- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary;
- (PKPassTileMetadata)initWithCoder:(id)coder;
- (PKPassTileMetadataHorizontalFlowGroup)metadataTypeHorizontalFlowGroup;
- (PKPassTileMetadataVehicleFunction)metadataTypeVehicleFunction;
- (PKPassTileMetadataVerticalFlowGroup)metadataTypeVerticalFlowGroup;
- (void)_initWithIdentifier:(uint64_t)identifier type:(uint64_t)type context:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileMetadata

+ (id)_createDictionaryMapForDictionaries:(id)dictionaries
{
  v19 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  if (dictionariesCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = dictionariesCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 PKStringForKey:{@"identifier", v14}];
          if (v11)
          {
            [v4 setObject:v10 forKeyedSubscript:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_createWithDictionary:(id)dictionary privateDictionaryMap:(id)map privateDictionary:(id *)privateDictionary context:(int64_t)context
{
  dictionaryCopy = dictionary;
  mapCopy = map;
  if (dictionaryCopy)
  {
    v19 = 0;
    v11 = [dictionaryCopy PKStringForKey:@"type"];
    v12 = PKPassTileTypeFromString(v11, &v19);

    v13 = 0;
    if (v12)
    {
      v14 = [dictionaryCopy PKStringForKey:@"identifier"];
      if (v14)
      {
        v15 = [mapCopy objectForKeyedSubscript:v14];
        v16 = [PKPassTileMetadata _createMetadataForType:v19 identifier:v14 context:context];
        v17 = v16;
        if (v16 && [v16 _setUpWithDictionary:dictionaryCopy privateDictionary:v15])
        {
          if (privateDictionary)
          {
            objc_storeStrong(privateDictionary, v15);
          }

          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_createMetadataForType:(int64_t)type identifier:(id)identifier context:(int64_t)context
{
  identifierCopy = identifier;
  if (type > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc(*off_1E79D9478[type]);
  }

  v9 = [(PKPassTileMetadata *)v8 _initWithIdentifier:identifierCopy type:type context:context];

  return v9;
}

- (void)_initWithIdentifier:(uint64_t)identifier type:(uint64_t)type context:
{
  v8 = a2;
  v9 = v8;
  if (self && v8)
  {
    v14.receiver = self;
    v14.super_class = PKPassTileMetadata;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      v11[3] = identifier;
      v11[5] = type;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_setUpWithDictionary:(id)dictionary privateDictionary:(id)privateDictionary
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy PKStringForKey:@"preferredStyle"];
  self->_preferredStyle = PKPassTileStyleFromString(v6);

  self->_selectable = [dictionaryCopy PKBoolForKey:@"selectable"];
  v7 = [dictionaryCopy PKNumberForKey:@"showInPrearm"];

  v8 = MEMORY[0x1E695E118];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  bOOLValue = [v9 BOOLValue];
  self->_showInPrearm = bOOLValue;
  return 1;
}

- (PKPassTileMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v16 = 0;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = PKPassTileTypeFromString(v6, &v16);

  if (v7 & 1) != 0 && v16 <= 4 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    v8 = v16;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
    v10 = PKPassTileContextFromString(v9);
    v11 = [(PKPassTileMetadata *)self _initWithIdentifier:v5 type:v8 context:v10];

    if (v11)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
      v11[4] = PKPassTileStyleFromString(v12);

      *(v11 + 8) = [coderCopy decodeBoolForKey:@"selectable"];
      *(v11 + 9) = [coderCopy decodeBoolForKey:@"showInPrearm"];
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileMetadata" code:0 userInfo:0];
    [coderCopy failWithError:v14];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  type = self->_type;
  if (type > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79D94C8[type];
  }

  [coderCopy encodeObject:v6 forKey:@"type"];
  preferredStyle = self->_preferredStyle;
  v8 = @"compact";
  if (preferredStyle != 1)
  {
    v8 = 0;
  }

  if (preferredStyle)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"default";
  }

  [coderCopy encodeObject:v9 forKey:@"preferredStyle"];
  [coderCopy encodeBool:self->_selectable forKey:@"selectable"];
  [coderCopy encodeBool:self->_showInPrearm forKey:@"showInPrearm"];
  v10 = 0;
  v11 = self->_context - 1;
  if (v11 <= 4)
  {
    v10 = off_1E79D94A0[v11];
  }

  [coderCopy encodeObject:v10 forKey:@"contextIdentifier"];
}

- (PKPassTileMetadataVehicleFunction)metadataTypeVehicleFunction
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileMetadataHorizontalFlowGroup)metadataTypeHorizontalFlowGroup
{
  if (self->_type != 2)
  {
    self = 0;
  }

  return self;
}

- (PKPassTileMetadataVerticalFlowGroup)metadataTypeVerticalFlowGroup
{
  if (self->_type != 3)
  {
    self = 0;
  }

  return self;
}

@end