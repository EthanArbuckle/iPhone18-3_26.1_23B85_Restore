@interface __MNDepartureExitedArrivalRegionCondition
- (__MNDepartureExitedArrivalRegionCondition)initWithUpdater:(id)updater arrivalRegions:(id)regions;
- (double)scoreForLocation:(id)location;
@end

@implementation __MNDepartureExitedArrivalRegionCondition

- (double)scoreForLocation:(id)location
{
  v44 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (!WeakRetained)
  {
    v29 = -1.0;
    goto LABEL_30;
  }

  if ([(NSMutableArray *)self->_regionDepartureHistory count]> self->_numHistoricalLocations - 1)
  {
    [(NSMutableArray *)self->_regionDepartureHistory removeObjectAtIndex:0];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = self->_arrivalRegions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v7)
  {

LABEL_21:
    v28 = MEMORY[0x1E695E110];
    goto LABEL_22;
  }

  v8 = v7;
  selfCopy = self;
  v9 = 0;
  v10 = *v40;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v39 + 1) + 8 * i);
      if ([v12 arrivalRegionAction] == 5 || objc_msgSend(v12, "arrivalRegionAction") == 2)
      {
        roadMatch = [locationCopy roadMatch];

        arrivalRegion = [v12 arrivalRegion];
        if (roadMatch)
        {
          roadMatch2 = [locationCopy roadMatch];
          [roadMatch2 coordinateOnRoad];
          v17 = v16;
          v19 = v18;
          roadMatch3 = [locationCopy roadMatch];
          [roadMatch3 roadWidth];
          v22 = [arrivalRegion containsCoordinate:v17 radius:{v19, v21}];
        }

        else
        {
          roadMatch2 = [locationCopy rawLocation];
          [roadMatch2 coordinate];
          v24 = v23;
          v26 = v25;
          [locationCopy horizontalAccuracy];
          v22 = [arrivalRegion containsCoordinate:v24 radius:{v26, v27}];
        }

        v9 |= v22 ^ 1;
      }
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v8);

  self = selfCopy;
  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = MEMORY[0x1E695E118];
LABEL_22:
  [(NSMutableArray *)self->_regionDepartureHistory addObject:v28];
  v30 = ~(-1 << LODWORD(self->_numHistoricalLocations));
  v31 = [(NSMutableArray *)self->_regionDepartureHistory count];
  if (v31)
  {
    v32 = v31;
    v33 = 0.0;
    do
    {
      v34 = [(NSMutableArray *)self->_regionDepartureHistory objectAtIndex:--v32];
      bOOLValue = [v34 BOOLValue];

      if (bOOLValue)
      {
        v33 = v33 + (1 << v32);
      }
    }

    while (v32);
  }

  else
  {
    v33 = 0.0;
  }

  v29 = v33 / v30;
LABEL_30:

  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

- (__MNDepartureExitedArrivalRegionCondition)initWithUpdater:(id)updater arrivalRegions:(id)regions
{
  updaterCopy = updater;
  regionsCopy = regions;
  v14.receiver = self;
  v14.super_class = __MNDepartureExitedArrivalRegionCondition;
  v8 = [(__MNDepartureExitedArrivalRegionCondition *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_updater, updaterCopy);
    objc_storeStrong(&v9->_arrivalRegions, regions);
    v9->_numHistoricalLocations = GEOConfigGetUInteger();
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9->_numHistoricalLocations];
    regionDepartureHistory = v9->_regionDepartureHistory;
    v9->_regionDepartureHistory = v10;

    v12 = v9;
  }

  return v9;
}

@end