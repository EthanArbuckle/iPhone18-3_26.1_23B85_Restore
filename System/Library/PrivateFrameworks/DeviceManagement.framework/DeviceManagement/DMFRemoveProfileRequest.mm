@interface DMFRemoveProfileRequest
- (DMFRemoveProfileRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRemoveProfileRequest

- (DMFRemoveProfileRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFRemoveProfileRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFRemoveProfileRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFRemoveProfileRequest type](self, "type", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"type"];

  v6 = [(DMFRemoveProfileRequest *)self profileIdentifier];
  [v4 encodeObject:v6 forKey:@"profileIdentifier"];
}

@end