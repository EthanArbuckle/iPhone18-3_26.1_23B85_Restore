@interface PKDynamicTemplateLayout
- (PKDynamicTemplateLayout)initWithDictionary:(id)a3;
- (id)anyLayoutImageNamed:(id)a3;
- (id)anyLayoutLinkNamed:(id)a3;
- (id)anyLayoutStringNamed:(id)a3;
- (id)layoutImageNamed:(id)a3 passingTest:(id)a4;
- (id)layoutImages;
- (id)layoutLinkNamed:(id)a3 passingTest:(id)a4;
- (id)layoutLinks;
- (id)layoutStringNamed:(id)a3 passingTest:(id)a4;
- (id)layoutStrings;
- (void)_initWithLayoutDictionary:(id)a3;
@end

@implementation PKDynamicTemplateLayout

- (PKDynamicTemplateLayout)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKDynamicTemplateLayout;
  v5 = [(PKDynamicTemplateLayout *)&v8 init];
  if (v5)
  {
    if (!v4 || ![v4 count])
    {
      v6 = 0;
      goto LABEL_7;
    }

    [(PKDynamicTemplateLayout *)v5 _initWithLayoutDictionary:v4];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (void)_initWithLayoutDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"cardTemplateIdentifier"];
  templateIdentifier = self->_templateIdentifier;
  self->_templateIdentifier = v5;

  v7 = [MEMORY[0x1E695DF90] dictionary];
  layoutImages = self->_layoutImages;
  self->_layoutImages = v7;

  v9 = [MEMORY[0x1E695DF90] dictionary];
  layoutStrings = self->_layoutStrings;
  self->_layoutStrings = v9;

  v11 = [MEMORY[0x1E695DF90] dictionary];
  layoutLinks = self->_layoutLinks;
  self->_layoutLinks = v11;

  v31 = [v4 PKDictionaryForKey:@"assets"];

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

- (id)anyLayoutStringNamed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutStrings objectForKey:v5];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)anyLayoutImageNamed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutImages objectForKey:v5];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)anyLayoutLinkNamed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(NSMutableDictionary *)self->_layoutLinks objectForKey:v5];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)layoutStringNamed:(id)a3 passingTest:(id)a4
{
  layoutStrings = self->_layoutStrings;
  v6 = a4;
  v7 = [(NSMutableDictionary *)layoutStrings objectForKey:a3];
  v8 = [v7 pk_firstObjectPassingTest:v6];

  return v8;
}

- (id)layoutImageNamed:(id)a3 passingTest:(id)a4
{
  layoutImages = self->_layoutImages;
  v6 = a4;
  v7 = [(NSMutableDictionary *)layoutImages objectForKey:a3];
  v8 = [v7 pk_firstObjectPassingTest:v6];

  return v8;
}

- (id)layoutLinkNamed:(id)a3 passingTest:(id)a4
{
  layoutLinks = self->_layoutLinks;
  v6 = a4;
  v7 = [(NSMutableDictionary *)layoutLinks objectForKey:a3];
  v8 = [v7 pk_firstObjectPassingTest:v6];

  return v8;
}

@end