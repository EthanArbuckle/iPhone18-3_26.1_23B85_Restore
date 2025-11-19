@interface ISBundleResourceProvider
- (BOOL)_isAppleResource;
- (BOOL)_shouldTreatLikeApp;
- (ISBundleResourceProvider)initWithBundle:(id)a3 options:(unint64_t)a4;
- (ISBundleResourceProvider)initWithBundleURL:(id)a3 iconDictionary:(id)a4 options:(unint64_t)a5;
- (id)description;
- (id)iconResource;
- (id)resourceNamed:(id)a3;
- (id)symbol;
- (void)resolveResources;
@end

@implementation ISBundleResourceProvider

- (ISBundleResourceProvider)initWithBundleURL:(id)a3 iconDictionary:(id)a4 options:(unint64_t)a5
{
  v21[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = ISBundleResourceProvider;
  v10 = [(ISResourceProvider *)&v20 init];
  if (v10)
  {
    if ([v8 isFileReferenceURL])
    {
      [v8 filePathURL];
    }

    else
    {
      [v8 absoluteURL];
    }
    v11 = ;
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v11;

    objc_storeStrong(&v10->_iconDictionary, a4);
    iconDictionary = v10->_iconDictionary;
    v21[0] = @"UTTypeIconBadgeName";
    v21[1] = @"UTTypeIconText";
    v21[2] = @"UTTypeIconBackgroundName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v15 = [(NSDictionary *)iconDictionary _IF_stringForKeys:v14];

    if (v15)
    {
      v16 = a5 | 2;
    }

    else
    {
      v16 = a5;
    }

    v19.receiver = v10;
    v19.super_class = ISBundleResourceProvider;
    [(ISResourceProvider *)&v19 setOptions:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (ISBundleResourceProvider)initWithBundle:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 bundleURL];
  v8 = [v6 iconDictionary];
  v9 = [(ISBundleResourceProvider *)self initWithBundleURL:v7 iconDictionary:v8 options:a4];

  if (v9 && [v6 platform])
  {
    -[ISResourceProvider setPlatform:](v9, "setPlatform:", [v6 platform]);
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
    v6 = [(ISResourceProvider *)self resourcesByResourceKey];
    [v6 setObject:v5 forKeyedSubscript:@"kISPrimaryResourceKey"];

    [(ISResourceProvider *)self _findTextResourceWithIconDictionary:v4];
    [(ISResourceProvider *)self setPlatformWithBundle:v3];
    LOBYTE(v6) = [(ISResourceProvider *)self _findBadgeResourceWithIconDictionary:v4 bundle:v3 record:0];
    v7 = [(ISResourceProvider *)self _findBackgroundResourceWithIconDictionary:v4 bundle:v3];
    if ((v6 & 1) == 0 && !v7 && v5)
    {
      v8 = [(ISResourceProvider *)self resourcesByResourceKey];
      [v8 setObject:v5 forKeyedSubscript:@"kISBadgeResourceKey"];
    }

    [(ISResourceProvider *)self _findCustomRecipeWithIconDictionary:v4 bundle:v3];
  }
}

- (id)iconResource
{
  v6.receiver = self;
  v6.super_class = ISBundleResourceProvider;
  v3 = [(ISResourceProvider *)&v6 iconResource];
  if (!v3)
  {
    [(ISBundleResourceProvider *)self resolveResources];
    v5.receiver = self;
    v5.super_class = ISBundleResourceProvider;
    v3 = [(ISResourceProvider *)&v5 iconResource];
  }

  return v3;
}

- (id)resourceNamed:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ISBundleResourceProvider;
  v5 = [(ISResourceProvider *)&v8 resourceNamed:v4];
  if (!v5)
  {
    [(ISBundleResourceProvider *)self resolveResources];
    v7.receiver = self;
    v7.super_class = ISBundleResourceProvider;
    v5 = [(ISResourceProvider *)&v7 resourceNamed:v4];
  }

  return v5;
}

- (id)symbol
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8960] coreTypesBundle];
  v4 = [v3 bundleURL];
  v5 = [v4 isEqual:self->_bundleURL];

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

  v10 = [(NSURL *)v6 lastPathComponent];
  v11 = [v10 lowercaseString];
  v12 = [v11 isEqualToString:@"mydocuments.cannedsearch"];

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
  v3 = [v2 bundleID];
  v4 = [v3 hasPrefix:@"com.apple"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ISBundleResourceProvider;
  v4 = [(ISBundleResourceProvider *)&v9 description];
  v5 = [(ISBundleResourceProvider *)self bundleURL];
  v6 = [(ISBundleResourceProvider *)self iconDictionary];
  v7 = [v3 stringWithFormat:@"%@ - %@ %@", v4, v5, v6];

  return v7;
}

- (BOOL)_shouldTreatLikeApp
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(ISBundleResourceProvider *)self bundleURL];
  v5 = [v3 initWithURL:v4 allowPlaceholder:1 error:0];

  return v5 != 0;
}

@end