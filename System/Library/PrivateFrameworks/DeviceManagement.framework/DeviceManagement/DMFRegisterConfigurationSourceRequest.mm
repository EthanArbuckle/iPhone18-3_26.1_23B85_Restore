@interface DMFRegisterConfigurationSourceRequest
- (DMFRegisterConfigurationSourceRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRegisterConfigurationSourceRequest

- (DMFRegisterConfigurationSourceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DMFRegisterConfigurationSourceRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"configurationSourceName"];
    configurationSourceName = v5->_configurationSourceName;
    v5->_configurationSourceName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"machServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"listenerEndpoint"];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"reportingRequirements"];
    reportingRequirements = v5->_reportingRequirements;
    v5->_reportingRequirements = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DMFRegisterConfigurationSourceRequest;
  v4 = a3;
  [(CATTaskRequest *)&v10 encodeWithCoder:v4];
  v5 = [(DMFRegisterConfigurationSourceRequest *)self configurationSourceName:v10.receiver];
  [v4 encodeObject:v5 forKey:@"configurationSourceName"];

  v6 = [(DMFRegisterConfigurationSourceRequest *)self organizationIdentifier];
  [v4 encodeObject:v6 forKey:@"organizationIdentifier"];

  v7 = [(DMFRegisterConfigurationSourceRequest *)self machServiceName];
  [v4 encodeObject:v7 forKey:@"machServiceName"];

  v8 = [(DMFRegisterConfigurationSourceRequest *)self listenerEndpoint];
  [v4 encodeObject:v8 forKey:@"listenerEndpoint"];

  v9 = [(DMFRegisterConfigurationSourceRequest *)self reportingRequirements];
  [v4 encodeObject:v9 forKey:@"reportingRequirements"];
}

@end