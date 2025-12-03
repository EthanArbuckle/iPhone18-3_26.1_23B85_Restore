@interface LNViewSnippet
- (LNViewSnippet)initWithCoder:(id)coder;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data snippetModelBundleIdentifier:(id)modelBundleIdentifier;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data snippetModelBundleIdentifier:(id)modelBundleIdentifier viewSnippetOptions:(id)options;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier viewData:(id)data;
- (id)_initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier viewData:(id)data snippetModelData:(id)modelData snippetModelBundleIdentifier:(id)modelBundleIdentifier viewSnippetOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNViewSnippet

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  containerBundleIdentifier = [(LNViewSnippet *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  targetBundleIdentifier = [(LNViewSnippet *)self targetBundleIdentifier];
  [coderCopy encodeObject:targetBundleIdentifier forKey:@"targetBundleIdentifier"];

  viewData = [(LNViewSnippet *)self viewData];
  [coderCopy encodeObject:viewData forKey:@"viewData"];

  snippetModelData = [(LNViewSnippet *)self snippetModelData];
  [coderCopy encodeObject:snippetModelData forKey:@"snippetModelData"];

  snippetModelBundleIdentifier = [(LNViewSnippet *)self snippetModelBundleIdentifier];
  [coderCopy encodeObject:snippetModelBundleIdentifier forKey:@"snippetModelBundleIdentifier"];

  viewSnippetOptions = [(LNViewSnippet *)self viewSnippetOptions];
  [coderCopy encodeObject:viewSnippetOptions forKey:@"viewSnippetOptions"];
}

- (LNViewSnippet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelData"];
  if (v5 | v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleIdentifier"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelBundleIdentifier"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippetOptions"];
    self = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v7 targetBundleIdentifier:v8 viewData:v5 snippetModelData:v6 snippetModelBundleIdentifier:v9 viewSnippetOptions:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  containerBundleIdentifier = [(LNViewSnippet *)self containerBundleIdentifier];
  targetBundleIdentifier = [(LNViewSnippet *)self targetBundleIdentifier];
  viewData = [(LNViewSnippet *)self viewData];
  snippetModelData = [(LNViewSnippet *)self snippetModelData];
  snippetModelBundleIdentifier = [(LNViewSnippet *)self snippetModelBundleIdentifier];
  viewSnippetOptions = [(LNViewSnippet *)self viewSnippetOptions];
  v11 = [v4 _initWithContainerBundleIdentifier:containerBundleIdentifier targetBundleIdentifier:targetBundleIdentifier viewData:viewData snippetModelData:snippetModelData snippetModelBundleIdentifier:snippetModelBundleIdentifier viewSnippetOptions:viewSnippetOptions];

  return v11;
}

- (id)_initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier viewData:(id)data snippetModelData:(id)modelData snippetModelBundleIdentifier:(id)modelBundleIdentifier viewSnippetOptions:(id)options
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  dataCopy = data;
  modelDataCopy = modelData;
  modelBundleIdentifierCopy = modelBundleIdentifier;
  optionsCopy = options;
  v33.receiver = self;
  v33.super_class = LNViewSnippet;
  v20 = [(LNViewSnippet *)&v33 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    containerBundleIdentifier = v20->_containerBundleIdentifier;
    v20->_containerBundleIdentifier = v21;

    v23 = [bundleIdentifierCopy copy];
    targetBundleIdentifier = v20->_targetBundleIdentifier;
    v20->_targetBundleIdentifier = v23;

    v25 = [dataCopy copy];
    viewData = v20->_viewData;
    v20->_viewData = v25;

    v27 = [modelDataCopy copy];
    snippetModelData = v20->_snippetModelData;
    v20->_snippetModelData = v27;

    v29 = [modelBundleIdentifierCopy copy];
    snippetModelBundleIdentifier = v20->_snippetModelBundleIdentifier;
    v20->_snippetModelBundleIdentifier = v29;

    objc_storeStrong(&v20->_viewSnippetOptions, options);
    v31 = v20;
  }

  return v20;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data snippetModelBundleIdentifier:(id)modelBundleIdentifier viewSnippetOptions:(id)options
{
  optionsCopy = options;
  modelBundleIdentifierCopy = modelBundleIdentifier;
  dataCopy = data;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v17 = objc_opt_new();
  v18 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:identifierCopy targetBundleIdentifier:bundleIdentifierCopy viewData:v17 snippetModelData:dataCopy snippetModelBundleIdentifier:modelBundleIdentifierCopy viewSnippetOptions:optionsCopy];

  return v18;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data snippetModelBundleIdentifier:(id)modelBundleIdentifier
{
  modelBundleIdentifierCopy = modelBundleIdentifier;
  dataCopy = data;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v14 = objc_opt_new();
  v15 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v16 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:identifierCopy targetBundleIdentifier:bundleIdentifierCopy viewData:v14 snippetModelData:dataCopy snippetModelBundleIdentifier:modelBundleIdentifierCopy viewSnippetOptions:v15];

  return v16;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier snippetModelData:(id)data
{
  dataCopy = data;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v11 = objc_opt_new();
  v12 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v13 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:identifierCopy targetBundleIdentifier:bundleIdentifierCopy viewData:v11 snippetModelData:dataCopy snippetModelBundleIdentifier:0 viewSnippetOptions:v12];

  return v13;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)identifier targetBundleIdentifier:(id)bundleIdentifier viewData:(id)data
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNViewSnippet.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"viewData"}];
  }

  v12 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v13 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:identifierCopy targetBundleIdentifier:bundleIdentifierCopy viewData:dataCopy snippetModelData:0 snippetModelBundleIdentifier:0 viewSnippetOptions:v12];

  return v13;
}

@end