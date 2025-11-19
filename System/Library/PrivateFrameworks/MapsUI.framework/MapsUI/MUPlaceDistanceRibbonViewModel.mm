@interface MUPlaceDistanceRibbonViewModel
- (MUPlaceDistanceRibbonViewModel)initWithMapItem:(id)a3 etaProvider:(id)a4;
- (void)ETAProviderUpdated:(id)a3;
- (void)dealloc;
@end

@implementation MUPlaceDistanceRibbonViewModel

- (void)ETAProviderUpdated:(id)a3
{
  v11 = a3;
  v4 = [v11 distanceString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v11 distanceString];
    v7 = [MUPlaceRibbonItemViewModel distanceFromCurrentLocationItemViewModelForDistanceString:v6];
    crowsDistanceViewModel = self->_crowsDistanceViewModel;
    self->_crowsDistanceViewModel = v7;

    v9 = [(MUPlaceRibbonItemViewModel *)self->_crowsDistanceViewModel typeStringForAX];
    [(MUPlaceRibbonItemViewModel *)self setTypeStringForAX:v9];

    v10 = [(MUPlaceRibbonItemViewModel *)self updateDelegate];
    [v10 ribbonItemViewModelDidUpdate:self];
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

- (MUPlaceDistanceRibbonViewModel)initWithMapItem:(id)a3 etaProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696F268] sharedLocationManager];
  if ([v9 isAuthorizedForPreciseLocation] && objc_msgSend(v9, "hasLocation"))
  {
    v28.receiver = self;
    v28.super_class = MUPlaceDistanceRibbonViewModel;
    v10 = [(MUPlaceDistanceRibbonViewModel *)&v28 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_mapItem, a3);
      v12 = [v9 currentLocation];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 latLng];
        [v14 lat];
        v16 = v15;
        v17 = [v13 latLng];
        [v17 lng];
        v19 = CLLocationCoordinate2DMake(v16, v18);
        latitude = v19.latitude;
        longitude = v19.longitude;
      }

      else
      {
        latitude = *MEMORY[0x1E6985CC0];
        longitude = *(MEMORY[0x1E6985CC0] + 8);
      }

      v23 = [MUPlaceRibbonItemViewModel distanceFromCurrentLocationItemViewModelForMapItem:v11->_mapItem currentLocationCoordinate:latitude, longitude];
      crowsDistanceViewModel = v11->_crowsDistanceViewModel;
      v11->_crowsDistanceViewModel = v23;

      v25 = [(MUPlaceRibbonItemViewModel *)v11->_crowsDistanceViewModel typeStringForAX];
      [(MUPlaceRibbonItemViewModel *)v11 setTypeStringForAX:v25];

      v26 = objc_storeWeak(&v11->_etaProvider, v8);
      [v8 addObserver:v11];
    }

    self = v11;
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end