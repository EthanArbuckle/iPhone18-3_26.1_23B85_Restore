@interface MNAnnouncementEngine
- (BOOL)_advanceToResolveConflict:(id)a3;
- (BOOL)_compressToResolveConflict:(id)a3;
- (BOOL)_delayToResolveConflict:(id)a3;
- (double)_canAdvanceEvent:(id)a3;
- (double)_canDelayEvent:(id)a3;
- (id)nextEvent;
- (void)_dropToResolveConflict:(id)a3;
- (void)planForEvents:(id)a3 distance:(double)a4 speed:(double)a5 previousEvent:(id)a6 timeSinceLastEvent:(double)a7 durations:(id)a8;
@end

@implementation MNAnnouncementEngine

- (void)_dropToResolveConflict:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstEvent];
  v6 = [v4 secondEvent];
  v7 = GetAudioLogForMNAnnouncementEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v4 firstEvent];
    v9 = [v4 secondEvent];
    *buf = 138478083;
    v29 = v8;
    v30 = 2113;
    v31 = v9;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Comparing events: %{private}@, %{private}@", buf, 0x16u);
  }

  v10 = [v4 firstEvent];
  v11 = [v10 event];
  v12 = [v4 secondEvent];
  v13 = [v12 event];
  v14 = [v11 comparePriority:v13];

  if (v14 == -1)
  {
    v15 = [v4 secondEvent];

    v16 = [v4 firstEvent];

    v6 = v16;
    v5 = v15;
  }

  [v5 setIncludeInPlan:0];
  [v6 setVariantIndex:0];
  v17 = [v6 event];
  speed = self->_speed;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __47__MNAnnouncementEngine__dropToResolveConflict___block_invoke;
  v25 = &unk_1E842B518;
  v26 = self;
  v19 = v6;
  v27 = v19;
  [v17 triggerDistanceForSpeed:&v22 andDuration:speed];
  [v19 setTriggerDistance:{v22, v23, v24, v25, v26}];

  v20 = GetAudioLogForMNAnnouncementEngineCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v29 = v5;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "Dropping event to resolve conflict: %{private}@", buf, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

double __47__MNAnnouncementEngine__dropToResolveConflict___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) event];
  v3 = [v2 uniqueID];
  v4 = [v1 objectForKeyedSubscript:v3];

  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (BOOL)_compressToResolveConflict:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 announcementsAreSimilar])
  {
    v5 = 0;
    goto LABEL_24;
  }

  [v4 desiredTimeGap];
  v7 = v6;
  [v4 timeGap];
  v9 = v7 - v8;
  v10 = [v4 firstEvent];
  v11 = [v4 secondEvent];
  v12 = [v11 event];
  [v12 triggerDistanceForSpeed:&__block_literal_global_793 andDuration:self->_speed];
  v14 = v13;
  v15 = [v11 event];
  [v15 triggerDistanceForSpeed:&__block_literal_global_6 andDuration:self->_speed];
  v17 = v16;

  v19 = 0.0;
  if (v9 <= 0.0)
  {
    goto LABEL_23;
  }

  *&v18 = 138477827;
  v62 = v18;
  while (1)
  {
    v20 = v10;
    v21 = v20;
    if (v14 >= v17)
    {
      goto LABEL_17;
    }

    v22 = [v20 variantIndex] + 1;
    v23 = [v21 announcementDurations];
    v24 = [v23 count];

    if (v22 == v24)
    {
LABEL_7:
      v25 = v11;

      v21 = v25;
      goto LABEL_17;
    }

    v26 = [v11 variantIndex] + 1;
    v27 = [v11 announcementDurations];
    v28 = [v27 count];

    if (v26 != v28)
    {
      v29 = 1.0;
      v30 = 1.0;
      if ([v21 variantIndex])
      {
        v31 = [v21 announcementDurations];
        v32 = [v31 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex")}];
        [v32 doubleValue];
        v34 = v33;
        v35 = [v21 announcementDurations];
        v36 = [v35 objectAtIndexedSubscript:0];
        [v36 doubleValue];
        v30 = v34 / v37;
      }

      if ([v11 variantIndex])
      {
        v38 = [v11 announcementDurations];
        v39 = [v38 objectAtIndexedSubscript:{objc_msgSend(v11, "variantIndex")}];
        [v39 doubleValue];
        v41 = v40;
        v42 = [v11 announcementDurations];
        v43 = [v42 objectAtIndexedSubscript:0];
        [v43 doubleValue];
        v29 = v41 / v44;
      }

      if (v30 == v29)
      {
        v45 = [v21 event];
        v46 = [v11 event];
        v47 = [v45 comparePriority:v46];

        if (v47 == -1)
        {
          goto LABEL_7;
        }
      }

      else if (v30 < v29)
      {
        goto LABEL_7;
      }
    }

LABEL_17:
    v48 = [v21 variantIndex] + 1;
    v49 = [v21 announcementDurations];
    v50 = [v49 count];

    if (v48 >= v50)
    {
      break;
    }

    v51 = [v21 announcementDurations];
    v52 = [v51 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex")}];
    [v52 doubleValue];
    v54 = v53;
    v55 = [v21 announcementDurations];
    v56 = [v55 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex") + 1}];
    [v56 doubleValue];
    v58 = v57;

    [v21 setVariantIndex:{objc_msgSend(v21, "variantIndex") + 1}];
    v59 = GetAudioLogForMNAnnouncementEngineCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v62;
      v64 = v21;
      _os_log_impl(&dword_1D311E000, v59, OS_LOG_TYPE_DEFAULT, "Compressing event to resolve conflict: %{private}@", buf, 0xCu);
    }

    v19 = v54 + v19 - v58;

    if (v19 >= v9)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v5 = v19 >= v9;

LABEL_24:
  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)_canDelayEvent:(id)a3
{
  v4 = a3;
  [v4 completionDistance];
  v6 = v5;
  v7 = [v4 event];
  [v7 endValidDistance];
  v9 = v6 - v8;

  v10 = v9 / self->_speed;
  v11 = [(MNAnnouncementEngine *)self plan];
  v12 = [v11 plannedEvents];
  v13 = [v12 indexOfObject:v4];

  for (i = v13 + 1; ; ++i)
  {
    v15 = [(MNAnnouncementEngine *)self plan];
    v16 = [v15 plannedEvents];
    v17 = [v16 count];

    if (i >= v17)
    {
      break;
    }

    v18 = [(MNAnnouncementEngine *)self plan];
    v19 = [v18 plannedEvents];
    v20 = [v19 objectAtIndexedSubscript:i];

    if ([v20 includeInPlan])
    {
      v21 = [v20 event];
      v22 = [v21 announcements];
      v23 = [v22 count];

      if (v23)
      {
        if (v20)
        {
          [v4 completionDistance];
          v25 = v24;
          [v20 triggerDistance];
          v27 = (v25 - v26) / self->_speed;
          [MNAnnouncementPlan desiredTimeGapBetweenEvent:v4 andEvent:v20];
          v10 = fmin(v27 - v28, v10);
        }

        break;
      }
    }
  }

  return fmax(v10, 0.0);
}

- (BOOL)_delayToResolveConflict:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 announcementsAreSimilar])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 firstEvent];
    v7 = [v6 event];
    [v7 startValidDistance];
    v9 = v8;
    v10 = [v4 firstEvent];
    v11 = [v10 event];
    [v11 endValidDistance];
    v13 = v9 - v12;

    v14 = [v4 secondEvent];
    v15 = [v14 event];
    [v15 startValidDistance];
    v17 = v16;
    v18 = [v4 secondEvent];
    v19 = [v18 event];
    [v19 endValidDistance];
    v21 = v20;

    if (v13 <= v17 + 300.0 - v21)
    {
      goto LABEL_9;
    }

    v22 = [v4 secondEvent];
    v23 = [v22 announcementDurations];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 doubleValue];
    v26 = v25;

    v27 = [v4 secondEvent];
    [v27 triggerDistance];
    v29 = v28;
    v30 = [v4 firstEvent];
    [v30 triggerDistance];
    v32 = v29 - v31;
    speed = self->_speed;

    [v4 desiredTimeGap];
    v35 = v26 + v32 * speed + v34;
    v36 = [v4 secondEvent];
    [v36 setIncludeInPlan:0];

    v37 = [v4 firstEvent];
    [(MNAnnouncementEngine *)self _canDelayEvent:v37];
    v39 = v38;

    v40 = [v4 secondEvent];
    [v40 setIncludeInPlan:1];

    if (v39 < v35 || v35 <= 0.0)
    {
LABEL_9:
      [v4 desiredTimeGap];
      v48 = v47;
      [v4 timeGap];
      v50 = v48 - v49;
      v51 = [v4 secondEvent];
      [(MNAnnouncementEngine *)self _canDelayEvent:v51];
      v53 = v52;

      v54 = fmin(v50, v53);
      if (v54 > 0.0)
      {
        v55 = [v4 secondEvent];
        v56 = self->_speed;
        [v55 triggerDistance];
        [v55 setTriggerDistance:v57 - v56 * v54];

        v58 = GetAudioLogForMNAnnouncementEngineCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [v4 secondEvent];
          v62 = 134218243;
          v63 = v54;
          v64 = 2113;
          v65 = v59;
          _os_log_impl(&dword_1D311E000, v58, OS_LOG_TYPE_DEFAULT, "Delaying second event %.2f seconds to resolve conflict: %{private}@", &v62, 0x16u);
        }
      }

      v5 = v53 >= v50;
    }

    else
    {
      v41 = [v4 firstEvent];
      v42 = self->_speed;
      [v41 triggerDistance];
      [v41 setTriggerDistance:v43 - v42 * v35];

      v44 = [(MNAnnouncementEngine *)self plan];
      [v44 sortEvents];

      v45 = GetAudioLogForMNAnnouncementEngineCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v4 firstEvent];
        v62 = 134218243;
        v63 = v35;
        v64 = 2113;
        v65 = v46;
        _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_DEFAULT, "Delaying first event %.2f seconds to resolve conflict: %{private}@", &v62, 0x16u);
      }

      v5 = 1;
    }
  }

  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)_canAdvanceEvent:(id)a3
{
  v4 = a3;
  distance = self->_distance;
  v6 = [v4 event];
  [v6 startValidDistance];
  v8 = v7;

  [v4 triggerDistance];
  v10 = (fmin(distance, v8) - v9) / self->_speed;
  v11 = [(MNAnnouncementEngine *)self plan];
  v12 = [v11 plannedEvents];
  v13 = [v12 indexOfObject:v4];

  if (v13 >= 1)
  {
    v14 = v13 + 1;
    while (1)
    {
      v15 = [(MNAnnouncementEngine *)self plan];
      v16 = [v15 plannedEvents];
      v17 = [v16 objectAtIndexedSubscript:v14 - 2];

      if ([v17 includeInPlan])
      {
        v18 = [v17 event];
        v19 = [v18 announcements];
        v20 = [v19 count];

        if (v20)
        {
          break;
        }
      }

      if (--v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    if (v17)
    {
      [v17 completionDistance];
      v22 = v21;
      [v4 triggerDistance];
      v24 = (v22 - v23) / self->_speed;
      [MNAnnouncementPlan desiredTimeGapBetweenEvent:v17 andEvent:v4];
      v10 = fmin(v24 - v25, v10);
    }
  }

LABEL_9:

  return fmax(v10, 0.0);
}

- (BOOL)_advanceToResolveConflict:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 announcementsAreSimilar])
  {
    v5 = 0;
  }

  else
  {
    [v4 desiredTimeGap];
    v7 = v6;
    [v4 timeGap];
    v9 = v7 - v8 + 1.0;
    v10 = [v4 firstEvent];
    [(MNAnnouncementEngine *)self _canAdvanceEvent:v10];
    v12 = v11;

    v13 = fmin(v9, v12);
    if (v13 > 0.0)
    {
      v14 = fmin(self->_speed * v12, (self->_speed + 5.0) * v13);
      v15 = [v4 firstEvent];
      [v15 triggerDistance];
      [v15 setTriggerDistance:v16 + v14];

      v17 = GetAudioLogForMNAnnouncementEngineCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 firstEvent];
        v21 = 134218243;
        v22 = v13;
        v23 = 2113;
        v24 = v18;
        _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Advancing first event %.2f seconds to resolve conflict: %{private}@", &v21, 0x16u);
      }
    }

    v5 = v12 >= v9;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)nextEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MNAnnouncementEngine *)self plan];
  v4 = [v3 plannedEvents];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 includeInPlan])
        {
          distance = self->_distance;
          [v9 triggerDistance];
          if (distance <= v11)
          {
            v12 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)planForEvents:(id)a3 distance:(double)a4 speed:(double)a5 previousEvent:(id)a6 timeSinceLastEvent:(double)a7 durations:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a8;
  objc_storeStrong(&self->_events, a3);
  self->_distance = a4;
  self->_speed = a5;
  objc_storeStrong(&self->_durations, a8);
  v18 = [[MNAnnouncementPlan alloc] initWithEvents:v15 distance:v17 speed:a4 durations:a5];
  [(MNAnnouncementEngine *)self setPlan:v18];

  if (v16)
  {
    v19 = [(MNAnnouncementEngine *)self plan];
    v20 = [v19 plannedEvents];
    v21 = [v20 count];

    if (v21)
    {
      if (a7 > 0.0)
      {
        v22 = [(MNAnnouncementEngine *)self plan];
        v23 = [v22 plannedEvents];
        v24 = [v23 firstObject];

        [MNAnnouncementPlan desiredTimeGapBetweenEvent:v16 andEvent:v24];
        if (v25 > a7)
        {
          v31 = v25;
          [(MNAnnouncementEngine *)self _canDelayEvent:v24];
          v33 = v32;
          [v24 setTriggerDistance:0.0];
          v34 = GetAudioLogForMNAnnouncementEngineCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v36 = 134218243;
            v37 = fmin(v31 - a7, v33);
            v38 = 2113;
            v39 = v24;
            _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_DEBUG, "Delaying event %.2f seconds due to recent announcement: %{private}@", &v36, 0x16u);
          }

LABEL_22:
          goto LABEL_23;
        }
      }
    }
  }

  v26 = [(MNAnnouncementEngine *)self plan];
  v27 = [v26 nextConflict];

  if (v27)
  {
    v28 = 100;
    do
    {
      if (!v28)
      {

        goto LABEL_17;
      }

      if (![(MNAnnouncementEngine *)self _advanceToResolveConflict:v27]&& ![(MNAnnouncementEngine *)self _delayToResolveConflict:v27]&& ![(MNAnnouncementEngine *)self _compressToResolveConflict:v27])
      {
        [(MNAnnouncementEngine *)self _dropToResolveConflict:v27];
      }

      v29 = [(MNAnnouncementEngine *)self plan];
      v30 = [v29 nextConflict];

      --v28;
      v27 = v30;
    }

    while (v30);
    if (v28)
    {
      goto LABEL_23;
    }

LABEL_17:
    v24 = GetAudioLogForMNAnnouncementEngineCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Infinite loop in resolving guidance event conflicts.", &v36, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v35 = *MEMORY[0x1E69E9840];
}

@end