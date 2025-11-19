@interface MRRouteBannerRequest
+ (id)requestWithStaticRequest:(id)a3;
- (MRRouteBannerRequest)initWithCoder:(id)a3;
- (MRRouteBannerRequest)initWithRouteIdentifier:(id)a3 staticRequest:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRRouteBannerRequest

+ (id)requestWithStaticRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 routeIdentifier];
  v7 = [v5 initWithRouteIdentifier:v6 staticRequest:v4];

  return v7;
}

- (MRRouteBannerRequest)initWithRouteIdentifier:(id)a3 staticRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRRouteBannerRequest;
  v8 = [(MRBaseBannerRequest *)&v11 initWithBundleIdentifierAffinity:0];
  v9 = v8;
  if (v8)
  {
    [(MRRouteBannerRequest *)v8 setRouteIdentifier:v6];
    [(MRRouteBannerRequest *)v9 setStaticRequest:v7];
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", v7];

  v8 = [(MRRouteBannerRequest *)self routeIdentifier];
  [v6 appendFormat:@" routeIdentifier: %@", v8];

  v9 = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", v9];

  [v6 appendFormat:@" bannerType: %lu", -[MRRouteBannerRequest bannerType](self, "bannerType")];
  v10 = [(MRRouteBannerRequest *)self staticRequest];
  v11 = [v10 description];
  v12 = v11;
  v13 = @"<none>";
  if (v11)
  {
    v13 = v11;
  }

  [v6 appendFormat:@" staticRequest: %@", v13];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MRRouteBannerRequest;
  v4 = a3;
  [(MRBaseBannerRequest *)&v7 encodeWithCoder:v4];
  v5 = [(MRRouteBannerRequest *)self routeIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"odid"];

  [v4 encodeInt64:-[MRRouteBannerRequest bannerType](self forKey:{"bannerType"), @"rbt"}];
  v6 = [(MRRouteBannerRequest *)self staticRequest];
  [v4 encodeObject:v6 forKey:@"sr"];
}

- (MRRouteBannerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRRouteBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odid"];
    [(MRRouteBannerRequest *)v5 setRouteIdentifier:v6];

    -[MRRouteBannerRequest setBannerType:](v5, "setBannerType:", [v4 decodeInt64ForKey:@"rbt"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sr"];
    [(MRRouteBannerRequest *)v5 setStaticRequest:v7];
  }

  return v5;
}

@end