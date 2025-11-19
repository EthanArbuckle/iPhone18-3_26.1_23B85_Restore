@interface DOCItemCollectionViewSectionHeader
- (id)accessibilityTitleLabel;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didMoveToWindow;
- (void)prepareForReuse;
@end

@implementation DOCItemCollectionViewSectionHeader

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader();
  v2 = v5.receiver;
  [(DOCItemCollectionViewSectionHeader *)&v5 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    v4 = [v2 traitCollection];
    (*((*MEMORY[0x277D85000] & *v2) + 0x4A8))();
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCItemCollectionViewSectionHeader();
  v2 = v6.receiver;
  [(DOCItemCollectionViewSectionHeader *)&v6 prepareForReuse];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x398))(0);
  (*((*v3 & *v2) + 0x3B0))(v4, 0.0);
  (*((*v3 & *v2) + 0x430))(0, 0);
  DOCItemCollectionViewSectionHeader.setSeparatorAppearance()();
  v5 = [v2 traitCollection];
  (*((*v3 & *v2) + 0x4A8))();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCItemCollectionViewSectionHeader.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)accessibilityTitleLabel
{
  v2 = self;
  DOCItemCollectionViewSectionHeader.accessibilityTitleLabel()(v3);
  v5 = v4;

  return v5;
}

@end