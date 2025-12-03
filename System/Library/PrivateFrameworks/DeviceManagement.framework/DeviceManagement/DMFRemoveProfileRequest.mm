@interface DMFRemoveProfileRequest
- (DMFRemoveProfileRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRemoveProfileRequest

- (DMFRemoveProfileRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFRemoveProfileRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"profileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFRemoveProfileRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFRemoveProfileRequest type](self, "type", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"type"];

  profileIdentifier = [(DMFRemoveProfileRequest *)self profileIdentifier];
  [coderCopy encodeObject:profileIdentifier forKey:@"profileIdentifier"];
}

@end