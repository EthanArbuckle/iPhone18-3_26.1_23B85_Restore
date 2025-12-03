@interface DMFInstallProfileRequest
- (DMFInstallProfileRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFInstallProfileRequest

- (DMFInstallProfileRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DMFInstallProfileRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    v5->_style = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v7 unsignedIntegerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"personaID"];
    personaID = v5->_personaID;
    v5->_personaID = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DMFInstallProfileRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallProfileRequest style](self, "style", v10.receiver, v10.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"style"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallProfileRequest type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"type"];

  managingProfileIdentifier = [(DMFInstallProfileRequest *)self managingProfileIdentifier];
  [coderCopy encodeObject:managingProfileIdentifier forKey:@"managingProfileIdentifier"];

  profileData = [(DMFInstallProfileRequest *)self profileData];
  [coderCopy encodeObject:profileData forKey:@"profileData"];

  personaID = [(DMFInstallProfileRequest *)self personaID];
  [coderCopy encodeObject:personaID forKey:@"personaID"];
}

@end