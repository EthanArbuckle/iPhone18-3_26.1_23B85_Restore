@interface CLSPublicEventServerVersion
- (CLSPublicEventServerVersion)initWithVersionString:(id)string dateOfServerUpdate:(id)update;
@end

@implementation CLSPublicEventServerVersion

- (CLSPublicEventServerVersion)initWithVersionString:(id)string dateOfServerUpdate:(id)update
{
  stringCopy = string;
  updateCopy = update;
  v12.receiver = self;
  v12.super_class = CLSPublicEventServerVersion;
  v9 = [(CLSPublicEventServerVersion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_versionString, string);
    objc_storeStrong(&v10->_dateOfServerUpdate, update);
  }

  return v10;
}

@end