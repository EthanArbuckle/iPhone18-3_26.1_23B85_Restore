@interface DMFInstallProvisioningProfileRequest
- (DMFInstallProvisioningProfileRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallProvisioningProfileRequest

- (DMFInstallProvisioningProfileRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFInstallProvisioningProfileRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFInstallProvisioningProfileRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFInstallProvisioningProfileRequest *)self managingProfileIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"managingProfileIdentifier"];

  v6 = [(DMFInstallProvisioningProfileRequest *)self profileData];
  [v4 encodeObject:v6 forKey:@"profileData"];
}

@end