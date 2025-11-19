@interface LinkCreationCoordinator
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)customActionViewControllerForActivityViewController:(id)a3;
- (id)customLocalizedActionTitleForActivityViewController:(id)a3;
@end

@implementation LinkCreationCoordinator

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UIActivityItemCustomizationGroup);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)customLocalizedActionTitleForActivityViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = LinkCreationCoordinator.customLocalizedActionTitle(for:)(v5);

  v7 = MEMORY[0x1BFB209B0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)customActionViewControllerForActivityViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  LinkCreationCoordinator.customActionViewController(for:)(v6, v5);
  v8 = v7;

  return v8;
}

@end