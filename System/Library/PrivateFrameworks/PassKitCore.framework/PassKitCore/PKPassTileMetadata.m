@interface PKPassTileMetadata
+ (id)_createDictionaryMapForDictionaries:(id)a3;
+ (id)_createMetadataForType:(int64_t)a3 identifier:(id)a4 context:(int64_t)a5;
+ (id)_createWithDictionary:(id)a3 privateDictionaryMap:(id)a4 privateDictionary:(id *)a5 context:(int64_t)a6;
- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4;
- (PKPassTileMetadata)initWithCoder:(id)a3;
- (PKPassTileMetadataHorizontalFlowGroup)metadataTypeHorizontalFlowGroup;
- (PKPassTileMetadataVehicleFunction)metadataTypeVehicleFunction;
- (PKPassTileMetadataVerticalFlowGroup)metadataTypeVerticalFlowGroup;
- (void)_initWithIdentifier:(uint64_t)a3 type:(uint64_t)a4 context:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileMetadata

+ (id)_createDictionaryMapForDictionaries:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
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

+ (id)_createWithDictionary:(id)a3 privateDictionaryMap:(id)a4 privateDictionary:(id *)a5 context:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v19 = 0;
    v11 = [v9 PKStringForKey:@"type"];
    v12 = PKPassTileTypeFromString(v11, &v19);

    v13 = 0;
    if (v12)
    {
      v14 = [v9 PKStringForKey:@"identifier"];
      if (v14)
      {
        v15 = [v10 objectForKeyedSubscript:v14];
        v16 = [PKPassTileMetadata _createMetadataForType:v19 identifier:v14 context:a6];
        v17 = v16;
        if (v16 && [v16 _setUpWithDictionary:v9 privateDictionary:v15])
        {
          if (a5)
          {
            objc_storeStrong(a5, v15);
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

+ (id)_createMetadataForType:(int64_t)a3 identifier:(id)a4 context:(int64_t)a5
{
  v7 = a4;
  if (a3 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc(*off_1E79D9478[a3]);
  }

  v9 = [(PKPassTileMetadata *)v8 _initWithIdentifier:v7 type:a3 context:a5];

  return v9;
}

- (void)_initWithIdentifier:(uint64_t)a3 type:(uint64_t)a4 context:
{
  v8 = a2;
  v9 = v8;
  if (a1 && v8)
  {
    v14.receiver = a1;
    v14.super_class = PKPassTileMetadata;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      v11[3] = a3;
      v11[5] = a4;
    }

    a1 = v11;
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_setUpWithDictionary:(id)a3 privateDictionary:(id)a4
{
  v5 = a3;
  v6 = [v5 PKStringForKey:@"preferredStyle"];
  self->_preferredStyle = PKPassTileStyleFromString(v6);

  self->_selectable = [v5 PKBoolForKey:@"selectable"];
  v7 = [v5 PKNumberForKey:@"showInPrearm"];

  v8 = MEMORY[0x1E695E118];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = [v9 BOOLValue];
  self->_showInPrearm = v10;
  return 1;
}

- (PKPassTileMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v16 = 0;
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = PKPassTileTypeFromString(v6, &v16);

  if (v7 & 1) != 0 && v16 <= 4 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    v8 = v16;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
    v10 = PKPassTileContextFromString(v9);
    v11 = [(PKPassTileMetadata *)self _initWithIdentifier:v5 type:v8 context:v10];

    if (v11)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
      v11[4] = PKPassTileStyleFromString(v12);

      *(v11 + 8) = [v4 decodeBoolForKey:@"selectable"];
      *(v11 + 9) = [v4 decodeBoolForKey:@"showInPrearm"];
    }

    self = v11;
    v13 = self;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassTileMetadata" code:0 userInfo:0];
    [v4 failWithError:v14];

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v12 = a3;
  [v12 encodeObject:identifier forKey:@"identifier"];
  type = self->_type;
  if (type > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79D94C8[type];
  }

  [v12 encodeObject:v6 forKey:@"type"];
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

  [v12 encodeObject:v9 forKey:@"preferredStyle"];
  [v12 encodeBool:self->_selectable forKey:@"selectable"];
  [v12 encodeBool:self->_showInPrearm forKey:@"showInPrearm"];
  v10 = 0;
  v11 = self->_context - 1;
  if (v11 <= 4)
  {
    v10 = off_1E79D94A0[v11];
  }

  [v12 encodeObject:v10 forKey:@"contextIdentifier"];
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