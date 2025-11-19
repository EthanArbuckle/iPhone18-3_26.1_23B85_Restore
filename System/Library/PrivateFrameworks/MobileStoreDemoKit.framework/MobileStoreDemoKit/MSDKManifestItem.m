@interface MSDKManifestItem
- (MSDKManifestComponent)component;
- (MSDKManifestItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5;
@end

@implementation MSDKManifestItem

- (MSDKManifestItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5
{
  v6 = a5;
  v10.receiver = self;
  v10.super_class = MSDKManifestItem;
  v7 = [(MSDKManifestItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_component, v6);
  }

  return v8;
}

- (MSDKManifestComponent)component
{
  WeakRetained = objc_loadWeakRetained(&self->_component);

  return WeakRetained;
}

@end