@interface CLSPublicEventServerVersion
- (CLSPublicEventServerVersion)initWithVersionString:(id)a3 dateOfServerUpdate:(id)a4;
@end

@implementation CLSPublicEventServerVersion

- (CLSPublicEventServerVersion)initWithVersionString:(id)a3 dateOfServerUpdate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CLSPublicEventServerVersion;
  v9 = [(CLSPublicEventServerVersion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_versionString, a3);
    objc_storeStrong(&v10->_dateOfServerUpdate, a4);
  }

  return v10;
}

@end