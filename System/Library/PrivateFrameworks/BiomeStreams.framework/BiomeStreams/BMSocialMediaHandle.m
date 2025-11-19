@interface BMSocialMediaHandle
- (BMSocialMediaHandle)initWithBundleId:(id)a3 handle:(id)a4;
- (BMSocialMediaHandle)initWithProto:(id)a3;
- (BMSocialMediaHandle)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSocialMediaHandle

- (BMSocialMediaHandle)initWithBundleId:(id)a3 handle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMSocialMediaHandle;
  v9 = [(BMSocialMediaHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, a3);
    objc_storeStrong(&v10->_handle, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    bundleId = self->_bundleId;
    v7 = [v5 bundleId];
    if ([(NSString *)bundleId isEqualToString:v7])
    {
      handle = self->_handle;
      v9 = [v5 handle];
      v10 = [(NSString *)handle isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)encodeAsProto
{
  v2 = [(BMSocialMediaHandle *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSocialMediaHandle)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 bundleId];
    v7 = [v5 handle];

    self = [(BMSocialMediaHandle *)self initWithBundleId:v6 handle:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BMSocialMediaHandle)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSocialMediaHandle alloc] initWithData:v4];

    self = [(BMSocialMediaHandle *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMSocialMediaHandle *)self bundleId];
  [v3 setBundleId:v4];

  v5 = [(BMSocialMediaHandle *)self handle];
  [v3 setHandle:v5];

  return v3;
}

@end