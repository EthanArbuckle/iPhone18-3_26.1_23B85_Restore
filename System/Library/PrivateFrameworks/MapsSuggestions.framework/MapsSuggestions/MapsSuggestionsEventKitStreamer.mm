@interface MapsSuggestionsEventKitStreamer
- (_TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer)initWithLookAheadPeriod:(double)a3 pingInterval:(double)a4 notificationName:(id)a5 identifyingName:(id)a6;
- (void)_setupEventKit;
- (void)_tearDownEventKit;
- (void)scanForStreamableEvents;
@end

@implementation MapsSuggestionsEventKitStreamer

- (void)_setupEventKit
{
  v2 = self;
  sub_1C5256940();
}

- (void)_tearDownEventKit
{
  v2 = self;
  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer__eventKit, "Tore down EventKit.");
}

- (void)scanForStreamableEvents
{
  v2 = self;
  MapsSuggestionsEventKitStreamer.scanForStreamableEvents()();
}

- (_TtC15MapsSuggestions31MapsSuggestionsEventKitStreamer)initWithLookAheadPeriod:(double)a3 pingInterval:(double)a4 notificationName:(id)a5 identifyingName:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end