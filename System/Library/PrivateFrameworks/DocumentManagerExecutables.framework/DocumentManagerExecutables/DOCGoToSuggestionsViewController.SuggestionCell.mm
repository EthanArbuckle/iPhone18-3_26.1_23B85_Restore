@interface DOCGoToSuggestionsViewController.SuggestionCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation DOCGoToSuggestionsViewController.SuggestionCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCGoToSuggestionsViewController.SuggestionCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

@end