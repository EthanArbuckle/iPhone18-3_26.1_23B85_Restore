@interface LNAttribution
- (LNAttribution)initWithCoder:(id)a3;
- (LNAttribution)initWithSnippetModelData:(id)a3 snippetModelBundleIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAttribution

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAttribution *)self snippetModelData];
  [v4 encodeObject:v5 forKey:@"snippetModelData"];

  v6 = [(LNAttribution *)self snippetModelBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"snippetModelBundleIdentifier"];
}

- (LNAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelBundleIdentifier"];

  v7 = [(LNAttribution *)self initWithSnippetModelData:v5 snippetModelBundleIdentifier:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNAttribution *)self snippetModelData];
  v6 = [(LNAttribution *)self snippetModelBundleIdentifier];
  v7 = [v4 initWithSnippetModelData:v5 snippetModelBundleIdentifier:v6];

  return v7;
}

- (LNAttribution)initWithSnippetModelData:(id)a3 snippetModelBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNAttribution;
  v9 = [(LNAttribution *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snippetModelData, a3);
    objc_storeStrong(&v10->_snippetModelBundleIdentifier, a4);
    v11 = v10;
  }

  return v10;
}

@end