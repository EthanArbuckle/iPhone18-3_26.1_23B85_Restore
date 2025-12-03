@interface DMFFetchAppInfoResultObject
- (DMFFetchAppInfoResultObject)init;
- (DMFFetchAppInfoResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)addAttributes:(id)attributes forApp:(id)app;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchAppInfoResultObject

- (DMFFetchAppInfoResultObject)init
{
  v6.receiver = self;
  v6.super_class = DMFFetchAppInfoResultObject;
  v2 = [(CATTaskResultObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    managedApps = v2->_managedApps;
    v2->_managedApps = v3;
  }

  return v2;
}

- (void)addAttributes:(id)attributes forApp:(id)app
{
  v14[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (attributesCopy)
  {
    v7 = attributesCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = attributesCopy;
  appCopy = app;
  managedApps = [(DMFFetchAppInfoResultObject *)self managedApps];
  v13 = @"Attributes";
  v14[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [managedApps setValue:v11 forKey:appCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (DMFFetchAppInfoResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DMFFetchAppInfoResultObject;
  v5 = [(CATTaskResultObject *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"managedApps"];
    managedApps = v5->_managedApps;
    v5->_managedApps = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchAppInfoResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchAppInfoResultObject *)self managedApps:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"managedApps"];
}

- (id)description
{
  managedApps = [(DMFFetchAppInfoResultObject *)self managedApps];
  v3 = [managedApps description];

  return v3;
}

@end