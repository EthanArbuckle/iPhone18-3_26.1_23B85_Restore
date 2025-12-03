@interface DTProcessorTraceRecorder
+ (NSString)recordingVersionString;
- (BOOL)saveRecordingWithFd:(int)fd error:(id *)error;
- (DTProcessorTraceRecorder)init;
- (DTProcessorTraceRecorder)initWithConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation DTProcessorTraceRecorder

+ (NSString)recordingVersionString
{
  if (hwtrace_version_info())
  {
    sub_10001328C();

    v2 = sub_10001325C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (DTProcessorTraceRecorder)initWithConfiguration:(id)configuration
{
  ObjectType = swift_getObjectType();
  v6 = sub_10001324C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = 0;
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_state) = 0;
  v11 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  v12 = qword_1000219D0;
  configurationCopy = configuration;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_1000105D4(v6, qword_100022030);
  v15 = *(v7 + 16);
  v15(self + v11, v14, v6);
  v15(v10, v14, v6);
  sub_1000131AC();
  *(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_configuration) = configurationCopy;
  v17.receiver = self;
  v17.super_class = ObjectType;
  return [(DTProcessorTraceRecorder *)&v17 init];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    selfCopy = self;
    hwtrace_live_recording_deinit();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(DTProcessorTraceRecorder *)&v6 dealloc];
}

- (BOOL)saveRecordingWithFd:(int)fd error:(id *)error
{
  selfCopy = self;
  ProcessorTraceRecorder.saveRecording(fd:)(fd);

  if (v7)
  {
    if (error)
    {
      v8 = sub_10001316C();

      v9 = v8;
      *error = v8;
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