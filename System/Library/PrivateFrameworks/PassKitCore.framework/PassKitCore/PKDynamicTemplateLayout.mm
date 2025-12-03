@interface PKDynamicTemplateLayout
- (PKDynamicTemplateLayout)initWithDictionary:(id)dictionary;
- (id)anyLayoutImageNamed:(id)named;
- (id)anyLayoutLinkNamed:(id)named;
- (id)anyLayoutStringNamed:(id)named;
- (id)layoutImageNamed:(id)named passingTest:(id)test;
- (id)layoutImages;
- (id)layoutLinkNamed:(id)named passingTest:(id)test;
- (id)layoutLinks;
- (id)layoutStringNamed:(id)named passingTest:(id)test;
- (id)layoutStrings;
- (void)_initWithLayoutDictionary:(id)dictionary;
@end

@implementation PKDynamicTemplateLayout

- (PKDynamicTemplateLayout)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PKDynamicTemplateLayout;
  v5 = [(PKDynamicTemplateLayout *)&v8 init];
  if (v5)
  {
    if (!dictionaryCopy || ![dictionaryCopy count])
    {
      v6 = 0;
      goto LABEL_7;
    }

    [(PKDynamicTemplateLayout *)v5 _initWithLayoutDictionary:dictionaryCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (void)_initWithLayoutDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"cardTemplateIdentifier"];
  templateIdentifier = self->_templateIdentifier;
  self->_templateIdentifier = v5;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  layoutImages = self->_layoutImages;
  self->_layoutImages = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  layoutStrings = self->_layoutStrings;
  self->_layoutStrings = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  layoutLinks = self->_layoutLinks;
  self->_layoutLinks = dictionary3;

  v31 = [dictionaryCopy PKDictionaryForKey:@"assets"];

  if (v31)
  {
    v13 = objc_opt_class();
    v14 = +[PKLayoutAssetString assetKey];
    v15 = [v31 PKArrayContaining:v13 forKey:v14];

    v16 = [PKLayoutAssetString nameToAssetsMapFromDictionaries:v15];
    v17 = [v16 mutableCopy];
    v18 = self->_layoutStrings;
    self->_layoutStrings = v17;

    v19 = objc_opt_class();
    v20 = +[PKLayoutAssetImage assetKey];
    v21 = [v31 PKArrayContaining:v19 forKey:v20];

    v22 = [PKLayoutAssetImage nameToAssetsMapFromDictionaries:v21];
    v23 = [v22 mutableCopy];
    v24 = self->_layoutImages;
    self->_layoutImages = v23;

    v25 = objc_opt_class();
    v26 = +[PKLayoutAssetLink assetKey];
    v27 = [v31 PKArrayContaining:v25 forKey:v26];

    v28 = [PKLayoutAssetLink nameToAssetsMapFromDictionaries:v27];
    v29 = [v28 mutableCopy];
    v30 = self->_layoutLinks;
    self->_layoutLinks = v29;
  }
}

- (id)layoutStrings
{
  v2 = [(NSMutableDictionary *)self->_layoutStrings copy];

  return v2;
}

- (id)layoutImages
{
  v2 = [(NSMutableDictionary *)self->_layoutImages copy];

  return v2;
}

- (id)layoutLinks
{
  v2 = [(NSMutableDictionary *)self->_layoutLinks copy];

  return v2;
}

- (id)anyLayoutStringNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (namedCopy && [namedCopy length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutStrings objectForKey:v5];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)anyLayoutImageNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (namedCopy && [namedCopy length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutImages objectForKey:v5];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)anyLayoutLinkNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (namedCopy && [namedCopy length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutLinks objectForKey:v5];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)layoutStringNamed:(id)named passingTest:(id)test
{
  layoutStrings = self->_layoutStrings;
  testCopy = test;
  v7 = [(NSMutableDictionary *)layoutStrings objectForKey:named];
  v8 = [v7 pk_firstObjectPassingTest:testCopy];

  return v8;
}

- (id)layoutImageNamed:(id)named passingTest:(id)test
{
  layoutImages = self->_layoutImages;
  testCopy = test;
  v7 = [(NSMutableDictionary *)layoutImages objectForKey:named];
  v8 = [v7 pk_firstObjectPassingTest:testCopy];

  return v8;
}

- (id)layoutLinkNamed:(id)named passingTest:(id)test
{
  layoutLinks = self->_layoutLinks;
  testCopy = test;
  v7 = [(NSMutableDictionary *)layoutLinks objectForKey:named];
  v8 = [v7 pk_firstObjectPassingTest:testCopy];

  return v8;
}

@end