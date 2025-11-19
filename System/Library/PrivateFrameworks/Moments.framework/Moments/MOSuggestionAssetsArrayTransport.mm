@interface MOSuggestionAssetsArrayTransport
- (MOSuggestionAssetsArrayTransport)initWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetsArrayTransport

- (MOSuggestionAssetsArrayTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetsArrayTransport;
  v5 = [(MOSuggestionAssetsArrayTransport *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"coderKeyMOSuggestionAssetsArrayTransport"];
    assets = v5->_assets;
    v5->_assets = v9;
  }

  return v5;
}

@end