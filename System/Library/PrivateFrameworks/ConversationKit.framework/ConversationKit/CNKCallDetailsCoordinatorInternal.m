@interface CNKCallDetailsCoordinatorInternal
- (BOOL)isCaptioningEnabled;
- (CNKCallDetailsCoordinatorInternal)initWithHostViewController:(id)a3 controlsManager:(id)a4 deferredPresentationManager:(id)a5;
- (void)magicStartWithReason:(id)a3 fromView:(id)a4;
- (void)setShouldHideViewsFromScreenSharing:(BOOL)a3;
- (void)startWithReason:(id)a3;
- (void)stopWithReason:(id)a3 forStartingPip:(BOOL)a4;
- (void)wantsDismissal;
@end

@implementation CNKCallDetailsCoordinatorInternal

- (BOOL)isCaptioningEnabled
{
  v2 = self;
  v3 = CallDetailsCoordinator.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)setShouldHideViewsFromScreenSharing:(BOOL)a3
{
  v4 = self;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(a3);
}

- (CNKCallDetailsCoordinatorInternal)initWithHostViewController:(id)a3 controlsManager:(id)a4 deferredPresentationManager:(id)a5
{
  swift_getObjectType();
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v9, v10, a5, self);
}

- (void)magicStartWithReason:(id)a3 fromView:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  CallDetailsCoordinator.magicStart(withReason:from:)(v11, v9);
}

- (void)startWithReason:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CallDetailsCoordinator.start(withReason:)(v8);
}

- (void)stopWithReason:(id)a3 forStartingPip:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CallDetailsCoordinator.stop(withReason:forStartingPip:)(v10, a4);
}

- (void)wantsDismissal
{
  v2 = self;
  CallDetailsCoordinator.wantsDismissal()();
}

@end