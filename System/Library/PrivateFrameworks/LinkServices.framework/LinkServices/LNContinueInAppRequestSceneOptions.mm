@interface LNContinueInAppRequestSceneOptions
- (LNContinueInAppRequestSceneOptions)initWithActions:(id)actions supportsNotices:(BOOL)notices targetContentIdentifier:(id)identifier;
- (LNContinueInAppRequestSceneOptions)initWithCoder:(id)coder;
- (id)fbsOpenApplicationOptionsWithActionExecutorOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNContinueInAppRequestSceneOptions

- (LNContinueInAppRequestSceneOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = [coderCopy decodeBoolForKey:@"supportsNotices"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];

  if (v8)
  {
    self = [(LNContinueInAppRequestSceneOptions *)self initWithActions:v8 supportsNotices:v9 targetContentIdentifier:v10];
    selfCopy = self;
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
  actions = [(LNContinueInAppRequestSceneOptions *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  [coderCopy encodeBool:-[LNContinueInAppRequestSceneOptions supportsNotices](self forKey:{"supportsNotices"), @"supportsNotices"}];
  targetContentIdentifier = [(LNContinueInAppRequestSceneOptions *)self targetContentIdentifier];
  [coderCopy encodeObject:targetContentIdentifier forKey:@"targetContentIdentifier"];
}

- (id)fbsOpenApplicationOptionsWithActionExecutorOptions:(id)options
{
  v4 = objc_opt_new();
  actions = [(LNContinueInAppRequestSceneOptions *)self actions];
  [v4 setObject:actions forKeyedSubscript:*MEMORY[0x1E699F8D0]];

  targetContentIdentifier = [(LNContinueInAppRequestSceneOptions *)self targetContentIdentifier];
  [v4 setValue:targetContentIdentifier forKey:@"__TargetContentIdentifier"];

  return v4;
}

- (LNContinueInAppRequestSceneOptions)initWithActions:(id)actions supportsNotices:(BOOL)notices targetContentIdentifier:(id)identifier
{
  actionsCopy = actions;
  identifierCopy = identifier;
  if (!actionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNContinueInAppRequest.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v17.receiver = self;
  v17.super_class = LNContinueInAppRequestSceneOptions;
  v12 = [(LNContinueInAppRequestSceneOptions *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actions, actions);
    v13->_supportsNotices = notices;
    objc_storeStrong(&v13->_targetContentIdentifier, identifier);
    v14 = v13;
  }

  return v13;
}

@end