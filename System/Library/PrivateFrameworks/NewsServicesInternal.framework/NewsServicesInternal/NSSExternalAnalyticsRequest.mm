@interface NSSExternalAnalyticsRequest
- (NSSExternalAnalyticsRequest)initWithCoder:(id)coder;
- (NSSExternalAnalyticsRequest)initWithURL:(id)l metadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSExternalAnalyticsRequest

- (NSSExternalAnalyticsRequest)initWithURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = NSSExternalAnalyticsRequest;
  v8 = [(NSSExternalAnalyticsRequest *)&v12 init];
  if (v8)
  {
    v9 = [lCopy copy];
    URL = v8->_URL;
    v8->_URL = v9;

    objc_storeStrong(&v8->_metadata, metadata);
  }

  return v8;
}

- (NSSExternalAnalyticsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"URL"];
  v6 = [coderCopy decodeObjectForKey:@"metadata"];

  v7 = [(NSSExternalAnalyticsRequest *)self initWithURL:v5 metadata:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NSSExternalAnalyticsRequest *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  metadata = [(NSSExternalAnalyticsRequest *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

@end