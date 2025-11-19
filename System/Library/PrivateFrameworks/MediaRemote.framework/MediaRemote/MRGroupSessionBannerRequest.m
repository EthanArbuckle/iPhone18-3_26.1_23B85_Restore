@interface MRGroupSessionBannerRequest
- (MRGroupSessionBannerRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupSessionBannerRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", v7];

  v8 = [(MRGroupSessionBannerRequest *)self hostDisplayName];
  [v6 appendFormat:@" hostDisplayName: %@", v8];

  v9 = MRGroupSessionRouteTypeDescription(self->_routeType);
  [v6 appendFormat:@" routeType: %@", v9];

  v10 = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", v10];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRGroupSessionBannerRequest;
  v4 = a3;
  [(MRBaseBannerRequest *)&v6 encodeWithCoder:v4];
  v5 = [(MRGroupSessionBannerRequest *)self hostDisplayName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"hdn"];

  [v4 encodeInteger:-[MRGroupSessionBannerRequest routeType](self forKey:{"routeType"), @"rt"}];
}

- (MRGroupSessionBannerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRGroupSessionBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hdn"];
    [(MRGroupSessionBannerRequest *)v5 setHostDisplayName:v6];

    -[MRGroupSessionBannerRequest setRouteType:](v5, "setRouteType:", [v4 decodeIntegerForKey:@"rt"]);
  }

  return v5;
}

@end