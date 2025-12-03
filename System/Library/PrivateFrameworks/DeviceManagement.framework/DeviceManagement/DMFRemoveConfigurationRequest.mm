@interface DMFRemoveConfigurationRequest
- (DMFRemoveConfigurationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRemoveConfigurationRequest

- (DMFRemoveConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMFRemoveConfigurationRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v21 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v21 setWithObjects:{v20, v19, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"profile"];
    profile = v5->_profile;
    v5->_profile = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFRemoveConfigurationRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFRemoveConfigurationRequest type](self, "type", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"type"];

  profile = [(DMFRemoveConfigurationRequest *)self profile];
  [coderCopy encodeObject:profile forKey:@"profile"];
}

@end