@interface GDFeatureKey
- (GDFeatureKey)initWithCoder:(id)a3;
- (GDFeatureKey)initWithViewName:(id)a3 featureName:(id)a4 subidentifierName:(id)a5;
- (NSString)diagnosticDataString;
- (NSString)string;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDFeatureKey

- (NSString)diagnosticDataString
{
  v3 = [(GDFeatureKey *)self subidentifierName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3)
  {
    v5 = [(GDFeatureKey *)self subidentifierName];
    v6 = [(GDFeatureKey *)self featureName];
    v7 = [v4 initWithFormat:@"%@%@%@", v5, @"|::|", v6];
  }

  else
  {
    v5 = [(GDFeatureKey *)self featureName];
    v7 = [v4 initWithFormat:@"%s%@%@", "<no subidentifier>", @"|::|", v5];
  }

  return v7;
}

- (NSString)string
{
  v3 = [(GDFeatureKey *)self subidentifierName];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(GDFeatureKey *)self viewName];
  v6 = [(GDFeatureKey *)self featureName];
  v7 = v6;
  if (v3)
  {
    v8 = [(GDFeatureKey *)self subidentifierName];
    v9 = [v4 initWithFormat:@"%@%@%@%@%@", v5, @"|::|", v7, @"|::|", v8];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@%@%@", v5, @"|::|", v6];
  }

  return v9;
}

- (GDFeatureKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_viewName);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:v7 withCoder:v4 expectNonNull:1 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_featureName);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:v13 withCoder:v4 expectNonNull:1 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = NSStringFromSelector(sel_subidentifierName);
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:v18 withCoder:v4 expectNonNull:0 errorDomain:@"GDFeatureKeyError" errorCode:9 logHandle:0];

      v20 = [v4 error];

      if (v20)
      {
        v10 = 0;
      }

      else
      {
        self = [(GDFeatureKey *)self initWithViewName:v8 featureName:v14 subidentifierName:v19];
        v10 = self;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  viewName = self->_viewName;
  v5 = NSStringFromSelector(sel_viewName);
  [v10 encodeObject:viewName forKey:v5];

  featureName = self->_featureName;
  v7 = NSStringFromSelector(sel_featureName);
  [v10 encodeObject:featureName forKey:v7];

  subidentifierName = self->_subidentifierName;
  if (subidentifierName)
  {
    v9 = NSStringFromSelector(sel_subidentifierName);
    [v10 encodeObject:subidentifierName forKey:v9];
  }
}

- (GDFeatureKey)initWithViewName:(id)a3 featureName:(id)a4 subidentifierName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GDFeatureKey;
  v12 = [(GDFeatureKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewName, a3);
    objc_storeStrong(&v13->_featureName, a4);
    objc_storeStrong(&v13->_subidentifierName, a5);
  }

  return v13;
}

@end