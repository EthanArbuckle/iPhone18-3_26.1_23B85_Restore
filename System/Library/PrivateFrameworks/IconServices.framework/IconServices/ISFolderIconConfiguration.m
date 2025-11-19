@interface ISFolderIconConfiguration
- (BOOL)hasTint;
- (ISFolderIconConfiguration)init;
- (ISFolderIconConfiguration)initWithCoder:(id)a3;
- (ISFolderIconConfiguration)initWithIconDictionary:(id)a3;
- (ISFolderIconConfiguration)initWithSymbolName:(id)a3 systemTintColor:(int64_t)a4;
- (ISFolderIconConfiguration)initWithSymbolName:(id)a3 tintColor:(id)a4;
- (NSDictionary)plistExcerpt;
- (NSString)description;
- (NSUUID)digest;
- (id)colorString;
- (id)resolvedTintColorForAppearance:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISFolderIconConfiguration

- (ISFolderIconConfiguration)init
{
  v3.receiver = self;
  v3.super_class = ISFolderIconConfiguration;
  result = [(ISFolderIconConfiguration *)&v3 init];
  if (result)
  {
    result->_systemTintColor = -1;
    result->_folderEmpty = 1;
  }

  return result;
}

- (ISFolderIconConfiguration)initWithIconDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ISFolderIconConfiguration *)self init];
  if (v5)
  {
    v6 = [[ISFolderIconConfigurationParser alloc] initWithIconDictionary:v4];
    v7 = [(ISIconConfigurationMarkupParser *)v6 symbolName];
    symbolName = v5->_symbolName;
    v5->_symbolName = v7;

    v9 = [(ISFolderIconConfigurationParser *)v6 tintColor];

    if (v9)
    {
      v10 = [(ISFolderIconConfigurationParser *)v6 tintColor];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v12 = [(ISFolderIconConfigurationParser *)v6 tintColor];
      v13 = v12;
      if (isKindOfClass)
      {
        tintColor = v5->_tintColor;
        v5->_tintColor = v12;
LABEL_7:

        goto LABEL_8;
      }

      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        tintColor = [(ISFolderIconConfigurationParser *)v6 tintColor];
        v5->_systemTintColor = [tintColor intValue];
        goto LABEL_7;
      }
    }

LABEL_8:
    v16 = [(ISFolderIconConfigurationParser *)v6 assetCatalogImageName];
    assetCatalogImageName = v5->_assetCatalogImageName;
    v5->_assetCatalogImageName = v16;
  }

  return v5;
}

- (ISFolderIconConfiguration)initWithSymbolName:(id)a3 systemTintColor:(int64_t)a4
{
  v7 = a3;
  v8 = [(ISFolderIconConfiguration *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbolName, a3);
    v9->_systemTintColor = a4;
  }

  return v9;
}

- (ISFolderIconConfiguration)initWithSymbolName:(id)a3 tintColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ISFolderIconConfiguration *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, a3);
    objc_storeStrong(&v10->_tintColor, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_emoji forKey:@"emoji"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeObject:self->_assetCatalogImageName forKey:@"assetCatalogImageName"];
  [v5 encodeInteger:self->_systemTintColor forKey:@"systemTintColor"];
  [v5 encodeBool:self->_folderEmpty forKey:@"folderEmpty"];
}

- (ISFolderIconConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ISFolderIconConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emoji"];
    emoji = v5->_emoji;
    v5->_emoji = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetCatalogImageName"];
    assetCatalogImageName = v5->_assetCatalogImageName;
    v5->_assetCatalogImageName = v12;

    v5->_systemTintColor = [v4 decodeIntegerForKey:@"systemTintColor"];
    v5->_folderEmpty = [v4 decodeBoolForKey:@"folderEmpty"];
  }

  return v5;
}

- (NSUUID)digest
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ISFolderIconConfiguration *)self symbolName];
  v5 = [(ISFolderIconConfiguration *)self emoji];
  v6 = [(ISFolderIconConfiguration *)self colorString];
  v7 = [v3 stringWithFormat:@"Symbol: %@, Emoji: %@, Colour string: %@, Empty: %d", v4, v5, v6, -[ISFolderIconConfiguration folderEmpty](self, "folderEmpty")];

  v8 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v7];

  return v8;
}

- (id)resolvedTintColorForAppearance:(int64_t)a3
{
  if ([(ISFolderIconConfiguration *)self systemTintColor]< 0)
  {
    v5 = [(ISFolderIconConfiguration *)self tintColor];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:-[ISFolderIconConfiguration systemTintColor](self appearance:"systemTintColor") contrast:a3 vibrancy:{0, 0}];
  }

  return v5;
}

- (id)colorString
{
  if ([(ISFolderIconConfiguration *)self systemTintColor]< 0)
  {
    v4 = [(ISFolderIconConfiguration *)self tintColor];

    if (v4)
    {
      v5 = [(ISFolderIconConfiguration *)self tintColor];
      v3 = _IS_colorStringFromIFColor(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = _IS_colorStringFromSystemColor([(ISFolderIconConfiguration *)self systemTintColor]);
  }

  return v3;
}

- (BOOL)hasTint
{
  v2 = [(ISFolderIconConfiguration *)self colorString];

  return v2 != 0;
}

- (NSDictionary)plistExcerpt
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(ISFolderIconConfiguration *)self symbolName];

  if (v4)
  {
    v5 = [(ISFolderIconConfiguration *)self symbolName];
    [v3 setObject:v5 forKeyedSubscript:0x1F1A4F460];
  }

  v6 = [(ISFolderIconConfiguration *)self colorString];

  if (v6)
  {
    v7 = [(ISFolderIconConfiguration *)self colorString];
    [v3 setObject:v7 forKeyedSubscript:0x1F1A4F8E0];
  }

  v11 = 0x1F1A4D480;
  v12[0] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ISFolderIconConfiguration;
  v4 = [(ISFolderIconConfiguration *)&v12 description];
  v5 = [(ISFolderIconConfiguration *)self symbolName];
  v6 = [(ISFolderIconConfiguration *)self emoji];
  v7 = [(ISFolderIconConfiguration *)self systemTintColor];
  v8 = [(ISFolderIconConfiguration *)self tintColor];
  v9 = [(ISFolderIconConfiguration *)self assetCatalogImageName];
  v10 = [v3 stringWithFormat:@"%@, Symbol: %@, Emoji: %@, Tint: %ld - %@, Image: %@, Empty: %d", v4, v5, v6, v7, v8, v9, -[ISFolderIconConfiguration folderEmpty](self, "folderEmpty")];

  return v10;
}

@end