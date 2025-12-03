@interface CNKCallDetailsCoordinatorInternal
- (BOOL)isCaptioningEnabled;
- (CNKCallDetailsCoordinatorInternal)initWithHostViewController:(id)controller controlsManager:(id)manager deferredPresentationManager:(id)presentationManager;
- (void)magicStartWithReason:(id)reason fromView:(id)view;
- (void)setShouldHideViewsFromScreenSharing:(BOOL)sharing;
- (void)startWithReason:(id)reason;
- (void)stopWithReason:(id)reason forStartingPip:(BOOL)pip;
- (void)wantsDismissal;
@end

@implementation CNKCallDetailsCoordinatorInternal

- (BOOL)isCaptioningEnabled
{
  selfCopy = self;
  v3 = CallDetailsCoordinator.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)setShouldHideViewsFromScreenSharing:(BOOL)sharing
{
  selfCopy = self;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(sharing);
}

- (CNKCallDetailsCoordinatorInternal)initWithHostViewController:(id)controller controlsManager:(id)manager deferredPresentationManager:(id)presentationManager
{
  swift_getObjectType();
  controllerCopy = controller;
  managerCopy = manager;
  swift_unknownObjectRetain();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(controllerCopy, managerCopy, presentationManager, self);
}

- (void)magicStartWithReason:(id)reason fromView:(id)view
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  viewCopy = view;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  CallDetailsCoordinator.magicStart(withReason:from:)(v11, viewCopy);
}

- (void)startWithReason:(id)reason
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CallDetailsCoordinator.start(withReason:)(v8);
}

- (void)stopWithReason:(id)reason forStartingPip:(BOOL)pip
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CallDetailsCoordinator.stop(withReason:forStartingPip:)(v10, pip);
}

- (void)wantsDismissal
{
  selfCopy = self;
  CallDetailsCoordinator.wantsDismissal()();
}

@end