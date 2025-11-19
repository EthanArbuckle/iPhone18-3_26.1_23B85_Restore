@interface DMFFetchApplicationsRequest
- (DMFFetchApplicationsRequest)init;
- (DMFFetchApplicationsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchApplicationsRequest

- (DMFFetchApplicationsRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFFetchApplicationsRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_typeFilter = 0;
    result->_stateFilter = 0;
  }

  return result;
}

- (DMFFetchApplicationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DMFFetchApplicationsRequest;
  v5 = [(CATTaskRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeFilter"];
    v5->_typeFilter = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateFilter"];
    v5->_stateFilter = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"excludeIcon"];
    v5->_excludeIcon = [v13 BOOLValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"excludeUnmanagedApps"];
    v5->_excludeUnmanagedApps = [v14 BOOLValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deleteFeedback"];
    v5->_deleteFeedback = [v15 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = DMFFetchApplicationsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v11 encodeWithCoder:v4];
  v5 = [(DMFFetchApplicationsRequest *)self bundleIdentifiers:v11.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifiers"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchApplicationsRequest typeFilter](self, "typeFilter")}];
  [v4 encodeObject:v6 forKey:@"typeFilter"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchApplicationsRequest stateFilter](self, "stateFilter")}];
  [v4 encodeObject:v7 forKey:@"stateFilter"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest excludeIcon](self, "excludeIcon")}];
  [v4 encodeObject:v8 forKey:@"excludeIcon"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest excludeUnmanagedApps](self, "excludeUnmanagedApps")}];
  [v4 encodeObject:v9 forKey:@"excludeUnmanagedApps"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchApplicationsRequest deleteFeedback](self, "deleteFeedback")}];
  [v4 encodeObject:v10 forKey:@"deleteFeedback"];
}

@end