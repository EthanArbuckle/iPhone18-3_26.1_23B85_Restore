@interface ScreenSharingInteractionController
- (NSDate)latestRemoteControlDate;
- (int64_t)remoteControlStatus;
- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state;
- (void)setLatestRemoteControlDate:(id)date;
@end

@implementation ScreenSharingInteractionController

- (void)screenSharingStateMonitor:(id)monitor didUpdateScreenSharingBroadcastingState:(BOOL)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ScreenSharingInteractionController.screenSharingStateMonitor(_:didUpdateScreenSharingBroadcastingState:)();
  swift_unknownObjectRelease();
}

- (int64_t)remoteControlStatus
{
  selfCopy = self;
  v3 = ScreenSharingInteractionController.remoteControlStatus.getter();

  return v3;
}

- (NSDate)latestRemoteControlDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  ScreenSharingInteractionController.latestRemoteControlDate.getter(&v8 - v3);
  v5 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (void)setLatestRemoteControlDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  ScreenSharingInteractionController.latestRemoteControlDate.setter(v7);
}

@end