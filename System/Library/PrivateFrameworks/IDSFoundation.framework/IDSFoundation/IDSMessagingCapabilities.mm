@interface IDSMessagingCapabilities
- (IDSMessagingCapabilities)initWithCoder:(id)a3;
- (IDSMessagingCapabilities)initWithRequiredCapabilities:(id)a3 requiredMissingCapabilities:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSMessagingCapabilities

- (IDSMessagingCapabilities)initWithRequiredCapabilities:(id)a3 requiredMissingCapabilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSMessagingCapabilities;
  v9 = [(IDSMessagingCapabilities *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requiredCapabilities, a3);
    objc_storeStrong(&v10->_requiredMissingCapabilities, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSMessagingCapabilities *)self requiredCapabilities];
  v5 = [(IDSMessagingCapabilities *)self requiredMissingCapabilities];
  v6 = [v3 stringWithFormat:@"%p: Required capabilities: %@, Required missing capabilities: %@", self, v4, v5];

  return v6;
}

- (IDSMessagingCapabilities)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"requiredCaps"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"requiredMissingCaps"];

  v13 = [(IDSMessagingCapabilities *)self initWithRequiredCapabilities:v8 requiredMissingCapabilities:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSMessagingCapabilities *)self requiredCapabilities];
  [v4 encodeObject:v5 forKey:@"requiredCaps"];

  v6 = [(IDSMessagingCapabilities *)self requiredMissingCapabilities];
  [v4 encodeObject:v6 forKey:@"requiredMissingCaps"];
}

@end