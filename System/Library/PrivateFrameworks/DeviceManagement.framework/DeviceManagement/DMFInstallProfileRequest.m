@interface DMFInstallProfileRequest
- (DMFInstallProfileRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallProfileRequest

- (DMFInstallProfileRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DMFInstallProfileRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    v5->_style = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v7 unsignedIntegerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"personaID"];
    personaID = v5->_personaID;
    v5->_personaID = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DMFInstallProfileRequest;
  v4 = a3;
  [(CATTaskRequest *)&v10 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallProfileRequest style](self, "style", v10.receiver, v10.super_class)}];
  [v4 encodeObject:v5 forKey:@"style"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallProfileRequest type](self, "type")}];
  [v4 encodeObject:v6 forKey:@"type"];

  v7 = [(DMFInstallProfileRequest *)self managingProfileIdentifier];
  [v4 encodeObject:v7 forKey:@"managingProfileIdentifier"];

  v8 = [(DMFInstallProfileRequest *)self profileData];
  [v4 encodeObject:v8 forKey:@"profileData"];

  v9 = [(DMFInstallProfileRequest *)self personaID];
  [v4 encodeObject:v9 forKey:@"personaID"];
}

@end