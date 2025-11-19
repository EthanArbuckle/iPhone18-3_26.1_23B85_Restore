@interface SuggestionListCollectionViewCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation SuggestionListCollectionViewCell

- (void)handleTraitChange
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD8);
  v6 = self;
  v3 = v2();
  v4 = [(SuggestionListCollectionViewCell *)v6 traitCollection];
  v5 = [v4 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v5);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  SuggestionListCollectionViewCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x128);
  v4 = self;
  v3(0);
  (*((*v2 & v4->super.super.super.super.super.super.isa) + 0xF8))(0);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SuggestionListCollectionViewCell();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(SuggestionListCollectionViewCell *)&v13 hitTest:v8 withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIButton);
    v11 = [v10 isKindOfClass_];

    if (v11)
    {
      v8 = v7;
    }

    else
    {
      v8 = v10;
    }

    if (v11)
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