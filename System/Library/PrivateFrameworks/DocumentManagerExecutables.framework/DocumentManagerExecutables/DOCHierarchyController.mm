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
- (_TtC26DocumentManagerExecutables22DOCHierarchyController)initWithConfiguration:(id)configuration sourceObserver:(id)observer minParentLocations:(unint64_t)locations;
- (_TtP26DocumentManagerExecutables30DOCHierarchyControllerDelegate_)delegate;
- (unint64_t)defaultTab;
- (unint64_t)effectiveTabSwitcherTab;
- (void)invalidateAllAssertions;
- (void)invalidateLocations;
- (void)loadAllParentsHiddenByEffectiveRootLocation:(id)location;
- (void)performWhileForcingChangeInPreparationQueue:(id)queue;
- (void)performWhilePreventingLoading:(id)loading;
- (void)receiveInvalidateLocationsNotification;
- (void)removeTrailingLocationCount:(int64_t)count animated:(BOOL)animated;
- (void)reset;
- (void)resetFromRootWith:(id)with animated:(BOOL)animated completionHandler:(id)handler;
- (void)resetWith:(id)with animated:(BOOL)animated completionHandler:(id)handler;
- (void)resetWith:(id)with effectiveRootLocation:(id)location animated:(BOOL)animated completionHandler:(id)handler;
- (void)resetWithDefaultLocationWithAnimated:(BOOL)animated;
- (void)restoreLastBrowsedStateForTab:(unint64_t)tab;
- (void)revealLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)setDefaultTab:(unint64_t)tab;
- (void)setIsResetBeingPerformed:(BOOL)performed;
- (void)setLocations:(id)locations;
- (void)setPickerContext:(id)context;
- (void)setShouldForceChangeInPreparationQueue:(BOOL)queue;
- (void)tagsDidChangeWithNotification:(id)notification;
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

- (void)setLocations:(id)locations
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCHierarchyController.locations.setter(v4);
}

- (NSArray)effectiveLocations
{
  selfCopy = self;
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

- (void)setDefaultTab:(unint64_t)tab
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  *(self + v5) = tab;
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
  selfCopy = self;
  v3 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();

  return v3;
}

- (DOCConcreteLocation)effectiveRootLocation
{
  selfCopy = self;
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

    selfCopy = self;

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
  selfCopy = self;
  IsHidingParent = DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter();

  return IsHidingParent & 1;
}

- (void)loadAllParentsHiddenByEffectiveRootLocation:(id)location
{
  v4 = _Block_copy(location);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (BOOL)isResetBeingPerformed
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsResetBeingPerformed:(BOOL)performed
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  *(self + v5) = performed;
}

- (BOOL)isFetchingLocations
{
  selfCopy = self;
  v3 = DOCHierarchyController.isFetchingLocations.getter();

  return v3 & 1;
}

- (BOOL)isLoadingDisabled
{
  selfCopy = self;
  v3 = DOCHierarchyController.isLoadingDisabled.getter();

  return v3 & 1;
}

- (void)invalidateAllAssertions
{
  selfCopy = self;
  v2 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v2 + 144))(v2);
}

- (void)performWhilePreventingLoading:(id)loading
{
  v4 = _Block_copy(loading);
  _Block_copy(v4);
  selfCopy = self;
  specialized DOCHierarchyController.performWhilePreventingLoading(_:)(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)shouldForceChangeInPreparationQueue
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldForceChangeInPreparationQueue:(BOOL)queue
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  *(self + v5) = queue;
}

- (void)performWhileForcingChangeInPreparationQueue:(id)queue
{
  v4 = _Block_copy(queue);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = 1;
  v7 = v4[2];
  selfCopy = self;
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

- (void)setPickerContext:(id)context
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
}

- (_TtC26DocumentManagerExecutables22DOCHierarchyController)initWithConfiguration:(id)configuration sourceObserver:(id)observer minParentLocations:(unint64_t)locations
{
  ObjectType = swift_getObjectType();
  v9 = objc_opt_self();
  configurationCopy = configuration;
  observerCopy = observer;
  defaultManager = [v9 defaultManager];
  sharedStore = [objc_opt_self() sharedStore];
  v14 = objc_allocWithZone(ObjectType);
  v15 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(configurationCopy, observerCopy, locations, defaultManager, sharedStore);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

- (void)resetWithDefaultLocationWithAnimated:(BOOL)animated
{
  selfCopy = self;
  DOCHierarchyController.resetWithDefaultLocation(animated:)(animated);
}

- (void)resetWith:(id)with animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v8 = _Block_copy(handler);
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

  withCopy = with;
  selfCopy = self;
  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(withCopy, with, animatedCopy, 1, 0, v8, v9);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)resetWith:(id)with effectiveRootLocation:(id)location animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v10 = _Block_copy(handler);
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

  withCopy = with;
  locationCopy = location;
  selfCopy = self;
  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(withCopy, location, animatedCopy, 1, 0, v10, v11);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
}

- (void)resetFromRootWith:(id)with animated:(BOOL)animated completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  withCopy = with;
  selfCopy = self;
  DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(withCopy, animated, v8, v9);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)revealLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8 = _Block_copy(completion);
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

  locationCopy = location;
  selfCopy = self;
  DOCHierarchyController.revealLocation(_:animated:completion:)(locationCopy, animatedCopy, v8, v9);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)reset
{
  selfCopy = self;
  DOCHierarchyController.reset()();
}

- (void)removeTrailingLocationCount:(int64_t)count animated:(BOOL)animated
{
  selfCopy = self;
  specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(count);
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
  selfCopy = self;
  [v3 cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel_invalidateLocations object:0];
  [(DOCHierarchyController *)selfCopy performSelector:sel_invalidateLocations withObject:0 afterDelay:0.2];
}

- (void)invalidateLocations
{
  selfCopy = self;
  DOCHierarchyController.invalidateLocations()();
}

- (void)restoreLastBrowsedStateForTab:(unint64_t)tab
{
  selfCopy = self;
  DOCHierarchyController.restoreLastBrowsedState(forTab:)(tab);
}

- (void)tagsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  specialized DOCHierarchyController.tagsDidChange(notification:)();
}

- (unint64_t)effectiveTabSwitcherTab
{
  selfCopy = self;
  v3 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v3)
  {
    v4 = v3;
    effectiveTabSwitcherTab = [v3 effectiveTabSwitcherTab];

    return effectiveTabSwitcherTab;
  }

  else
  {
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v8 = *(selfCopy + v7);

    return v8;
  }
}

@end