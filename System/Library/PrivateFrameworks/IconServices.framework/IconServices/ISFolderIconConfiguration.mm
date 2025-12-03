@interface ISFolderIconConfiguration
- (BOOL)hasTint;
- (ISFolderIconConfiguration)init;
- (ISFolderIconConfiguration)initWithCoder:(id)coder;
- (ISFolderIconConfiguration)initWithIconDictionary:(id)dictionary;
- (ISFolderIconConfiguration)initWithSymbolName:(id)name systemTintColor:(int64_t)color;
- (ISFolderIconConfiguration)initWithSymbolName:(id)name tintColor:(id)color;
- (NSDictionary)plistExcerpt;
- (NSString)description;
- (NSUUID)digest;
- (id)colorString;
- (id)resolvedTintColorForAppearance:(int64_t)appearance;
- (void)encodeWithCoder:(id)coder;
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

- (ISFolderIconConfiguration)initWithIconDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ISFolderIconConfiguration *)self init];
  if (v5)
  {
    v6 = [[ISFolderIconConfigurationParser alloc] initWithIconDictionary:dictionaryCopy];
    symbolName = [(ISIconConfigurationMarkupParser *)v6 symbolName];
    symbolName = v5->_symbolName;
    v5->_symbolName = symbolName;

    tintColor = [(ISFolderIconConfigurationParser *)v6 tintColor];

    if (tintColor)
    {
      tintColor2 = [(ISFolderIconConfigurationParser *)v6 tintColor];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      tintColor3 = [(ISFolderIconConfigurationParser *)v6 tintColor];
      v13 = tintColor3;
      if (isKindOfClass)
      {
        tintColor = v5->_tintColor;
        v5->_tintColor = tintColor3;
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
    assetCatalogImageName = [(ISFolderIconConfigurationParser *)v6 assetCatalogImageName];
    assetCatalogImageName = v5->_assetCatalogImageName;
    v5->_assetCatalogImageName = assetCatalogImageName;
  }

  return v5;
}

- (ISFolderIconConfiguration)initWithSymbolName:(id)name systemTintColor:(int64_t)color
{
  nameCopy = name;
  v8 = [(ISFolderIconConfiguration *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbolName, name);
    v9->_systemTintColor = color;
  }

  return v9;
}

- (ISFolderIconConfiguration)initWithSymbolName:(id)name tintColor:(id)color
{
  nameCopy = name;
  colorCopy = color;
  v9 = [(ISFolderIconConfiguration *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, name);
    objc_storeStrong(&v10->_tintColor, color);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_emoji forKey:@"emoji"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeObject:self->_assetCatalogImageName forKey:@"assetCatalogImageName"];
  [coderCopy encodeInteger:self->_systemTintColor forKey:@"systemTintColor"];
  [coderCopy encodeBool:self->_folderEmpty forKey:@"folderEmpty"];
}

- (ISFolderIconConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ISFolderIconConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emoji"];
    emoji = v5->_emoji;
    v5->_emoji = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetCatalogImageName"];
    assetCatalogImageName = v5->_assetCatalogImageName;
    v5->_assetCatalogImageName = v12;

    v5->_systemTintColor = [coderCopy decodeIntegerForKey:@"systemTintColor"];
    v5->_folderEmpty = [coderCopy decodeBoolForKey:@"folderEmpty"];
  }

  return v5;
}

- (NSUUID)digest
{
  v3 = MEMORY[0x1E696AEC0];
  symbolName = [(ISFolderIconConfiguration *)self symbolName];
  emoji = [(ISFolderIconConfiguration *)self emoji];
  colorString = [(ISFolderIconConfiguration *)self colorString];
  v7 = [v3 stringWithFormat:@"Symbol: %@, Emoji: %@, Colour string: %@, Empty: %d", symbolName, emoji, colorString, -[ISFolderIconConfiguration folderEmpty](self, "folderEmpty")];

  v8 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v7];

  return v8;
}

- (id)resolvedTintColorForAppearance:(int64_t)appearance
{
  if ([(ISFolderIconConfiguration *)self systemTintColor]< 0)
  {
    tintColor = [(ISFolderIconConfiguration *)self tintColor];
  }

  else
  {
    tintColor = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:-[ISFolderIconConfiguration systemTintColor](self appearance:"systemTintColor") contrast:appearance vibrancy:{0, 0}];
  }

  return tintColor;
}

- (id)colorString
{
  if ([(ISFolderIconConfiguration *)self systemTintColor]< 0)
  {
    tintColor = [(ISFolderIconConfiguration *)self tintColor];

    if (tintColor)
    {
      tintColor2 = [(ISFolderIconConfiguration *)self tintColor];
      v3 = _IS_colorStringFromIFColor(tintColor2);
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
  colorString = [(ISFolderIconConfiguration *)self colorString];

  return colorString != 0;
}

- (NSDictionary)plistExcerpt
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  symbolName = [(ISFolderIconConfiguration *)self symbolName];

  if (symbolName)
  {
    symbolName2 = [(ISFolderIconConfiguration *)self symbolName];
    [v3 setObject:symbolName2 forKeyedSubscript:0x1F1A4F460];
  }

  colorString = [(ISFolderIconConfiguration *)self colorString];

  if (colorString)
  {
    colorString2 = [(ISFolderIconConfiguration *)self colorString];
    [v3 setObject:colorString2 forKeyedSubscript:0x1F1A4F8E0];
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
  symbolName = [(ISFolderIconConfiguration *)self symbolName];
  emoji = [(ISFolderIconConfiguration *)self emoji];
  systemTintColor = [(ISFolderIconConfiguration *)self systemTintColor];
  tintColor = [(ISFolderIconConfiguration *)self tintColor];
  assetCatalogImageName = [(ISFolderIconConfiguration *)self assetCatalogImageName];
  v10 = [v3 stringWithFormat:@"%@, Symbol: %@, Emoji: %@, Tint: %ld - %@, Image: %@, Empty: %d", v4, symbolName, emoji, systemTintColor, tintColor, assetCatalogImageName, -[ISFolderIconConfiguration folderEmpty](self, "folderEmpty")];

  return v10;
}

@end