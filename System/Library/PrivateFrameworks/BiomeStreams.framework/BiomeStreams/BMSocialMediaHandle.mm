@interface BMSocialMediaHandle
- (BMSocialMediaHandle)initWithBundleId:(id)id handle:(id)handle;
- (BMSocialMediaHandle)initWithProto:(id)proto;
- (BMSocialMediaHandle)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMSocialMediaHandle

- (BMSocialMediaHandle)initWithBundleId:(id)id handle:(id)handle
{
  idCopy = id;
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = BMSocialMediaHandle;
  v9 = [(BMSocialMediaHandle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, id);
    objc_storeStrong(&v10->_handle, handle);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleId = self->_bundleId;
    bundleId = [v5 bundleId];
    if ([(NSString *)bundleId isEqualToString:bundleId])
    {
      handle = self->_handle;
      handle = [v5 handle];
      v10 = [(NSString *)handle isEqualToString:handle];
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
  proto = [(BMSocialMediaHandle *)self proto];
  data = [proto data];

  return data;
}

- (BMSocialMediaHandle)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    bundleId = [v5 bundleId];
    handle = [v5 handle];

    self = [(BMSocialMediaHandle *)self initWithBundleId:bundleId handle:handle];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSocialMediaHandle)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSocialMediaHandle alloc] initWithData:dataCopy];

    self = [(BMSocialMediaHandle *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  bundleId = [(BMSocialMediaHandle *)self bundleId];
  [v3 setBundleId:bundleId];

  handle = [(BMSocialMediaHandle *)self handle];
  [v3 setHandle:handle];

  return v3;
}

@end