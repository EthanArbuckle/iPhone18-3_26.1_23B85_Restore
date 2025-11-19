@interface CALNDefaultTriggeredEventNotificationMapItemURLProvider
+ (CALNDefaultTriggeredEventNotificationMapItemURLProvider)sharedInstance;
+ (id)_directionsModeForHypothesis:(id)a3 routing:(id)a4;
+ (id)_directionsModeForLocationRoutingMode:(int64_t)a3;
+ (id)_directionsModeForRouting:(id)a3;
+ (id)_directionsModeForTransportType:(int)a3;
+ (id)_eventLocationFromStructuredLocation:(id)a3;
+ (id)_mapItemURLForEventLocation:(id)a3 hypothesis:(id)a4;
+ (id)_mapItemURLLaunchOptionsForHypothesis:(id)a3 routing:(id)a4;
- (id)mapItemURLForOptionalEventLocation:(id)a3 hypothesis:(id)a4;
@end

@implementation CALNDefaultTriggeredEventNotificationMapItemURLProvider

+ (CALNDefaultTriggeredEventNotificationMapItemURLProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CALNDefaultTriggeredEventNotificationMapItemURLProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)mapItemURLForOptionalEventLocation:(id)a3 hypothesis:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = [objc_opt_class() _mapItemURLForEventLocation:v6 hypothesis:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_mapItemURLForEventLocation:(id)a3 hypothesis:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 routing];
  v9 = [a1 _mapItemURLLaunchOptionsForHypothesis:v7 routing:v8];

  v10 = [v6 mapKitHandle];
  v11 = [v6 geoLocation];
  v12 = v11;
  if (v10)
  {
    v13 = MEMORY[0x277CD4E80];
    v21[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v15 = [v13 _urlForMapItemHandles:v14 options:v9];
LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    v14 = [a1 _eventLocationFromStructuredLocation:v6];
    v16 = [a1 _mapItemNameFromEventLocation:v14];
    v17 = MEMORY[0x277CD4E80];
    v18 = [v6 address];
    v15 = [v17 _urlForLocation:v12 address:v18 label:v16 options:v9];

    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_eventLocationFromStructuredLocation:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 address];

  if (![v4 length])
  {
    v6 = v5;

    v4 = v6;
  }

  return v4;
}

+ (id)_mapItemURLLaunchOptionsForHypothesis:(id)a3 routing:(id)a4
{
  v6 = [a1 _directionsModeForHypothesis:a3 routing:a4];
  v7 = [a1 _mapItemURLLaunchOptionsForDirectionsMode:v6 isFromTimeToLeaveNotification:a3 != 0];

  return v7;
}

+ (id)_directionsModeForHypothesis:(id)a3 routing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CD4B58];
  if (v6)
  {
    v9 = [a1 _directionsModeForTransportType:{objc_msgSend(v6, "transportType")}];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v9 = [a1 _directionsModeForRouting:v7];
  }

  v10 = v9;

  v8 = v10;
LABEL_6:

  return v8;
}

+ (id)_directionsModeForTransportType:(int)a3
{
  v4 = *MEMORY[0x277CD4B58];
  if (a3 <= 3)
  {
    v5 = **(&unk_278D6F748 + a3);

    v4 = v5;
  }

  return v4;
}

+ (id)_directionsModeForRouting:(id)a3
{
  v4 = [MEMORY[0x277CF77E8] routingModeEnumForCalRouteType:a3];

  return [a1 _directionsModeForLocationRoutingMode:v4];
}

+ (id)_directionsModeForLocationRoutingMode:(int64_t)a3
{
  v4 = *MEMORY[0x277CD4B58];
  if ((a3 - 1) <= 3)
  {
    v5 = **(&unk_278D6F768 + a3 - 1);

    v4 = v5;
  }

  return v4;
}

@end