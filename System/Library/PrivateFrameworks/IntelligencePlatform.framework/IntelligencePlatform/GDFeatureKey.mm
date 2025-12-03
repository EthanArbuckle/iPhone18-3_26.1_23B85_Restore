@interface GDFeatureKey
- (GDFeatureKey)initWithCoder:(id)coder;
- (GDFeatureKey)initWithViewName:(id)name featureName:(id)featureName subidentifierName:(id)subidentifierName;
- (NSString)diagnosticDataString;
- (NSString)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDFeatureKey

- (NSString)diagnosticDataString
{
  subidentifierName = [(GDFeatureKey *)self subidentifierName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (subidentifierName)
  {
    subidentifierName2 = [(GDFeatureKey *)self subidentifierName];
    featureName = [(GDFeatureKey *)self featureName];
    v7 = [v4 initWithFormat:@"%@%@%@", subidentifierName2, @"|::|", featureName];
  }

  else
  {
    subidentifierName2 = [(GDFeatureKey *)self featureName];
    v7 = [v4 initWithFormat:@"%s%@%@", "<no subidentifier>", @"|::|", subidentifierName2];
  }

  return v7;
}

- (NSString)string
{
  subidentifierName = [(GDFeatureKey *)self subidentifierName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  viewName = [(GDFeatureKey *)self viewName];
  featureName = [(GDFeatureKey *)self featureName];
  v7 = featureName;
  if (subidentifierName)
  {
    subidentifierName2 = [(GDFeatureKey *)self subidentifierName];
    v9 = [v4 initWithFormat:@"%@%@%@%@%@", viewName, @"|::|", v7, @"|::|", subidentifierName2];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@%@%@", viewName, @"|::|", featureName];
  }

  return v9;
}

- (GDFeatureKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_viewName);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:v7 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_featureName);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:v13 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(sel_subidentifierName);
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:v18 withCoder:coderCopy expectNonNull:0 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
      }

      else
      {
        self = [(GDFeatureKey *)self initWithViewName:v8 featureName:v14 subidentifierName:v19];
        selfCopy = self;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  viewName = self->_viewName;
  v5 = NSStringFromSelector(sel_viewName);
  [coderCopy encodeObject:viewName forKey:v5];

  featureName = self->_featureName;
  v7 = NSStringFromSelector(sel_featureName);
  [coderCopy encodeObject:featureName forKey:v7];

  subidentifierName = self->_subidentifierName;
  if (subidentifierName)
  {
    v9 = NSStringFromSelector(sel_subidentifierName);
    [coderCopy encodeObject:subidentifierName forKey:v9];
  }
}

- (GDFeatureKey)initWithViewName:(id)name featureName:(id)featureName subidentifierName:(id)subidentifierName
{
  nameCopy = name;
  featureNameCopy = featureName;
  subidentifierNameCopy = subidentifierName;
  v15.receiver = self;
  v15.super_class = GDFeatureKey;
  v12 = [(GDFeatureKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewName, name);
    objc_storeStrong(&v13->_featureName, featureName);
    objc_storeStrong(&v13->_subidentifierName, subidentifierName);
  }

  return v13;
}

@end