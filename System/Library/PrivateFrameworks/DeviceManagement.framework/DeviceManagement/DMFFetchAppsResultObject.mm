@interface DMFFetchAppsResultObject
- (DMFFetchAppsResultObject)initWithAppsByBundleIdentifier:(id)identifier;
- (DMFFetchAppsResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchAppsResultObject

- (DMFFetchAppsResultObject)initWithAppsByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DMFFetchAppsResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    appsByBundleIdentifier = v5->_appsByBundleIdentifier;
    v5->_appsByBundleIdentifier = v6;
  }

  return v5;
}

- (DMFFetchAppsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFFetchAppsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"appsByBundleIdentifier"];
    appsByBundleIdentifier = v5->_appsByBundleIdentifier;
    v5->_appsByBundleIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchAppsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchAppsResultObject *)self appsByBundleIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"appsByBundleIdentifier"];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  appsByBundleIdentifier = [(DMFFetchAppsResultObject *)self appsByBundleIdentifier];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = appsByBundleIdentifier;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        [v3 appendFormat:@"\n%@: %@", v9, v10, v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"\n}"];
  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

@end