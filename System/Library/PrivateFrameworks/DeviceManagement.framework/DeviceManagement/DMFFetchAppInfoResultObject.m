@interface DMFFetchAppInfoResultObject
- (DMFFetchAppInfoResultObject)init;
- (DMFFetchAppInfoResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)addAttributes:(id)a3 forApp:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (void)addAttributes:(id)a3 forApp:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = v6;
  v9 = a4;
  v10 = [(DMFFetchAppInfoResultObject *)self managedApps];
  v13 = @"Attributes";
  v14[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v10 setValue:v11 forKey:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (DMFFetchAppInfoResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DMFFetchAppInfoResultObject;
  v5 = [(CATTaskResultObject *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"managedApps"];
    managedApps = v5->_managedApps;
    v5->_managedApps = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchAppInfoResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchAppInfoResultObject *)self managedApps:v6.receiver];
  [v4 encodeObject:v5 forKey:@"managedApps"];
}

- (id)description
{
  v2 = [(DMFFetchAppInfoResultObject *)self managedApps];
  v3 = [v2 description];

  return v3;
}

@end