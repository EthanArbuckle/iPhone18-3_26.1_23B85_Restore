@interface DMFMDMv1InstallAppResultObject
- (DMFMDMv1InstallAppResultObject)initWithBundleIdentifier:(id)a3 state:(unint64_t)a4;
- (DMFMDMv1InstallAppResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFMDMv1InstallAppResultObject

- (DMFMDMv1InstallAppResultObject)initWithBundleIdentifier:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DMFMDMv1InstallAppResultObject;
  v7 = [(CATTaskResultObject *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v7->_state = a4;
  }

  return v7;
}

- (DMFMDMv1InstallAppResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFMDMv1InstallAppResultObject;
  v5 = [(CATTaskResultObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFMDMv1InstallAppResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(DMFMDMv1InstallAppResultObject *)self bundleIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFMDMv1InstallAppResultObject state](self, "state")}];
  [v4 encodeObject:v6 forKey:@"state"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {", objc_opt_class(), self];
  v4 = [(DMFMDMv1InstallAppResultObject *)self bundleIdentifier];
  [v3 appendFormat:@"\n\tBundle Identifier : %@", v4];

  v5 = [DMFAppManagementInformation stringForState:[(DMFMDMv1InstallAppResultObject *)self state]];
  [v3 appendFormat:@"\n\tState             : %@", v5];

  [v3 appendString:@"\n}>"];
  v6 = [v3 copy];

  return v6;
}

@end