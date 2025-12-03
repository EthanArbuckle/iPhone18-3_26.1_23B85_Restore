@interface DMFCreateConfigurationOrganizationRequest
- (DMFCreateConfigurationOrganizationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFCreateConfigurationOrganizationRequest

- (DMFCreateConfigurationOrganizationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DMFCreateConfigurationOrganizationRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationType"];
    organizationType = v5->_organizationType;
    v5->_organizationType = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"organizationDisplayName"];
    organizationDisplayName = v5->_organizationDisplayName;
    v5->_organizationDisplayName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFCreateConfigurationOrganizationRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(DMFCreateConfigurationOrganizationRequest *)self organizationType:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationType"];

  organizationIdentifier = [(DMFCreateConfigurationOrganizationRequest *)self organizationIdentifier];
  [coderCopy encodeObject:organizationIdentifier forKey:@"organizationIdentifier"];

  organizationDisplayName = [(DMFCreateConfigurationOrganizationRequest *)self organizationDisplayName];
  [coderCopy encodeObject:organizationDisplayName forKey:@"organizationDisplayName"];
}

@end