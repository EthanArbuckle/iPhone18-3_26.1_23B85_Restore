@interface MapsSuggestionsWalletStreamer
- (_TtC15MapsSuggestions29MapsSuggestionsWalletStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName;
- (void)_setupWallet;
- (void)_tearDownWallet;
- (void)scanForStreamableEvents;
@end

@implementation MapsSuggestionsWalletStreamer

- (void)_setupWallet
{
  selfCopy = self;
  sub_1C525500C();
}

- (void)_tearDownWallet
{
  selfCopy = self;
  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet, "Tore down Wallet.");
}

- (void)scanForStreamableEvents
{
  selfCopy = self;
  MapsSuggestionsWalletStreamer.scanForStreamableEvents()();
}

- (_TtC15MapsSuggestions29MapsSuggestionsWalletStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end