@interface DMFFetchAppsRequest
- (DMFFetchAppsRequest)init;
- (DMFFetchAppsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchAppsRequest

- (DMFFetchAppsRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFFetchAppsRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_type = 3;
  }

  return result;
}

- (DMFFetchAppsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = DMFFetchAppsRequest;
  v5 = [(CATTaskRequest *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deleteFeedback"];
    v5->_deleteFeedback = [v12 BOOLValue];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedAppsOnly"];
    v5->_managedAppsOnly = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advanceTransientStates"];
    v5->_advanceTransientStates = [v20 BOOLValue];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = DMFFetchAppsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v13 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchAppsRequest type](self, "type", v13.receiver, v13.super_class)}];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(DMFFetchAppsRequest *)self bundleIdentifiers];
  [v4 encodeObject:v6 forKey:@"bundleIdentifiers"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest deleteFeedback](self, "deleteFeedback")}];
  [v4 encodeObject:v7 forKey:@"deleteFeedback"];

  v8 = [(DMFFetchAppsRequest *)self storeItemIdentifier];
  [v4 encodeObject:v8 forKey:@"storeItemIdentifier"];

  v9 = [(DMFFetchAppsRequest *)self manifestURL];
  [v4 encodeObject:v9 forKey:@"manifestURL"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest managedAppsOnly](self, "managedAppsOnly")}];
  [v4 encodeObject:v10 forKey:@"managedAppsOnly"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest advanceTransientStates](self, "advanceTransientStates")}];
  [v4 encodeObject:v11 forKey:@"advanceTransientStates"];

  v12 = [(DMFFetchAppsRequest *)self propertyKeys];
  [v4 encodeObject:v12 forKey:@"propertyKeys"];
}

@end