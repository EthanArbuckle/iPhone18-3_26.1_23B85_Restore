@interface SUUIUber
- (SUUIUber)initWithUberDictionary:(id)dictionary;
@end

@implementation SUUIUber

- (SUUIUber)initWithUberDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SUUIUber;
  v5 = [(SUUIUber *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"masterArt"];
    v7 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v6];
    artworkProvider = v5->_artworkProvider;
    v5->_artworkProvider = v7;

    v9 = [dictionaryCopy objectForKey:@"description"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      text = v5->_text;
      v5->_text = v10;
    }

    v12 = [[SUUIColorScheme alloc] initWithColorSchemeDictionary:dictionaryCopy];
    colorScheme = v5->_colorScheme;
    v5->_colorScheme = v12;
  }

  return v5;
}

@end