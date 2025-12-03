@interface CarPlayWidgetEngagementEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (_TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent)init;
- (unsigned)dataVersion;
- (void)setDataVersion:(unsigned int)version;
@end

@implementation CarPlayWidgetEngagementEvent

- (unsigned)dataVersion
{
  v3 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDataVersion:(unsigned int)version
{
  v5 = OBJC_IVAR____TtC26ContextualSuggestionClient28CarPlayWidgetEngagementEvent_dataVersion;
  swift_beginAccess();
  *(&self->super.isa + v5) = version;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
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