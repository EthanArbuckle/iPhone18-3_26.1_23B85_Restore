@interface DMFFetchConfigurationOrganizationsResultObject
- (DMFFetchConfigurationOrganizationsResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchConfigurationOrganizationsResultObject

- (id)description
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = @"organizationsByIdentifier";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFFetchConfigurationOrganizationsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFFetchConfigurationOrganizationsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"organizationsByIdentifier"];
    organizationsByIdentifier = v5->_organizationsByIdentifier;
    v5->_organizationsByIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchConfigurationOrganizationsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchConfigurationOrganizationsResultObject *)self organizationsByIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationsByIdentifier"];
}

@end