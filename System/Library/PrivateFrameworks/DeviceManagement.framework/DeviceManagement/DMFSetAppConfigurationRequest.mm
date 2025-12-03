@interface DMFSetAppConfigurationRequest
- (DMFSetAppConfigurationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetAppConfigurationRequest

- (DMFSetAppConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = DMFSetAppConfigurationRequest;
  v5 = [(DMFAppRequest *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v20 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFSetAppConfigurationRequest;
  coderCopy = coder;
  [(DMFAppRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFSetAppConfigurationRequest *)self configuration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"configuration"];
}

@end