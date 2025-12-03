@interface BRThumbnailRequest
- (BRThumbnailRequest)initWithIdentifier:(id)identifier version:(id)version;
@end

@implementation BRThumbnailRequest

- (BRThumbnailRequest)initWithIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = BRThumbnailRequest;
  v9 = [(BRThumbnailRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_version, version);
  }

  return v10;
}

@end