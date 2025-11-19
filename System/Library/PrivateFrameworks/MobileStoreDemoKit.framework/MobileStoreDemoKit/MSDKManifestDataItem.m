@interface MSDKManifestDataItem
- (MSDKManifestDataItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5;
@end

@implementation MSDKManifestDataItem

- (MSDKManifestDataItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MSDKManifestDataItem;
  v10 = [(MSDKManifestItem *)&v13 initWithIdentifier:a3 andDictionary:v9 forComponent:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_data, a4);
  }

  return v11;
}

@end