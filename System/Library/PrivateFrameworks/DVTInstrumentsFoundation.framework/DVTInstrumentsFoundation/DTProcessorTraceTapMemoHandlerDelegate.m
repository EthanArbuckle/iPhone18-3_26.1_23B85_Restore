@interface DTProcessorTraceTapMemoHandlerDelegate
- (DTProcessorTraceTapMemoHandlerDelegate)init;
- (DTProcessorTraceTapMemoHandlerDelegate)initWithFileReadLength:(unint64_t)a3;
- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4;
- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4;
@end

@implementation DTProcessorTraceTapMemoHandlerDelegate

- (DTProcessorTraceTapMemoHandlerDelegate)initWithFileReadLength:(unint64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapMemoHandlerDelegate_fileReadLength) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ProcessorTraceTapMemoHandlerDelegate();
  return [(DTProcessorTraceTapMemoHandlerDelegate *)&v4 init];
}

- (void)sendDataMemo:(id)a3 toBulkReceiver:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_248024AC4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)sendDataMemo:(id)a3 toClientUsingConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2480251A8(v6, v7);
}

- (DTProcessorTraceTapMemoHandlerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end