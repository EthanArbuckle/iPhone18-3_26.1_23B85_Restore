@interface LNViewSnippet
- (LNViewSnippet)initWithCoder:(id)a3;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5 snippetModelBundleIdentifier:(id)a6;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5 snippetModelBundleIdentifier:(id)a6 viewSnippetOptions:(id)a7;
- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 viewData:(id)a5;
- (id)_initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 viewData:(id)a5 snippetModelData:(id)a6 snippetModelBundleIdentifier:(id)a7 viewSnippetOptions:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNViewSnippet

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNViewSnippet *)self containerBundleIdentifier];
  [v4 encodeObject:v5 forKey:@"containerBundleIdentifier"];

  v6 = [(LNViewSnippet *)self targetBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"targetBundleIdentifier"];

  v7 = [(LNViewSnippet *)self viewData];
  [v4 encodeObject:v7 forKey:@"viewData"];

  v8 = [(LNViewSnippet *)self snippetModelData];
  [v4 encodeObject:v8 forKey:@"snippetModelData"];

  v9 = [(LNViewSnippet *)self snippetModelBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"snippetModelBundleIdentifier"];

  v10 = [(LNViewSnippet *)self viewSnippetOptions];
  [v4 encodeObject:v10 forKey:@"viewSnippetOptions"];
}

- (LNViewSnippet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelData"];
  if (v5 | v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleIdentifier"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snippetModelBundleIdentifier"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippetOptions"];
    self = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v7 targetBundleIdentifier:v8 viewData:v5 snippetModelData:v6 snippetModelBundleIdentifier:v9 viewSnippetOptions:v10];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNViewSnippet *)self containerBundleIdentifier];
  v6 = [(LNViewSnippet *)self targetBundleIdentifier];
  v7 = [(LNViewSnippet *)self viewData];
  v8 = [(LNViewSnippet *)self snippetModelData];
  v9 = [(LNViewSnippet *)self snippetModelBundleIdentifier];
  v10 = [(LNViewSnippet *)self viewSnippetOptions];
  v11 = [v4 _initWithContainerBundleIdentifier:v5 targetBundleIdentifier:v6 viewData:v7 snippetModelData:v8 snippetModelBundleIdentifier:v9 viewSnippetOptions:v10];

  return v11;
}

- (id)_initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 viewData:(id)a5 snippetModelData:(id)a6 snippetModelBundleIdentifier:(id)a7 viewSnippetOptions:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v33.receiver = self;
  v33.super_class = LNViewSnippet;
  v20 = [(LNViewSnippet *)&v33 init];
  if (v20)
  {
    v21 = [v14 copy];
    containerBundleIdentifier = v20->_containerBundleIdentifier;
    v20->_containerBundleIdentifier = v21;

    v23 = [v15 copy];
    targetBundleIdentifier = v20->_targetBundleIdentifier;
    v20->_targetBundleIdentifier = v23;

    v25 = [v16 copy];
    viewData = v20->_viewData;
    v20->_viewData = v25;

    v27 = [v17 copy];
    snippetModelData = v20->_snippetModelData;
    v20->_snippetModelData = v27;

    v29 = [v18 copy];
    snippetModelBundleIdentifier = v20->_snippetModelBundleIdentifier;
    v20->_snippetModelBundleIdentifier = v29;

    objc_storeStrong(&v20->_viewSnippetOptions, a8);
    v31 = v20;
  }

  return v20;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5 snippetModelBundleIdentifier:(id)a6 viewSnippetOptions:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  v18 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v16 targetBundleIdentifier:v15 viewData:v17 snippetModelData:v14 snippetModelBundleIdentifier:v13 viewSnippetOptions:v12];

  return v18;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5 snippetModelBundleIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v16 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v13 targetBundleIdentifier:v12 viewData:v14 snippetModelData:v11 snippetModelBundleIdentifier:v10 viewSnippetOptions:v15];

  return v16;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 snippetModelData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v13 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v10 targetBundleIdentifier:v9 viewData:v11 snippetModelData:v8 snippetModelBundleIdentifier:0 viewSnippetOptions:v12];

  return v13;
}

- (LNViewSnippet)initWithContainerBundleIdentifier:(id)a3 targetBundleIdentifier:(id)a4 viewData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNViewSnippet.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"viewData"}];
  }

  v12 = [[LNViewSnippetOptions alloc] initWithCanReplacePrintableText:0];
  v13 = [(LNViewSnippet *)self _initWithContainerBundleIdentifier:v9 targetBundleIdentifier:v10 viewData:v11 snippetModelData:0 snippetModelBundleIdentifier:0 viewSnippetOptions:v12];

  return v13;
}

@end