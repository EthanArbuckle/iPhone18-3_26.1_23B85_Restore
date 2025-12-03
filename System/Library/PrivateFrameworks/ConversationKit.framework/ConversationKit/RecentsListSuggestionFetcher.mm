@interface RecentsListSuggestionFetcher
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
@end

@implementation RecentsListSuggestionFetcher

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  type metadata accessor for CNAutocompleteResult();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  RecentsListSuggestionFetcher.autocompleteFetch(_:didReceive:)(selfCopy, v5);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  RecentsListSuggestionFetcher.autocompleteFetch(_:didFailWithError:)();
  swift_unknownObjectRelease();
}

@end