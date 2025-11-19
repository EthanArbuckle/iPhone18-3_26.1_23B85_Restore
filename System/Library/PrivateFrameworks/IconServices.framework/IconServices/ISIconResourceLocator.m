@interface ISIconResourceLocator
+ (id)genericIconrResourceLocator;
+ (id)resourceLocatorWithLSIconResourceLocator:(id)a3;
+ (id)resourceLocatorWithType:(id)a3;
- (BOOL)allowLocalizedIcon;
- (ISIconResourceLocator)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISIconResourceLocator

+ (id)resourceLocatorWithLSIconResourceLocator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ISIconResourceLocator);
  v5 = [v3 applicationIdentifier];
  [(ISIconResourceLocator *)v4 setBundleIdentifier:v5];

  v6 = [v3 bundleIconsDictionary];
  [(ISIconResourceLocator *)v4 setIconsDictionary:v6];

  [(ISIconResourceLocator *)v4 setPreferedResourceName:0];
  v7 = [v3 resourcesDirectoryURL];

  [(ISIconResourceLocator *)v4 setResourceDirectoryURL:v7];

  return v4;
}

+ (id)resourceLocatorWithType:(id)a3
{
  v3 = a3;
  v4 = [[ISIconTypeResourceLocator alloc] initWithType:v3];

  return v4;
}

+ (id)genericIconrResourceLocator
{
  if (genericIconrResourceLocator_onceToken != -1)
  {
    +[ISIconResourceLocator genericIconrResourceLocator];
  }

  v3 = genericIconrResourceLocator_locator;

  return v3;
}

uint64_t __52__ISIconResourceLocator_genericIconrResourceLocator__block_invoke()
{
  v0 = objc_alloc_init(ISIconResourceLocator);
  v1 = genericIconrResourceLocator_locator;
  genericIconrResourceLocator_locator = v0;

  [genericIconrResourceLocator_locator setBundleIdentifier:@"com.apple.coretypes"];
  [genericIconrResourceLocator_locator setIconsDictionary:0];
  v2 = genericIconrResourceLocator_locator;

  return [v2 setPreferedResourceName:0];
}

- (void)encodeWithCoder:(id)a3
{
  resourceDirectoryURL = self->_resourceDirectoryURL;
  v5 = a3;
  [v5 encodeObject:resourceDirectoryURL forKey:@"_resourceDirectoryURL"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [v5 encodeObject:self->_iconsDictionary forKey:@"_iconsDictionary"];
  [v5 encodeObject:self->_preferedResourceName forKey:@"_preferedResourceName"];
}

- (ISIconResourceLocator)initWithCoder:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ISIconResourceLocator;
  v5 = [(ISIconResourceLocator *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resourceDirectoryURL"];
    resourceDirectoryURL = v5->_resourceDirectoryURL;
    v5->_resourceDirectoryURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_iconsDictionary"];
    iconsDictionary = v5->_iconsDictionary;
    v5->_iconsDictionary = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preferedResourceName"];
    preferedResourceName = v5->_preferedResourceName;
    v5->_preferedResourceName = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  preferedResourceName = self->_preferedResourceName;
  if (!preferedResourceName)
  {
    preferedResourceName = @"DEFAULT";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Resources Bundle URL: %@, icons dict: %@, prefered name: %@", self->_resourceDirectoryURL, self->_iconsDictionary, preferedResourceName];
}

- (BOOL)allowLocalizedIcon
{
  v2 = [(ISIconResourceLocator *)self bundleIdentifier];
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to decode ISIconResourceLocator with exception: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end