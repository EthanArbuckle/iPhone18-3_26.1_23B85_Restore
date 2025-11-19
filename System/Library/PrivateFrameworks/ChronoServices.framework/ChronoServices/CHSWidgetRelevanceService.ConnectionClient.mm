@interface CHSWidgetRelevanceService.ConnectionClient
- (_TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient)init;
- (void)handleWidgetRelevanceEvent:(id)a3;
- (void)timelineEntryRelevanceDidChange:(id)a3;
@end

@implementation CHSWidgetRelevanceService.ConnectionClient

- (void)timelineEntryRelevanceDidChange:(id)a3
{
  sub_195EB4B30(0, &qword_1EAEEDD50, off_1E74527C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD58, &unk_195FACFC8);
  sub_195F48E88(&unk_1EAEEDD60, &qword_1EAEEDD50, off_1E74527C8);
  v4 = sub_195FA0808();
  v5 = *(&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler);
  if (v5)
  {
    v6 = *&self->timelineRelevanceDidChangeHandler[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler];
    v7 = v4;
    v8 = self;
    sub_195ECF998(v5);
    v5(v7);

    sub_195EB6E70(v5);
  }

  else
  {
  }
}

- (void)handleWidgetRelevanceEvent:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler);
  if (v3)
  {
    v5 = *&self->timelineRelevanceDidChangeHandler[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler];
    v6 = a3;
    v7 = self;
    sub_195ECF998(v3);
    v3(v6);

    sub_195EB6E70(v3);
  }
}

- (_TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler);
  v5 = _s16ConnectionClientCMa_0();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(CHSWidgetRelevanceService.ConnectionClient *)&v7 init];
}

@end