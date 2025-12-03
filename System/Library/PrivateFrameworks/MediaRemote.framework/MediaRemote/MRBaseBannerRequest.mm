@interface MRBaseBannerRequest
+ (id)requestWithBundleIdentifierAffinity:(id)affinity;
- (BOOL)isEqual:(id)equal;
- (MRBaseBannerRequest)initWithBundleIdentifierAffinity:(id)affinity;
- (MRBaseBannerRequest)initWithCoder:(id)coder;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRBaseBannerRequest

+ (id)requestWithBundleIdentifierAffinity:(id)affinity
{
  affinityCopy = affinity;
  v4 = [[MRBaseBannerRequest alloc] initWithBundleIdentifierAffinity:affinityCopy];

  return v4;
}

- (MRBaseBannerRequest)initWithBundleIdentifierAffinity:(id)affinity
{
  affinityCopy = affinity;
  v9.receiver = self;
  v9.super_class = MRBaseBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(MRBaseBannerRequest *)v5 setRequestIdentifier:uUIDString];

    [(MRBaseBannerRequest *)v5 setBundleIdentifierAffinity:affinityCopy];
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
  [v6 appendFormat:@" requestIdentifier: %@", requestIdentifier];

  bundleIdentifierAffinity = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [v6 appendFormat:@" bundleIdentifierAffinity: %@", bundleIdentifierAffinity];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
  [coderCopy encodeObject:requestIdentifier forKey:@"rid"];

  bundleIdentifierAffinity = [(MRBaseBannerRequest *)self bundleIdentifierAffinity];
  [coderCopy encodeObject:bundleIdentifierAffinity forKey:@"bida"];
}

- (MRBaseBannerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MRBaseBannerRequest;
  v5 = [(MRBaseBannerRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rid"];
    [(MRBaseBannerRequest *)v5 setRequestIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bida"];
    [(MRBaseBannerRequest *)v5 setBundleIdentifierAffinity:v7];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
      requestIdentifier2 = [(MRBaseBannerRequest *)v5 requestIdentifier];

      v8 = [requestIdentifier isEqual:requestIdentifier2];
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
  requestIdentifier = [(MRBaseBannerRequest *)self requestIdentifier];
  v3 = [requestIdentifier hash];

  return v3;
}

@end