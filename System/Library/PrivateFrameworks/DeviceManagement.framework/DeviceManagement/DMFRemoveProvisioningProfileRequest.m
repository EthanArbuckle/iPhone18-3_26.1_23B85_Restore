@interface DMFRemoveProvisioningProfileRequest
- (DMFRemoveProvisioningProfileRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRemoveProvisioningProfileRequest

- (DMFRemoveProvisioningProfileRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFRemoveProvisioningProfileRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFRemoveProvisioningProfileRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFRemoveProvisioningProfileRequest *)self profileIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"profileIdentifier"];

  v6 = [(DMFRemoveProvisioningProfileRequest *)self managingProfileIdentifier];
  [v4 encodeObject:v6 forKey:@"managingProfileIdentifier"];
}

@end