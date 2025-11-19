@interface DMFInstallConfigurationRequest
- (DMFInstallConfigurationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallConfigurationRequest

- (DMFInstallConfigurationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DMFInstallConfigurationRequest;
  v5 = [(CATTaskRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"managingProfileIdentifier"];
    managingProfileIdentifier = v5->_managingProfileIdentifier;
    v5->_managingProfileIdentifier = v8;

    v24 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v24 setWithObjects:{v23, v22, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"profile"];
    profile = v5->_profile;
    v5->_profile = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFInstallConfigurationRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallConfigurationRequest type](self, "type", v8.receiver, v8.super_class)}];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(DMFInstallConfigurationRequest *)self managingProfileIdentifier];
  [v4 encodeObject:v6 forKey:@"managingProfileIdentifier"];

  v7 = [(DMFInstallConfigurationRequest *)self profile];
  [v4 encodeObject:v7 forKey:@"profile"];
}

@end