@interface LNContinueInAppRequestSceneOptions
- (LNContinueInAppRequestSceneOptions)initWithActions:(id)a3 supportsNotices:(BOOL)a4 targetContentIdentifier:(id)a5;
- (LNContinueInAppRequestSceneOptions)initWithCoder:(id)a3;
- (id)fbsOpenApplicationOptionsWithActionExecutorOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNContinueInAppRequestSceneOptions

- (LNContinueInAppRequestSceneOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = [v5 decodeBoolForKey:@"supportsNotices"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];

  if (v8)
  {
    self = [(LNContinueInAppRequestSceneOptions *)self initWithActions:v8 supportsNotices:v9 targetContentIdentifier:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNContinueInAppRequestSceneOptions *)self actions];
  [v4 encodeObject:v5 forKey:@"actions"];

  [v4 encodeBool:-[LNContinueInAppRequestSceneOptions supportsNotices](self forKey:{"supportsNotices"), @"supportsNotices"}];
  v6 = [(LNContinueInAppRequestSceneOptions *)self targetContentIdentifier];
  [v4 encodeObject:v6 forKey:@"targetContentIdentifier"];
}

- (id)fbsOpenApplicationOptionsWithActionExecutorOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(LNContinueInAppRequestSceneOptions *)self actions];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E699F8D0]];

  v6 = [(LNContinueInAppRequestSceneOptions *)self targetContentIdentifier];
  [v4 setValue:v6 forKey:@"__TargetContentIdentifier"];

  return v4;
}

- (LNContinueInAppRequestSceneOptions)initWithActions:(id)a3 supportsNotices:(BOOL)a4 targetContentIdentifier:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNContinueInAppRequest.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v17.receiver = self;
  v17.super_class = LNContinueInAppRequestSceneOptions;
  v12 = [(LNContinueInAppRequestSceneOptions *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actions, a3);
    v13->_supportsNotices = a4;
    objc_storeStrong(&v13->_targetContentIdentifier, a5);
    v14 = v13;
  }

  return v13;
}

@end