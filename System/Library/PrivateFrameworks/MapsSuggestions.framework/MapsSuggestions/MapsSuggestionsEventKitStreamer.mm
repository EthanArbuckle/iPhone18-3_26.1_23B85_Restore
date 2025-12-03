@interface MapsSuggestionsEventKitStreamer
- (_TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName;
- (void)_setupEventKit;
- (void)_tearDownEventKit;
- (void)scanForStreamableEvents;
@end

@implementation MapsSuggestionsEventKitStreamer

- (void)_setupEventKit
{
  selfCopy = self;
  sub_1C5256940();
}

- (void)_tearDownEventKit
{
  selfCopy = self;
  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit, "Tore down EventKit.");
}

- (void)scanForStreamableEvents
{
  selfCopy = self;
  MapsSuggestionsEventKitStreamer.scanForStreamableEvents()();
}

- (_TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end