@interface RecentsListSuggestionFetcher
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
@end

@implementation RecentsListSuggestionFetcher

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  type metadata accessor for CNAutocompleteResult();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  RecentsListSuggestionFetcher.autocompleteFetch(_:didReceive:)(v6, v5);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  RecentsListSuggestionFetcher.autocompleteFetch(_:didFailWithError:)();
  swift_unknownObjectRelease();
}

@end