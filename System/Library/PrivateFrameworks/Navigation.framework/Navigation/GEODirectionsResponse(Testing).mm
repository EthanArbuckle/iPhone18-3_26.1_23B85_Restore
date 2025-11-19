@interface GEODirectionsResponse(Testing)
- (void)addFakeTrafficIncidentAlert:()Testing targetLegIndex:mainRouteInfo:alternateRouteInfo:currentDistance:;
@end

@implementation GEODirectionsResponse(Testing)

- (void)addFakeTrafficIncidentAlert:()Testing targetLegIndex:mainRouteInfo:alternateRouteInfo:currentDistance:
{
  v43 = a5;
  v12 = a6;
  if ([a1 waypointRoutesCount] > a4)
  {
    GEOConfigGetUInteger();
    v13 = [MNTrafficIncidentAlert createFakeTrafficBannerTextWithType:a3 mainRouteInfo:v43 alternateRouteInfo:v12 incidentDistance:50];
    if (GEOConfigGetBOOL())
    {
      [v13 setPreserveBannerInUpdates:GEOConfigGetBOOL()];
      v14 = objc_alloc_init(MEMORY[0x1E69A26A0]);
      [v13 setTriggerRange:v14];

      UInteger = GEOConfigGetUInteger();
      v16 = [v13 triggerRange];
      [v16 setDisplayTime:UInteger];

      [v13 setMinDisplayTime:GEOConfigGetUInteger()];
      [v13 setPriority:GEOConfigGetUInteger()];
      v17 = objc_alloc_init(MEMORY[0x1E69A2698]);
      v18 = [v13 triggerRange];
      [v18 setShowAtPoint:v17];

      v19 = 100 * (a7 - GEOConfigGetUInteger());
      v20 = [v13 triggerRange];
      v21 = [v20 showAtPoint];
      [v21 setReferenceOffsetCm:v19];

      BOOL = GEOConfigGetBOOL();
      v23 = [v13 triggerRange];
      v24 = [v23 showAtPoint];
      [v24 setAllowsShifting:BOOL];

      if (GEOConfigGetBOOL())
      {
        v25 = objc_alloc_init(MEMORY[0x1E69A2698]);
        v26 = [v13 triggerRange];
        [v26 setHideAtPoint:v25];

        v27 = 100 * (a7 - GEOConfigGetUInteger());
        v28 = [v13 triggerRange];
        v29 = [v28 hideAtPoint];
        [v29 setReferenceOffsetCm:v27];

        v30 = GEOConfigGetBOOL();
        v31 = [v13 triggerRange];
        v32 = [v31 hideAtPoint];
        [v32 setAllowsShifting:v30];
      }

      if (GEOConfigGetBOOL())
      {
        v33 = objc_alloc_init(MEMORY[0x1E69A26A0]);
        [v13 setProgressBarRange:v33];

        v34 = GEOConfigGetUInteger();
        v35 = [v13 progressBarRange];
        [v35 setDisplayTime:v34];

        v36 = objc_alloc_init(MEMORY[0x1E69A2698]);
        v37 = [v13 progressBarRange];
        [v37 setShowAtPoint:v36];

        v38 = 100 * (a7 - GEOConfigGetUInteger());
        v39 = [v13 progressBarRange];
        v40 = [v39 showAtPoint];
        [v40 setReferenceOffsetCm:v38];
      }
    }

    v41 = [a1 waypointRoutes];
    v42 = [v41 objectAtIndexedSubscript:a4];
    [v42 addTrafficBannerText:v13];
  }
}

@end