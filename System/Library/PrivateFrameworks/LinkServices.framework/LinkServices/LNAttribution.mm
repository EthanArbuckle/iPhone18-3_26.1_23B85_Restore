@interface LNAttribution
- (LNAttribution)initWithCoder:(id)coder;
- (LNAttribution)initWithSnippetModelData:(id)data snippetModelBundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAttribution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  snippetModelData = [(LNAttribution *)self snippetModelData];
  [coderCopy encodeObject:snippetModelData forKey:@"snippetModelData"];

  snippetModelBundleIdentifier = [(LNAttribution *)self snippetModelBundleIdentifier];
  [coderCopy encodeObject:snippetModelBundleIdentifier forKey:@"snippetModelBundleIdentifier"];
}

- (LNAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelBundleIdentifier"];

  v7 = [(LNAttribution *)self initWithSnippetModelData:v5 snippetModelBundleIdentifier:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  snippetModelData = [(LNAttribution *)self snippetModelData];
  snippetModelBundleIdentifier = [(LNAttribution *)self snippetModelBundleIdentifier];
  v7 = [v4 initWithSnippetModelData:snippetModelData snippetModelBundleIdentifier:snippetModelBundleIdentifier];

  return v7;
}

- (LNAttribution)initWithSnippetModelData:(id)data snippetModelBundleIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LNAttribution;
  v9 = [(LNAttribution *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snippetModelData, data);
    objc_storeStrong(&v10->_snippetModelBundleIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

@end