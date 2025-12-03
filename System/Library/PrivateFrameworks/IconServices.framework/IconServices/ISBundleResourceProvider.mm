@interface ISBundleResourceProvider
- (BOOL)_isAppleResource;
- (BOOL)_shouldTreatLikeApp;
- (ISBundleResourceProvider)initWithBundle:(id)bundle options:(unint64_t)options;
- (ISBundleResourceProvider)initWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options;
- (id)description;
- (id)iconResource;
- (id)resourceNamed:(id)named;
- (id)symbol;
- (void)resolveResources;
@end

@implementation ISBundleResourceProvider

- (ISBundleResourceProvider)initWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options
{
  v21[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = ISBundleResourceProvider;
  v10 = [(ISResourceProvider *)&v20 init];
  if (v10)
  {
    if ([lCopy isFileReferenceURL])
    {
      [lCopy filePathURL];
    }

    else
    {
      [lCopy absoluteURL];
    }
    v11 = ;
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v11;

    objc_storeStrong(&v10->_iconDictionary, dictionary);
    iconDictionary = v10->_iconDictionary;
    v21[0] = @"UTTypeIconBadgeName";
    v21[1] = @"UTTypeIconText";
    v21[2] = @"UTTypeIconBackgroundName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v15 = [(NSDictionary *)iconDictionary _IF_stringForKeys:v14];

    if (v15)
    {
      optionsCopy = options | 2;
    }

    else
    {
      optionsCopy = options;
    }

    v19.receiver = v10;
    v19.super_class = ISBundleResourceProvider;
    [(ISResourceProvider *)&v19 setOptions:optionsCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (ISBundleResourceProvider)initWithBundle:(id)bundle options:(unint64_t)options
{
  bundleCopy = bundle;
  bundleURL = [bundleCopy bundleURL];
  iconDictionary = [bundleCopy iconDictionary];
  v9 = [(ISBundleResourceProvider *)self initWithBundleURL:bundleURL iconDictionary:iconDictionary options:options];

  if (v9 && [bundleCopy platform])
  {
    -[ISResourceProvider setPlatform:](v9, "setPlatform:", [bundleCopy platform]);
  }

  return v9;
}

- (void)resolveResources
{
  if (![(ISResourceProvider *)self resolved])
  {
    [(ISResourceProvider *)self setResolved:1];
    v9 = self->_bundleURL;
    v3 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v9];
    v4 = self->_iconDictionary;
    v5 = [ISResourceProvider resourceWithBundleURL:v9 iconDictionary:v4 options:0];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:v5 forKeyedSubscript:@"kISPrimaryResourceKey"];

    [(ISResourceProvider *)self _findTextResourceWithIconDictionary:v4];
    [(ISResourceProvider *)self setPlatformWithBundle:v3];
    LOBYTE(resourcesByResourceKey) = [(ISResourceProvider *)self _findBadgeResourceWithIconDictionary:v4 bundle:v3 record:0];
    v7 = [(ISResourceProvider *)self _findBackgroundResourceWithIconDictionary:v4 bundle:v3];
    if ((resourcesByResourceKey & 1) == 0 && !v7 && v5)
    {
      resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
      [resourcesByResourceKey2 setObject:v5 forKeyedSubscript:@"kISBadgeResourceKey"];
    }

    [(ISResourceProvider *)self _findCustomRecipeWithIconDictionary:v4 bundle:v3];
  }
}

- (id)iconResource
{
  v6.receiver = self;
  v6.super_class = ISBundleResourceProvider;
  iconResource = [(ISResourceProvider *)&v6 iconResource];
  if (!iconResource)
  {
    [(ISBundleResourceProvider *)self resolveResources];
    v5.receiver = self;
    v5.super_class = ISBundleResourceProvider;
    iconResource = [(ISResourceProvider *)&v5 iconResource];
  }

  return iconResource;
}

- (id)resourceNamed:(id)named
{
  namedCopy = named;
  v8.receiver = self;
  v8.super_class = ISBundleResourceProvider;
  v5 = [(ISResourceProvider *)&v8 resourceNamed:namedCopy];
  if (!v5)
  {
    [(ISBundleResourceProvider *)self resolveResources];
    v7.receiver = self;
    v7.super_class = ISBundleResourceProvider;
    v5 = [(ISResourceProvider *)&v7 resourceNamed:namedCopy];
  }

  return v5;
}

- (id)symbol
{
  v16[2] = *MEMORY[0x1E69E9840];
  coreTypesBundle = [MEMORY[0x1E69A8960] coreTypesBundle];
  bundleURL = [coreTypesBundle bundleURL];
  v5 = [bundleURL isEqual:self->_bundleURL];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_bundleURL;
  }

  v7 = self->_iconDictionary;
  v16[0] = @"CFBundleSymbolName";
  v16[1] = @"UTTypeSymbolName";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [(NSDictionary *)v7 _IF_stringForKeys:v8];

  if (v9)
  {
    goto LABEL_7;
  }

  lastPathComponent = [(NSURL *)v6 lastPathComponent];
  lowercaseString = [lastPathComponent lowercaseString];
  v12 = [lowercaseString isEqualToString:@"mydocuments.cannedsearch"];

  if (v12)
  {
    v9 = @"clock";
LABEL_7:
    v13 = [objc_alloc(MEMORY[0x1E69A89B0]) initWithSymbolName:v9 bundleURL:v6];
    goto LABEL_8;
  }

  v9 = 0;
  v13 = 0;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_isAppleResource
{
  v2 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:self->_bundleURL];
  bundleID = [v2 bundleID];
  v4 = [bundleID hasPrefix:@"com.apple"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ISBundleResourceProvider;
  v4 = [(ISBundleResourceProvider *)&v9 description];
  bundleURL = [(ISBundleResourceProvider *)self bundleURL];
  iconDictionary = [(ISBundleResourceProvider *)self iconDictionary];
  v7 = [v3 stringWithFormat:@"%@ - %@ %@", v4, bundleURL, iconDictionary];

  return v7;
}

- (BOOL)_shouldTreatLikeApp
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleURL = [(ISBundleResourceProvider *)self bundleURL];
  v5 = [v3 initWithURL:bundleURL allowPlaceholder:1 error:0];

  return v5 != 0;
}

@end