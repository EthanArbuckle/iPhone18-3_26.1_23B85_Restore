@interface IDSMessagingCapabilities
- (IDSMessagingCapabilities)initWithCoder:(id)coder;
- (IDSMessagingCapabilities)initWithRequiredCapabilities:(id)capabilities requiredMissingCapabilities:(id)missingCapabilities;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSMessagingCapabilities

- (IDSMessagingCapabilities)initWithRequiredCapabilities:(id)capabilities requiredMissingCapabilities:(id)missingCapabilities
{
  capabilitiesCopy = capabilities;
  missingCapabilitiesCopy = missingCapabilities;
  v12.receiver = self;
  v12.super_class = IDSMessagingCapabilities;
  v9 = [(IDSMessagingCapabilities *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requiredCapabilities, capabilities);
    objc_storeStrong(&v10->_requiredMissingCapabilities, missingCapabilities);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  requiredCapabilities = [(IDSMessagingCapabilities *)self requiredCapabilities];
  requiredMissingCapabilities = [(IDSMessagingCapabilities *)self requiredMissingCapabilities];
  v6 = [v3 stringWithFormat:@"%p: Required capabilities: %@, Required missing capabilities: %@", self, requiredCapabilities, requiredMissingCapabilities];

  return v6;
}

- (IDSMessagingCapabilities)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"requiredCaps"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"requiredMissingCaps"];

  v13 = [(IDSMessagingCapabilities *)self initWithRequiredCapabilities:v8 requiredMissingCapabilities:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requiredCapabilities = [(IDSMessagingCapabilities *)self requiredCapabilities];
  [coderCopy encodeObject:requiredCapabilities forKey:@"requiredCaps"];

  requiredMissingCapabilities = [(IDSMessagingCapabilities *)self requiredMissingCapabilities];
  [coderCopy encodeObject:requiredMissingCapabilities forKey:@"requiredMissingCaps"];
}

@end