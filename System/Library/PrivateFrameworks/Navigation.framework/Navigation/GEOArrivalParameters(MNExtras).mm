@interface GEOArrivalParameters(MNExtras)
- (uint64_t)containsCoordinate:()MNExtras arrivalRegionType:;
- (uint64_t)regionContainmentTypeForLocation:()MNExtras arrivalRegionType:parameters:;
@end

@implementation GEOArrivalParameters(MNExtras)

- (uint64_t)regionContainmentTypeForLocation:()MNExtras arrivalRegionType:parameters:
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (regionContainmentTypeForLocation_arrivalRegionType_parameters__onceToken != -1)
  {
    dispatch_once(&regionContainmentTypeForLocation_arrivalRegionType_parameters__onceToken, &__block_literal_global_19211);
  }

  v9 = regionContainmentTypeForLocation_arrivalRegionType_parameters__excludedTypesLookup;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  v11 = [v9 objectForKeyedSubscript:v10];

  [v7 _navigation_geoCoordinate];
  v13 = v12;
  v15 = v14;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  arrivalMapRegions = [self arrivalMapRegions];
  v17 = [arrivalMapRegions countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v39 = v7;
    obj = arrivalMapRegions;
    v38 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v43;
    do
    {
      v22 = 0;
      do
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v42 + 1) + 8 * v22);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "arrivalRegionAction", v38)}];
        v25 = [v11 containsObject:v24];

        if (v25 && ([v23 arrivalRegion], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "excludeDistancePadding"), v28 = objc_msgSend(v26, "containsCoordinate:radius:", v13, v15, v27), v26, (v28 & 1) != 0))
        {
          v38 = 1;
        }

        else if ([v23 arrivalRegionAction] == a4)
        {
          if ((![v23 hasRouteEndDistanceThresholdCm] || objc_msgSend(v39, "state") == 1 && (objc_msgSend(v39, "distanceToEndOfCurrentLeg"), v29 >= 0.0) && v29 <= objc_msgSend(v23, "routeEndDistanceThresholdCm") * 0.01) && (objc_msgSend(v23, "arrivalRegion"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "includeDistancePadding"), v32 = objc_msgSend(v30, "containsCoordinate:radius:", v13, v15, v31), v30, v32))
          {
            if (![v11 count])
            {

              v34 = v38;
              v7 = v39;
              goto LABEL_26;
            }

            v19 = 1;
            v20 = 1;
          }

          else
          {
            v19 = 1;
          }
        }

        ++v22;
      }

      while (v18 != v22);
      v33 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v18 = v33;
    }

    while (v33);

    if (v19)
    {
      v7 = v39;
      v34 = v20 ^ 1 | v38;
LABEL_26:
      v35 = v34 & 1;
      goto LABEL_28;
    }

    v35 = 2;
    v7 = v39;
  }

  else
  {

    v35 = 2;
  }

LABEL_28:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (uint64_t)containsCoordinate:()MNExtras arrivalRegionType:
{
  v7 = [[MNLocation alloc] initWithLatitude:a2 longitude:a3];
  v8 = [self containsLocation:v7 arrivalRegionType:a5];

  return v8;
}

@end