@interface LaunchUtils.OpenAppDelegate
- (_TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate)init;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation LaunchUtils.OpenAppDelegate

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  if (a4)
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

  v13 = a3;
  v14 = self;
  specialized LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFinishCopyingResource:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd);
}

- (void)openResourceOperationDidComplete:(id)a3
{
  v5 = a3;
  v6 = self;
  LaunchUtils.OpenAppDelegate.openResourceOperationDidComplete(_:)(a3);
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  LaunchUtils.OpenAppDelegate.openResourceOperation(_:didFailWithError:)(a3, a4);
}

- (_TtCV26DocumentManagerExecutables11LaunchUtilsP33_785CBA6FF492D1A84D3A93B2D10ABBAB15OpenAppDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end