@interface PKDiscoveryCallToActionURL
- (BOOL)isEqual:(id)equal;
- (PKDiscoveryCallToActionURL)initWithURL:(id)l isSensitive:(BOOL)sensitive;
- (unint64_t)hash;
@end

@implementation PKDiscoveryCallToActionURL

- (PKDiscoveryCallToActionURL)initWithURL:(id)l isSensitive:(BOOL)sensitive
{
  lCopy = l;
  if (lCopy)
  {
    v12.receiver = self;
    v12.super_class = PKDiscoveryCallToActionURL;
    v8 = [(PKDiscoveryCallToActionURL *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_url, l);
      v9->_isSensitive = sensitive;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  url = self->_url;
  v6 = equalCopy[2];
  if (!url || !v6)
  {
    if (url == v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([(NSURL *)url isEqual:?]& 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = self->_isSensitive == *(equalCopy + 8);
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_url];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_isSensitive - v4 + 32 * v4;

  return v5;
}

@end