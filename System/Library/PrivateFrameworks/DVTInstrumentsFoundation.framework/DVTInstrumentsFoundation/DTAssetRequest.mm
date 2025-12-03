@interface DTAssetRequest
+ (id)requestWithIdentifier:(id)identifier path:(id)path;
- (DTAssetRequest)initWithCoder:(id)coder;
- (DTAssetRequest)initWithIdentifier:(id)identifier path:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DTAssetRequest

- (DTAssetRequest)initWithIdentifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v9 = pathCopy;
  if (identifierCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24802F700(a2, self);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_24802F77C(a2, self);
LABEL_3:
  v16.receiver = self;
  v16.super_class = DTAssetRequest;
  v10 = [(DTAssetRequest *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    assetPath = v10->_assetPath;
    v10->_assetPath = v13;
  }

  return v10;
}

+ (id)requestWithIdentifier:(id)identifier path:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy path:pathCopy];

  return v8;
}

- (DTAssetRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetPath"];

  v7 = [(DTAssetRequest *)self initWithIdentifier:v5 path:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DTAssetRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  assetPath = [(DTAssetRequest *)self assetPath];
  [coderCopy encodeObject:assetPath forKey:@"assetPath"];
}

@end