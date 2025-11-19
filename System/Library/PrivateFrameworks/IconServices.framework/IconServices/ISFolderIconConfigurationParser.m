@interface ISFolderIconConfigurationParser
- (ISFolderIconConfigurationParser)initWithIconDictionary:(id)a3;
- (ISFolderIconConfigurationParser)initWithInfoDictionary:(id)a3;
- (NSString)assetCatalogImageName;
- (id)tintColor;
@end

@implementation ISFolderIconConfigurationParser

- (id)tintColor
{
  v2 = [(ISIconConfigurationMarkupParser *)self colorsForKey:@"ISTintColor"];
  v3 = [v2 firstObject];

  return v3;
}

- (ISFolderIconConfigurationParser)initWithInfoDictionary:(id)a3
{
  v4 = MEMORY[0x1E69A89A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithInfoDictionary:v5];

  v7 = [v6 iconDictionary];

  v8 = [(ISFolderIconConfigurationParser *)self initWithIconDictionary:v7];
  return v8;
}

- (ISFolderIconConfigurationParser)initWithIconDictionary:(id)a3
{
  v4 = [a3 _IF_dictionaryForKey:@"ISFolderIconConfiguration"];
  v7.receiver = self;
  v7.super_class = ISFolderIconConfigurationParser;
  v5 = [(ISIconConfigurationMarkupParser *)&v7 initWithConfigurationDictionary:v4];

  return v5;
}

- (NSString)assetCatalogImageName
{
  v2 = [(ISIconConfigurationMarkupParser *)self configDict];
  v3 = [v2 _IF_stringForKey:@"ISAssetCatalogImageName"];

  return v3;
}

@end