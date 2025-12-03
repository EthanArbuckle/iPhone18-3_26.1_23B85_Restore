@interface MRGroupSessionBannerRequest
- (MRGroupSessionBannerRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupSessionBannerRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", requestIdentifier];

  hostDisplayName = [(MRGroupSessionBannerRequest *)self hostDisplayName];
  [v6 appendFormat:@" hostDisplayName: %@", hostDisplayName];

  v9 = MRGroupSessionRouteTypeDescription(self->_routeType);
  [v6 appendFormat:@" routeType: %@", v9];

  bundleIdentifierAffinity = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", bundleIdentifierAffinity];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MRGroupSessionBannerRequest;
  coderCopy = coder;
  [(MRBaseBannerRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(MRGroupSessionBannerRequest *)self hostDisplayName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"hdn"];

  [coderCopy encodeInteger:-[MRGroupSessionBannerRequest routeType](self forKey:{"routeType"), @"rt"}];
}

- (MRGroupSessionBannerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MRGroupSessionBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hdn"];
    [(MRGroupSessionBannerRequest *)v5 setHostDisplayName:v6];

    -[MRGroupSessionBannerRequest setRouteType:](v5, "setRouteType:", [coderCopy decodeIntegerForKey:@"rt"]);
  }

  return v5;
}

@end