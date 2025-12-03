@interface PerfRunner
- (_TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner)init;
- (_TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner)initWithConfig:(id)config;
- (void)runWithModelLocation:(_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation *)location computeUnits:(int64_t)units perfRunConfig:(_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig *)config completionHandler:(id)handler;
@end

@implementation PerfRunner

- (_TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner)initWithConfig:(id)config
{
  configCopy = config;
  sub_100008704(configCopy, v11);
  v5 = (self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner_timers);
  v6 = v11[1];
  *v5 = v11[0];
  v5[1] = v6;
  v7 = v11[3];
  v5[2] = v11[2];
  v5[3] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PerfRunner();
  v8 = [(PerfRunner *)&v10 init];

  return v8;
}

- (void)runWithModelLocation:(_TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation *)location computeUnits:(int64_t)units perfRunConfig:(_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig *)config completionHandler:(id)handler
{
  v11 = (*(*(sub_100006DB4(&qword_100038B08, &qword_100027E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = location;
  v15[3] = units;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_100026E00();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100027E90;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100027EA0;
  v18[5] = v17;
  locationCopy = location;
  configCopy = config;
  selfCopy = self;
  sub_100007894(0, 0, v13, &unk_100027EB0, v18);
}

- (_TtC35com_apple_dt_DTMLModelRunnerService10PerfRunner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end