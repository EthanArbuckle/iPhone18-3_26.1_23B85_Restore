@interface DMFDDMStartManagingAppResultObject
- (DMFDDMStartManagingAppResultObject)initWithBundleIdentifier:(id)identifier state:(unint64_t)state;
- (DMFDDMStartManagingAppResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFDDMStartManagingAppResultObject

- (DMFDDMStartManagingAppResultObject)initWithBundleIdentifier:(id)identifier state:(unint64_t)state
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = DMFDDMStartManagingAppResultObject;
  v7 = [(CATTaskResultObject *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_state = state;
  }

  return v7;
}

- (DMFDDMStartManagingAppResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFDDMStartManagingAppResultObject;
  v5 = [(CATTaskResultObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFDDMStartManagingAppResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFDDMStartManagingAppResultObject *)self bundleIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFDDMStartManagingAppResultObject state](self, "state")}];
  [coderCopy encodeObject:v6 forKey:@"state"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {", objc_opt_class(), self];
  bundleIdentifier = [(DMFDDMStartManagingAppResultObject *)self bundleIdentifier];
  [v3 appendFormat:@"\n\tBundle Identifier : %@", bundleIdentifier];

  v5 = [DMFAppManagementInformation stringForState:[(DMFDDMStartManagingAppResultObject *)self state]];
  [v3 appendFormat:@"\n\tState             : %@", v5];

  [v3 appendString:@"\n}>"];
  v6 = [v3 copy];

  return v6;
}

@end