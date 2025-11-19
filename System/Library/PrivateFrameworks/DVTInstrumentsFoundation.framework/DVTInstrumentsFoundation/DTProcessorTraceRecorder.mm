@interface DTProcessorTraceRecorder
+ (NSString)recordingVersionString;
- (BOOL)saveRecordingWithFd:(int)a3 error:(id *)a4;
- (DTProcessorTraceRecorder)init;
- (DTProcessorTraceRecorder)initWithConfiguration:(id)a3;
- (void)dealloc;
@end

@implementation DTProcessorTraceRecorder

+ (NSString)recordingVersionString
{
  v2 = hwtrace_version_info();
  if (v2)
  {
    v3 = v2;
    sub_248030BA8();
    MEMORY[0x24C1C47E0](v3, -1, -1);
    v4 = sub_248030B28();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (DTProcessorTraceRecorder)initWithConfiguration:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_2480309A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = 0;
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_state) = 0;
  v11 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  v12 = qword_27EE83A18;
  v13 = a3;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_248006DF0(v6, qword_27EE85A60);
  v15 = *(v7 + 16);
  v15(self + v11, v14, v6);
  v15(v10, v14, v6);
  sub_248030908();
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_configuration) = v13;
  v17.receiver = self;
  v17.super_class = ObjectType;
  return [(DTProcessorTraceRecorder *)&v17 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    v4 = self;
    hwtrace_live_recording_deinit();
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(DTProcessorTraceRecorder *)&v6 dealloc];
}

- (BOOL)saveRecordingWithFd:(int)a3 error:(id *)a4
{
  v6 = self;
  ProcessorTraceRecorder.saveRecording(fd:)(a3);

  if (v7)
  {
    if (a4)
    {
      v8 = sub_2480306A8();

      v9 = v8;
      *a4 = v8;
    }

    else
    {
    }
  }

  return v7 == 0;
}

- (DTProcessorTraceRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end