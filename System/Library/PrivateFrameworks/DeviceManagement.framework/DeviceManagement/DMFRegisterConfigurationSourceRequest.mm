@interface DMFRegisterConfigurationSourceRequest
- (DMFRegisterConfigurationSourceRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRegisterConfigurationSourceRequest

- (DMFRegisterConfigurationSourceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMFRegisterConfigurationSourceRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"configurationSourceName"];
    configurationSourceName = v5->_configurationSourceName;
    v5->_configurationSourceName = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"machServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"listenerEndpoint"];
    listenerEndpoint = v5->_listenerEndpoint;
    v5->_listenerEndpoint = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"reportingRequirements"];
    reportingRequirements = v5->_reportingRequirements;
    v5->_reportingRequirements = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DMFRegisterConfigurationSourceRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(DMFRegisterConfigurationSourceRequest *)self configurationSourceName:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"configurationSourceName"];

  organizationIdentifier = [(DMFRegisterConfigurationSourceRequest *)self organizationIdentifier];
  [coderCopy encodeObject:organizationIdentifier forKey:@"organizationIdentifier"];

  machServiceName = [(DMFRegisterConfigurationSourceRequest *)self machServiceName];
  [coderCopy encodeObject:machServiceName forKey:@"machServiceName"];

  listenerEndpoint = [(DMFRegisterConfigurationSourceRequest *)self listenerEndpoint];
  [coderCopy encodeObject:listenerEndpoint forKey:@"listenerEndpoint"];

  reportingRequirements = [(DMFRegisterConfigurationSourceRequest *)self reportingRequirements];
  [coderCopy encodeObject:reportingRequirements forKey:@"reportingRequirements"];
}

@end