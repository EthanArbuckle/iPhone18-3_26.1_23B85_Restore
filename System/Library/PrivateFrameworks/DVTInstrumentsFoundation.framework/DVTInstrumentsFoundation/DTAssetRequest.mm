@interface DTAssetRequest
+ (id)requestWithIdentifier:(id)a3 path:(id)a4;
- (DTAssetRequest)initWithCoder:(id)a3;
- (DTAssetRequest)initWithIdentifier:(id)a3 path:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DTAssetRequest

- (DTAssetRequest)initWithIdentifier:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    v11 = [v7 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    assetPath = v10->_assetPath;
    v10->_assetPath = v13;
  }

  return v10;
}

+ (id)requestWithIdentifier:(id)a3 path:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 path:v6];

  return v8;
}

- (DTAssetRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetPath"];

  v7 = [(DTAssetRequest *)self initWithIdentifier:v5 path:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DTAssetRequest *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(DTAssetRequest *)self assetPath];
  [v4 encodeObject:v6 forKey:@"assetPath"];
}

@end