@interface MSDKManifestDataItem
- (MSDKManifestDataItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component;
@end

@implementation MSDKManifestDataItem

- (MSDKManifestDataItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MSDKManifestDataItem;
  v10 = [(MSDKManifestItem *)&v13 initWithIdentifier:identifier andDictionary:dictionaryCopy forComponent:component];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_data, dictionary);
  }

  return v11;
}

@end