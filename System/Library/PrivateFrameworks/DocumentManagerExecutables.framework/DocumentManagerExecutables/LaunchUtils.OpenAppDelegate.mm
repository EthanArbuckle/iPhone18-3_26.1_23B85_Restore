@interface LaunchUtils.OpenAppDelegate
- (_TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate)init;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation LaunchUtils.OpenAppDelegate

- (void)openResourceOperation:(id)operation didFinishCopyingResource:(id)resource
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  if (resource)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  operationCopy = operation;
  selfCopy = self;
  specialized LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFinishCopyingResource:)(operation, v10);

  outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
}

- (void)openResourceOperationDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  LaunchUtils.OpenAppDelegate.openResourceOperationDidComplete(_:)(complete);
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  operationCopy = operation;
  selfCopy = self;
  errorCopy = error;
  LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFailWithError:)(operation, error);
}

- (_TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end