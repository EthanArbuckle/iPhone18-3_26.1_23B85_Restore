@interface ISFolderIconConfigurationParser
- (ISFolderIconConfigurationParser)initWithIconDictionary:(id)dictionary;
- (ISFolderIconConfigurationParser)initWithInfoDictionary:(id)dictionary;
- (NSString)assetCatalogImageName;
- (id)tintColor;
@end

@implementation ISFolderIconConfigurationParser

- (id)tintColor
{
  v2 = [(ISIconConfigurationMarkupParser *)self colorsForKey:@"ISTintColor"];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (ISFolderIconConfigurationParser)initWithInfoDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E69A89A8];
  dictionaryCopy = dictionary;
  v6 = [[v4 alloc] initWithInfoDictionary:dictionaryCopy];

  iconDictionary = [v6 iconDictionary];

  v8 = [(ISFolderIconConfigurationParser *)self initWithIconDictionary:iconDictionary];
  return v8;
}

- (ISFolderIconConfigurationParser)initWithIconDictionary:(id)dictionary
{
  v4 = [dictionary _IF_dictionaryForKey:@"ISFolderIconConfiguration"];
  v7.receiver = self;
  v7.super_class = ISFolderIconConfigurationParser;
  v5 = [(ISIconConfigurationMarkupParser *)&v7 initWithConfigurationDictionary:v4];

  return v5;
}

- (NSString)assetCatalogImageName
{
  configDict = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [configDict _IF_stringForKey:@"ISAssetCatalogImageName"];

  return v3;
}

@end