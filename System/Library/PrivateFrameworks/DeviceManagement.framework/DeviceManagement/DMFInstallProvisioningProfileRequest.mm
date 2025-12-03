@interface DMFInstallProvisioningProfileRequest
- (DMFInstallProvisioningProfileRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFInstallProvisioningProfileRequest

- (DMFInstallProvisioningProfileRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFInstallProvisioningProfileRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFInstallProvisioningProfileRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFInstallProvisioningProfileRequest *)self managingProfileIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"managingProfileIdentifier"];

  profileData = [(DMFInstallProvisioningProfileRequest *)self profileData];
  [coderCopy encodeObject:profileData forKey:@"profileData"];
}

@end