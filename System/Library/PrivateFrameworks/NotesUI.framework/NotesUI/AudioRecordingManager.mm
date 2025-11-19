@interface AudioRecordingManager
- (_TtC7NotesUI21AudioRecordingManager)init;
- (double)amplitudeForSliceWithTimeRange:(id)a3 fullTimeRangeSampled:(BOOL *)a4;
- (void)analyticsSessionWillEnd:(id)a3;
@end

@implementation AudioRecordingManager

- (void)analyticsSessionWillEnd:(id)a3
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4416E54();
  v8 = self;
  sub_1D4416E74();
  sub_1D43024A0(1, v9);

  sub_1D41769C4(v9, &qword_1EC7C9720);
  (*(v5 + 8))(v7, v4);
}

- (_TtC7NotesUI21AudioRecordingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)amplitudeForSliceWithTimeRange:(id)a3 fullTimeRangeSampled:(BOOL *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = self;
  AudioRecordingManager.amplitudeForSlice(with:fullTimeRangeSampled:)(a4, var0, var1);
  v9 = v8;

  return v9;
}

@end