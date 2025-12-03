@interface DMFConfigurationSource
- (DMFConfigurationSource)init;
- (DMFConfigurationSource)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFConfigurationSource

- (DMFConfigurationSource)init
{
  v3.receiver = self;
  v3.super_class = DMFConfigurationSource;
  return [(DMFConfigurationSource *)&v3 init];
}

- (id)description
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"displayName";
  v7[2] = @"machServiceName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)debugDescription
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"displayName";
  v7[2] = @"machServiceName";
  v7[3] = @"reportingRequirements";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFConfigurationSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMFConfigurationSource;
  v5 = [(DMFConfigurationSource *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"machServiceName"];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"reportingRequirements"];
    reportingRequirements = v5->_reportingRequirements;
    v5->_reportingRequirements = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DMFConfigurationSource *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(DMFConfigurationSource *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  organizationIdentifier = [(DMFConfigurationSource *)self organizationIdentifier];
  [coderCopy encodeObject:organizationIdentifier forKey:@"organizationIdentifier"];

  machServiceName = [(DMFConfigurationSource *)self machServiceName];
  [coderCopy encodeObject:machServiceName forKey:@"machServiceName"];

  reportingRequirements = [(DMFConfigurationSource *)self reportingRequirements];
  [coderCopy encodeObject:reportingRequirements forKey:@"reportingRequirements"];
}

@end