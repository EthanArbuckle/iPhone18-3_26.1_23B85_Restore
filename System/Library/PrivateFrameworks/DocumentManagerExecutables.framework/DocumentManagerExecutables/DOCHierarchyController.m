@interface DOCHierarchyController
- (BOOL)effectiveRootLocationIsHidingParentLocations;
- (BOOL)hasPendingLocationChange;
- (BOOL)isFetchingLocations;
- (BOOL)isLoadingDisabled;
- (BOOL)isResetBeingPerformed;
- (BOOL)shouldForceChangeInPreparationQueue;
- (DOCConcreteLocation)effectiveRootLocation;
- (DOCConcreteLocation)lastLocation;
- (DOCConcreteLocation)locationForDeterminingCurrentEffectiveTab;
- (DOCPickerContext)pickerContext;
- (NSArray)effectiveLocations;
- (NSArray)locations;
- (_TtC26DocumentManagerExecutables22DOCHierarchyController)init;
- (_TtC26DocumentManagerExecutables22DOCHierarchyController)initWithConfiguration:(id)a3 sourceObserver:(id)a4 minParentLocations:(unint64_t)a5;
- (_TtP26DocumentManagerExecutables30DOCHierarchyControllerDelegate_)delegate;
- (unint64_t)defaultTab;
- (unint64_t)effectiveTabSwitcherTab;
- (void)invalidateAllAssertions;
- (void)invalidateLocations;
- (void)loadAllParentsHiddenByEffectiveRootLocation:(id)a3;
- (void)performWhileForcingChangeInPreparationQueue:(id)a3;
- (void)performWhilePreventingLoading:(id)a3;
- (void)receiveInvalidateLocationsNotification;
- (void)removeTrailingLocationCount:(int64_t)a3 animated:(BOOL)a4;
- (void)reset;
- (void)resetFromRootWith:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)resetWith:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)resetWith:(id)a3 effectiveRootLocation:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)resetWithDefaultLocationWithAnimated:(BOOL)a3;
- (void)restoreLastBrowsedStateForTab:(unint64_t)a3;
- (void)revealLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setDefaultTab:(unint64_t)a3;
- (void)setIsResetBeingPerformed:(BOOL)a3;
- (void)setLocations:(id)a3;
- (void)setPickerContext:(id)a3;
- (void)setShouldForceChangeInPreparationQueue:(BOOL)a3;
- (void)tagsDidChangeWithNotification:(id)a3;
@end

@implementation DOCHierarchyController

- (_TtP26DocumentManagerExecutables30DOCHierarchyControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)locations
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setLocations:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DOCHierarchyController.locations.setter(v4);
}

- (NSArray)effectiveLocations
{
  v2 = self;
  DOCHierarchyController.effectiveLocations.getter();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (unint64_t)defaultTab
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDefaultTab:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hasPendingLocationChange
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(self + v7, v6, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  v8 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  LOBYTE(self) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd);
  return self;
}

- (DOCConcreteLocation)locationForDeterminingCurrentEffectiveTab
{
  v2 = self;
  v3 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();

  return v3;
}

- (DOCConcreteLocation)effectiveRootLocation
{
  v2 = self;
  v3 = DOCHierarchyController.effectiveRootLocation.getter();

  return v3;
}

- (DOCConcreteLocation)lastLocation
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_3:
    v6 = &result[-1]._composedTitleFormat + 7;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v4 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        result = *(v4 + 8 * v6 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return result;
    }

    v7 = self;

    v8 = MEMORY[0x24C1FC540](v6, v4);

    result = v8;
    goto LABEL_8;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_8:

  return result;
}

- (BOOL)effectiveRootLocationIsHidingParentLocations
{
  v2 = self;
  IsHidingParent = DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter();

  return IsHidingParent & 1;
}

- (void)loadAllParentsHiddenByEffectiveRootLocation:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (BOOL)isResetBeingPerformed
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsResetBeingPerformed:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isFetchingLocations
{
  v2 = self;
  v3 = DOCHierarchyController.isFetchingLocations.getter();

  return v3 & 1;
}

- (BOOL)isLoadingDisabled
{
  v2 = self;
  v3 = DOCHierarchyController.isLoadingDisabled.getter();

  return v3 & 1;
}

- (void)invalidateAllAssertions
{
  v3 = self;
  v2 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v2 + 144))(v2);
}

- (void)performWhilePreventingLoading:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  specialized DOCHierarchyController.performWhilePreventingLoading(_:)(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)shouldForceChangeInPreparationQueue
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldForceChangeInPreparationQueue:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)performWhileForcingChangeInPreparationQueue:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = 1;
  v7 = v4[2];
  v8 = self;
  v7(v4);
  _Block_release(v4);
  *(self + v5) = v6;
}

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPickerContext:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC26DocumentManagerExecutables22DOCHierarchyController)initWithConfiguration:(id)a3 sourceObserver:(id)a4 minParentLocations:(unint64_t)a5
{
  ObjectType = swift_getObjectType();
  v9 = objc_opt_self();
  v10 = a3;
  v11 = a4;
  v12 = [v9 defaultManager];
  v13 = [objc_opt_self() sharedStore];
  v14 = objc_allocWithZone(ObjectType);
  v15 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(v10, v11, a5, v12, v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

- (void)resetWithDefaultLocationWithAnimated:(BOOL)a3
{
  v4 = self;
  DOCHierarchyController.resetWithDefaultLocation(animated:)(a3);
}

- (void)resetWith:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3;
  v10 = self;
  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v11, a3, v5, 1, 0, v8, v9);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)resetWith:(id)a3 effectiveRootLocation:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = _Block_copy(a6);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v14 = a4;
  v13 = self;
  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v12, a4, v6, 1, 0, v10, v11);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
}

- (void)resetFromRootWith:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(v10, a4, v8, v9);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)revealLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  DOCHierarchyController.revealLocation(_:animated:completion:)(v10, v5, v8, v9);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)reset
{
  v2 = self;
  DOCHierarchyController.reset()();
}

- (void)removeTrailingLocationCount:(int64_t)a3 animated:(BOOL)a4
{
  v5 = self;
  specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(a3);
}

- (_TtC26DocumentManagerExecutables22DOCHierarchyController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)receiveInvalidateLocationsNotification
{
  v3 = objc_opt_self();
  v4 = self;
  [v3 cancelPreviousPerformRequestsWithTarget:v4 selector:sel_invalidateLocations object:0];
  [(DOCHierarchyController *)v4 performSelector:sel_invalidateLocations withObject:0 afterDelay:0.2];
}

- (void)invalidateLocations
{
  v2 = self;
  DOCHierarchyController.invalidateLocations()();
}

- (void)restoreLastBrowsedStateForTab:(unint64_t)a3
{
  v4 = self;
  DOCHierarchyController.restoreLastBrowsedState(forTab:)(a3);
}

- (void)tagsDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCHierarchyController.tagsDidChange(notification:)();
}

- (unint64_t)effectiveTabSwitcherTab
{
  v2 = self;
  v3 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 effectiveTabSwitcherTab];

    return v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v8 = *(v2 + v7);

    return v8;
  }
}

@end