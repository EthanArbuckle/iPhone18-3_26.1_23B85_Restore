@interface ISIconResourceLocator
+ (id)genericIconrResourceLocator;
+ (id)resourceLocatorWithLSIconResourceLocator:(id)locator;
+ (id)resourceLocatorWithType:(id)type;
- (BOOL)allowLocalizedIcon;
- (ISIconResourceLocator)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISIconResourceLocator

+ (id)resourceLocatorWithLSIconResourceLocator:(id)locator
{
  locatorCopy = locator;
  v4 = objc_alloc_init(ISIconResourceLocator);
  applicationIdentifier = [locatorCopy applicationIdentifier];
  [(ISIconResourceLocator *)v4 setBundleIdentifier:applicationIdentifier];

  bundleIconsDictionary = [locatorCopy bundleIconsDictionary];
  [(ISIconResourceLocator *)v4 setIconsDictionary:bundleIconsDictionary];

  [(ISIconResourceLocator *)v4 setPreferedResourceName:0];
  resourcesDirectoryURL = [locatorCopy resourcesDirectoryURL];

  [(ISIconResourceLocator *)v4 setResourceDirectoryURL:resourcesDirectoryURL];

  return v4;
}

+ (id)resourceLocatorWithType:(id)type
{
  typeCopy = type;
  v4 = [[ISIconTypeResourceLocator alloc] initWithType:typeCopy];

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

- (void)encodeWithCoder:(id)coder
{
  resourceDirectoryURL = self->_resourceDirectoryURL;
  coderCopy = coder;
  [coderCopy encodeObject:resourceDirectoryURL forKey:@"_resourceDirectoryURL"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_iconsDictionary forKey:@"_iconsDictionary"];
  [coderCopy encodeObject:self->_preferedResourceName forKey:@"_preferedResourceName"];
}

- (ISIconResourceLocator)initWithCoder:(id)coder
{
  v20[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ISIconResourceLocator;
  v5 = [(ISIconResourceLocator *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resourceDirectoryURL"];
    resourceDirectoryURL = v5->_resourceDirectoryURL;
    v5->_resourceDirectoryURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_iconsDictionary"];
    iconsDictionary = v5->_iconsDictionary;
    v5->_iconsDictionary = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferedResourceName"];
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
  bundleIdentifier = [(ISIconResourceLocator *)self bundleIdentifier];
  v3 = [bundleIdentifier hasPrefix:@"com.apple."];

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