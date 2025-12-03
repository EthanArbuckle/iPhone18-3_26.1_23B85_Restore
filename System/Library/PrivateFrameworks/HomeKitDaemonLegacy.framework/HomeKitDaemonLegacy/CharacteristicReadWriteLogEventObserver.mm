@interface CharacteristicReadWriteLogEventObserver
- (_TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver)init;
- (void)observeEvent:(id)event;
@end

@implementation CharacteristicReadWriteLogEventObserver

- (void)observeEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_25322DC78(eventCopy);
}

- (_TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end