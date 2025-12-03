@interface CharacteristicReadWriteLogEventObserver
- (_TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver)init;
- (void)observeEvent:(id)event;
@end

@implementation CharacteristicReadWriteLogEventObserver

- (void)observeEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_22959E854(eventCopy);
}

- (_TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end