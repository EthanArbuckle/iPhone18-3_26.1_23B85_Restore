@interface MNTracePlayer
- (BOOL)requestDirectionsNearTimestamp:(double)a3 withHandler:(id)a4;
- (MNTracePlayer)initWithPath:(id)a3 outError:(id *)a4;
- (MNTracePlayer)initWithTrace:(id)a3;
- (double)currentTime;
- (id)_changeRouteRowForTimestamp:(double)a3;
- (id)_directionsRowForChangeRouteRow:(id)a3;
- (id)_etauRowForChangeRouteRow:(id)a3;
- (id)_locationRowBeforeTimestamp:(double)a3;
- (id)_locationWithCurrentDate:(id)a3;
- (id)_routeForRouteChangeRow:(id)a3;
- (id)guidanceEventNearTimestamp:(double)a3;
- (unint64_t)_directionsRowIndexBeforeTimestamp:(double)a3;
- (void)_createTimelineStreams;
- (void)dealloc;
- (void)jumpToBookmarkAtIndex:(unint64_t)a3;
- (void)jumpToLocationAtIndex:(unint64_t)a3;
- (void)jumpToTime:(double)a3;
- (void)pause;
- (void)resume;
- (void)setShouldPlayETARequests:(BOOL)a3;
- (void)setShouldPlayNetworkEvents:(BOOL)a3;
- (void)setSpeedMultiplier:(double)a3;
- (void)skipByTimeInterval:(double)a3;
- (void)startAtLocationIndex:(unint64_t)a3;
- (void)stop;
@end

@implementation MNTracePlayer

- (id)_routeForRouteChangeRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 directionsResponseID];

    if (v6)
    {
      v7 = [(MNTracePlayer *)self _directionsRowForChangeRouteRow:v5];
      if (v7)
      {
        v8 = v7;
LABEL_5:
        v9 = objc_alloc(MEMORY[0x1E69A2538]);
        v10 = [v8 waypoints];
        v11 = [v8 request];
        v12 = [v11 routeAttributes];
        v13 = [v8 response];
        v14 = [v8 request];
        v15 = [v9 initWithWaypoints:v10 routeAttributes:v12 directionsResponse:v13 directionsRequest:v14];

        v16 = [v15 allRouteInfos];
        goto LABEL_6;
      }
    }

    else
    {
      v20 = [v5 etauResponseID];

      if (v20)
      {
        v21 = [(MNTracePlayer *)self _etauRowForChangeRouteRow:v5];
        v8 = v21;
        if (!v21 || ([v21 requestTimestamp], v22 = -[MNTracePlayer _directionsRowIndexBeforeTimestamp:](self, "_directionsRowIndexBeforeTimestamp:"), -[MNTrace directions](self->_trace, "directions"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22 >= v24))
        {
          v19 = 0;
LABEL_15:

          goto LABEL_19;
        }

        v25 = [(MNTrace *)self->_trace directions];
        v15 = [v25 objectAtIndexedSubscript:v22];

        v26 = objc_alloc(MEMORY[0x1E69A2538]);
        v27 = [v15 waypoints];
        v28 = [v15 request];
        v29 = [v28 routeAttributes];
        v30 = [v8 response];
        v31 = [v15 response];
        v32 = [v31 styleAttributes];
        v33 = [v26 initWithWaypoints:v27 routeAttributes:v29 etauResponse:v30 styleAttributes:v32];

        v16 = [v33 allETAUAlternateRouteInfos];

LABEL_6:
        v17 = [v5 routeIndex];
        if (v17 >= [v16 count])
        {
          v19 = 0;
        }

        else
        {
          v18 = [v16 objectAtIndexedSubscript:{objc_msgSend(v5, "routeIndex")}];
          v19 = [v18 route];
        }

        v8 = v16;
        goto LABEL_15;
      }

      [v5 timestamp];
      v34 = [(MNTracePlayer *)self _directionsRowIndexBeforeTimestamp:?];
      v35 = [(MNTrace *)self->_trace directions];
      v36 = [v35 count];

      if (v34 < v36)
      {
        v37 = [(MNTrace *)self->_trace directions];
        v8 = [v37 objectAtIndexedSubscript:v34];

        goto LABEL_5;
      }
    }
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (id)_etauRowForChangeRouteRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 etauResponseID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MNTraceETAUpdateRow);
    [v5 timestamp];
    [(MNTraceETAUpdateRow *)v7 setResponseTimestamp:?];
    v8 = [(MNTrace *)self->_trace etaUpdates];
    v9 = [(MNTrace *)self->_trace etaUpdates];
    v10 = [v8 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v9 usingComparator:{"count"), 1024, &__block_literal_global_139}];

    if (v10)
    {
      v11 = v10 - 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(MNTrace *)self->_trace etaUpdates];
    v13 = [v12 count];

    v14 = 0;
    if (v11 < v13 && (v11 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v15 = [(MNTrace *)self->_trace etaUpdates];
        v14 = [v15 objectAtIndexedSubscript:v11];

        v16 = [v14 response];
        v17 = [v16 responseId];
        v18 = [v5 etauResponseID];
        v19 = [v17 isEqualToData:v18];

        if (v19)
        {
          break;
        }

        if (v11-- <= 0)
        {
          v14 = 0;
          break;
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __43__MNTracePlayer__etauRowForChangeRouteRow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 responseTimestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 responseTimestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_directionsRowForChangeRouteRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 directionsResponseID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [v5 timestamp];
    v7 = [(MNTracePlayer *)self _directionsRowIndexBeforeTimestamp:?];
    v8 = [(MNTrace *)self->_trace directions];
    v9 = [v8 count];

    v10 = 0;
    if (v7 < v9 && (v7 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v11 = [(MNTrace *)self->_trace directions];
        v10 = [v11 objectAtIndexedSubscript:v7];

        v12 = [v10 response];
        v13 = [v12 directionsResponseID];
        v14 = [v5 directionsResponseID];
        v15 = [v13 isEqualToData:v14];

        if (v15)
        {
          break;
        }

        if (v7-- <= 0)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_directionsRowIndexBeforeTimestamp:(double)a3
{
  v5 = objc_alloc_init(MNTraceDirectionsRow);
  [(MNTraceDirectionsRow *)v5 setResponseTimestamp:a3];
  v6 = [(MNTrace *)self->_trace directions];
  v7 = [(MNTrace *)self->_trace directions];
  v8 = [v6 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &__block_literal_global_135}];

  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __52__MNTracePlayer__directionsRowIndexBeforeTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 responseTimestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 responseTimestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_changeRouteRowForTimestamp:(double)a3
{
  v4 = [(MNTrace *)self->_trace navigationUpdates];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_130];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = objc_alloc_init(MNTraceNavigationUpdatesChangeRouteRow);
  [(MNTraceNavigationUpdatesRow *)v7 setTimestamp:a3];
  v8 = [v6 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), 1024, &__block_literal_global_133_17086}];
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >= [v6 count])
  {
    [v6 firstObject];
  }

  else
  {
    [v6 objectAtIndexedSubscript:v9];
  }
  v10 = ;

  return v10;
}

uint64_t __45__MNTracePlayer__changeRouteRowForTimestamp___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_locationRowBeforeTimestamp:(double)a3
{
  v5 = objc_alloc_init(MNTraceLocationRow);
  [(MNTraceLocationRow *)v5 setTimestamp:a3];
  v6 = [(MNTrace *)self->_trace locations];
  v7 = [(MNTrace *)self->_trace locations];
  v8 = [v6 indexOfObject:v5 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &__block_literal_global_126}];

  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MNTrace *)self->_trace locations];
  v11 = [v10 count];

  v12 = 0;
  if (v9 < v11)
  {
    v13 = [(MNTrace *)self->_trace locations];
    v12 = [v13 objectAtIndexedSubscript:v9];
  }

  return v12;
}

uint64_t __45__MNTracePlayer__locationRowBeforeTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_locationWithCurrentDate:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  if (self->_lastReportedLocation)
  {
    v7 = [v4 timestamp];
    v8 = [(MNLocation *)self->_lastReportedLocation originalDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 < 0.0)
    {
      v11 = v10 / self->_speedMultiplier;
      v12 = [(MNLocation *)self->_lastReportedLocation timestamp];
      [v12 timeIntervalSinceReferenceDate];
      v6 = v13 + v11;
    }
  }

  v31 = 0u;
  memset(v32, 0, 28);
  v30 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (v4)
  {
    [v4 clientLocation];
  }

  *(v29 + 12) = v6;
  v14 = [MNLocation alloc];
  v15 = [v4 matchInfo];
  v23[6] = v30;
  v23[7] = v31;
  v24[0] = v32[0];
  *(v24 + 12) = *(v32 + 12);
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29[0];
  v23[5] = v29[1];
  v23[0] = v25;
  v23[1] = v26;
  v16 = [(MNLocation *)v14 initWithClientLocation:v23 matchInfo:v15];

  v17 = *MEMORY[0x1E69A19F8];
  v18 = *(MEMORY[0x1E69A19F8] + 8);
  if (GEOConfigGetBOOL())
  {
    v19 = [(MNLocation *)v16 uuid];

    if (!v19)
    {
      v20 = [MEMORY[0x1E696AFB0] UUID];
      [(MNLocation *)v16 setUuid:v20];
    }
  }

  v21 = [v4 timestamp];
  [(MNLocation *)v16 setOriginalDate:v21];

  return v16;
}

- (void)setShouldPlayNetworkEvents:(BOOL)a3
{
  if (self->_shouldPlayNetworkEvents != a3)
  {
    self->_shouldPlayNetworkEvents = a3;
    if (a3)
    {
      v4 = [(MNTrace *)self->_trace networkEvents];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [MNTracePlayerTimelineStream alloc];
        v7 = [(MNTrace *)self->_trace networkEvents];
        v8 = [(MNTracePlayerTimelineStream *)v6 initWithData:v7];
        networkEventsStream = self->_networkEventsStream;
        self->_networkEventsStream = v8;

        objc_initWeak(&location, self);
        v11 = MEMORY[0x1E69E9820];
        v12 = 3221225472;
        v13 = __44__MNTracePlayer_setShouldPlayNetworkEvents___block_invoke;
        v14 = &unk_1E842FFB8;
        objc_copyWeak(&v15, &location);
        [(MNTracePlayerTimelineStream *)self->_networkEventsStream setHandler:&v11];
        [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:self->_networkEventsStream, v11, v12, v13, v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(MNTracePlayerScheduler *)self->_scheduler removeTimelineStream:self->_networkEventsStream];
      v10 = self->_networkEventsStream;
      self->_networkEventsStream = 0;
    }
  }
}

void __44__MNTracePlayer_setShouldPlayNetworkEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 96) == 1)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained trace];
    v5 = [v4 networkEvents];
    v6 = [v5 objectAtIndexedSubscript:a2];

    [v7[3] tracePlayer:v7 didRecieveNetworkEvent:v6];
    WeakRetained = v7;
  }
}

- (void)setShouldPlayETARequests:(BOOL)a3
{
  if (self->_shouldPlayETARequests != a3)
  {
    self->_shouldPlayETARequests = a3;
    if (a3)
    {
      v4 = [(MNTrace *)self->_trace etaUpdates];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [MNTracePlayerTimelineStream alloc];
        v7 = [(MNTrace *)self->_trace etaUpdates];
        v8 = [(MNTracePlayerTimelineStream *)v6 initWithData:v7];
        etaUpdatesStream = self->_etaUpdatesStream;
        self->_etaUpdatesStream = v8;

        objc_initWeak(&location, self);
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __42__MNTracePlayer_setShouldPlayETARequests___block_invoke;
        v17 = &unk_1E842FFB8;
        objc_copyWeak(&v18, &location);
        [(MNTracePlayerTimelineStream *)self->_etaUpdatesStream setHandler:&v14];
        [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:self->_etaUpdatesStream, v14, v15, v16, v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      v10 = objc_opt_new();
      etaUpdateRequester = self->_etaUpdateRequester;
      self->_etaUpdateRequester = v10;
    }

    else
    {
      [(MNTracePlayerScheduler *)self->_scheduler removeTimelineStream:self->_etaUpdatesStream];
      v12 = self->_etaUpdatesStream;
      self->_etaUpdatesStream = 0;

      v13 = self->_etaUpdateRequester;
      self->_etaUpdateRequester = 0;
    }
  }
}

void __42__MNTracePlayer_setShouldPlayETARequests___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(WeakRetained + 81) == 1)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained trace];
    v5 = [v4 etaUpdates];
    v6 = [v5 objectAtIndex:a2];

    [v7[15] triggerETAUpdateWithETARow:v6];
    WeakRetained = v7;
  }
}

- (void)_createTimelineStreams
{
  objc_initWeak(&location, self);
  v3 = [(MNTrace *)self->_trace locations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MNTracePlayerTimelineStream alloc];
    v6 = [(MNTrace *)self->_trace locations];
    v7 = [(MNTracePlayerTimelineStream *)v5 initWithData:v6];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke;
    v51[3] = &unk_1E842FFB8;
    objc_copyWeak(&v52, &location);
    [(MNTracePlayerTimelineStream *)v7 setHandler:v51];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v7];
    locationStream = self->_locationStream;
    self->_locationStream = v7;

    objc_destroyWeak(&v52);
  }

  v9 = [(MNTrace *)self->_trace vehicleHeadingData];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [MNTracePlayerTimelineStream alloc];
    v12 = [(MNTrace *)self->_trace vehicleHeadingData];
    v13 = [(MNTracePlayerTimelineStream *)v11 initWithData:v12];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_119;
    v49[3] = &unk_1E842FFB8;
    objc_copyWeak(&v50, &location);
    [(MNTracePlayerTimelineStream *)v13 setHandler:v49];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v13];
    objc_destroyWeak(&v50);
  }

  v14 = [(MNTrace *)self->_trace vehicleSpeedData];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [MNTracePlayerTimelineStream alloc];
    v17 = [(MNTrace *)self->_trace vehicleSpeedData];
    v18 = [(MNTracePlayerTimelineStream *)v16 initWithData:v17];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_2;
    v47[3] = &unk_1E842FFB8;
    objc_copyWeak(&v48, &location);
    [(MNTracePlayerTimelineStream *)v18 setHandler:v47];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v18];
    objc_destroyWeak(&v48);
  }

  v19 = [(MNTrace *)self->_trace motionData];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [MNTracePlayerTimelineStream alloc];
    v22 = [(MNTrace *)self->_trace motionData];
    v23 = [(MNTracePlayerTimelineStream *)v21 initWithData:v22];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_3;
    v45[3] = &unk_1E842FFB8;
    objc_copyWeak(&v46, &location);
    [(MNTracePlayerTimelineStream *)v23 setHandler:v45];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v23];
    objc_destroyWeak(&v46);
  }

  v24 = [(MNTrace *)self->_trace headingData];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [MNTracePlayerTimelineStream alloc];
    v27 = [(MNTrace *)self->_trace headingData];
    v28 = [(MNTracePlayerTimelineStream *)v26 initWithData:v27];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_4;
    v43[3] = &unk_1E842FFB8;
    objc_copyWeak(&v44, &location);
    [(MNTracePlayerTimelineStream *)v28 setHandler:v43];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v28];
    objc_destroyWeak(&v44);
  }

  v29 = [(MNTrace *)self->_trace evData];
  v30 = [v29 count];

  if (v30)
  {
    v31 = [MNTracePlayerTimelineStream alloc];
    v32 = [(MNTrace *)self->_trace evData];
    v33 = [(MNTracePlayerTimelineStream *)v31 initWithData:v32];

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_5;
    v41[3] = &unk_1E842FFB8;
    objc_copyWeak(&v42, &location);
    [(MNTracePlayerTimelineStream *)v33 setHandler:v41];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v33];
    objc_destroyWeak(&v42);
  }

  v34 = [(MNTrace *)self->_trace navigationUpdates];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [MNTracePlayerTimelineStream alloc];
    v37 = [(MNTrace *)self->_trace navigationUpdates];
    v38 = [(MNTracePlayerTimelineStream *)v36 initWithData:v37];

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __39__MNTracePlayer__createTimelineStreams__block_invoke_6;
    v39[3] = &unk_1E8430000;
    objc_copyWeak(&v40, &location);
    v39[4] = self;
    [(MNTracePlayerTimelineStream *)v38 setHandler:v39];
    [(MNTracePlayerScheduler *)self->_scheduler addTimelineStream:v38];
    objc_destroyWeak(&v40);
  }

  objc_destroyWeak(&location);
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained trace];
    v8 = [v7 locations];
    v9 = [v8 objectAtIndex:a2];

    v10 = [v9 locationEventType];
    v11 = [v9 location];
    v12 = [v9 error];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19[0] = 67109376;
      v19[1] = a2;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "Trace index: %d | timestamp: %0.2f\n", v19, 0x12u);
    }

    switch(v10)
    {
      case 2:
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19[0]) = 0;
          _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_INFO, "Trace resumes location updates.", v19, 2u);
        }

        [v6[3] tracePlayerDidResumeLocationUpdates:v6];
        break;
      case 1:
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19[0]) = 0;
          _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_INFO, "Trace paused location updates.", v19, 2u);
        }

        [v6[3] tracePlayerDidPauseLocationUpdates:v6];
        break;
      case 0:
        if (v11)
        {
          v14 = [v6 _locationWithCurrentDate:v11];
          [v6[3] tracePlayer:v6 didUpdateLocation:v14];
          v15 = v6[6];
          v6[6] = v14;
LABEL_17:

          break;
        }

        if (v12)
        {
          [v6[3] tracePlayer:v6 didReceiveLocationError:v12];
          v15 = v6[6];
          v6[6] = 0;
          goto LABEL_17;
        }

        break;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_119(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained trace];
    v8 = [v7 vehicleHeadingData];
    v9 = [v8 objectAtIndex:a2];

    [v9 vehicleHeading];
    [v6[3] tracePlayer:v6 didUpdateVehicleHeading:v10 timestamp:?];
  }
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained trace];
    v8 = [v7 vehicleSpeedData];
    v9 = [v8 objectAtIndex:a2];

    [v9 vehicleSpeed];
    [v6[3] tracePlayer:v6 didUpdateVehicleSpeed:v10 timestamp:?];
  }
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained trace];
    v5 = [v4 motionData];
    v6 = [v5 objectAtIndex:a2];

    [v7[3] tracePlayer:v7 didUpdateMotion:objc_msgSend(v6 exitType:"motionType") confidence:{objc_msgSend(v6, "exitType"), objc_msgSend(v6, "confidence")}];
    WeakRetained = v7;
  }
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained trace];
    v6 = [v5 headingData];
    v7 = [v6 objectAtIndex:a2];

    [v7 trueHeading];
    v9 = v8;
    [v7 magneticHeading];
    v11 = v10;
    [v7 headingAccuracy];
    memset(v14, 0, 24);
    v14[3] = v11;
    v14[4] = v9;
    v14[5] = v12;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    v13 = [objc_alloc(MEMORY[0x1E695FBD0]) initWithClientHeading:v14];
    [v4[3] tracePlayer:v4 didUpdateHeading:v13];
  }
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained trace];
    v5 = [v4 evData];
    v6 = [v5 objectAtIndexedSubscript:a2];

    v7 = v9[3];
    v8 = [v6 vehicle];
    [v7 tracePlayer:v9 didUpdateEVData:v8];

    WeakRetained = v9;
  }
}

void __39__MNTracePlayer__createTimelineStreams__block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v6 = [WeakRetained trace];
    v7 = [v6 navigationUpdates];
    v8 = [v7 objectAtIndex:a2];
    v9 = [v8 navigationUpdateType];

    if (v9 == 2)
    {
      BOOL = GEOConfigGetBOOL();
      v5 = v19;
      if (!BOOL)
      {
        goto LABEL_13;
      }

      v16 = [v19 trace];
      v17 = [v16 navigationUpdates];
      v13 = [v17 objectAtIndex:a2];

      if ([v13 reason] != 1)
      {
        goto LABEL_12;
      }

      v18 = *(*(a1 + 32) + 24);
      v14 = [v13 waypoint];
      [v18 tracePlayer:v19 didResumeNavigatingFromWaypoint:v14 endOfLegIndex:objc_msgSend(v13 reason:{"legIndex"), objc_msgSend(v13, "reason")}];
      goto LABEL_11;
    }

    v5 = v19;
    if (v9 == 1)
    {
      v10 = GEOConfigGetBOOL();
      v5 = v19;
      if (v10)
      {
        v11 = [v19 trace];
        v12 = [v11 navigationUpdates];
        v13 = [v12 objectAtIndex:a2];

        if (![v13 reason])
        {
LABEL_12:

          v5 = v19;
          goto LABEL_13;
        }

        v14 = [v19 _routeForRouteChangeRow:v13];
        if (v14)
        {
          [*(*(a1 + 32) + 24) tracePlayer:v19 didUpdateCurrentRoute:v14 reason:{objc_msgSend(v13, "reason")}];
        }

LABEL_11:

        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

- (void)setSpeedMultiplier:(double)a3
{
  if (self->_speedMultiplier != a3)
  {
    self->_speedMultiplier = a3;
    [(MNTracePlayerScheduler *)self->_scheduler setSpeedMultiplier:?];
  }
}

- (double)currentTime
{
  traceStartTimestamp = self->_traceStartTimestamp;
  [(MNTracePlayer *)self position];
  return v3 + traceStartTimestamp;
}

- (void)jumpToBookmarkAtIndex:(unint64_t)a3
{
  v5 = [(MNTracePlayer *)self trace];
  v6 = [v5 bookmarks];
  v8 = [v6 objectAtIndex:a3];

  [v8 doubleValue];
  [(MNTracePlayer *)self jumpToTime:v7 + -5.0];
}

- (void)skipByTimeInterval:(double)a3
{
  [(MNTracePlayer *)self position];
  v6 = v5 + a3;

  [(MNTracePlayer *)self jumpToTime:v6];
}

- (void)jumpToLocationAtIndex:(unint64_t)a3
{
  v5 = [(MNTrace *)self->_trace locations];
  v7 = [v5 objectAtIndex:a3];

  [v7 timestamp];
  [(MNTracePlayerScheduler *)self->_scheduler setPosition:?];
  lastReportedLocation = self->_lastReportedLocation;
  self->_lastReportedLocation = 0;

  [(NSMutableArray *)self->_processedWaypointEvents removeAllObjects];
}

- (void)jumpToTime:(double)a3
{
  [(MNTracePlayerScheduler *)self->_scheduler position];
  v6 = v5;
  [(MNTracePlayerScheduler *)self->_scheduler setPosition:a3];
  lastReportedLocation = self->_lastReportedLocation;
  self->_lastReportedLocation = 0;

  [(NSMutableArray *)self->_processedWaypointEvents removeAllObjects];
  if (self->_shouldUpdateRouteWhenJumping)
  {
    v8 = [(MNTracePlayer *)self _changeRouteRowForTimestamp:a3];
    if (!v8)
    {
      v8 = objc_alloc_init(MNTraceNavigationUpdatesChangeRouteRow);
      [(MNTraceNavigationUpdatesRow *)v8 setTimestamp:a3];
    }

    v9 = [(MNTracePlayer *)self _routeForRouteChangeRow:v8];
    if (v9)
    {
      [(GEOObserverHashTable *)self->_observers tracePlayer:self didUpdateCurrentRoute:v9 reason:0];
      v10 = [(MNTracePlayer *)self _locationRowBeforeTimestamp:a3];
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (GEOConfigGetBOOL())
  {
    v8 = objc_alloc_init(MNTraceDirectionsRow);
    [(MNTraceNavigationUpdatesChangeRouteRow *)v8 setRequestTimestamp:a3];
    v11 = [(MNTrace *)self->_trace directions];
    v12 = [(MNTrace *)self->_trace directions];
    v13 = [v11 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(v12 usingComparator:{"count"), 1024, &__block_literal_global_17099}];

    v14 = v13 - 1;
    if (v13 != 1)
    {
      v15 = [(MNTrace *)self->_trace directions];
      v16 = [v15 count];

      if (v14 < v16)
      {
        v17 = [(MNTrace *)self->_trace directions];
        v18 = [v17 objectAtIndexedSubscript:v14];

        observers = self->_observers;
        v20 = [v18 response];
        v21 = [v18 request];
        v22 = [v18 waypoints];
        [(GEOObserverHashTable *)observers tracePlayer:self didJumpToRouteResponse:v20 request:v21 waypoints:v22];
      }
    }

    v9 = objc_alloc_init(MNTraceLocationRow);
    [(MNTraceLocationRow *)v9 setTimestamp:a3];
    v23 = [(MNTrace *)self->_trace locations];
    v24 = [(MNTrace *)self->_trace locations];
    v25 = [v23 indexOfObject:v9 inSortedRange:0 options:objc_msgSend(v24 usingComparator:{"count"), 1024, &__block_literal_global_116}];

    v26 = v25 - 1;
    if (v25 != 1)
    {
      v27 = [(MNTrace *)self->_trace locations];
      v28 = [v27 count];

      if (v26 < v28)
      {
        v29 = [(MNTrace *)self->_trace locations];
        v10 = [v29 objectAtIndexedSubscript:v26];

LABEL_14:
        if ([v10 originalMatchType] == 1)
        {
          v30 = [v10 location];
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:
        v30 = 0;
        goto LABEL_18;
      }
    }

LABEL_16:
    v30 = 0;
LABEL_19:

    goto LABEL_21;
  }

  v30 = 0;
LABEL_21:
  [(GEOObserverHashTable *)self->_observers tracePlayer:self didSeekToTime:v30 fromTime:a3 location:v6];
}

uint64_t __28__MNTracePlayer_jumpToTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __28__MNTracePlayer_jumpToTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 requestTimestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 requestTimestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)requestDirectionsNearTimestamp:(double)a3 withHandler:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [(MNTrace *)self->_trace directions];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v8)
  {

    goto LABEL_19;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v42;
  v12 = 978307200.0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v41 + 1) + 8 * i);
      [v14 requestTimestamp];
      v16 = vabdd_f64(v15, a3);
      if (v16 < v12)
      {
        v17 = v14;

        v12 = v16;
        v10 = v17;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
  }

  while (v9);

  if (v12 >= 5.0)
  {
    if (v10)
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        [v10 requestTimestamp];
        v32 = v31;
        [(MNTracePlayer *)self position];
        *buf = 134218240;
        v46 = v32;
        v47 = 2048;
        v48 = v33;
        _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_INFO, "Found directions request, but request time (%0.2f) was not close to current playback time (%0.2f)", buf, 0x16u);
      }

LABEL_21:
      v29 = 0;
      goto LABEL_22;
    }

LABEL_19:
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Didn't find any directions in trace.", buf, 2u);
    }

    goto LABEL_21;
  }

  v18 = [v10 response];
  v19 = [v10 error];
  [v10 requestTimestamp];
  v21 = v20;
  [v10 responseTimestamp];
  v23 = v22 - v21;
  v24 = fmin(v22 - v21, 0.01);
  v25 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v46 = v21;
    v47 = 2048;
    v48 = v24;
    v49 = 2048;
    v50 = v23;
    _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_INFO, "Found nearby request with timestamp %0.2f. Playing back with response delay of %0.1f seconds (original delay %0.1f seconds)", buf, 0x20u);
  }

  v26 = dispatch_time(0, (v24 * 1000000000.0));
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __60__MNTracePlayer_requestDirectionsNearTimestamp_withHandler___block_invoke;
  v36[3] = &unk_1E842FF40;
  v37 = v18;
  v39 = v19;
  v40 = v6;
  v38 = v10;
  v27 = v19;
  v10 = v10;
  v28 = v18;
  dispatch_after(v26, MEMORY[0x1E69E96A0], v36);

  v29 = 1;
LABEL_22:

  v34 = *MEMORY[0x1E69E9840];
  return v29;
}

void __60__MNTracePlayer_requestDirectionsNearTimestamp_withHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v9 = [*(a1 + 40) waypoints];
      v3 = [*(a1 + 40) request];
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) error];
      (*(v2 + 16))(v2, v9, v3, v4, v5, 0);
    }
  }

  else if (*(a1 + 48))
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "Found directions request, but no response", buf, 2u);
    }
  }
}

- (id)guidanceEventNearTimestamp:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(MNTrace *)self->_trace navigationEvents];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

    v8 = 0;
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v20;
  v10 = 978307200.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      [v12 relativeTimestamp];
      v14 = vabdd_f64(v13, a3);
      if (v14 < v10)
      {
        v15 = v12;

        v10 = v14;
        v8 = v15;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  v16 = 0;
  if (v8 && v10 < 5.0)
  {
    if ([(NSMutableArray *)self->_processedWaypointEvents indexOfObject:v8]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_processedWaypointEvents addObject:v8];
      v8 = v8;
      v16 = v8;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)resume
{
  if (self->_isPlaying && self->_isPaused)
  {
    self->_isPaused = 0;
    [(MNTracePlayerScheduler *)self->_scheduler resume];
    observers = self->_observers;

    [(GEOObserverHashTable *)observers tracePlayerDidResume:self];
  }
}

- (void)pause
{
  if (self->_isPlaying && !self->_isPaused)
  {
    self->_isPaused = 1;
    [(MNTracePlayerScheduler *)self->_scheduler pause];
    observers = self->_observers;

    [(GEOObserverHashTable *)observers tracePlayerDidPause:self];
  }
}

- (void)stop
{
  v3 = +[MNTimeManager sharedManager];
  [v3 setProvider:0];

  [(MNTracePlayerScheduler *)self->_scheduler pause];
  *&self->_isPlaying = 256;
  [(MNTracePlayerScheduler *)self->_scheduler removeAllTimelineStreams];
  locationStream = self->_locationStream;
  self->_locationStream = 0;

  etaUpdatesStream = self->_etaUpdatesStream;
  self->_etaUpdatesStream = 0;

  observers = self->_observers;

  [(GEOObserverHashTable *)observers tracePlayerDidStop:self];
}

- (void)startAtLocationIndex:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_isPlaying)
  {
LABEL_15:
    v22 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = [(MNTrace *)self->_trace locations];
  v6 = [v5 count];

  if (!v6)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_ERROR, "Trace is empty", buf, 2u);
    }

    goto LABEL_15;
  }

  v7 = [(MNTrace *)self->_trace locations];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(MNTrace *)self->_trace locations];
      *buf = 67109376;
      v25 = a3;
      v26 = 1024;
      v27 = [v21 count];
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "Starting index (%d) out of bounds of location array: [0,%d]", buf, 0xEu);
    }

    goto LABEL_15;
  }

  if (self->_traceStartTimestamp == 0.0)
  {
    v9 = [(MNTrace *)self->_trace locations];
    v10 = [v9 firstObject];

    v11 = [v10 location];
    v12 = [v11 timestamp];
    [v12 timeIntervalSinceReferenceDate];
    self->_traceStartTimestamp = v13;
  }

  *&self->_isPlaying = 1;
  [(MNTracePlayerScheduler *)self->_scheduler resume];
  v14 = +[MNTimeManager sharedManager];
  [v14 setProvider:self];

  [(GEOObserverHashTable *)self->_observers tracePlayerDidStart:self];
  v15 = [(MNTrace *)self->_trace locations];
  v23 = [v15 objectAtIndex:a3];

  v16 = [v23 location];
  v17 = [(MNTracePlayer *)self _locationWithCurrentDate:v16];
  [(GEOObserverHashTable *)self->_observers tracePlayer:self didUpdateLocation:v17];
  [v23 timestamp];
  [(MNTracePlayerScheduler *)self->_scheduler setPosition:?];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = +[MNTimeManager sharedManager];
  [v3 setProvider:0];

  [(MNTracePlayerScheduler *)self->_scheduler setDelegate:0];
  v4.receiver = self;
  v4.super_class = MNTracePlayer;
  [(MNTracePlayer *)&v4 dealloc];
}

- (MNTracePlayer)initWithTrace:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = MNTracePlayer;
  v6 = [(MNTracePlayer *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trace, a3);
    v8 = objc_alloc_init(MNTracePlayerScheduler);
    scheduler = v7->_scheduler;
    v7->_scheduler = v8;

    [(MNTracePlayerScheduler *)v7->_scheduler setDelegate:v7];
    v10 = objc_alloc(MEMORY[0x1E69A22D8]);
    v11 = [v10 initWithProtocol:&unk_1F4EEFF78 queue:MEMORY[0x1E69E96A0]];
    observers = v7->_observers;
    v7->_observers = v11;

    v13 = [(MNTrace *)v7->_trace locations];
    v14 = [v13 lastObject];
    [v14 timestamp];
    v7->_duration = v15;

    [(MNTracePlayer *)v7 setSpeedMultiplier:1.0];
    [(MNTracePlayer *)v7 _createTimelineStreams];
    v16 = [MEMORY[0x1E695DF70] array];
    processedWaypointEvents = v7->_processedWaypointEvents;
    v7->_processedWaypointEvents = v16;

    v18 = v7;
  }

  return v7;
}

- (MNTracePlayer)initWithPath:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MNTraceLoader);
  v8 = [(MNTraceLoader *)v7 loadTraceWithPath:v6 outError:a4];

  if (v8)
  {
    self = [(MNTracePlayer *)self initWithTrace:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end