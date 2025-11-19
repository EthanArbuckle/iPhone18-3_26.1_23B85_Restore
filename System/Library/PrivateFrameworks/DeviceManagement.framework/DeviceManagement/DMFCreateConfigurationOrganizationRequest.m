@interface DMFCreateConfigurationOrganizationRequest
- (DMFCreateConfigurationOrganizationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFCreateConfigurationOrganizationRequest

- (DMFCreateConfigurationOrganizationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DMFCreateConfigurationOrganizationRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationType"];
    organizationType = v5->_organizationType;
    v5->_organizationType = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"organizationDisplayName"];
    organizationDisplayName = v5->_organizationDisplayName;
    v5->_organizationDisplayName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFCreateConfigurationOrganizationRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFCreateConfigurationOrganizationRequest *)self organizationType:v8.receiver];
  [v4 encodeObject:v5 forKey:@"organizationType"];

  v6 = [(DMFCreateConfigurationOrganizationRequest *)self organizationIdentifier];
  [v4 encodeObject:v6 forKey:@"organizationIdentifier"];

  v7 = [(DMFCreateConfigurationOrganizationRequest *)self organizationDisplayName];
  [v4 encodeObject:v7 forKey:@"organizationDisplayName"];
}

@end