@interface MOSuggestionAssetsBundle
- (MOSuggestionAssetsBundle)init;
- (MOSuggestionAssetsBundle)initWithCoder:(id)a3;
- (id)assetsForType:(id)a3;
- (void)addAssets:(id)a3 forType:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetsBundle

- (void)encodeWithCoder:(id)a3
{
  assetLibrary = self->_assetLibrary;
  v5 = a3;
  [v5 encodeObject:assetLibrary forKey:@"coderKeyMOSuggestionAssetsBundleAssetLibrary"];
  [v5 encodeObject:self->_availableTypes forKey:@"coderKeyMOSuggestionAssetsBundleAvailableTypes"];
}

- (MOSuggestionAssetsBundle)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"coderKeyMOSuggestionAssetsBundleAssetLibrary"];
    assetLibrary = v5->_assetLibrary;
    v5->_assetLibrary = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"coderKeyMOSuggestionAssetsBundleAvailableTypes"];
    availableTypes = v5->_availableTypes;
    v5->_availableTypes = v16;
  }

  return v5;
}

- (id)assetsForType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_assetLibrary objectForKeyedSubscript:a3];
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

- (void)addAssets:(id)a3 forType:(id)a4
{
  assetLibrary = self->_assetLibrary;
  v7 = a4;
  [(NSMutableDictionary *)assetLibrary setObject:a3 forKeyedSubscript:v7];
  [(NSMutableSet *)self->_availableTypes addObject:v7];
}

@end