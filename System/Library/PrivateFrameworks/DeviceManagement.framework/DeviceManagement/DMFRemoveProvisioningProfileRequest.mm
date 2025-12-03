@interface DMFRemoveProvisioningProfileRequest
- (DMFRemoveProvisioningProfileRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRemoveProvisioningProfileRequest

- (DMFRemoveProvisioningProfileRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFRemoveProvisioningProfileRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFRemoveProvisioningProfileRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFRemoveProvisioningProfileRequest *)self profileIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"profileIdentifier"];

  managingProfileIdentifier = [(DMFRemoveProvisioningProfileRequest *)self managingProfileIdentifier];
  [coderCopy encodeObject:managingProfileIdentifier forKey:@"managingProfileIdentifier"];
}

@end