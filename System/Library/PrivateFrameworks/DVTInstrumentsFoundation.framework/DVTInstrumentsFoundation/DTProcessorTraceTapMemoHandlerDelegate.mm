@interface DTProcessorTraceTapMemoHandlerDelegate
- (DTProcessorTraceTapMemoHandlerDelegate)init;
- (DTProcessorTraceTapMemoHandlerDelegate)initWithFileReadLength:(unint64_t)length;
- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver;
- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config;
@end

@implementation DTProcessorTraceTapMemoHandlerDelegate

- (DTProcessorTraceTapMemoHandlerDelegate)initWithFileReadLength:(unint64_t)length
{
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapMemoHandlerDelegate_fileReadLength) = length;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ProcessorTraceTapMemoHandlerDelegate();
  return [(DTProcessorTraceTapMemoHandlerDelegate *)&v4 init];
}

- (void)sendDataMemo:(id)memo toBulkReceiver:(id)receiver
{
  memoCopy = memo;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_248024AC4(memoCopy, receiver);

  swift_unknownObjectRelease();
}

- (void)sendDataMemo:(id)memo toClientUsingConfig:(id)config
{
  memoCopy = memo;
  configCopy = config;
  selfCopy = self;
  sub_2480251A8(memoCopy, configCopy);
}

- (DTProcessorTraceTapMemoHandlerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end