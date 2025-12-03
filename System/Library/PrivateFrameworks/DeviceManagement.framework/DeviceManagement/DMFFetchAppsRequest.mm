@interface DMFFetchAppsRequest
- (DMFFetchAppsRequest)init;
- (DMFFetchAppsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (DMFFetchAppsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = DMFFetchAppsRequest;
  v5 = [(CATTaskRequest *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deleteFeedback"];
    v5->_deleteFeedback = [v12 BOOLValue];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedAppsOnly"];
    v5->_managedAppsOnly = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advanceTransientStates"];
    v5->_advanceTransientStates = [v20 BOOLValue];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = DMFFetchAppsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v13 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchAppsRequest type](self, "type", v13.receiver, v13.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"type"];

  bundleIdentifiers = [(DMFFetchAppsRequest *)self bundleIdentifiers];
  [coderCopy encodeObject:bundleIdentifiers forKey:@"bundleIdentifiers"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest deleteFeedback](self, "deleteFeedback")}];
  [coderCopy encodeObject:v7 forKey:@"deleteFeedback"];

  storeItemIdentifier = [(DMFFetchAppsRequest *)self storeItemIdentifier];
  [coderCopy encodeObject:storeItemIdentifier forKey:@"storeItemIdentifier"];

  manifestURL = [(DMFFetchAppsRequest *)self manifestURL];
  [coderCopy encodeObject:manifestURL forKey:@"manifestURL"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest managedAppsOnly](self, "managedAppsOnly")}];
  [coderCopy encodeObject:v10 forKey:@"managedAppsOnly"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchAppsRequest advanceTransientStates](self, "advanceTransientStates")}];
  [coderCopy encodeObject:v11 forKey:@"advanceTransientStates"];

  propertyKeys = [(DMFFetchAppsRequest *)self propertyKeys];
  [coderCopy encodeObject:propertyKeys forKey:@"propertyKeys"];
}

@end