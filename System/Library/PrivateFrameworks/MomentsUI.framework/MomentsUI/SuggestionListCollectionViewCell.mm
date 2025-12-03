@interface SuggestionListCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation SuggestionListCollectionViewCell

- (void)handleTraitChange
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD8);
  selfCopy = self;
  v3 = v2();
  traitCollection = [(SuggestionListCollectionViewCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, userInterfaceStyle);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SuggestionListCollectionViewCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x128);
  selfCopy = self;
  v3(0);
  (*((*v2 & selfCopy->super.super.super.super.super.super.isa) + 0xF8))(0);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SuggestionListCollectionViewCell();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(SuggestionListCollectionViewCell *)&v13 hitTest:eventCopy withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIButton);
    isKindOfClass_ = [v10 isKindOfClass_];

    if (isKindOfClass_)
    {
      eventCopy = v7;
    }

    else
    {
      eventCopy = v10;
    }

    if (isKindOfClass_)
    {
      v7 = v10;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end