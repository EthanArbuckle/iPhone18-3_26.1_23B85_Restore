@interface DTProcessorTraceTapLocalDelegate
- (DTProcessorTraceTapLocalDelegate)init;
- (DTProcessorTraceTapLocalDelegate)initWithConfig:(id)a3;
- (id)validateConfig;
- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4;
- (void)pause;
- (void)start;
- (void)stop;
- (void)unpause;
@end

@implementation DTProcessorTraceTapLocalDelegate

- (DTProcessorTraceTapLocalDelegate)initWithConfig:(id)a3
{
  v5 = sub_2480309A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_config) = a3;
  v10 = a3;
  v20 = sub_248006358(v10);
  v11 = type metadata accessor for ProcessorTraceRecorder();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v12[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v13 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v14 = sub_248006DF0(v5, qword_27EE85A60);
  v15 = *(v6 + 16);
  v15(&v12[v13], v14, v5);
  v15(v9, v14, v5);
  sub_248030908();
  *&v12[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = v20;
  v22.receiver = v12;
  v22.super_class = v11;
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder) = [(DTProcessorTraceTapLocalDelegate *)&v22 init];
  v16 = type metadata accessor for ProcessorTraceTapLocalDelegate();
  v21.receiver = self;
  v21.super_class = v16;
  v17 = [(DTProcessorTraceTapLocalDelegate *)&v21 init];

  return v17;
}

- (id)validateConfig
{
  v2 = self;
  v3 = sub_248005470();

  return v3;
}

- (void)start
{
  v2 = self;
  sub_2480056FC();
}

- (void)stop
{
  v2 = self;
  sub_2480058A8();
}

- (void)pause
{
  v2 = self;
  sub_248005A54();
}

- (void)unpause
{
  v2 = self;
  sub_248005C00();
}

- (void)fetchDataForReason:(unint64_t)a3 block:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_248006A14(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (DTProcessorTraceTapLocalDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end