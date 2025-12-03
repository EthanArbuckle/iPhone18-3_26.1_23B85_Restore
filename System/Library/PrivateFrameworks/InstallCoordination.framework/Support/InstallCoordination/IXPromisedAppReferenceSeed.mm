@interface IXPromisedAppReferenceSeed
- (IXPromisedAppReferenceSeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXPromisedAppReferenceSeed

- (IXPromisedAppReferenceSeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IXPromisedAppReferenceSeed;
  v5 = [(IXOwnedDataPromiseSeed *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
    v5->_installationDomain = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = IXPromisedAppReferenceSeed;
  coderCopy = coder;
  [(IXOwnedDataPromiseSeed *)&v7 encodeWithCoder:coderCopy];
  v5 = [NSNumber numberWithUnsignedInteger:[(IXPromisedAppReferenceSeed *)self installationDomain:v7.receiver]];
  [coderCopy encodeObject:v5 forKey:@"installationDomain"];

  identity = [(IXPromisedAppReferenceSeed *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IXPromisedAppReferenceSeed;
  v4 = [(IXOwnedDataPromiseSeed *)&v8 copyWithZone:zone];
  [v4 setInstallationDomain:{-[IXPromisedAppReferenceSeed installationDomain](self, "installationDomain")}];
  identity = [(IXPromisedAppReferenceSeed *)self identity];
  v6 = [identity copy];
  [v4 setIdentity:v6];

  return v4;
}

@end