@interface GEODirectionsResponse(Testing)
- (void)addFakeTrafficIncidentAlert:()Testing targetLegIndex:mainRouteInfo:alternateRouteInfo:currentDistance:;
@end

@implementation GEODirectionsResponse(Testing)

- (void)addFakeTrafficIncidentAlert:()Testing targetLegIndex:mainRouteInfo:alternateRouteInfo:currentDistance:
{
  v43 = a5;
  v12 = a6;
  if ([self waypointRoutesCount] > a4)
  {
    GEOConfigGetUInteger();
    v13 = [MNTrafficIncidentAlert createFakeTrafficBannerTextWithType:a3 mainRouteInfo:v43 alternateRouteInfo:v12 incidentDistance:50];
    if (GEOConfigGetBOOL())
    {
      [v13 setPreserveBannerInUpdates:GEOConfigGetBOOL()];
      v14 = objc_alloc_init(MEMORY[0x1E69A26A0]);
      [v13 setTriggerRange:v14];

      UInteger = GEOConfigGetUInteger();
      triggerRange = [v13 triggerRange];
      [triggerRange setDisplayTime:UInteger];

      [v13 setMinDisplayTime:GEOConfigGetUInteger()];
      [v13 setPriority:GEOConfigGetUInteger()];
      v17 = objc_alloc_init(MEMORY[0x1E69A2698]);
      triggerRange2 = [v13 triggerRange];
      [triggerRange2 setShowAtPoint:v17];

      v19 = 100 * (a7 - GEOConfigGetUInteger());
      triggerRange3 = [v13 triggerRange];
      showAtPoint = [triggerRange3 showAtPoint];
      [showAtPoint setReferenceOffsetCm:v19];

      BOOL = GEOConfigGetBOOL();
      triggerRange4 = [v13 triggerRange];
      showAtPoint2 = [triggerRange4 showAtPoint];
      [showAtPoint2 setAllowsShifting:BOOL];

      if (GEOConfigGetBOOL())
      {
        v25 = objc_alloc_init(MEMORY[0x1E69A2698]);
        triggerRange5 = [v13 triggerRange];
        [triggerRange5 setHideAtPoint:v25];

        v27 = 100 * (a7 - GEOConfigGetUInteger());
        triggerRange6 = [v13 triggerRange];
        hideAtPoint = [triggerRange6 hideAtPoint];
        [hideAtPoint setReferenceOffsetCm:v27];

        v30 = GEOConfigGetBOOL();
        triggerRange7 = [v13 triggerRange];
        hideAtPoint2 = [triggerRange7 hideAtPoint];
        [hideAtPoint2 setAllowsShifting:v30];
      }

      if (GEOConfigGetBOOL())
      {
        v33 = objc_alloc_init(MEMORY[0x1E69A26A0]);
        [v13 setProgressBarRange:v33];

        v34 = GEOConfigGetUInteger();
        progressBarRange = [v13 progressBarRange];
        [progressBarRange setDisplayTime:v34];

        v36 = objc_alloc_init(MEMORY[0x1E69A2698]);
        progressBarRange2 = [v13 progressBarRange];
        [progressBarRange2 setShowAtPoint:v36];

        v38 = 100 * (a7 - GEOConfigGetUInteger());
        progressBarRange3 = [v13 progressBarRange];
        showAtPoint3 = [progressBarRange3 showAtPoint];
        [showAtPoint3 setReferenceOffsetCm:v38];
      }
    }

    waypointRoutes = [self waypointRoutes];
    v42 = [waypointRoutes objectAtIndexedSubscript:a4];
    [v42 addTrafficBannerText:v13];
  }
}

@end