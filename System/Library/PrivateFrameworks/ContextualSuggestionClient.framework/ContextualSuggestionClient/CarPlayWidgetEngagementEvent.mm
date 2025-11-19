@interface CarPlayWidgetEngagementEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (_TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent)init;
- (unsigned)dataVersion;
- (void)setDataVersion:(unsigned int)a3;
@end

@implementation CarPlayWidgetEngagementEvent

- (unsigned)dataVersion
{
  v3 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDataVersion:(unsigned int)a3
{
  v5 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = a3;
  v5 = sub_2441D88DC();
  v7 = v6;

  v8 = _s26ContextualSuggestionClient28CarPlayWidgetEngagementEventC5event4with11dataVersionACXDSg10Foundation4DataV_s6UInt32VtFZ_0(v5, v7);
  sub_2441B85A8(v5, v7);

  return v8;
}

- (_TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end