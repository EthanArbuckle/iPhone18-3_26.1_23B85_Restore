@interface CTCarrierSpaceCapabilities
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpaceCapabilities

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" supportsServices=%d", -[CTCarrierSpaceCapabilities supportsServices](self, "supportsServices")];
  [v3 appendFormat:@" supportsUsage=%d", -[CTCarrierSpaceCapabilities supportsUsage](self, "supportsUsage")];
  [v3 appendFormat:@" supportsPlans=%d", -[CTCarrierSpaceCapabilities supportsPlans](self, "supportsPlans")];
  [v3 appendFormat:@" supportsApplications=%d", -[CTCarrierSpaceCapabilities supportsApplications](self, "supportsApplications")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTCarrierSpaceCapabilities *)self supportsServices], v5 == [(CTCarrierSpaceCapabilities *)equalCopy supportsServices]) && (v6 = [(CTCarrierSpaceCapabilities *)self supportsUsage], v6 == [(CTCarrierSpaceCapabilities *)equalCopy supportsUsage]) && (v7 = [(CTCarrierSpaceCapabilities *)self supportsPlans], v7 == [(CTCarrierSpaceCapabilities *)equalCopy supportsPlans]))
    {
      supportsApplications = [(CTCarrierSpaceCapabilities *)self supportsApplications];
      v8 = supportsApplications ^ [(CTCarrierSpaceCapabilities *)equalCopy supportsApplications]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSupportsServices:{-[CTCarrierSpaceCapabilities supportsServices](self, "supportsServices")}];
  [v4 setSupportsUsage:{-[CTCarrierSpaceCapabilities supportsUsage](self, "supportsUsage")}];
  [v4 setSupportsPlans:{-[CTCarrierSpaceCapabilities supportsPlans](self, "supportsPlans")}];
  [v4 setSupportsApplications:{-[CTCarrierSpaceCapabilities supportsApplications](self, "supportsApplications")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  supportsServices = self->_supportsServices;
  coderCopy = coder;
  [coderCopy encodeBool:supportsServices forKey:@"services"];
  [coderCopy encodeBool:self->_supportsUsage forKey:@"usage"];
  [coderCopy encodeBool:self->_supportsPlans forKey:@"plans"];
  [coderCopy encodeBool:self->_supportsApplications forKey:@"applications"];
}

- (CTCarrierSpaceCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceCapabilities;
  v5 = [(CTCarrierSpaceCapabilities *)&v7 init];
  if (v5)
  {
    v5->_supportsServices = [coderCopy decodeBoolForKey:@"services"];
    v5->_supportsUsage = [coderCopy decodeBoolForKey:@"usage"];
    v5->_supportsPlans = [coderCopy decodeBoolForKey:@"plans"];
    v5->_supportsApplications = [coderCopy decodeBoolForKey:@"applications"];
  }

  return v5;
}

@end