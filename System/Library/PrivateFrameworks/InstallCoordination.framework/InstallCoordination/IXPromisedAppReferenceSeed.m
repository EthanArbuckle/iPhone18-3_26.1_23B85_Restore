@interface IXPromisedAppReferenceSeed
- (IXPromisedAppReferenceSeed)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXPromisedAppReferenceSeed

- (IXPromisedAppReferenceSeed)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IXPromisedAppReferenceSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
    v5->_installationDomain = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = IXPromisedAppReferenceSeed;
  v4 = a3;
  [(IXOwnedDataPromiseSeed *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXPromisedAppReferenceSeed installationDomain](self, "installationDomain", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"installationDomain"];

  v6 = [(IXPromisedAppReferenceSeed *)self identity];
  [v4 encodeObject:v6 forKey:@"identity"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IXPromisedAppReferenceSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v8 copyWithZone:a3];
  [v4 setInstallationDomain:{-[IXPromisedAppReferenceSeed installationDomain](self, "installationDomain")}];
  v5 = [(IXPromisedAppReferenceSeed *)self identity];
  v6 = [v5 copy];
  [v4 setIdentity:v6];

  return v4;
}

@end