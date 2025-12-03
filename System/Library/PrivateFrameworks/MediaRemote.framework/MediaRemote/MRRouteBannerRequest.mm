@interface MRRouteBannerRequest
+ (id)requestWithStaticRequest:(id)request;
- (MRRouteBannerRequest)initWithCoder:(id)coder;
- (MRRouteBannerRequest)initWithRouteIdentifier:(id)identifier staticRequest:(id)request;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRRouteBannerRequest

+ (id)requestWithStaticRequest:(id)request
{
  requestCopy = request;
  v5 = [self alloc];
  routeIdentifier = [requestCopy routeIdentifier];
  v7 = [v5 initWithRouteIdentifier:routeIdentifier staticRequest:requestCopy];

  return v7;
}

- (MRRouteBannerRequest)initWithRouteIdentifier:(id)identifier staticRequest:(id)request
{
  identifierCopy = identifier;
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = MRRouteBannerRequest;
  v8 = [(MRBaseBannerRequest *)&v11 initWithBundleIdentifierAffinity:0];
  v9 = v8;
  if (v8)
  {
    [(MRRouteBannerRequest *)v8 setRouteIdentifier:identifierCopy];
    [(MRRouteBannerRequest *)v9 setStaticRequest:requestCopy];
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", requestIdentifier];

  routeIdentifier = [(MRRouteBannerRequest *)self routeIdentifier];
  [v6 appendFormat:@" routeIdentifier: %@", routeIdentifier];

  bundleIdentifierAffinity = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", bundleIdentifierAffinity];

  [v6 appendFormat:@" bannerType: %lu", -[MRRouteBannerRequest bannerType](self, "bannerType")];
  staticRequest = [(MRRouteBannerRequest *)self staticRequest];
  v11 = [staticRequest description];
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

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MRRouteBannerRequest;
  coderCopy = coder;
  [(MRBaseBannerRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(MRRouteBannerRequest *)self routeIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"odid"];

  [coderCopy encodeInt64:-[MRRouteBannerRequest bannerType](self forKey:{"bannerType"), @"rbt"}];
  staticRequest = [(MRRouteBannerRequest *)self staticRequest];
  [coderCopy encodeObject:staticRequest forKey:@"sr"];
}

- (MRRouteBannerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MRRouteBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odid"];
    [(MRRouteBannerRequest *)v5 setRouteIdentifier:v6];

    -[MRRouteBannerRequest setBannerType:](v5, "setBannerType:", [coderCopy decodeInt64ForKey:@"rbt"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sr"];
    [(MRRouteBannerRequest *)v5 setStaticRequest:v7];
  }

  return v5;
}

@end