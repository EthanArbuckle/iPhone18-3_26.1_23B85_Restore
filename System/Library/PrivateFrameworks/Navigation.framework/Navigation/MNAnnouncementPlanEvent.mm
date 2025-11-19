@interface MNAnnouncementPlanEvent
- (MNAnnouncementPlanEvent)initWithEvent:(id)a3 distance:(double)a4 speed:(double)a5 durations:(id)a6;
- (double)completionDistance;
- (id)description;
- (void)setTriggerDistance:(double)a3;
- (void)setVariantIndex:(unint64_t)a3;
@end

@implementation MNAnnouncementPlanEvent

- (double)completionDistance
{
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  v4 = v3;
  v5 = [(MNAnnouncementPlanEvent *)self announcementDurations];
  v6 = [v5 objectAtIndexedSubscript:{-[MNAnnouncementPlanEvent variantIndex](self, "variantIndex")}];
  [v6 doubleValue];
  v8 = v7;
  [(MNAnnouncementPlanEvent *)self speed];
  v10 = v4 - v9 * v8;

  return v10;
}

- (void)setVariantIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(MNAnnouncementPlanEvent *)self event];
  v6 = [v5 announcements];
  v7 = [v6 count];

  if (v7 <= a3)
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

  self->_variantIndex = a3;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTriggerDistance:(double)a3
{
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  if (v5 != a3)
  {
    self->_triggerDistance = a3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MNAnnouncementPlanEvent *)self includeInPlan];
  v5 = [(MNAnnouncementPlanEvent *)self variantIndex];
  [(MNAnnouncementPlanEvent *)self triggerDistance];
  v6 = -1.0;
  if (v7 > 0.0)
  {
    [(MNAnnouncementPlanEvent *)self triggerDistance];
    v6 = v8;
  }

  if (v4)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [(MNAnnouncementPlanEvent *)self completionDistance];
  v11 = v10;
  v12 = [(MNAnnouncementPlanEvent *)self event];
  v13 = [v12 description];
  v14 = [v3 stringWithFormat:@"in plan:%s variant:%lu trigger:%.2f complete:%.2f %@", v9, v5, *&v6, v11, v13];

  return v14;
}

- (MNAnnouncementPlanEvent)initWithEvent:(id)a3 distance:(double)a4 speed:(double)a5 durations:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = MNAnnouncementPlanEvent;
  v12 = [(MNAnnouncementPlanEvent *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(MNAnnouncementPlanEvent *)v12 setEvent:v10];
    [(MNAnnouncementPlanEvent *)v13 setDistance:a4];
    [(MNAnnouncementPlanEvent *)v13 setSpeed:a5];
    [(MNAnnouncementPlanEvent *)v13 setDurations:v11];
    [(MNAnnouncementPlanEvent *)v13 setVariantIndex:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__MNAnnouncementPlanEvent_initWithEvent_distance_speed_durations___block_invoke;
    v17[3] = &unk_1E842A898;
    v14 = v13;
    v18 = v14;
    [v10 triggerDistanceForSpeed:v17 andDuration:a5];
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