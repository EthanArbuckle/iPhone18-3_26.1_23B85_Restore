@interface MapsSuggestionsWalletStreamer
- (_TtC15MapsSuggestions29MapsSuggestionsWalletStreamer)initWithLookAheadPeriod:(double)a3 pingInterval:(double)a4 notificationName:(id)a5 identifyingName:(id)a6;
- (void)_setupWallet;
- (void)_tearDownWallet;
- (void)scanForStreamableEvents;
@end

@implementation MapsSuggestionsWalletStreamer

- (void)_setupWallet
{
  v2 = self;
  sub_1C525500C();
}

- (void)_tearDownWallet
{
  v2 = self;
  sub_1C5256BC0(&OBJC_IVAR____TtC15MapsSuggestions29MapsSuggestionsWalletStreamer__wallet, "Tore down Wallet.");
}

- (void)scanForStreamableEvents
{
  v2 = self;
  MapsSuggestionsWalletStreamer.scanForStreamableEvents()();
}

- (_TtC15MapsSuggestions29MapsSuggestionsWalletStreamer)initWithLookAheadPeriod:(double)a3 pingInterval:(double)a4 notificationName:(id)a5 identifyingName:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end