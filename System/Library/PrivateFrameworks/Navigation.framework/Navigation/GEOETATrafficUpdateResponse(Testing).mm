@interface GEOETATrafficUpdateResponse(Testing)
- (void)addFakeTrafficIncidentAlert:()Testing mainRouteInfo:alternateRouteInfo:currentDistance:;
@end

@implementation GEOETATrafficUpdateResponse(Testing)

- (void)addFakeTrafficIncidentAlert:()Testing mainRouteInfo:alternateRouteInfo:currentDistance:
{
  v45 = a5;
  v10 = a4;
  UInteger = GEOConfigGetUInteger();
  v12 = [MNTrafficIncidentAlert createFakeTrafficBannerTextWithType:a3 mainRouteInfo:v10 alternateRouteInfo:v45 incidentDistance:50];

  if (GEOConfigGetBOOL())
  {
    [v12 setPreserveBannerInUpdates:GEOConfigGetBOOL()];
    v13 = objc_alloc_init(MEMORY[0x1E69A26A0]);
    [v12 setTriggerRange:v13];

    v14 = GEOConfigGetUInteger();
    triggerRange = [v12 triggerRange];
    [triggerRange setDisplayTime:v14];

    [v12 setMinDisplayTime:GEOConfigGetUInteger()];
    [v12 setPriority:GEOConfigGetUInteger()];
    v16 = objc_alloc_init(MEMORY[0x1E69A2698]);
    triggerRange2 = [v12 triggerRange];
    [triggerRange2 setShowAtPoint:v16];

    triggerRange3 = [v12 triggerRange];
    showAtPoint = [triggerRange3 showAtPoint];
    [showAtPoint setReferenceOffsetCm:(100 * (a6 - UInteger))];

    BOOL = GEOConfigGetBOOL();
    triggerRange4 = [v12 triggerRange];
    hideAtPoint = [triggerRange4 hideAtPoint];
    [hideAtPoint setAllowsShifting:BOOL];

    if (GEOConfigGetBOOL())
    {
      v23 = objc_alloc_init(MEMORY[0x1E69A2698]);
      triggerRange5 = [v12 triggerRange];
      [triggerRange5 setHideAtPoint:v23];

      v25 = 100 * (a6 - GEOConfigGetUInteger());
      triggerRange6 = [v12 triggerRange];
      hideAtPoint2 = [triggerRange6 hideAtPoint];
      [hideAtPoint2 setReferenceOffsetCm:v25];

      v28 = GEOConfigGetBOOL();
      triggerRange7 = [v12 triggerRange];
      hideAtPoint3 = [triggerRange7 hideAtPoint];
      [hideAtPoint3 setAllowsShifting:v28];
    }

    if (GEOConfigGetBOOL())
    {
      v31 = objc_alloc_init(MEMORY[0x1E69A26A0]);
      [v12 setProgressBarRange:v31];

      v32 = GEOConfigGetUInteger();
      progressBarRange = [v12 progressBarRange];
      [progressBarRange setDisplayTime:v32];

      v34 = objc_alloc_init(MEMORY[0x1E69A2698]);
      progressBarRange2 = [v12 progressBarRange];
      [progressBarRange2 setShowAtPoint:v34];

      v36 = 100 * (a6 - GEOConfigGetUInteger());
      progressBarRange3 = [v12 progressBarRange];
      showAtPoint2 = [progressBarRange3 showAtPoint];
      [showAtPoint2 setReferenceOffsetCm:v36];
    }
  }

  waypointRoute = [self waypointRoute];
  if (v45)
  {
    route = [v45 route];
    geoWaypointRoute = [route geoWaypointRoute];
    v42 = [geoWaypointRoute copy];

    v43 = [MEMORY[0x1E695DF70] arrayWithObject:v42];
    [waypointRoute setNewWaypointRoutes:v43];
  }

  [waypointRoute addTrafficBannerText:v12];
  v44 = objc_alloc_init(MEMORY[0x1E69A2270]);
  [v44 setIsBlocked:a3 == 1];
  [waypointRoute setNavigabilityInfo:v44];
}

@end