@interface MNAnnouncementPlanEvent
- (MNAnnouncementPlanEvent)initWithEvent:(id)event distance:(double)distance speed:(double)speed durations:(id)durations;
- (double)completionDistance;
- (id)description;
- (void)setTriggerDistance:(double)distance;
- (void)setVariantIndex:(unint64_t)index;
@end

@implementation MNAnnouncementPlanEvent

- (double)completionDistance
{
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  v4 = v3;
  announcementDurations = [(MNAnnouncementPlanEvent *)self announcementDurations];
  v6 = [announcementDurations objectAtIndexedSubscript:{-[MNAnnouncementPlanEvent variantIndex](self, "variantIndex")}];
  [v6 doubleValue];
  v8 = v7;
  [(MNAnnouncementPlanEvent *)self speed];
  v10 = v4 - v9 * v8;

  return v10;
}

- (void)setVariantIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  event = [(MNAnnouncementPlanEvent *)self event];
  announcements = [event announcements];
  v7 = [announcements count];

  if (v7 <= index)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315906;
      v11 = "[MNAnnouncementPlanEvent setVariantIndex:]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Guidance/MNAnnouncementPlanEvent.m";
      v14 = 1024;
      v15 = 73;
      v16 = 2080;
      v17 = "variantIndex < self.event.announcements.count";
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v10, 0x26u);
    }
  }

  self->_variantIndex = index;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTriggerDistance:(double)distance
{
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  if (v5 != distance)
  {
    self->_triggerDistance = distance;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  includeInPlan = [(MNAnnouncementPlanEvent *)self includeInPlan];
  variantIndex = [(MNAnnouncementPlanEvent *)self variantIndex];
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  v6 = -1.0;
  if (v7 > 0.0)
  {
    [(MNAnnouncementPlanEvent *)self triggerDistance];
    v6 = v8;
  }

  if (includeInPlan)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [(MNAnnouncementPlanEvent *)self completionDistance];
  v11 = v10;
  event = [(MNAnnouncementPlanEvent *)self event];
  v13 = [event description];
  v14 = [v3 stringWithFormat:@"in plan:%s variant:%lu trigger:%.2f complete:%.2f %@", v9, variantIndex, *&v6, v11, v13];

  return v14;
}

- (MNAnnouncementPlanEvent)initWithEvent:(id)event distance:(double)distance speed:(double)speed durations:(id)durations
{
  eventCopy = event;
  durationsCopy = durations;
  v19.receiver = self;
  v19.super_class = MNAnnouncementPlanEvent;
  v12 = [(MNAnnouncementPlanEvent *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(MNAnnouncementPlanEvent *)v12 setEvent:eventCopy];
    [(MNAnnouncementPlanEvent *)v13 setDistance:distance];
    [(MNAnnouncementPlanEvent *)v13 setSpeed:speed];
    [(MNAnnouncementPlanEvent *)v13 setDurations:durationsCopy];
    [(MNAnnouncementPlanEvent *)v13 setVariantIndex:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__MNAnnouncementPlanEvent_initWithEvent_distance_speed_durations___block_invoke;
    v17[3] = &unk_1E842A898;
    v14 = v13;
    v18 = v14;
    [eventCopy triggerDistanceForSpeed:v17 andDuration:speed];
    [(MNAnnouncementPlanEvent *)v14 setTriggerDistance:?];
    [(MNAnnouncementPlanEvent *)v14 triggerDistance];
    [(MNAnnouncementPlanEvent *)v14 setIncludeInPlan:v15 > 0.0];
  }

  return v13;
}

double __66__MNAnnouncementPlanEvent_initWithEvent_distance_speed_durations___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) durations];
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

@end