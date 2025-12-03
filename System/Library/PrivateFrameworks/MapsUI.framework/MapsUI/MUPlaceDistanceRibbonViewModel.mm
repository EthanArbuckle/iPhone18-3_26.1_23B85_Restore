@interface MUPlaceDistanceRibbonViewModel
- (MUPlaceDistanceRibbonViewModel)initWithMapItem:(id)item etaProvider:(id)provider;
- (void)ETAProviderUpdated:(id)updated;
- (void)dealloc;
@end

@implementation MUPlaceDistanceRibbonViewModel

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  distanceString = [updatedCopy distanceString];
  v5 = [distanceString length];

  if (v5)
  {
    distanceString2 = [updatedCopy distanceString];
    v7 = [MUPlaceRibbonItemViewModel distanceFromCurrentLocationItemViewModelForDistanceString:distanceString2];
    crowsDistanceViewModel = self->_crowsDistanceViewModel;
    self->_crowsDistanceViewModel = v7;

    typeStringForAX = [(MUPlaceRibbonItemViewModel *)self->_crowsDistanceViewModel typeStringForAX];
    [(MUPlaceRibbonItemViewModel *)self setTypeStringForAX:typeStringForAX];

    updateDelegate = [(MUPlaceRibbonItemViewModel *)self updateDelegate];
    [updateDelegate ribbonItemViewModelDidUpdate:self];
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_etaProvider);
  [WeakRetained removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUPlaceDistanceRibbonViewModel;
  [(MUPlaceDistanceRibbonViewModel *)&v4 dealloc];
}

- (MUPlaceDistanceRibbonViewModel)initWithMapItem:(id)item etaProvider:(id)provider
{
  itemCopy = item;
  providerCopy = provider;
  mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
  if ([mEMORY[0x1E696F268] isAuthorizedForPreciseLocation] && objc_msgSend(mEMORY[0x1E696F268], "hasLocation"))
  {
    v28.receiver = self;
    v28.super_class = MUPlaceDistanceRibbonViewModel;
    v10 = [(MUPlaceDistanceRibbonViewModel *)&v28 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_mapItem, item);
      currentLocation = [mEMORY[0x1E696F268] currentLocation];
      v13 = currentLocation;
      if (currentLocation)
      {
        latLng = [currentLocation latLng];
        [latLng lat];
        v16 = v15;
        latLng2 = [v13 latLng];
        [latLng2 lng];
        v19 = CLLocationCoordinate2DMake(v16, v18);
        latitude = v19.latitude;
        longitude = v19.longitude;
      }

      else
      {
        latitude = *MEMORY[0x1E6985CC0];
        longitude = *(MEMORY[0x1E6985CC0] + 8);
      }

      longitude = [MUPlaceRibbonItemViewModel distanceFromCurrentLocationItemViewModelForMapItem:v11->_mapItem currentLocationCoordinate:latitude, longitude];
      crowsDistanceViewModel = v11->_crowsDistanceViewModel;
      v11->_crowsDistanceViewModel = longitude;

      typeStringForAX = [(MUPlaceRibbonItemViewModel *)v11->_crowsDistanceViewModel typeStringForAX];
      [(MUPlaceRibbonItemViewModel *)v11 setTypeStringForAX:typeStringForAX];

      v26 = objc_storeWeak(&v11->_etaProvider, providerCopy);
      [providerCopy addObserver:v11];
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end