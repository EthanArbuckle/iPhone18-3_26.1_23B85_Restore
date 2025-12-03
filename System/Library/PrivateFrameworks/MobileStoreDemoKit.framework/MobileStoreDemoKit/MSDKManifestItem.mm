@interface MSDKManifestItem
- (MSDKManifestComponent)component;
- (MSDKManifestItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component;
@end

@implementation MSDKManifestItem

- (MSDKManifestItem)initWithIdentifier:(id)identifier andDictionary:(id)dictionary forComponent:(id)component
{
  componentCopy = component;
  v10.receiver = self;
  v10.super_class = MSDKManifestItem;
  v7 = [(MSDKManifestItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_component, componentCopy);
  }

  return v8;
}

- (MSDKManifestComponent)component
{
  WeakRetained = objc_loadWeakRetained(&self->_component);

  return WeakRetained;
}

@end