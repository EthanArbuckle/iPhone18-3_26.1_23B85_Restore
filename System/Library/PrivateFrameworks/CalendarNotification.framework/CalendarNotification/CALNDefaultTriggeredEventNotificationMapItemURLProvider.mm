@interface CALNDefaultTriggeredEventNotificationMapItemURLProvider
+ (CALNDefaultTriggeredEventNotificationMapItemURLProvider)sharedInstance;
+ (id)_directionsModeForHypothesis:(id)hypothesis routing:(id)routing;
+ (id)_directionsModeForLocationRoutingMode:(int64_t)mode;
+ (id)_directionsModeForRouting:(id)routing;
+ (id)_directionsModeForTransportType:(int)type;
+ (id)_eventLocationFromStructuredLocation:(id)location;
+ (id)_mapItemURLForEventLocation:(id)location hypothesis:(id)hypothesis;
+ (id)_mapItemURLLaunchOptionsForHypothesis:(id)hypothesis routing:(id)routing;
- (id)mapItemURLForOptionalEventLocation:(id)location hypothesis:(id)hypothesis;
@end

@implementation CALNDefaultTriggeredEventNotificationMapItemURLProvider

+ (CALNDefaultTriggeredEventNotificationMapItemURLProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CALNDefaultTriggeredEventNotificationMapItemURLProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, block);
  }

  v2 = sharedInstance_sharedInstance_7;

  return v2;
}

uint64_t __73__CALNDefaultTriggeredEventNotificationMapItemURLProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_7 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)mapItemURLForOptionalEventLocation:(id)location hypothesis:(id)hypothesis
{
  if (location)
  {
    hypothesisCopy = hypothesis;
    locationCopy = location;
    v7 = [objc_opt_class() _mapItemURLForEventLocation:locationCopy hypothesis:hypothesisCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_mapItemURLForEventLocation:(id)location hypothesis:(id)hypothesis
{
  v21[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  hypothesisCopy = hypothesis;
  routing = [locationCopy routing];
  v9 = [self _mapItemURLLaunchOptionsForHypothesis:hypothesisCopy routing:routing];

  mapKitHandle = [locationCopy mapKitHandle];
  geoLocation = [locationCopy geoLocation];
  v12 = geoLocation;
  if (mapKitHandle)
  {
    v13 = MEMORY[0x277CD4E80];
    v21[0] = mapKitHandle;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v15 = [v13 _urlForMapItemHandles:v14 options:v9];
LABEL_5:

    goto LABEL_6;
  }

  if (geoLocation)
  {
    v14 = [self _eventLocationFromStructuredLocation:locationCopy];
    v16 = [self _mapItemNameFromEventLocation:v14];
    v17 = MEMORY[0x277CD4E80];
    address = [locationCopy address];
    v15 = [v17 _urlForLocation:v12 address:address label:v16 options:v9];

    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_eventLocationFromStructuredLocation:(id)location
{
  locationCopy = location;
  title = [locationCopy title];
  address = [locationCopy address];

  if (![title length])
  {
    v6 = address;

    title = v6;
  }

  return title;
}

+ (id)_mapItemURLLaunchOptionsForHypothesis:(id)hypothesis routing:(id)routing
{
  v6 = [self _directionsModeForHypothesis:hypothesis routing:routing];
  v7 = [self _mapItemURLLaunchOptionsForDirectionsMode:v6 isFromTimeToLeaveNotification:hypothesis != 0];

  return v7;
}

+ (id)_directionsModeForHypothesis:(id)hypothesis routing:(id)routing
{
  hypothesisCopy = hypothesis;
  routingCopy = routing;
  v8 = *MEMORY[0x277CD4B58];
  if (hypothesisCopy)
  {
    v9 = [self _directionsModeForTransportType:{objc_msgSend(hypothesisCopy, "transportType")}];
  }

  else
  {
    if (!routingCopy)
    {
      goto LABEL_6;
    }

    v9 = [self _directionsModeForRouting:routingCopy];
  }

  v10 = v9;

  v8 = v10;
LABEL_6:

  return v8;
}

+ (id)_directionsModeForTransportType:(int)type
{
  v4 = *MEMORY[0x277CD4B58];
  if (type <= 3)
  {
    v5 = **(&unk_278D6F748 + type);

    v4 = v5;
  }

  return v4;
}

+ (id)_directionsModeForRouting:(id)routing
{
  v4 = [MEMORY[0x277CF77E8] routingModeEnumForCalRouteType:routing];

  return [self _directionsModeForLocationRoutingMode:v4];
}

+ (id)_directionsModeForLocationRoutingMode:(int64_t)mode
{
  v4 = *MEMORY[0x277CD4B58];
  if ((mode - 1) <= 3)
  {
    v5 = **(&unk_278D6F768 + mode - 1);

    v4 = v5;
  }

  return v4;
}

@end