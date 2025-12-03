@interface MRUVolumeHUDRouteDescriptionProvider
- (MRUOutputDeviceAsset)outputDeviceAsset;
- (MRUVolumeHUDRouteDescriptionProvider)init;
- (MRUVolumeHUDRouteDescriptionProviderDelegate)delegate;
- (void)cycleOverridePackageDescriptions;
- (void)setOverrideOutputDeviceAsset:(id)asset;
- (void)updateOutputDeviceAsset;
@end

@implementation MRUVolumeHUDRouteDescriptionProvider

- (void)cycleOverridePackageDescriptions
{
  outputDeviceAsset = [(MRUVolumeHUDRouteDescriptionProvider *)self outputDeviceAsset];
  type = [outputDeviceAsset type];

  v5 = (type + 1) % 23;
  if (v5 == 2)
  {
    v6 = +[MRUOutputDeviceAsset sharingAsset];
  }

  else
  {
    if (v5 == 1)
    {
      +[MRUOutputDeviceAsset inCallAsset];
    }

    else
    {
      +[MRUOutputDeviceAsset speakerAsset];
    }
    v6 = ;
  }

  v7 = v6;
  [(MRUVolumeHUDRouteDescriptionProvider *)self setOverrideOutputDeviceAsset:v6];
}

- (MRUVolumeHUDRouteDescriptionProvider)init
{
  v5.receiver = self;
  v5.super_class = MRUVolumeHUDRouteDescriptionProvider;
  v2 = [(MRUVolumeHUDRouteDescriptionProvider *)&v5 init];
  if (v2)
  {
    v3 = +[MRUSystemOutputDeviceRouteController sharedController];
    [v3 add:v2];

    [(MRUVolumeHUDRouteDescriptionProvider *)v2 updateOutputDeviceAsset];
  }

  return v2;
}

- (MRUOutputDeviceAsset)outputDeviceAsset
{
  overrideOutputDeviceAsset = self->_overrideOutputDeviceAsset;
  if (!overrideOutputDeviceAsset)
  {
    overrideOutputDeviceAsset = self->_outputDeviceAsset;
  }

  return overrideOutputDeviceAsset;
}

- (void)setOverrideOutputDeviceAsset:(id)asset
{
  objc_storeStrong(&self->_overrideOutputDeviceAsset, asset);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  outputDeviceAsset = [(MRUVolumeHUDRouteDescriptionProvider *)self outputDeviceAsset];
  [WeakRetained volumeHUDRouteDescriptionProvider:self didChangeOutputDeviceAsset:outputDeviceAsset];
}

- (void)updateOutputDeviceAsset
{
  v3 = +[MRUSystemOutputDeviceRouteController sharedController];
  obj = [v3 systemOutputDeviceAssetWithInCall];

  if (![(MRUOutputDeviceAsset *)self->_outputDeviceAsset isEqual:obj])
  {
    objc_storeStrong(&self->_outputDeviceAsset, obj);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    outputDeviceAsset = [(MRUVolumeHUDRouteDescriptionProvider *)self outputDeviceAsset];
    [WeakRetained volumeHUDRouteDescriptionProvider:self didChangeOutputDeviceAsset:outputDeviceAsset];
  }
}

- (MRUVolumeHUDRouteDescriptionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end