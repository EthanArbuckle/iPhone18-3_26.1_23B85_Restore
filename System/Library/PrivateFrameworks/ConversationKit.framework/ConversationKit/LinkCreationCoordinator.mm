@interface LinkCreationCoordinator
- (id)_customizationGroupsForActivityViewController:(id)controller;
- (id)customActionViewControllerForActivityViewController:(id)controller;
- (id)customLocalizedActionTitleForActivityViewController:(id)controller;
@end

@implementation LinkCreationCoordinator

- (id)_customizationGroupsForActivityViewController:(id)controller
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UIActivityItemCustomizationGroup);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)customLocalizedActionTitleForActivityViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = LinkCreationCoordinator.customLocalizedActionTitle(for:)(selfCopy);

  v7 = MEMORY[0x1BFB209B0](v6._countAndFlagsBits, v6._object);

  return v7;
}

- (id)customActionViewControllerForActivityViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LinkCreationCoordinator.customActionViewController(for:)(v6, selfCopy);
  v8 = v7;

  return v8;
}

@end