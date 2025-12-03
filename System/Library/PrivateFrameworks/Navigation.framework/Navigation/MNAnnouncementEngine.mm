@interface MNAnnouncementEngine
- (BOOL)_advanceToResolveConflict:(id)conflict;
- (BOOL)_compressToResolveConflict:(id)conflict;
- (BOOL)_delayToResolveConflict:(id)conflict;
- (double)_canAdvanceEvent:(id)event;
- (double)_canDelayEvent:(id)event;
- (id)nextEvent;
- (void)_dropToResolveConflict:(id)conflict;
- (void)planForEvents:(id)events distance:(double)distance speed:(double)speed previousEvent:(id)event timeSinceLastEvent:(double)lastEvent durations:(id)durations;
@end

@implementation MNAnnouncementEngine

- (void)_dropToResolveConflict:(id)conflict
{
  v32 = *MEMORY[0x1E69E9840];
  conflictCopy = conflict;
  firstEvent = [conflictCopy firstEvent];
  secondEvent = [conflictCopy secondEvent];
  v7 = GetAudioLogForMNAnnouncementEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    firstEvent2 = [conflictCopy firstEvent];
    secondEvent2 = [conflictCopy secondEvent];
    *buf = 138478083;
    v29 = firstEvent2;
    v30 = 2113;
    v31 = secondEvent2;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Comparing events: %{private}@, %{private}@", buf, 0x16u);
  }

  firstEvent3 = [conflictCopy firstEvent];
  event = [firstEvent3 event];
  secondEvent3 = [conflictCopy secondEvent];
  event2 = [secondEvent3 event];
  v14 = [event comparePriority:event2];

  if (v14 == -1)
  {
    secondEvent4 = [conflictCopy secondEvent];

    firstEvent4 = [conflictCopy firstEvent];

    secondEvent = firstEvent4;
    firstEvent = secondEvent4;
  }

  [firstEvent setIncludeInPlan:0];
  [secondEvent setVariantIndex:0];
  event3 = [secondEvent event];
  speed = self->_speed;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __47__MNAnnouncementEngine__dropToResolveConflict___block_invoke;
  v25 = &unk_1E842B518;
  selfCopy = self;
  v19 = secondEvent;
  v27 = v19;
  [event3 triggerDistanceForSpeed:&v22 andDuration:speed];
  [v19 setTriggerDistance:{v22, v23, v24, v25, selfCopy}];

  v20 = GetAudioLogForMNAnnouncementEngineCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v29 = firstEvent;
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

- (BOOL)_compressToResolveConflict:(id)conflict
{
  v65 = *MEMORY[0x1E69E9840];
  conflictCopy = conflict;
  if ([conflictCopy announcementsAreSimilar])
  {
    v5 = 0;
    goto LABEL_24;
  }

  [conflictCopy desiredTimeGap];
  v7 = v6;
  [conflictCopy timeGap];
  v9 = v7 - v8;
  firstEvent = [conflictCopy firstEvent];
  secondEvent = [conflictCopy secondEvent];
  event = [secondEvent event];
  [event triggerDistanceForSpeed:&__block_literal_global_793 andDuration:self->_speed];
  v14 = v13;
  event2 = [secondEvent event];
  [event2 triggerDistanceForSpeed:&__block_literal_global_6 andDuration:self->_speed];
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
    v20 = firstEvent;
    v21 = v20;
    if (v14 >= v17)
    {
      goto LABEL_17;
    }

    v22 = [v20 variantIndex] + 1;
    announcementDurations = [v21 announcementDurations];
    v24 = [announcementDurations count];

    if (v22 == v24)
    {
LABEL_7:
      v25 = secondEvent;

      v21 = v25;
      goto LABEL_17;
    }

    v26 = [secondEvent variantIndex] + 1;
    announcementDurations2 = [secondEvent announcementDurations];
    v28 = [announcementDurations2 count];

    if (v26 != v28)
    {
      v29 = 1.0;
      v30 = 1.0;
      if ([v21 variantIndex])
      {
        announcementDurations3 = [v21 announcementDurations];
        v32 = [announcementDurations3 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex")}];
        [v32 doubleValue];
        v34 = v33;
        announcementDurations4 = [v21 announcementDurations];
        v36 = [announcementDurations4 objectAtIndexedSubscript:0];
        [v36 doubleValue];
        v30 = v34 / v37;
      }

      if ([secondEvent variantIndex])
      {
        announcementDurations5 = [secondEvent announcementDurations];
        v39 = [announcementDurations5 objectAtIndexedSubscript:{objc_msgSend(secondEvent, "variantIndex")}];
        [v39 doubleValue];
        v41 = v40;
        announcementDurations6 = [secondEvent announcementDurations];
        v43 = [announcementDurations6 objectAtIndexedSubscript:0];
        [v43 doubleValue];
        v29 = v41 / v44;
      }

      if (v30 == v29)
      {
        event3 = [v21 event];
        event4 = [secondEvent event];
        v47 = [event3 comparePriority:event4];

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
    announcementDurations7 = [v21 announcementDurations];
    v50 = [announcementDurations7 count];

    if (v48 >= v50)
    {
      break;
    }

    announcementDurations8 = [v21 announcementDurations];
    v52 = [announcementDurations8 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex")}];
    [v52 doubleValue];
    v54 = v53;
    announcementDurations9 = [v21 announcementDurations];
    v56 = [announcementDurations9 objectAtIndexedSubscript:{objc_msgSend(v21, "variantIndex") + 1}];
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

- (double)_canDelayEvent:(id)event
{
  eventCopy = event;
  [eventCopy completionDistance];
  v6 = v5;
  event = [eventCopy event];
  [event endValidDistance];
  v9 = v6 - v8;

  v10 = v9 / self->_speed;
  plan = [(MNAnnouncementEngine *)self plan];
  plannedEvents = [plan plannedEvents];
  v13 = [plannedEvents indexOfObject:eventCopy];

  for (i = v13 + 1; ; ++i)
  {
    plan2 = [(MNAnnouncementEngine *)self plan];
    plannedEvents2 = [plan2 plannedEvents];
    v17 = [plannedEvents2 count];

    if (i >= v17)
    {
      break;
    }

    plan3 = [(MNAnnouncementEngine *)self plan];
    plannedEvents3 = [plan3 plannedEvents];
    v20 = [plannedEvents3 objectAtIndexedSubscript:i];

    if ([v20 includeInPlan])
    {
      event2 = [v20 event];
      announcements = [event2 announcements];
      v23 = [announcements count];

      if (v23)
      {
        if (v20)
        {
          [eventCopy completionDistance];
          v25 = v24;
          [v20 triggerDistance];
          v27 = (v25 - v26) / self->_speed;
          [MNAnnouncementPlan desiredTimeGapBetweenEvent:eventCopy andEvent:v20];
          v10 = fmin(v27 - v28, v10);
        }

        break;
      }
    }
  }

  return fmax(v10, 0.0);
}

- (BOOL)_delayToResolveConflict:(id)conflict
{
  v66 = *MEMORY[0x1E69E9840];
  conflictCopy = conflict;
  if ([conflictCopy announcementsAreSimilar])
  {
    v5 = 0;
  }

  else
  {
    firstEvent = [conflictCopy firstEvent];
    event = [firstEvent event];
    [event startValidDistance];
    v9 = v8;
    firstEvent2 = [conflictCopy firstEvent];
    event2 = [firstEvent2 event];
    [event2 endValidDistance];
    v13 = v9 - v12;

    secondEvent = [conflictCopy secondEvent];
    event3 = [secondEvent event];
    [event3 startValidDistance];
    v17 = v16;
    secondEvent2 = [conflictCopy secondEvent];
    event4 = [secondEvent2 event];
    [event4 endValidDistance];
    v21 = v20;

    if (v13 <= v17 + 300.0 - v21)
    {
      goto LABEL_9;
    }

    secondEvent3 = [conflictCopy secondEvent];
    announcementDurations = [secondEvent3 announcementDurations];
    v24 = [announcementDurations objectAtIndexedSubscript:0];
    [v24 doubleValue];
    v26 = v25;

    secondEvent4 = [conflictCopy secondEvent];
    [secondEvent4 triggerDistance];
    v29 = v28;
    firstEvent3 = [conflictCopy firstEvent];
    [firstEvent3 triggerDistance];
    v32 = v29 - v31;
    speed = self->_speed;

    [conflictCopy desiredTimeGap];
    v35 = v26 + v32 * speed + v34;
    secondEvent5 = [conflictCopy secondEvent];
    [secondEvent5 setIncludeInPlan:0];

    firstEvent4 = [conflictCopy firstEvent];
    [(MNAnnouncementEngine *)self _canDelayEvent:firstEvent4];
    v39 = v38;

    secondEvent6 = [conflictCopy secondEvent];
    [secondEvent6 setIncludeInPlan:1];

    if (v39 < v35 || v35 <= 0.0)
    {
LABEL_9:
      [conflictCopy desiredTimeGap];
      v48 = v47;
      [conflictCopy timeGap];
      v50 = v48 - v49;
      secondEvent7 = [conflictCopy secondEvent];
      [(MNAnnouncementEngine *)self _canDelayEvent:secondEvent7];
      v53 = v52;

      v54 = fmin(v50, v53);
      if (v54 > 0.0)
      {
        secondEvent8 = [conflictCopy secondEvent];
        v56 = self->_speed;
        [secondEvent8 triggerDistance];
        [secondEvent8 setTriggerDistance:v57 - v56 * v54];

        v58 = GetAudioLogForMNAnnouncementEngineCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          secondEvent9 = [conflictCopy secondEvent];
          v62 = 134218243;
          v63 = v54;
          v64 = 2113;
          v65 = secondEvent9;
          _os_log_impl(&dword_1D311E000, v58, OS_LOG_TYPE_DEFAULT, "Delaying second event %.2f seconds to resolve conflict: %{private}@", &v62, 0x16u);
        }
      }

      v5 = v53 >= v50;
    }

    else
    {
      firstEvent5 = [conflictCopy firstEvent];
      v42 = self->_speed;
      [firstEvent5 triggerDistance];
      [firstEvent5 setTriggerDistance:v43 - v42 * v35];

      plan = [(MNAnnouncementEngine *)self plan];
      [plan sortEvents];

      v45 = GetAudioLogForMNAnnouncementEngineCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        firstEvent6 = [conflictCopy firstEvent];
        v62 = 134218243;
        v63 = v35;
        v64 = 2113;
        v65 = firstEvent6;
        _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_DEFAULT, "Delaying first event %.2f seconds to resolve conflict: %{private}@", &v62, 0x16u);
      }

      v5 = 1;
    }
  }

  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)_canAdvanceEvent:(id)event
{
  eventCopy = event;
  distance = self->_distance;
  event = [eventCopy event];
  [event startValidDistance];
  v8 = v7;

  [eventCopy triggerDistance];
  v10 = (fmin(distance, v8) - v9) / self->_speed;
  plan = [(MNAnnouncementEngine *)self plan];
  plannedEvents = [plan plannedEvents];
  v13 = [plannedEvents indexOfObject:eventCopy];

  if (v13 >= 1)
  {
    v14 = v13 + 1;
    while (1)
    {
      plan2 = [(MNAnnouncementEngine *)self plan];
      plannedEvents2 = [plan2 plannedEvents];
      v17 = [plannedEvents2 objectAtIndexedSubscript:v14 - 2];

      if ([v17 includeInPlan])
      {
        event2 = [v17 event];
        announcements = [event2 announcements];
        v20 = [announcements count];

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
      [eventCopy triggerDistance];
      v24 = (v22 - v23) / self->_speed;
      [MNAnnouncementPlan desiredTimeGapBetweenEvent:v17 andEvent:eventCopy];
      v10 = fmin(v24 - v25, v10);
    }
  }

LABEL_9:

  return fmax(v10, 0.0);
}

- (BOOL)_advanceToResolveConflict:(id)conflict
{
  v25 = *MEMORY[0x1E69E9840];
  conflictCopy = conflict;
  if ([conflictCopy announcementsAreSimilar])
  {
    v5 = 0;
  }

  else
  {
    [conflictCopy desiredTimeGap];
    v7 = v6;
    [conflictCopy timeGap];
    v9 = v7 - v8 + 1.0;
    firstEvent = [conflictCopy firstEvent];
    [(MNAnnouncementEngine *)self _canAdvanceEvent:firstEvent];
    v12 = v11;

    v13 = fmin(v9, v12);
    if (v13 > 0.0)
    {
      v14 = fmin(self->_speed * v12, (self->_speed + 5.0) * v13);
      firstEvent2 = [conflictCopy firstEvent];
      [firstEvent2 triggerDistance];
      [firstEvent2 setTriggerDistance:v16 + v14];

      v17 = GetAudioLogForMNAnnouncementEngineCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        firstEvent3 = [conflictCopy firstEvent];
        v21 = 134218243;
        v22 = v13;
        v23 = 2113;
        v24 = firstEvent3;
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
  plan = [(MNAnnouncementEngine *)self plan];
  plannedEvents = [plan plannedEvents];

  v5 = [plannedEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(plannedEvents);
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

      v6 = [plannedEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)planForEvents:(id)events distance:(double)distance speed:(double)speed previousEvent:(id)event timeSinceLastEvent:(double)lastEvent durations:(id)durations
{
  v40 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  eventCopy = event;
  durationsCopy = durations;
  objc_storeStrong(&self->_events, events);
  self->_distance = distance;
  self->_speed = speed;
  objc_storeStrong(&self->_durations, durations);
  v18 = [[MNAnnouncementPlan alloc] initWithEvents:eventsCopy distance:durationsCopy speed:distance durations:speed];
  [(MNAnnouncementEngine *)self setPlan:v18];

  if (eventCopy)
  {
    plan = [(MNAnnouncementEngine *)self plan];
    plannedEvents = [plan plannedEvents];
    v21 = [plannedEvents count];

    if (v21)
    {
      if (lastEvent > 0.0)
      {
        plan2 = [(MNAnnouncementEngine *)self plan];
        plannedEvents2 = [plan2 plannedEvents];
        firstObject = [plannedEvents2 firstObject];

        [MNAnnouncementPlan desiredTimeGapBetweenEvent:eventCopy andEvent:firstObject];
        if (v25 > lastEvent)
        {
          v31 = v25;
          [(MNAnnouncementEngine *)self _canDelayEvent:firstObject];
          v33 = v32;
          [firstObject setTriggerDistance:0.0];
          v34 = GetAudioLogForMNAnnouncementEngineCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v36 = 134218243;
            v37 = fmin(v31 - lastEvent, v33);
            v38 = 2113;
            v39 = firstObject;
            _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_DEBUG, "Delaying event %.2f seconds due to recent announcement: %{private}@", &v36, 0x16u);
          }

LABEL_22:
          goto LABEL_23;
        }
      }
    }
  }

  plan3 = [(MNAnnouncementEngine *)self plan];
  nextConflict = [plan3 nextConflict];

  if (nextConflict)
  {
    v28 = 100;
    do
    {
      if (!v28)
      {

        goto LABEL_17;
      }

      if (![(MNAnnouncementEngine *)self _advanceToResolveConflict:nextConflict]&& ![(MNAnnouncementEngine *)self _delayToResolveConflict:nextConflict]&& ![(MNAnnouncementEngine *)self _compressToResolveConflict:nextConflict])
      {
        [(MNAnnouncementEngine *)self _dropToResolveConflict:nextConflict];
      }

      plan4 = [(MNAnnouncementEngine *)self plan];
      nextConflict2 = [plan4 nextConflict];

      --v28;
      nextConflict = nextConflict2;
    }

    while (nextConflict2);
    if (v28)
    {
      goto LABEL_23;
    }

LABEL_17:
    firstObject = GetAudioLogForMNAnnouncementEngineCategory();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_1D311E000, firstObject, OS_LOG_TYPE_ERROR, "Infinite loop in resolving guidance event conflicts.", &v36, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v35 = *MEMORY[0x1E69E9840];
}

@end