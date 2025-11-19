@interface MNLocationSimulationState
@end

@implementation MNLocationSimulationState

void __107___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingLocation_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3, 1);
}

void __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) _scoreForRoad:*(a1 + 56) coordinate:*(a1 + 64)];
  v5 = *(*(a1 + 40) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

void __84___MNLocationSimulationState_SearchingForParkingBeforeArrival__findParkingLocation___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 coordinates3d];
    v4 = v3 + 24 * [*(*(*(a1 + 40) + 8) + 40) coordinateCount];
    v6 = *(v4 - 24);
    v5 = *(v4 - 16);
    v7 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v6, v5}];
    v8 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(*(a1 + 40) + 8) + 40) internalRoadName];
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Using %@ for parking (%f, %f)", &v12, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Unable to find road for parking.", &v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __93___MNLocationSimulationState_SearchingForParkingBeforeArrival__findRouteToParkingDestination__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *MEMORY[0x1E69A1928];
  v7 = *(a1 + 32);
  v11 = a3;
  v8 = [v7 data];
  [v8 setLastRouteCoordinate:v6];

  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v5;

  (*(v11 + 2))(v11, 0, 0);
}

void __100___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation_stepFinishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3, 1);
}

uint64_t __70___MNLocationSimulationState_SearchingForOffRoute__nextOffRouteTarget__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "roadID")}];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    if (![v3 isDrivable])
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 40);
  }

  if (v7 == 2)
  {
    if (![v3 walkableSide])
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 40);
  }

  if (v7 != 3 || [v3 bikeableSide])
  {
    v6 = 1;
    goto LABEL_12;
  }

LABEL_2:
  v6 = 0;
LABEL_12:

  return v6;
}

uint64_t __70___MNLocationSimulationState_SearchingForOffRoute__nextOffRouteTarget__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 lastCoordinate2D];
  [v5 distanceToRouteFrom:?];
  v8 = v7;
  v9 = *(a1 + 32);
  [v6 lastCoordinate2D];
  v11 = v10;
  v13 = v12;

  [v9 distanceToRouteFrom:{v11, v13}];
  v15 = v14;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v18 = [v16 compare:v17];

  return v18;
}

void __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 latLng];
    [v8 lat];
    v10 = v9;
    v11 = [v5 latLng];
    [v11 lng];
    v14 = 134218240;
    v15 = v10;
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Looking for route to off route location: %f, %f", &v14, 0x16u);
  }

  [*(a1 + 32) _findRouteToOffRouteLocation:v5 stepFinishedHandler:v6];
  v13 = *MEMORY[0x1E69E9840];
}

void __79___MNLocationSimulationState_SearchingForOffRoute__findRouteToOffRouteLocation__block_invoke_264(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *MEMORY[0x1E69A1928];
    v7 = v4;
    v6 = [*(a1 + 32) data];
    [v6 setLastRouteCoordinate:v5];

    objc_storeStrong((*(a1 + 32) + 32), a2);
    v4 = v7;
  }
}

@end