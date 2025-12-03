@interface MOSuggestionAssetsBundle
- (MOSuggestionAssetsBundle)init;
- (MOSuggestionAssetsBundle)initWithCoder:(id)coder;
- (id)assetsForType:(id)type;
- (void)addAssets:(id)assets forType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetsBundle

- (void)encodeWithCoder:(id)coder
{
  assetLibrary = self->_assetLibrary;
  coderCopy = coder;
  [coderCopy encodeObject:assetLibrary forKey:@"coderKeyMOSuggestionAssetsBundleAssetLibrary"];
  [coderCopy encodeObject:self->_availableTypes forKey:@"coderKeyMOSuggestionAssetsBundleAvailableTypes"];
}

- (MOSuggestionAssetsBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MOSuggestionAssetsBundle;
  v5 = [(MOSuggestionAssetsBundle *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"coderKeyMOSuggestionAssetsBundleAssetLibrary"];
    assetLibrary = v5->_assetLibrary;
    v5->_assetLibrary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"coderKeyMOSuggestionAssetsBundleAvailableTypes"];
    availableTypes = v5->_availableTypes;
    v5->_availableTypes = v16;
  }

  return v5;
}

- (id)assetsForType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_assetLibrary objectForKeyedSubscript:type];
  v4 = [v3 copy];

  return v4;
}

- (MOSuggestionAssetsBundle)init
{
  v8.receiver = self;
  v8.super_class = MOSuggestionAssetsBundle;
  v2 = [(MOSuggestionAssetsBundle *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetLibrary = v2->_assetLibrary;
    v2->_assetLibrary = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    availableTypes = v2->_availableTypes;
    v2->_availableTypes = v5;
  }

  return v2;
}

- (void)addAssets:(id)assets forType:(id)type
{
  assetLibrary = self->_assetLibrary;
  typeCopy = type;
  [(NSMutableDictionary *)assetLibrary setObject:assets forKeyedSubscript:typeCopy];
  [(NSMutableSet *)self->_availableTypes addObject:typeCopy];
}

@end