@interface MRBaseBannerRequest
+ (id)requestWithBundleIdentifierAffinity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MRBaseBannerRequest)initWithBundleIdentifierAffinity:(id)a3;
- (MRBaseBannerRequest)initWithCoder:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRBaseBannerRequest

+ (id)requestWithBundleIdentifierAffinity:(id)a3
{
  v3 = a3;
  v4 = [[MRBaseBannerRequest alloc] initWithBundleIdentifierAffinity:v3];

  return v4;
}

- (MRBaseBannerRequest)initWithBundleIdentifierAffinity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRBaseBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    [(MRBaseBannerRequest *)v5 setRequestIdentifier:v7];

    [(MRBaseBannerRequest *)v5 setBundleIdentifierAffinity:v4];
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", v7];

  v8 = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", v8];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRBaseBannerRequest *)self requestIdentifier];
  [v4 encodeObject:v5 forKey:@"rid"];

  v6 = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v4 encodeObject:v6 forKey:@"bida"];
}

- (MRBaseBannerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRBaseBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rid"];
    [(MRBaseBannerRequest *)v5 setRequestIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bida"];
    [(MRBaseBannerRequest *)v5 setBundleIdentifierAffinity:v7];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRBaseBannerRequest *)self requestIdentifier];
      v7 = [(MRBaseBannerRequest *)v5 requestIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MRBaseBannerRequest *)self requestIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end