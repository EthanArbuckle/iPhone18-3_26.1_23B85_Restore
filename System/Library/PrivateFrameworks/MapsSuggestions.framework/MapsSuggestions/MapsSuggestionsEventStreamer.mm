@interface MapsSuggestionsEventStreamer
- (NSArray)_notifyTimers;
- (NSString)notificationName;
- (NSString)uniqueName;
- (_TtC15MapsSuggestions28MapsSuggestionsEventStreamer)init;
- (_TtC15MapsSuggestions28MapsSuggestionsEventStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName;
- (void)broadcastEventFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)invalidateAllTimers;
- (void)rescan;
- (void)setUniqueName:(id)name;
- (void)set_notifyTimers:(id)timers;
- (void)set_scanTimer:(id)timer;
@end

@implementation MapsSuggestionsEventStreamer

- (NSString)uniqueName
{
  v2 = self + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1C529D71C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUniqueName:(id)name
{
  if (name)
  {
    v4 = sub_1C529D72C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)notificationName
{

  v2 = sub_1C529D71C();

  return v2;
}

- (void)set_scanTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer);
  *(self + OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__scanTimer) = timer;
  timerCopy = timer;
}

- (NSArray)_notifyTimers
{
  swift_beginAccess();
  type metadata accessor for TimerClass();

  v2 = sub_1C529D7CC();

  return v2;
}

- (void)set_notifyTimers:(id)timers
{
  type metadata accessor for TimerClass();
  v4 = sub_1C529D7DC();
  v5 = OBJC_IVAR____TtC15MapsSuggestions28MapsSuggestionsEventStreamer__notifyTimers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC15MapsSuggestions28MapsSuggestionsEventStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName
{
  v8 = sub_1C529D72C();
  v10 = v9;
  v11 = sub_1C529D72C();
  return MapsSuggestionsEventStreamer.init(lookAheadPeriod:pingInterval:notificationName:identifyingName:)(v8, v10, v11, v12, period, interval);
}

- (void)broadcastEventFrom:(id)from to:(id)to
{
  v5 = sub_1C529D3AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1C529D37C();
  sub_1C529D37C();
  selfCopy = self;
  sub_1C5251364(v11, v9);

  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
}

- (void)rescan
{
  selfCopy = self;
  sub_1C5252854();
}

- (void)invalidateAllTimers
{
  selfCopy = self;
  sub_1C525297C();
}

- (void)dealloc
{
  selfCopy = self;
  sub_1C525297C();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for MapsSuggestionsEventStreamer();
  [(MapsSuggestionsEventStreamer *)&v3 dealloc];
}

- (_TtC15MapsSuggestions28MapsSuggestionsEventStreamer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end